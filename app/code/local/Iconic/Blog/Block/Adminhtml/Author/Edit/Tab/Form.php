<?php
 
class Iconic_Blog_Block_Adminhtml_Author_Edit_Tab_Form extends Mage_Adminhtml_Block_Widget_Form
{
    protected function _prepareForm()
    {
        $form = new Varien_Data_Form();
        $this->setForm($form);
        $fieldset = $form->addFieldset('author_form', array('legend'=>Mage::helper('blog')->__('Author')));
       
        $fieldset->addField('name', 'text', array(
            'label'     => Mage::helper('blog')->__('Name'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'name',
        ));
		
		$fieldset->addField('image', 'image', array(
            'label'     => Mage::helper('blog')->__('Thumbnail'),
            'required'  => false,
            'name'      => 'image',
        ));
 
        if ( Mage::getSingleton('adminhtml/session')->getAuthorData() )
        {
            $form->setValues(Mage::getSingleton('adminhtml/session')->getAuthorData());
            Mage::getSingleton('adminhtml/session')->setAuthorData(null);
        } elseif ( Mage::registry('author_data') ) {
            $form->setValues(Mage::registry('author_data')->getData());
        }
        return parent::_prepareForm();
    }
}