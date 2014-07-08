<?php
 
$installer = $this;
 
$installer->startSetup();
 
$trans = Mage::helper('job'); 
 
$installer->run("
 


ALTER TABLE {$this->getTable('job_parent_category')} ADD COLUMN group_category varchar(25) NOT NULL;

 
    ");
	

 
$installer->endSetup();