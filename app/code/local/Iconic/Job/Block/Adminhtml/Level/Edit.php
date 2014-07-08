<?php
 
class Iconic_Job_Block_Adminhtml_Level_Edit extends Mage_Adminhtml_Block_Widget_Form_Container
{
    public function __construct()
    {
        parent::__construct();
               
        $this->_objectId = 'id';
        $this->_blockGroup = 'job';
        $this->_controller = 'adminhtml_level';
 
        $this->_updateButton('save', 'label', Mage::helper('job')->__('Save Level'));
        $this->_updateButton('delete', 'label', Mage::helper('job')->__('Delete Level'));
    }
 
    public function getHeaderText()
    {
        if( Mage::registry('level_data') && Mage::registry('level_data')->getId() ) {
            return Mage::helper('job')->__("Edit Item '%s'", $this->htmlEscape(Mage::registry('level_data')->getName()));
        } else {
            return Mage::helper('job')->__('Add Item');
        }
    }
}