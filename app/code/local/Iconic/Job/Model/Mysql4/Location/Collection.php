<?php
 
class Iconic_Job_Model_Mysql4_Location_Collection extends Mage_Core_Model_Mysql4_Collection_Abstract
{
    public function _construct()
    {
        //parent::__construct();
        $this->_init('job/location');
    }
}