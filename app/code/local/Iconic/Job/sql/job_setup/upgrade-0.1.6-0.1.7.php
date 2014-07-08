<?php
 
$installer = $this;
 
$installer->startSetup();
 
$trans = Mage::helper('job'); 
 
$installer->run("
 


ALTER TABLE {$this->getTable('job')} ADD COLUMN function_category_id int(11) unsigned NOT NULL;

 
    ");
	

 
$installer->endSetup();