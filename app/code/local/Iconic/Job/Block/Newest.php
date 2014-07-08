<?php

class Iconic_Job_Block_Newest extends Mage_Core_Block_Template
{
    protected function _prepareLayout(){			
		
		parent::_prepareLayout();
		
		//set collection to view
		$jobs = Mage::getModel('job/job')->getCollection()->setOrder('created_time','DESC');
		$jobs->setPageSize(30);
		$jobs->setCurPage(1);
		$this->setJobCollection($jobs);
		
		//set Category to view
		$industryCategory = Mage::getModel('job/parentcategory')->getCollection()->addFieldToFilter('group_category',array('eq'=>'industry'));
		$functionCategory = Mage::getModel('job/parentcategory')->getCollection()->addFieldToFilter('group_category',array('eq'=>'function'));
		$this->setIndustryCollection($industryCategory);
		$this->setFunctionCollection($functionCategory);
		
		//set job level to view
		$jobLevel = Mage::getModel('job/level')->getCollection();
		$this->setJobLevel($jobLevel);
	}
}