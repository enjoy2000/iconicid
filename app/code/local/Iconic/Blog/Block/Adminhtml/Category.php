<?php
 
class Iconic_Blog_Block_Adminhtml_Category extends Mage_Adminhtml_Block_Widget_Grid_Container
{
    public function __construct()
    {
        $this->_controller = 'adminhtml_category';
        $this->_blockGroup = 'blog';
        $this->_headerText = Mage::helper('blog')->__('Categories Manager');
        $this->_addButtonLabel = Mage::helper('blog')->__('Add Category');
        parent::__construct();
    }
}