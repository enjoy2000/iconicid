<?php
 
class Iconic_Job_Block_Adminhtml_Feature_Edit extends Mage_Adminhtml_Block_Widget_Form_Container
{
    public function __construct()
    {
        parent::__construct();
               
        $this->_objectId = 'id';
        $this->_blockGroup = 'job';
        $this->_controller = 'adminhtml_feature';
 
        $this->_updateButton('save', 'label', Mage::helper('job')->__('Save Feature'));
        $this->_updateButton('delete', 'label', Mage::helper('job')->__('Delete Feature'));
    }
 
    public function getHeaderText()
    {
        if( Mage::registry('feature_data') && Mage::registry('feature_data')->getId() ) {
            return Mage::helper('job')->__("Edit Feature '%s'", $this->htmlEscape(Mage::registry('feature_data')->getName()));
        } else {
            return Mage::helper('job')->__('Add Feature');
        }
    }
}