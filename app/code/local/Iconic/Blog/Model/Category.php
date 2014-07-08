<?php
 
class Iconic_Blog_Model_Category extends Mage_Core_Model_Abstract
{
    public function _construct()
    {
        parent::_construct();
        $this->_init('blog/category');
    }


    protected function _beforeSave()
    {
        if(!$this->getUrlKey()){
            $urlKey = Mage::helper('job')->formatUrlKey($this->getName());
            if(!Mage::getModel('blog/category')->load($urlKey, 'url_key')->getId()){
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
			$count = Mage::getModel('blog/category')->getCollection()->addFieldToFilter('category_id',array('neq'=>$this->getId()));
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
    	return Mage::getModel('blog/parentcategory')->load($this->getParentcategoryId());
    }
	
	public function getUrl(){
		$parent = $this->getParentCategory();
		$url = Mage::getBaseUrl() . Mage::helper('blog')->getRoute() . DS . $parent->getUrlKey() . DS . $this->getUrlKey();
		return $url;
	}
	
	public function getCount(){
		$count = Mage::getModel('blog/blog')->getCollection()->addFieldToFilter('category_id',array('like'=>'%,'.(int)$this->getId().',%'))->count();
		return $count;
	}
}