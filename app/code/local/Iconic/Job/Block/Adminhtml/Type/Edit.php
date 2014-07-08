<?php
 
class Iconic_Job_Block_Adminhtml_Type_Edit extends Mage_Adminhtml_Block_Widget_Form_Container
{
    public function __construct()
    {
        parent::__construct();
               
        $this->_objectId = 'id';
        $this->_blockGroup = 'job';
        $this->_controller = 'adminhtml_type';
 
        $this->_updateButton('save', 'label', Mage::helper('job')->__('Save Type'));
        $this->_updateButton('delete', 'label', Mage::helper('job')->__('Delete Type'));
    }
 
    public function getHeaderText()
    {
        if( Mage::registry('type_data') && Mage::registry('type_data')->getId() ) {
            return Mage::helper('job')->__("Edit Item '%s'", $this->htmlEscape(Mage::registry('type_data')->getName()));
        } else {
            return Mage::helper('job')->__('Add Item');
        }
    }
}