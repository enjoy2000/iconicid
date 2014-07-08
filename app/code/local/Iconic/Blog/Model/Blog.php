<?php
 
class Iconic_Blog_Model_Blog extends Mage_Core_Model_Abstract
{
    public function _construct()
    {
        parent::_construct();
        $this->_init('blog/blog');
    }
	
	protected function _beforeSave()
    {
        if(!$this->getUrlKey()){
            $urlKey = Mage::helper('job')->formatUrlKey($this->getTitle());
            if(!Mage::getModel('blog/blog')->load($urlKey, 'url_key')->getId()){
                $this->setUrlKey($urlKey);
            } else {
                $urlKey .= '-' . $this->getId();
            	$this->setUrlKey($urlKey);
            }
        }
        parent::_beforeSave();
    }
	
	public function getUrl(){
		$base = Mage::getBaseUrl();
		return $base.Mage::helper('blog')->getRoute().'/'.$this->getUrlKey();
	}
	
	public function getDate(){
		$date = Mage::helper('blog')->formatDate($this->getCreateTime());
		return $date;
	}
	
	public function getPhoto(){
		if($this->getImage()){
			return $this->getImage();
		}else{
			return Mage::helper('blog')->getRoute() . DS . 'default.jpg';
		}
	}
	
	public function getSubCats(){
		$catIds = substr($this->getCategoryId(), 1, -1);
		$catIds = explode(',', $catIds);
		$cats = Mage::getModel('blog/category')->getCollection()->addFieldToFilter('category_id', array('in'=>$catIds));
		return $cats;
	}
	
	public function getParentCats(){
		$cats = $this->getSubCats();
		$parentArr = array();
		$parentIds = $cats->getColumnValues('parentcategory_id');
		$parentCats = Mage::getModel('blog/parentcategory')->getCollection()->addFieldToFilter('parentcategory_id', array('in'=>$parentIds));
		return $parentCats;		
	}

}