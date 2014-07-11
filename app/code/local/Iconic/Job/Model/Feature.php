<?php
 
class Iconic_Job_Model_Feature extends Mage_Core_Model_Abstract
{
    public function _construct()
    {
        parent::_construct();
        $this->_init('job/feature');
    }
	
	protected function _beforeSave()
    {
        if(!$this->getUrlKey()){
            $urlKey = Mage::helper('job')->formatUrlKey($this->getNameEn());
            if(!Mage::getModel('job/feature')->load($urlKey, 'url_key')->getId()){
                $this->setUrlKey($urlKey);
            } else {
                $urlKey .= '-' . $this->getId();
            	$this->setUrlKey($urlKey);
            }
        }
        parent::_beforeSave();
    }
	
	public function getUrl(){
		$base = Mage::helper('job')->getBaseUrl();
		return $base.Mage::helper('job')->getSearchUrl().'/'.$this->getUrlKey();
	}

}