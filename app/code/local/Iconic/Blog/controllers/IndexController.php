<?php
class Iconic_Blog_IndexController extends Mage_Core_Controller_Front_Action
{
    public function indexAction()
    {
        $this->loadLayout();
		
		//breadcrumbs
		$helper = Mage::helper('blog');
		if ($breadcrumbs = $this->getLayout()->getBlock('breadcrumbs')) {
			$breadcrumbs->addCrumb('home', array('label'=>$helper->__('Trang chủ'), 'title'=>$helper->__('Trang chủ'), 'link'=>Mage::getBaseUrl()));
			$breadcrumbs->addCrumb('blog', array('label'=>$helper->__('Blog'), 'title'=>$helper->__('Blog'), 'link'=>Mage::getUrl(Mage::helper('blog')->getRoute())));
		}
		
		$head = $this->getLayout()->getBlock('head');
		$catBlock = $this->getLayout()->getBlock('category');
		$tit = $helper->__('Blog');
		if($parent = $this->getRequest()->getParam('parent')){
			$parentArr = array($parent);
			$catBlock->setParent($parentArr);
			$parent = Mage::getModel('blog/parentcategory')->load($parent);
			$tit .= '|'.$parent->getName();
			$breadcrumbs->addCrumb('parent', array('label'=>$parent->getName(), 'title'=>$parent->getName(), 'link'=>$parent->getUrl()));
		}
		
		if($authorId = $this->getRequest()->getParam('author')){
			$author = Mage::getModel('blog/author')->load($authorId);
			$tit .= '|'.$author->getName();
			$breadcrumbs->addCrumb('author', array('label'=>$author->getName(), 'title'=>$author->getName(), 'link'=>$author->getUrl()));
		}
		if($cat = $this->getRequest()->getParam('cat')){
			$catArr = array($cat);
			$catBlock->setCat($catArr);
			$cat = Mage::getModel('blog/category')->load($cat);
			$tit .= '|'.$cat->getName;
			$breadcrumbs->addCrumb('cat', array('label'=>$cat->getName()));
		}
		$collection = Mage::getModel('blog/blog')->getCollection();
		
		if($parentId = $this->getRequest()->getParam('parent')){
			$parent = Mage::getModel('blog/parentcategory')->load($parentId);
			$cats = Mage::getModel('blog/category')->getCollection()->addFieldToFilter('parentcategory_id',array('eq'=>$parent->getId()));
			if($cats->count() > 0){
				$condition = array();
				foreach($cats as $cat){
					$condition[] = array('like' => '%,'.(int)$cat->getId().',%');
				}
				$collection->addFieldToFilter('category_id',$condition);
			}else{
				$collection =  new Varien_Data_Collection(); //no sub category
			}
		}
		if($cat = $this->getRequest()->getParam('cat')){
			$collection->addFieldToFilter('category_id',array('like'=>'%,'.$cat.',%'));
		}
		
		if($keyword = $this->getRequest()->getParam('q')){
			$likeStm = array('like'=> "%{$keyword}%");
			$collection->addFieldToFilter(
							array('title', 'full_content'),
							array($likeStm, $likeStm));
		}
		if($authorId = $this->getRequest()->getParam('author')){
			$collection->addFieldToFilter('author_id', array('eq'=>$authorId));
		}
		$collection->setOrder('create_time','DESC');
		
		//set page for ajax load
		$pagesize = 8;
		$collection->setPageSize($pagesize);
		if($page = intval($this->getRequest()->getParam('page'))){
			$collection->setCurPage($page);
		}else{
			$collection->setCurPage(1);
		}
		$this->getLayout()->getBlock('result')->setCollection($collection);
		
		$head->setTitle($tit);
		
		$this->getRequest()->getParams();
		
        $this->renderLayout();
    }
	
	public function ajaxAction(){
		$ids = $this->getRequest()->getParam('ids');
		$blogs = Mage::getModel('blog/blog')->getCollection()->addFieldToFilter('blog_id', array('in'=>$ids));
		foreach($blogs as $blog){
			$count = Mage::helper('blog')->getShareCount($blog->getUrl());
			$blog->setFacebook((int)$count['facebook'])
					->setTwitter((int)$count['twitter'])
					->save();
		}
		//$this->getResponse()->clearHeaders()->setHeader('Content-type','application/json',true);
        //$this->getResponse()->setBody(json_encode($json));
	}

	public function searchAction(){
		if($keyword = $this->getRequest()->getParam('q')){
			Mage::getSingleton('core/session')->setBlogSearch($keyword);
			$this->_redirect(Mage::helper('blog')->getRoute() . DS . Mage::helper('job')->formatUrlKey($keyword));
			return;
		}else{
			Mage::getSingleton('core/session')->unsBlogSearch();
			$this->_redirect(Mage::helper('job')->getRoute());
			return;
		}
	}
	
}