<?php
class Iconic_Blog_Block_Adminhtml_Blog_Grid_Renderer_Category
    extends Mage_Adminhtml_Block_Widget_Grid_Column_Renderer_Action
{
    public function render(Varien_Object $row)
    {
        if($row->getData($this->getColumn()->getIndex())==""){
            return "";
        }else{
        	$data = $row->getData($this->getColumn()->getIndex());
			$cat = Mage::getModel('blog/category')->load($data);
			$parent = Mage::getModel('blog/parentcategory')->load($cat->getParentcategoryId());
			return $parent->getName();
        }
    }
}