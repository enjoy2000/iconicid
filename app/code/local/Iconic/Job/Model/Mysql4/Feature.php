<?php
 
class Iconic_Job_Model_Mysql4_Feature extends Mage_Core_Model_Mysql4_Abstract
{
    public function _construct()
    {   
        $this->_init('job/feature');
    }
}