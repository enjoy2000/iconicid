<?php
 
class Iconic_Blog_Block_Adminhtml_Author_Edit extends Mage_Adminhtml_Block_Widget_Form_Container
{
    public function __construct()
    {
        parent::__construct();
               
        $this->_objectId = 'id';
        $this->_blockGroup = 'blog';
        $this->_controller = 'adminhtml_author';
 
        $this->_updateButton('save', 'label', Mage::helper('blog')->__('Save Author'));
        $this->_updateButton('delete', 'label', Mage::helper('blog')->__('Delete Author'));
    }
 
    public function getHeaderText()
    {
        if( Mage::registry('author_data') && Mage::registry('author_data')->getId() ) {
            return Mage::helper('blog')->__("Edit Author '%s'", $this->htmlEscape(Mage::registry('author_data')->getName()));
        } else {
            return Mage::helper('blog')->__('Add Author');
        }
    }
}