<?php
 
class Iconic_Job_Block_Adminhtml_Job_Edit extends Mage_Adminhtml_Block_Widget_Form_Container
{
    protected function _prepareLayout() {
	    parent::_prepareLayout();
	    if (Mage::getSingleton('cms/wysiwyg_config')->isEnabled()) {
	        $this->getLayout()->getBlock('head')->setCanLoadTinyMce(true);
	    }
	}
	
    public function __construct()
    {
        parent::__construct();
               
        $this->_objectId = 'id';
        $this->_blockGroup = 'job';
        $this->_controller = 'adminhtml_job';
 
        $this->_updateButton('save', 'label', Mage::helper('job')->__('Save Job'));
        $this->_updateButton('delete', 'label', Mage::helper('job')->__('Delete Job'));
    }
 
    public function getHeaderText()
    {
        if( Mage::registry('job_data') && Mage::registry('job_data')->getId() ) {
            return Mage::helper('job')->__("Edit Job '%s'", $this->htmlEscape(Mage::registry('job_data')->getTitle()));
        } else {
            return Mage::helper('job')->__('Add Job');
        }
    }
}