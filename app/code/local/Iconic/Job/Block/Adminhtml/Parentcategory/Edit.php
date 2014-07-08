<?php
 
class Iconic_Job_Block_Adminhtml_Parentcategory_Edit extends Mage_Adminhtml_Block_Widget_Form_Container
{
    public function __construct()
    {
        parent::__construct();
               
        $this->_objectId = 'id';
        $this->_blockGroup = 'job';
        $this->_controller = 'adminhtml_parentcategory';
 
        $this->_updateButton('save', 'label', Mage::helper('job')->__('Save Category'));
        $this->_updateButton('delete', 'label', Mage::helper('job')->__('Delete Category'));
    }
 
    public function getHeaderText()
    {
        if( Mage::registry('category_data') && Mage::registry('category_data')->getId() ) {
            return Mage::helper('job')->__("Edit Item '%s'", $this->htmlEscape(Mage::registry('category_data')->getName()));
        } else {
            return Mage::helper('job')->__('Add Item');
        }
    }
}