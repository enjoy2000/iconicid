<?php
 
class Iconic_Job_Block_Adminhtml_Feature_Edit_Tab_Form extends Mage_Adminhtml_Block_Widget_Form
{
    protected function _prepareForm()
    {
        $form = new Varien_Data_Form();
        $this->setForm($form);
        $fieldset = $form->addFieldset('feature_form', array('legend'=>Mage::helper('job')->__('Feature')));
       
        $fieldset->addField('name', 'text', array(
            'label'     => Mage::helper('job')->__('Name'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'name',
        ));
		
		$fieldset->addField('name_en', 'text', array(
            'label'     => Mage::helper('job')->__('Name En'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'name_en',
        ));
 
        if ( Mage::getSingleton('adminhtml/session')->getFeatureData() )
        {
            $form->setValues(Mage::getSingleton('adminhtml/session')->getFeatureData());
            Mage::getSingleton('adminhtml/session')->setFeatureData(null);
        } elseif ( Mage::registry('feature_data') ) {
            $form->setValues(Mage::registry('feature_data')->getData());
        }
        return parent::_prepareForm();
    }
}