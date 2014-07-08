<?php
 
class Iconic_Job_Model_Parentcategory extends Mage_Core_Model_Abstract
{
    public function _construct()
    {
        parent::_construct();
        $this->_init('job/parentcategory');
    }

    protected function _beforeSave()
    {
        if(!$this->getUrlKey()){
            $urlKey = Mage::helper('job')->formatUrlKey($this->getName());
            if(!Mage::getModel('job/parentcategory')->load($urlKey, 'url_key')->getId()){
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
			$count = Mage::getModel('job/parentcategory')->getCollection()->addFieldToFilter('parentcategory_id',array('neq'=>$this->getId()));
			$count->addFieldToFilter('url_key',array('eq'=>$this->getUrlKey()));
			$count->getCollection()->count();
			if($count > 0){
				$urlkey = $this->getUrlKey() . '-' . $this->getId();
				$this->setUrlKey($urlkey)->save();
			}
		}
		 * */
						
		parent::_afterSave();
	}

	public function getUrl(){
		$url = Mage::getUrl($this->getUrlKey());
		return $url;
	}
	
	public function getCount(){
		$cats = Mage::getModel('job/category')->getCollection()->addFieldToFilter('parentcategory_id',$this->getId());
		$catIds = array();
		foreach($cats as $cat){
			$catIds[] = $cat->getId();
		}
		if($this->getGroupCategory() == 'industry'){
			$count = Mage::getModel('job/job')->getCollection()
							->addFieldToFilter('category_id', array('in'=>$catIds))
							->count();
		}else{
			$count = Mage::getModel('job/job')->getCollection()
							->addFieldToFilter('function_category_id', array('in'=>$catIds))
							->count();
		}
		return $count;
	}
}