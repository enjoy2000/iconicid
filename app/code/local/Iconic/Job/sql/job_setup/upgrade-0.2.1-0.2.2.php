<?php
 
$installer = $this;
 
$installer->startSetup();
 
$trans = Mage::helper('job'); 

$setup = Mage::getModel('customer/entity_setup');
$installer->addAttribute('customer', 'location', array(
    'type' => 'int',
    'input' => 'select',
    'label' => $trans->__('Địa chỉ'),
    'global' => 1,
    'visible' => 1,
    'required' => 1,
    'user_defined' => 1,
    'default' => '0',
    'visible_on_front' => 1,
        'source' => 'job/entity_location',
));
$installer->addAttribute('customer', 'birth_year', array(
    'type' => 'int',
    'input' => 'select',
    'label' => $trans->__('Năm sinh'),
    'global' => 1,
    'visible' => 1,
    'required' => 1,
    'user_defined' => 1,
    'default' => '0',
    'visible_on_front' => 1,
        'source' => 'job/entity_birth_year',
));
 
$installer->run("
 

 
    ");
	

 
$installer->endSetup();