<?php
 
class Iconic_Blog_Block_Adminhtml_Author extends Mage_Adminhtml_Block_Widget_Grid_Container
{
    public function __construct()
    {
        $this->_controller = 'adminhtml_author';
        $this->_blockGroup = 'blog';
        $this->_headerText = Mage::helper('blog')->__('Author Manager');
        $this->_addButtonLabel = Mage::helper('blog')->__('Add Author');
        parent::__construct();
    }
}