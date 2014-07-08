<?php

class Iconic_Job_Block_New extends Mage_Core_Block_Template
{
	protected function _prepareLayout(){
		
		//var_dump(count(Mage::getModel('job/category')->getCollection()));die;
		
		$connection = Mage::getSingleton('core/resource')->getConnection('core_write');
		$categories = $connection->fetchAll('SELECT `name` FROM `job_category`');
		$this->setCategories($categories);
		parent::_prepareLayout();
	}
}