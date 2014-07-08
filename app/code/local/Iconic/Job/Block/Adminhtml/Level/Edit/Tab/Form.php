<?php
 
class Iconic_Job_Block_Adminhtml_Level_Edit_Tab_Form extends Mage_Adminhtml_Block_Widget_Form
{
    protected function _prepareForm()
    {
        $form = new Varien_Data_Form();
        $this->setForm($form);
        $fieldset = $form->addFieldset('level_form', array('legend'=>Mage::helper('job')->__('Level information')));
       
        $fieldset->addField('name', 'text', array(
            'label'     => Mage::helper('job')->__('Name'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'name',
        ));
 
        if ( Mage::getSingleton('adminhtml/session')->getLevelData() )
        {
            $form->setValues(Mage::getSingleton('adminhtml/session')->getLevelData());
            Mage::getSingleton('adminhtml/session')->setLevelData(null);
        } elseif ( Mage::registry('level_data') ) {
            $form->setValues(Mage::registry('level_data')->getData());
        }
        return parent::_prepareForm();
    }
}