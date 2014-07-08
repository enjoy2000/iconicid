<?php
 
$installer = $this;
 
$installer->startSetup();
 
$trans = Mage::helper('job'); 
 
$installer->run("
 


ALTER TABLE {$this->getTable('job')} ADD COLUMN job_salary_to int(11) unsigned NOT NULL default '0';
ALTER TABLE {$this->getTable('job')} ADD COLUMN job_salary_currency varchar(11) NOT NULL;

 
    ");
	

 
$installer->endSetup();