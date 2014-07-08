<?php
 
class Iconic_Blog_Block_Adminhtml_Blog_Edit extends Mage_Adminhtml_Block_Widget_Form_Container
{
    protected function _prepareLayout() {
	    parent::_prepareLayout();
	    if (Mage::getSingleton('cms/wysiwyg_config')->isEnabled()) {
	        $this->getLayout()->getBlock('head')->setCanLoadTinyMce(true);
	        $this->getLayout()->getBlock('head')->setCanLoadExtJs(true);
	    }
	}
	
    public function __construct()
    {
        parent::__construct();
               
        $this->_objectId = 'id';
        $this->_blockGroup = 'blog';
        $this->_controller = 'adminhtml_blog';
 
        $this->_updateButton('save', 'label', Mage::helper('blog')->__('Save Blog'));
        $this->_updateButton('delete', 'label', Mage::helper('blog')->__('Delete Blog'));
    }
 
    public function getHeaderText()
    {
        if( Mage::registry('blog_data') && Mage::registry('blog_data')->getId() ) {
            return Mage::helper('blog')->__("Edit Blog '%s'", $this->htmlEscape(Mage::registry('blog_data')->getTitle()));
        } else {
            return Mage::helper('blog')->__('Add Blog');
        }
    }
}