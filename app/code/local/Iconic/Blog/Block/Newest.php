<?php
 
class Iconic_Blog_Block_Newest extends Mage_Core_Block_Template
{
	protected function _prepareLayout(){
		parent::_prepareLayout();
	}
	
	
	public function getNewest(){
		$collection = Mage::getModel('blog/blog')->getCollection()
							->setOrder('create_time','DESC')
							->setPageSize(5)
							->setCurPage(1);
		return $collection;
	}
	
	public function getPopular(){
		$collection = Mage::getModel('blog/blog')->getCollection()
							->setOrder('views','DESC')
							->setPageSize(5)
							->setCurPage(1);
		return $collection;
	}
}