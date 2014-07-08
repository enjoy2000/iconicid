<?php
 
class Iconic_Blog_Block_Latest extends Mage_Core_Block_Template
{
	protected function _prepareLayout(){
		parent::_prepareLayout();
	}
	
	public function getBlogs(){
		$collection = Mage::getModel('blog/blog')->getCollection()
						->setOrder('create_time','DESC')
						->setPageSize(20)
						->setCurPage(1)
						->load();
		return $collection;
	}
}