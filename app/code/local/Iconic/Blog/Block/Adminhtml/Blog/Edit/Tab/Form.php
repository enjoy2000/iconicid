<?php
 
class Iconic_Blog_Block_Adminhtml_Blog_Edit_Tab_Form extends Mage_Adminhtml_Block_Widget_Form
{
	
    protected function _prepareForm()
    {
        $form = new Varien_Data_Form();
        $this->setForm($form);
        $fieldset = $form->addFieldset('blog_form', array('legend'=>Mage::helper('blog')->__('Blog Details')));

        $fieldset->addField('title', 'text', array(
            'label'     => Mage::helper('blog')->__('Title'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'title',
        ));
		
		$fieldset->addField('url_key', 'text', array(
            'label'     => Mage::helper('blog')->__('Url Key'),
            'required'  => false,
            'name'      => 'url_key',
        ));
		
		//get array categories
		$parentCategories = Mage::getModel('blog/parentcategory')->getCollection();
		foreach($parentCategories as $parent){
			$subCategories = Mage::getModel('blog/category')->getCollection();	
			$subCategories->addFieldToFilter('parentcategory_id',$parent->getParentcategoryId());
			$subCategories->setOrder('name','ASC');
			$arraySub = array();
			foreach($subCategories as $sub){
				$arraySub[] = 	array(
								'label'		=> $sub->getName(),
								'value' 	=> $sub->getCategoryId(),
				);				
			}
			$arrayCategories[] = array(
								'label'		=> $parent->getName(),
								'value'	=> $arraySub,
			);
		}
        $fieldset->addField('category_id', 'multiselect', array(
            'label'     => Mage::helper('blog')->__('Category'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'category_id',
            'values'	=> $arrayCategories,
        ));
		
		$fieldset->addField('image', 'image', array(
            'label'     => Mage::helper('blog')->__('Thumbnail'),
            'required'  => false,
            'name'      => 'image',
        ));
		
		$authors = Mage::getModel('blog/author')->getCollection();
		$arrayAu = array();
		foreach($authors as $author){
			$arrayAu[] = 	array(
							'label'		=> $author->getName(),
							'value' 	=> $author->getId(),
			);				
		}
        $fieldset->addField('author_id', 'select', array(
            'label'     => Mage::helper('blog')->__('Author'),
            'class'     => 'required-entry',
            'required'  => true,
            'name'      => 'author_id',
            'values'	=> $arrayAu,
        ));
		
		$fieldset->addField('full_content', 'editor', array(
            'name'      => 'full_content',
            'label'     => Mage::helper('blog')->__('Content'),
            'title'     => Mage::helper('blog')->__('Content'),
            'style'     => 'width:100%; height:400px;',
			'config' 	=> Mage::getSingleton('blog/wysiwyg_config')->getConfig(), 
			'wysiwyg' 	=> true, 
            'required'  => true,
        ));
       
        if ( Mage::getSingleton('adminhtml/session')->getBlogData() )
        {
            $form->setValues(Mage::getSingleton('adminhtml/session')->getBlogData());
            Mage::getSingleton('adminhtml/session')->setBlogData(null);
        } elseif ( Mage::registry('blog_data') ) {
            $form->setValues(Mage::registry('blog_data')->getData());
        }
        return parent::_prepareForm();
    }
}