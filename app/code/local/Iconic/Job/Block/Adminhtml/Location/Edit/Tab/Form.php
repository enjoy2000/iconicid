<?php
 
class Iconic_Job_Block_Adminhtml_Location_Edit_Tab_Form extends Mage_Adminhtml_Block_Widget_Form
{
    protected function _prepareForm()
    {
        $form = new Varien_Data_Form();
        $this->setForm($form);
        $fieldset = $form->addFieldset('location_form', array('legend'=>Mage::helper('job')->__('Location')));
       
        $fieldset->addField('name', 'text', array(
            'label'     => Mage::helper('job')->__('Name'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'name',
        ));
 
        if ( Mage::getSingleton('adminhtml/session')->getLocationData() )
        {
            $form->setValues(Mage::getSingleton('adminhtml/session')->getLocationData());
            Mage::getSingleton('adminhtml/session')->setLocationData(null);
        } elseif ( Mage::registry('location_data') ) {
            $form->setValues(Mage::registry('location_data')->getData());
        }
        return parent::_prepareForm();
    }
}