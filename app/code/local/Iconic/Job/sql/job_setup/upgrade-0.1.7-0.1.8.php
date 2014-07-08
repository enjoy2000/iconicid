<?php
 
$installer = $this;
 
$installer->startSetup();
 
$trans = Mage::helper('job'); 
 
$installer->run("
 


ALTER TABLE {$this->getTable('job')} ADD COLUMN job_salary_type varchar(11) NOT NULL;

 
    ");
	

 
$installer->endSetup();