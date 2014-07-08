<?php
 
class Iconic_Blog_Block_Result extends Mage_Core_Block_Template
{
	protected function _prepareLayout(){
		parent::_prepareLayout();
	}
	
	protected function _beforeToHtml(){
		$pager = $this->getLayout()->createBlock('page/html_pager', 'blog.pager');
		$pager->setShowPerPage(false);
		$pager->setShowAmounts(false);
		$pager->setAvailableLimit(array(8=>8));
		$pager->setPageSize(8);
        $pager->setCollection($this->getResults());
        $this->setChild('pager', $pager);
		return parent::_beforeToHtml();
	}
	
	public function getResults(){
		return $this->getCollection();
	}
	
    public function getPagerHtml(){
        return $this->getChildHtml('pager');
    }
}