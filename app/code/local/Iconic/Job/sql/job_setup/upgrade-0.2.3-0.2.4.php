<?php
 
$installer = $this;
 
$installer->startSetup();
 
$trans = Mage::helper('job'); 

$setup = Mage::getModel('customer/entity_setup');

 
$installer->run("
 
ALTER TABLE {$this->getTable('job/category')} ADD COLUMN name_en varchar(255) NULL;
 
    ");
	

 
$installer->endSetup();