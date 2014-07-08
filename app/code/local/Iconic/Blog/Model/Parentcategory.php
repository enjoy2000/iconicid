<?php
 
class Iconic_Blog_Model_Parentcategory extends Mage_Core_Model_Abstract
{
    public function _construct()
    {
        parent::_construct();
        $this->_init('blog/parentcategory');
    }

    protected function _beforeSave()
    {
        if(!$this->getUrlKey()){
            $urlKey = Mage::helper('job')->formatUrlKey($this->getName());
            if(!Mage::getModel('blog/parentcategory')->load($urlKey, 'url_key')->getId()){
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
			$count = Mage::getModel('blog/parentcategory')->getCollection()->addFieldToFilter('parentcategory_id',array('neq'=>$this->getId()));
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
		$url = Mage::getUrl(Mage::helper('blog')->getRoute().DS.$this->getUrlKey());
		return $url;
	}
	
	public function getCount(){
		$cats = Mage::getModel('blog/category')->getCollection()->addFieldToFilter('parentcategory_id',$this->getId());
		
		if($cats->count() > 0){
			$condition = array();
			foreach($cats as $cat){
				$condition[] = array('like' => '%,'.(int)$cat->getId().',%');
			}
			//var_dump($condition);die;
			$count = Mage::getModel('blog/blog')->getCollection()
						->addFieldToFilter('category_id', $condition)
						->count();
			return $count;
		}else{
			return 0;
		}
	}
	
	public function getCats(){
		$cats = Mage::getModel('blog/category')->getCollection()->addFieldToFilter('parentcategory_id',array('eq'=>$this->getId()));
		return $cats;
	}
}