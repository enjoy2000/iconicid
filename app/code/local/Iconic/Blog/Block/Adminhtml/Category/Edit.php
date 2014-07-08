<?php
 
class Iconic_Blog_Block_Adminhtml_Category_Edit extends Mage_Adminhtml_Block_Widget_Form_Container
{
    public function __construct()
    {
        parent::__construct();
               
        $this->_objectId = 'id';
        $this->_blockGroup = 'blog';
        $this->_controller = 'adminhtml_category';
 
        $this->_updateButton('save', 'label', Mage::helper('blog')->__('Save Category'));
        $this->_updateButton('delete', 'label', Mage::helper('blog')->__('Delete Category'));
    }
 
    public function getHeaderText()
    {
        if( Mage::registry('category_data') && Mage::registry('category_data')->getId() ) {
            return Mage::helper('blog')->__("Edit Item '%s'", $this->htmlEscape(Mage::registry('category_data')->getName()));
        } else {
            return Mage::helper('blog')->__('Add Item');
        }
    }
}