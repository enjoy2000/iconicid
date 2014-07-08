<?php
 
class Iconic_Job_Block_Adminhtml_Location_Edit extends Mage_Adminhtml_Block_Widget_Form_Container
{
    public function __construct()
    {
        parent::__construct();
               
        $this->_objectId = 'id';
        $this->_blockGroup = 'job';
        $this->_controller = 'adminhtml_location';
 
        $this->_updateButton('save', 'label', Mage::helper('job')->__('Save Location'));
        $this->_updateButton('delete', 'label', Mage::helper('job')->__('Delete Location'));
    }
 
    public function getHeaderText()
    {
        if( Mage::registry('location_data') && Mage::registry('location_data')->getId() ) {
            return Mage::helper('job')->__("Edit Location '%s'", $this->htmlEscape(Mage::registry('location_data')->getName()));
        } else {
            return Mage::helper('job')->__('Add Location');
        }
    }
}