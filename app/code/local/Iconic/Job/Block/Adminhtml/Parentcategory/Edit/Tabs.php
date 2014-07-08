<?php
 
class Iconic_Job_Block_Adminhtml_Parentcategory_Edit_Tabs extends Mage_Adminhtml_Block_Widget_Tabs
{
 
    public function __construct()
    {
        parent::__construct();
        $this->setId('job_tabs');
        $this->setDestElementId('edit_form');
        $this->setTitle(Mage::helper('job')->__('Parent Category'));
    }
 
    protected function _beforeToHtml()
    {
        $this->addTab('form_section', array(
            'label'     => Mage::helper('job')->__('Edit Category'),
            'title'     => Mage::helper('job')->__('Edit Category'),
            'content'   => $this->getLayout()->createBlock('job/adminhtml_parentcategory_edit_tab_form')->toHtml(),
        ));
       
        return parent::_beforeToHtml();
    }
}