<?php
 
class Iconic_Job_Block_Adminhtml_Level extends Mage_Adminhtml_Block_Widget_Grid_Container
{
    public function __construct()
    {
        $this->_controller = 'adminhtml_level';
        $this->_blockGroup = 'job';
        $this->_headerText = Mage::helper('job')->__('Level Manager');
        $this->_addButtonLabel = Mage::helper('job')->__('Add Level');
        parent::__construct();
    }
}