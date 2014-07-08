<?php
 
class Iconic_Blog_Block_Category extends Mage_Core_Block_Template
{
	protected function _prepareLayout(){
		parent::_prepareLayout();
	}
	
	public function getParentCollection(){
		return Mage::getModel('blog/parentcategory')->getCollection();
	}
	
	public function getCount(){
		return Mage::getModel('blog/blog')->getCollection()->count();
	}
}