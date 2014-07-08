<?php
 
$installer = $this;
 
$installer->startSetup();
 
$trans = Mage::helper('job'); 

$setup = Mage::getModel('customer/entity_setup');
$installer->addAttribute('customer', 'sex', array(
    'type' => 'varchar',
    'input' => 'select',
    'label' => $trans->__('Giới tính'),
    'global' => 1,
    'visible' => 1,
    'required' => 1,
    'user_defined' => 1,
    'default' => '0',
    'visible_on_front' => 1,
        'source' => 'job/entity_sex',
));
 
$installer->run("
 

ALTER TABLE {$this->getTable('job')} ADD COLUMN iconic_id varchar(11) NOT NULL;
 
    ");
	

 
$installer->endSetup();