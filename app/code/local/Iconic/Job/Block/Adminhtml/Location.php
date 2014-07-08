<?php
 
class Iconic_Job_Block_Adminhtml_Location extends Mage_Adminhtml_Block_Widget_Grid_Container
{
    public function __construct()
    {
        $this->_controller = 'adminhtml_location';
        $this->_blockGroup = 'job';
        $this->_headerText = Mage::helper('job')->__('Location Manager');
        $this->_addButtonLabel = Mage::helper('job')->__('Add Location');
        parent::__construct();
    }
}