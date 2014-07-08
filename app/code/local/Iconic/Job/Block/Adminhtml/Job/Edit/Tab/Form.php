<?php
 
class Iconic_Job_Block_Adminhtml_Job_Edit_Tab_Form extends Mage_Adminhtml_Block_Widget_Form
{
	
    protected function _prepareForm()
    {
        $form = new Varien_Data_Form();
        $this->setForm($form);
        $fieldset = $form->addFieldset('job_form', array('legend'=>Mage::helper('job')->__('Job Details')));
       	
		$fieldset->addField('iconic_id', 'text', array(
            'label'     => Mage::helper('job')->__('Iconic ID'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'iconic_id',
        ));
        
		
        $fieldset->addField('title', 'text', array(
            'label'     => Mage::helper('job')->__('Title'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'title',
        ));
        
		
		//get array categories
		$parentCategories = Mage::getModel('job/parentcategory')->getCollection()->addFieldToFilter('group_category', array('eq'=>'industry'));
		foreach($parentCategories as $parent){
			$subCategories = Mage::getModel('job/category')->getCollection();	
			$subCategories->addFieldToFilter('parentcategory_id',$parent->getParentcategoryId());
			$subCategories->setOrder('name','ASC');
			$arraySub = array();
			foreach($subCategories as $sub){
				$arraySub[] = 	array(
								'label'		=> $sub->getName(),
								'value' 	=> $sub->getCategoryId(),
				);				
			}
			$arrayCategories[] = array(
								'label'		=> $parent->getName(),
								'value'	=> $arraySub,
			);
		}
        $fieldset->addField('category_id', 'select', array(
            'label'     => Mage::helper('job')->__('Industry Category'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'category_id',
            'values'	=> $arrayCategories,
        ));
		
		//get array categories
		$parentCategories = Mage::getModel('job/parentcategory')->getCollection()->addFieldToFilter('group_category', array('eq'=>'function'));
		foreach($parentCategories as $parent){
			$subCategories = Mage::getModel('job/category')->getCollection();	
			$subCategories->addFieldToFilter('parentcategory_id',$parent->getParentcategoryId());
			$subCategories->setOrder('name','ASC');
			$arraySub = array();
			foreach($subCategories as $sub){
				$arraySub[] = 	array(
								'label'		=> $sub->getName(),
								'value' 	=> $sub->getCategoryId(),
				);				
			}
			$arrayFunction[] = array(
								'label'		=> $parent->getName(),
								'value'	=> $arraySub,
			);
		}
        $fieldset->addField('function_category_id', 'select', array(
            'label'     => Mage::helper('job')->__('Function Category'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'function_category_id',
            'values'	=> $arrayFunction,
        ));
		
		//get location values
		$locationModel = Mage::getModel('job/location')->getCollection();
		foreach($locationModel as $loc){
			$arrayLocation[] = array(
							'label'		=> $loc->getName(),
							'value'		=> $loc->getLocationId(),
			);
		}
		
		$fieldset->addField('location_id', 'select', array(
            'label'     => Mage::helper('job')->__('Location'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'location_id',
            'values'	=> $arrayLocation,
        ));
		
		//get level values
		$levelModel = Mage::getModel('job/level')->getCollection();
		foreach($levelModel as $level){
			$arrayLevel[] = array(
							'label'		=> $level->getName(),
							'value'		=> $level->getLevelId(),
			);
		}
		$fieldset->addField('job_level', 'select', array(
            'label'     => Mage::helper('job')->__('Job Level'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'job_level',
            'values'	=> $arrayLevel,
        ));
		
		$fieldset->addField('job_salary', 'text', array(
            'label'     => Mage::helper('job')->__('Salary From'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'job_salary',
            'value'		=> '0',
        ));
		
		$fieldset->addField('job_salary_to', 'text', array(
            'label'     => Mage::helper('job')->__('Salary To'),
            'required'  => false,
            'name'      => 'job_salary_to',
            'value'		=> '0',
        ));
		
		$fieldset->addField('job_salary_currency', 'select', array(
            'label'     => Mage::helper('job')->__('Salary Currency'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'job_salary_currency',
            'values'    => array(
						array(
							'label' => 'VND',
							'value' => 'VND'
						),
						array(
							'label' => 'USD',
							'value' => 'USD'
						),
			),
            'value'		=> 'VND',
        ));
		
		$fieldset->addField('job_salary_type', 'select', array(
            'label'     => Mage::helper('job')->__('Salary Type'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'job_salary_type',
            'values'    => array(
						array(
							'label' => 'Gross',
							'value' => 'Gross'
						),
						array(
							'label' => 'NET',
							'value' => 'NET'
						),
			),
            'value'		=> 'Gross',
        ));
		
		//get type values
		$typeModel = Mage::getModel('job/type')->getCollection();
		foreach($typeModel as $type){
			$arrayType[] = array(
							'label'		=> $type->getName(),
							'value'		=> $type->getTypeId(),
			);
		}
		$fieldset->addField('job_type', 'select', array(
            'label'     => Mage::helper('job')->__('Job Type'),
            'name'     => 'job_type',
            'required'  => true,
            'values'    => $arrayType,
        ));
		
		//get feature values
		$feature = Mage::getModel('job/feature')->getCollection();
		foreach($feature as $type){
			$arrayFeature[] = array(
							'label'		=> $type->getName(),
							'value'		=> $type->getId(),
			);
		}
		$fieldset->addField('feature_id', 'multiselect', array(
            'label'     => Mage::helper('job')->__('Feature Tags'),
            'name'     => 'feature_id',
            'required'  => true,
            'values'    => $arrayFeature,
        ));
       
        $fieldset->addField('requirement', 'editor', array(
            'name'      => 'requirement',
            'label'     => Mage::helper('job')->__('Requirement'),
            'title'     => Mage::helper('job')->__('Requirement'),
            'style'     => 'width:98%; height:200px;',
			'config' 	=> Mage::getSingleton('cms/wysiwyg_config')->getConfig(), 
			'wysiwyg' 	=> true, 
            'required'  => true,
        ));
		
		$fieldset->addField('info', 'editor', array(
            'name'      => 'info',
            'label'     => Mage::helper('job')->__('Info'),
            'title'     => Mage::helper('job')->__('Info'),
            'style'     => 'width:98%; height:200px;',
			'config' 	=> Mage::getSingleton('cms/wysiwyg_config')->getConfig(), 
			'wysiwyg' 	=> true, 
            'required'  => true,
        ));
       
        if ( Mage::getSingleton('adminhtml/session')->getJobData() )
        {
            $form->setValues(Mage::getSingleton('adminhtml/session')->getJobData());
            Mage::getSingleton('adminhtml/session')->setJobData(null);
        } elseif ( Mage::registry('job_data') ) {
            $form->setValues(Mage::registry('job_data')->getData());
        }
        return parent::_prepareForm();
    }
}