<?php
 
class Iconic_Blog_Block_Adminhtml_Blog_Edit_Tabs extends Mage_Adminhtml_Block_Widget_Tabs
{
 
    public function __construct()
    {
        parent::__construct();
        $this->setId('blog_tabs');
        $this->setDestElementId('edit_form');
        $this->setTitle(Mage::helper('blog')->__('Iconic Blogs'));
    }
 
    protected function _beforeToHtml()
    {
        $this->addTab('form_section', array(
            'label'     => Mage::helper('blog')->__('Blog Details'),
            'title'     => Mage::helper('blog')->__('Blog Details'),
            'content'   => $this->getLayout()->createBlock('blog/adminhtml_blog_edit_tab_form')->toHtml(),
        ));
		
		$this->addTab('additional', array(
            'label'     => Mage::helper('blog')->__('Additional Options'),
            'content'   => $this->getLayout()
                ->createBlock('blog/adminhtml_blog_edit_tab_additional')->initForm()->toHtml(),
        ));
       
        return parent::_beforeToHtml();
    }
}