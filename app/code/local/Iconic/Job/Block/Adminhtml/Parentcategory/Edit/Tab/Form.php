<?php
 
class Iconic_Job_Block_Adminhtml_Parentcategory_Edit_Tab_Form extends Mage_Adminhtml_Block_Widget_Form
{
    protected function _prepareForm()
    {
        $form = new Varien_Data_Form();
        $this->setForm($form);
        $fieldset = $form->addFieldset('category_form', array('legend'=>Mage::helper('job')->__('Category information')));
       
        $fieldset->addField('name', 'text', array(
            'label'     => Mage::helper('job')->__('Name'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'name',
        ));
		
		$fieldset->addField('url_key', 'text', array(
            'label'     => Mage::helper('job')->__('Url Key'),
            'required'  => false,
            'name'      => 'url_key',
        ));
		
		$fieldset->addField('group_category', 'select', array(
            'label'     => Mage::helper('job')->__('Group Category'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'group_category',
            'values'	=> array(
				array(
					'label' => Mage::helper('job')->__('Industry Category'),
					'value' => 'industry'
				),
				array(
					'label' => Mage::helper('job')->__('Function Category'),
					'value' => 'function'
				),
			),
        ));
 
        if ( Mage::getSingleton('adminhtml/session')->getCategoryData() )
        {
            $form->setValues(Mage::getSingleton('adminhtml/session')->getCategoryData());
            Mage::getSingleton('adminhtml/session')->setCategoryData(null);
        } elseif ( Mage::registry('category_data') ) {
            $form->setValues(Mage::registry('category_data')->getData());
        }
        return parent::_prepareForm();
    }
}