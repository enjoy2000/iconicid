<?php
 
class Iconic_Job_Block_Adminhtml_Category_Edit_Tab_Form extends Mage_Adminhtml_Block_Widget_Form
{
    protected function _prepareForm()
    {
        $form = new Varien_Data_Form();
        $this->setForm($form);
        $fieldset = $form->addFieldset('category_form', array('legend'=>Mage::helper('job')->__('Category information')));
       
        $fieldset->addField('name', 'text', array(
            'label'     => Mage::helper('job')->__('Name'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'name',
        ));
		
		$fieldset->addField('name_en', 'text', array(
            'label'     => Mage::helper('job')->__('English Trans'),
            'required'  => false,
            'name'      => 'name_en',
        ));
		
		$fieldset->addField('url_key', 'text', array(
            'label'     => Mage::helper('job')->__('Url Key'),
            'required'  => false,
            'name'      => 'url_key',
        ));
		
		$industry = Mage::getModel('job/parentcategory')->getCollection()->addFieldToFilter('group_category',array('eq'=>'industry'));
		$function = Mage::getModel('job/parentcategory')->getCollection()->addFieldToFilter('group_category',array('eq'=>'function'));
		foreach($industry as $cat){
			$arrayIn[] = array(
					'label'		=> $cat->getName(),
					'value' 	=> $cat->getParentcategoryId(),
					);	
		}
		foreach($function as $cat){
			$arrayFuc[] = array(
					'label'		=> $cat->getName(),
					'value' 	=> $cat->getParentcategoryId(),
					);	
		}
		$fieldset->addField('parentcategory_id', 'select', array(
            'label'     => Mage::helper('job')->__('Parent Category'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'parentcategory_id',
            'values'	=> array(
						array(
							'label' => 'Industry',
							'value' => $arrayIn,
						),
						array(
							'label' => 'Function',
							'value' => $arrayFuc,
						),
					),
        ));
 
        if ( Mage::getSingleton('adminhtml/session')->getCategoryData() )
        {
            $form->setValues(Mage::getSingleton('adminhtml/session')->getCategoryData());
            Mage::getSingleton('adminhtml/session')->setCategoryData(null);
        } elseif ( Mage::registry('category_data') ) {
            $form->setValues(Mage::registry('category_data')->getData());
        }
        return parent::_prepareForm();
    }
}