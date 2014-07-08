<?php
class Iconic_Blog_DetailController extends Mage_Core_Controller_Front_Action
{
    public function indexAction()
    {
        $this->loadLayout();
		if($id = $this->getRequest()->getParam('id')){
			$catBlock = $this->getLayout()->getBlock('category');
			$head = $this->getLayout()->getBlock('head');
			if($parent = $this->getRequest()->getParam('parent')){
				$catBlock->setParent($parent);
			}
			if($cat = $this->getRequest()->getParam('cat')){
				$catBlock->setCat($cat);
			}
			$blog = Mage::getModel('blog/blog')->load($id);
			
			//breadcrumbs
			$helper = Mage::helper('blog');
			if ($breadcrumbs = $this->getLayout()->getBlock('breadcrumbs')) {
				$breadcrumbs->addCrumb('home', array('label'=>$helper->__('Trang chủ'), 'title'=>$helper->__('Trang chủ'), 'link'=>Mage::getBaseUrl()));
				$breadcrumbs->addCrumb('blog', array('label'=>$helper->__('Blog'), 'title'=>$helper->__('Blog'), 'link'=>Mage::getUrl(Mage::helper('blog')->getRoute())));
				$breadcrumbs->addCrumb('blog_title', array('label'=>$blog->getTitle(), 'title'=>$blog->getTitle()));
			}
			
			//set head
			$head->setTitle($blog->getTitle());
			if($blog->getMetaDescription()){
				$head->setDescription($blog->getMetaDescription());
			}
			if($blog->getKeywords()){
				$head->setKeywords($blog->getKeywords());
			}
			
			$detailBlock = $this->getLayout()->getBlock('detail');
			$detailBlock->setBlog($blog);
			$blog->setViews($blog->getViews() + 1)->save();
		}
        $this->renderLayout();
    }
}