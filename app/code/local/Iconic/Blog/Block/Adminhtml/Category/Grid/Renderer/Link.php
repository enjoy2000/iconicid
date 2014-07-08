<?php
class Iconic_Blog_Block_Adminhtml_Category_Grid_Renderer_Link
    extends Mage_Adminhtml_Block_Widget_Grid_Column_Renderer_Action
{
    public function render(Varien_Object $row)
    {
        $parentId = Mage::getModel('blog/category')->load($row->getId())->getParentcategoryId();
    	$html = Mage::getModel('blog/parentcategory')->load($parentId)->getGroupCategory();
		return $html;
    }
}