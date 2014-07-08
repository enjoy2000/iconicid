<?php
/**
 * CommerceLab Co.
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the CommerceLab License Agreement
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://commerce-lab.com/LICENSE.txt
 *
 * @category   CommerceLab
 * @package    Iconic_Blog
 * @copyright  Copyright (c) 2012 CommerceLab Co. (http://commerce-lab.com)
 * @license    http://commerce-lab.com/LICENSE.txt
 */

class Iconic_Blog_Block_Adminhtml_Blog_Edit_Tab_Additional extends Mage_Adminhtml_Block_Widget_Form
{
    public function initForm()
    {
        $form = new Varien_Data_Form();
		
        $form->addField('meta_keywords', 'editor', array(
            'name' => 'meta_keywords',
            'label' => Mage::helper('blog')->__('Keywords'),
            'title' => Mage::helper('blog')->__('Meta Keywords'),
            'style' => 'width: 520px;',
        ));

        $form->addField('meta_description', 'editor', array(
            'name' => 'meta_description',
            'label' => Mage::helper('blog')->__('Description'),
            'title' => Mage::helper('blog')->__('Meta Description'),
            'style' => 'width: 520px;',
        ));

        if ( Mage::getSingleton('adminhtml/session')->getBlogData() ) {
            $form->setValues(Mage::getSingleton('adminhtml/session')->getBlogData());
            Mage::getSingleton('adminhtml/session')->setBlogData(null);
        } elseif ( Mage::registry('blog_data') ) {
            $form->setValues(Mage::registry('blog_data')->getData());
        }
        $this->setForm($form);
        return $this;
    }

}
