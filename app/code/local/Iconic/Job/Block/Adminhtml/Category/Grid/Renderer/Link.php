<?php
class Iconic_Job_Block_Adminhtml_Category_Grid_Renderer_Link
    extends Mage_Adminhtml_Block_Widget_Grid_Column_Renderer_Action
{
    public function render(Varien_Object $row)
    {
        $parentId = Mage::getModel('job/category')->load($row->getId())->getParentcategoryId();
    	$html = Mage::getModel('job/parentcategory')->load($parentId)->getGroupCategory();
		return $html;
    }
}