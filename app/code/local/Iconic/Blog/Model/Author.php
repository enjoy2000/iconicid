<?php
 
class Iconic_Blog_Model_Author extends Mage_Core_Model_Abstract
{
    public function _construct()
    {
        parent::_construct();
        $this->_init('blog/author');
    }
	
	protected function _beforeSave()
    {
        if(!$this->getUrlKey()){
            $urlKey = Mage::helper('job')->formatUrlKey($this->getName());
            if(!Mage::getModel('blog/blog')->load($urlKey, 'url_key')->getId()){
                $this->setUrlKey($urlKey);
            } else {
                $urlKey .= '-' . $this->getId();
            	$this->setUrlKey($urlKey);
            }
        }
        parent::_beforeSave();
    }
	
	public function getLink(){
		$link = Mage::getBaseUrl() . Mage::helper('blog')->getRoute() . DS . Mage::helper('blog')->getAuthorLink() . DS . $this->getUrlKey();
		return $link;
	}
}