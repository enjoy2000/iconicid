<?php
 
class Iconic_Job_Block_Adminhtml_Type extends Mage_Adminhtml_Block_Widget_Grid_Container
{
    public function __construct()
    {
        $this->_controller = 'adminhtml_type';
        $this->_blockGroup = 'job';
        $this->_headerText = Mage::helper('job')->__('Type Manager');
        $this->_addButtonLabel = Mage::helper('job')->__('Add Type');
        parent::__construct();
    }
}