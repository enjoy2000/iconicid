<?php
 
$installer = $this;
 
$installer->startSetup();
 
$trans = Mage::helper('job'); 

$setup = Mage::getModel('customer/entity_setup');
$installer->addAttribute('customer', 'location', array(
    'type' => 'varchar',
    'input' => 'select',
    'label' => $trans->__('Nơi cư trú'),
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

$installer->addAttribute('customer', 'upload_cv', array(
    'type' => 'varchar',
    'input' => 'input',
    'label' => $trans->__('CV'),
    'global' => 1,
    'visible' => 1,
    'required' => 0,
    'user_defined' => 1,
    'default' => '0',
    'visible_on_front' => 1,
        'source' => 'job/entity_upload_cv',
));
 
$installer->run("
 

 
    ");
	

 
$installer->endSetup();