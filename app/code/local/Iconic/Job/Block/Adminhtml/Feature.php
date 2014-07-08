<?php
 
class Iconic_Job_Block_Adminhtml_Feature extends Mage_Adminhtml_Block_Widget_Grid_Container
{
    public function __construct()
    {
        $this->_controller = 'adminhtml_feature';
        $this->_blockGroup = 'job';
        $this->_headerText = Mage::helper('job')->__('Feature Manager');
        $this->_addButtonLabel = Mage::helper('job')->__('Add Feature');
        parent::__construct();
    }
}