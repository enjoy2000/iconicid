<?php
 
class Iconic_Job_Block_Adminhtml_Parentcategory extends Mage_Adminhtml_Block_Widget_Grid_Container
{
    public function __construct()
    {
        $this->_controller = 'adminhtml_parentcategory';
        $this->_blockGroup = 'job';
        $this->_headerText = Mage::helper('job')->__('Categories Manager');
        $this->_addButtonLabel = Mage::helper('job')->__('Add Category');
        parent::__construct();
    }
}