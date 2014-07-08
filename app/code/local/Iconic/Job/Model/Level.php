<?php
 
class Iconic_Job_Model_Level extends Mage_Core_Model_Abstract
{
    public function _construct()
    {
        parent::_construct();
        $this->_init('job/level');
    }
	
	public function getCount(){
		$count = Mage::getModel('job/job')->getCollection()->addFieldToFilter('job_level',$this->getId())->count();
		return $count;
	}
}