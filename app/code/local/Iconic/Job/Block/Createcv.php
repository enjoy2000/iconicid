<?php

class Iconic_Job_Block_Createcv extends Mage_Core_Block_Template
{
    protected function _prepareLayout(){
		parent::_prepareLayout();
	}
	
	public function getFormData()
    {
        $data = new Varien_Object();
		$formdata = $this->getRequest()->getPost();
		$data->addData($formData);
        return $formdata;
    }
	
	public function getCustomer(){
		$customer = Mage::getSingleton('customer/session')->getCustomer();
		return $customer;
	}
	
	public function getCategoryList($postName){
		if (!$this->hasData('categoryList')){
		
			$parentCategory = Mage::getModel('job/parentcategory')->getCollection()->addFieldToFilter('group_category', array('eq'=>'industry'));
			$listCategory = '';
			if ($this->getCategory()){
				foreach ($parentCategory as $parent){
					$categories = Mage::getModel('job/category')->getCollection()->addFieldToFilter('parentcategory_id', array('eq'=>$parent->getParentcategoryId()));
					$catOptions = '';
					foreach ($categories as $cat){
						$selected = "";
						if($cat->getName() == $postName){
							$selected = " selected=\"selected\"";
						}
						$catOptions .= "<option value=\"{$cat->getNameEn()}\"{$selected}>{$cat->getName()}</option>";
					}
					$listCategory .= '<optgroup label="'.$parent->getName().'">'.$catOptions.'</optgroup>';
				}
			} else {
				foreach ($parentCategory as $parent){
					$categories = Mage::getModel('job/category')->getCollection()->addFieldToFilter('parentcategory_id', array('eq'=>$parent->getParentcategoryId()));
					$catOptions = '';
					foreach ($categories as $cat){
						$catOptions .= '<option value="' . $cat->getNameEn() . '">' . $cat->getName() . '</option>';
					}
					$listCategory .= '<optgroup label="'.$parent->getName().'">'.$catOptions.'</optgroup>';
				}
			}
			$this->setData('categoryList', $listCategory);
		}
		return $this->getData('categoryList');
	}
	
	public function getFunctionList($postName){
		if (!$this->hasData('functionList')){
		
			$parentCategory = Mage::getModel('job/parentcategory')->getCollection()->addFieldToFilter('group_category', array('eq'=>'function'));
			$listCategory = '';
			if ($this->getFunctionCategory()){
				foreach ($parentCategory as $parent){
					$categories = Mage::getModel('job/category')->getCollection()->addFieldToFilter('parentcategory_id', array('eq'=>$parent->getParentcategoryId()));
					$catOptions = '';
					foreach ($categories as $cat){
						$selected = "";
						if($cat->getName() == $postName){
							$selected = " selected=\"selected\"";
						}
						$catOptions .= "<option value=\"{$cat->getNameEn()}\"{$selected}>{$cat->getName()}</option>";
					}
					$listCategory .= '<optgroup label="'.$parent->getName().'">'.$catOptions.'</optgroup>';
				}
			} else {
				foreach ($parentCategory as $parent){
					$categories = Mage::getModel('job/category')->getCollection()->addFieldToFilter('parentcategory_id', array('eq'=>$parent->getParentcategoryId()));
					$catOptions = '';
					foreach ($categories as $cat){
						$catOptions .= '<option value="' . $cat->getNameEn() . '">' . $cat->getName() . '</option>';
					}
					$listCategory .= '<optgroup label="'.$parent->getName().'">'.$catOptions.'</optgroup>';
				}
			}
			$this->setData('functionList', $listCategory);
		}
		return $this->getData('functionList');
	}
}