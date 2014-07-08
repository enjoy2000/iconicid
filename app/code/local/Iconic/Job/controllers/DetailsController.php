<?php
class Iconic_Job_DetailsController extends Mage_Core_Controller_Front_Action{
	
	public function indexAction(){		
        $this->loadLayout();  
		/*
		 * redirect if user not login 
		if (!Mage::getSingleton('customer/session')->isLoggedIn()) {
            $session = Mage::getSingleton('customer/session');
            $session->setAfterAuthUrl( Mage::helper('core/url')->getCurrentUrl() );
            $session->setBeforeAuthUrl( Mage::helper('core/url')->getCurrentUrl() );
            $this->_redirect('customer/account/login/');
            return $this;
        }		 
		 */
		
		$id = (int) $this->getRequest()->get('id');
		if($id <=0){
			Mage::helper('job')->redirectToSearchPage();
		}
		
		$item = Mage::getModel('job/job')->load($id);
		if(!$item->getId()){
			Mage::helper('job')->redirectToSearchPage();
		}
		
		//set breadcrumbs		
		$helper = Mage::helper('job');
		if ($breadcrumbs = $this->getLayout()->getBlock('breadcrumbs')) {
			$breadcrumbs->addCrumb('home', array('label'=>$helper->__('Trang chủ'), 'title'=>$helper->__('Trang chủ'), 'link'=>Mage::getBaseUrl()));
			$breadcrumbs->addCrumb('search_results', array('label'=>$helper->__('Kết quả tìm kiếm'), 'title'=>$helper->__('Kết quả tìm kiếm'), 'link'=>Mage::getUrl(Mage::helper('job')->getSearchUrl())));
			$breadcrumbs->addCrumb('job_details', array('label'=>$helper->__('Chi tiết công việc'), $helper->__('Chi tiết công việc')));
		}	
		//set title by job title
		$this->getLayout()->getBlock('head')->setTitle($item->getTitle()); 
		//set description
		$desc = $item->getTitle();
		$desc .= ' - ' . Mage::helper('job')->limitText(strip_tags($item->getInfo()), 160 - strlen($item->getTitle) - 6);
		$this->getLayout()->getBlock('head')->setDescription($desc);
		//set item to block
		$this->getLayout()->getBlock('job_details')->setItem($item);
		//set other varibles from other models			
		$this->getLayout()->getBlock('job_details')->setCategory(Mage::getModel('job/category')->load($item->getCategoryId()));
		$this->getLayout()->getBlock('job_details')->setFunctionCategory(Mage::getModel('job/category')->load($item->getFunctionCategoryId()));
		$this->getLayout()->getBlock('job_details')->setLocation(Mage::getModel('job/location')->load($item->getLocationId()));
		$this->getLayout()->getBlock('job_details')->setLevel(Mage::getModel('job/level')->load($item->getJobLevel()));
		$this->getLayout()->getBlock('job_details')->setType(Mage::getModel('job/type')->load($item->getJobType()));
		
		//get jobs form same category
		$this->getLayout()->getBlock('job_details')->setJobsInCategory($item->getJobsInCategory());
		       
		$this->renderLayout();
		   
	}
}
