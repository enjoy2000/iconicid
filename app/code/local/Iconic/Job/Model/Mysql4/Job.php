<?php
 
class Iconic_Job_Model_Mysql4_Job extends Mage_Core_Model_Mysql4_Abstract
{
    public function _construct()
    {   
        $this->_init('job/job', 'job_id');
    }
}