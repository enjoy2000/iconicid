<?php
 
class Iconic_Blog_Block_Adminhtml_Parentcategory_Edit_Tabs extends Mage_Adminhtml_Block_Widget_Tabs
{
 
    public function __construct()
    {
        parent::__construct();
        $this->setId('blog_tabs');
        $this->setDestElementId('edit_form');
        $this->setTitle(Mage::helper('blog')->__('Parent Category'));
    }
 
    protected function _beforeToHtml()
    {
        $this->addTab('form_section', array(
            'label'     => Mage::helper('blog')->__('Edit Category'),
            'title'     => Mage::helper('blog')->__('Edit Category'),
            'content'   => $this->getLayout()->createBlock('blog/adminhtml_parentcategory_edit_tab_form')->toHtml(),
        ));
       
        return parent::_beforeToHtml();
    }
}