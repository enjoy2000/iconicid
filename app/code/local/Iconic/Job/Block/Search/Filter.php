<?php

class Iconic_Job_Block_Search_Filter extends Mage_Core_Block_Template
{
	protected function _prepareLayout(){
		$this->setTemplate('job/search/filter.phtml');
	}
	
	
	
	protected function _beforeToHtml(){
		$collection = clone $this->getCollection();
		$collection->addFieldToSelect($this->getField());
		$values = $collection->getColumnValues($this->getField());
		$filterCollection = Mage::getModel($this->getModel())->getCollection();
		$filterCollection->addFieldToFilter($this->getDesticationField(), array('in' => $values));
		
		$this->setFilterCollection($filterCollection);
	}
	
	protected function _toHtml(){
		// if(count($this->getFilterCollection()) <= 1){ // if there are more than 1 item to filter
			// return '';
		// }
		return parent::_toHtml();
	}
}