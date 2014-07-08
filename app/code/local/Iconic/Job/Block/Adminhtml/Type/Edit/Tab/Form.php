<?php
 
class Iconic_Job_Block_Adminhtml_Type_Edit_Tab_Form extends Mage_Adminhtml_Block_Widget_Form
{
    protected function _prepareForm()
    {
        $form = new Varien_Data_Form();
        $this->setForm($form);
        $fieldset = $form->addFieldset('type_form', array('legend'=>Mage::helper('job')->__('Type information')));
       
        $fieldset->addField('name', 'text', array(
            'label'     => Mage::helper('job')->__('Name'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'name',
        ));
 
        if ( Mage::getSingleton('adminhtml/session')->getTypeData() )
        {
            $form->setValues(Mage::getSingleton('adminhtml/session')->getTypeData());
            Mage::getSingleton('adminhtml/session')->setTypeData(null);
        } elseif ( Mage::registry('type_data') ) {
            $form->setValues(Mage::registry('type_data')->getData());
        }
        return parent::_prepareForm();
    }
}