<?php
 
class Iconic_Job_Model_Category extends Mage_Core_Model_Abstract
{
    public function _construct()
    {
        parent::_construct();
        $this->_init('job/category');
    }


    protected function _beforeSave()
    {
        if(!$this->getUrlKey()){
            $urlKey = Mage::helper('job')->formatUrlKey($this->getName());
            if(!Mage::getModel('job/category')->load($urlKey, 'url_key')->getId()){
                $this->setUrlKey($urlKey);
            } else {
                $urlKey .= '-' . $this->getId();
            	$this->setUrlKey($urlKey);
            }
        }
        parent::_beforeSave();
    }
	
	protected function _afterSave(){
		/*
		if($this->getUrlKey()){
			//check url key
			$count = Mage::getModel('job/category')->getCollection()->addFieldToFilter('category_id',array('neq'=>$this->getId()));
			$count->addFieldToFilter('url_key',array('eq'=>$this->getUrlKey()));
			$count->getCollection()->count();
			if($count > 0){
				$urlkey = $this->getUrlKey() . '-' . $this->getId();
				$this->setUrlKey($urlkey)->save();
			}
		}
		 * 
		 */						
		parent::_afterSave();

	}

    public function getParentCategory(){
    	return Mage::getModel('job/parentcategory')->load($this->getParentcategoryId());
    }
	
	public function getUrl(){
		$parent = Mage::getModel('job/parentcategory')->load($this->getParentcategoryId());
		$url = Mage::getBaseUrl().$parent->getUrlKey().'/'.$this->getUrlKey();
		return $url;
	}
	
	public function getCount(){
		$parent = Mage::getModel('job/parentcategory')->load($this->getParentcategoryId());
		if($parent->getGroupCategory() == 'industry'){
			$count = Mage::getModel('job/job')->getCollection()->addFieldToFilter('category_id',$this->getId())->count();
		}else{
			$count = Mage::getModel('job/job')->getCollection()->addFieldToFilter('function_category_id',$this->getId())->count();
		}
		return $count;
	}
}