<?php
 
$installer = $this;
 
$installer->startSetup();
 
$trans = Mage::helper('job'); 

$setup = Mage::getModel('customer/entity_setup');
$installer->addAttribute('customer', 'createcv', array(
    'type' => 'int',
    'input' => 'select',
    'label' => $trans->__('Đã tạo hồ sơ'),
    'global' => 1,
    'visible' => 1,
    'required' => 1,
    'user_defined' => 1,
    'default' => '0',
    'visible_on_front' => 1,
        'source' => 'job/entity_createcv',
));
 
$installer->run("
 

 
    ");
	

 
$installer->endSetup();