<?php
class Iconic_Job_ApplyController extends Mage_Core_Controller_Front_Action{
	
	public function indexAction(){		
        $this->loadLayout();  
		
		
		// redirect if user not login 
		if (!Mage::getSingleton('customer/session')->isLoggedIn()) {
            $session = Mage::getSingleton('customer/session');
            $session->setAfterAuthUrl( Mage::helper('core/url')->getCurrentUrl() );
            $session->setBeforeAuthUrl( Mage::helper('core/url')->getCurrentUrl() );
            $this->_redirect(Mage::helper('job')->getLoginUrl());
            return $this;
        }
		
		$id = (int) $this->getRequest()->get('id');
		if($id <=0){
			Mage::helper('job')->redirectToSearchPage();
		}
		
		$item = Mage::getModel('job/job')->load($id);
		if(!$item->getId()){
			Mage::helper('job')->redirectToSearchPage();
		}
		$block = $this->getLayout()->getBlock('job_apply');
		//set breadcrumbs		
		$helper = Mage::helper('job');
		if ($breadcrumbs = $this->getLayout()->getBlock('breadcrumbs')) {
			$breadcrumbs->addCrumb('home', array('label'=>$helper->__('Trang chủ'), 'title'=>$helper->__('Trang chủ'), 'link'=>Mage::getBaseUrl()));
			$breadcrumbs->addCrumb('search_results', array('label'=>$helper->__('Kết quả tìm kiếm'), 'title'=>$helper->__('Kết quả tìm kiếm'), 'link'=>Mage::getUrl(Mage::helper('job')->getSearchUrl())));
			$breadcrumbs->addCrumb('job_details', array('label'=>$helper->__('Chi tiết công việc'), $helper->__('Chi tiết công việc')));
			$breadcrumbs->addCrumb('job_apply', array('label'=>$helper->__('Liên hệ ứng tuyển'), $helper->__('Liên hệ ứng tuyển')));
		}	
		//set user
		$user = Mage::getSingleton('customer/session')->getCustomer();
		$block->setUser($user);
		//set title by job title
		$this->getLayout()->getBlock('head')->setTitle(Mage::helper('job')->__('Ứng tuyển').' '.$item->getTitle()); 
		//set item to block
		$block->setItem($item);
		//set other varibles from other models			
		$block->setCategory(Mage::getModel('job/category')->load($item->getCategoryId()));
		$block->setFunctionCategory(Mage::getModel('job/category')->load($item->getFunctionCategoryId()));
		$block->setLocation(Mage::getModel('job/location')->load($item->getLocationId()));
		$block->setLevel(Mage::getModel('job/level')->load($item->getJobLevel()));
		$block->setType(Mage::getModel('job/type')->load($item->getJobType()));
		
		//get jobs form same category
		$block->setJobsInCategory($item->getJobsInCategory());
		       
		$this->renderLayout();
		   
	}

	public function uploadAction(){
		error_reporting(E_ALL | E_STRICT);
		require('UploadHandler.php');
		$upload_handler = new UploadHandler();
		$user = Mage::getSingleton('customer/session')->getCustomer();
		$upload_handler->options['upload_dir'] = Mage::getBaseDir().'/files/'.$user->getId().'/';
		$upload_handler->options['upload_url'] = Mage::getBaseUrl().'files/'.$user->getId().'/';
		$upload_handler->options['accept_file_types'] = '/\.(gif|jpe?g|png|docx?|xlsx?|pptx?|pdf)$/i';
		$upload_handler->initialize();
	}
	
	public function sendAction(){
		$this->loadLayout();
		
		// redirect if user not login 
		if (!Mage::getSingleton('customer/session')->isLoggedIn()) {
            $session = Mage::getSingleton('customer/session');
            $session->setAfterAuthUrl( Mage::helper('core/url')->getCurrentUrl() );
            $session->setBeforeAuthUrl( Mage::helper('core/url')->getCurrentUrl() );
            $this->_redirect(Mage::helper('job')->getLoginUrl());
            return $this;
        }
		$id = (int) $this->getRequest()->get('id');
		if($id <=0){
			Mage::helper('job')->redirectToSearchPage();
		}
		
		try{
			$user = Mage::getSingleton('customer/session')->getCustomer();
			
			$data = $this->getRequest()->getPost();
			$job = Mage::getModel('job/job')->load($id);
			$block = $this->getLayout()->getBlock('job_apply_success');
			$block->setItem($job);
			//set breadcrumbs		
			$helper = Mage::helper('job');
			if ($breadcrumbs = $this->getLayout()->getBlock('breadcrumbs')) {
				$breadcrumbs->addCrumb('home', array('label'=>$helper->__('Home'), 'title'=>$helper->__('Go to Home Page'), 'link'=>Mage::getBaseUrl()));
				$breadcrumbs->addCrumb('search_results', array('label'=>$helper->__('Kết quả tìm kiếm'), 'title'=>$helper->__('Kết quả tìm kiếm'), 'link'=>Mage::getUrl('job/search')));
				$breadcrumbs->addCrumb('job_details', array('label'=>$helper->__('Chi tiết công việc'), $helper->__('Chi tiết công việc')));
				$breadcrumbs->addCrumb('job_apply', array('label'=>$helper->__('Liên hệ ứng tuyển'), $helper->__('Liên hệ ứng tuyển')));
			}	
			//get jobs form same category
			$block->setJobsInCategory($job->getJobsInCategory());
			
			//create email content
			$cv = implode(';',$data['filenames']);
			$mail = new Zend_Mail('UTF-8');
			foreach($data['filenames'] as $filename){
				$file = Mage::getBaseDir().'/files/'.$user->getId().'/'.$filename;
				$at = new Zend_Mime_Part(file_get_contents($file));
				$at->filename = basename($file);
				$at->disposition = Zend_Mime::DISPOSITION_ATTACHMENT;
				$at->encoding = Zend_Mime::ENCODING_BASE64;
				        
				$mail->addAttachment($at);
			}
			
			//check input data
			if(!$data['name'] || !$data['email'] || !$data['message']){
				Mage::getSingleton('core/session')->addError(Mage::helper('job')->__('Not enough information.'));
				$this->_redirect('job/apply', array('id'=>$data['id']));
			}
			$config = array(
	                    'auth' => 'login',
	                    'ssl'  => 'tls',
					    'port' => 587,
					    'username' => 'test',
					    'password' => 'testing'
						);
	 
			$transport = new Zend_Mail_Transport_Smtp('mail.iconicvn.com', $config);
			//get general contact from config admin
			/* Sender Name */
			$nameAdmin = Mage::getStoreConfig('trans_email/ident_general/name'); 
			/* Sender Email */
			$emailAdmin = Mage::getStoreConfig('trans_email/ident_general/email');
			
			$bodyHtml = '<table><tbody>';			
			$bodyHtml .= '<tr><td>'.Mage::helper('job')->__('Link').':</td><td> '.Mage::helper('job')->getJobLink($job).'</td></tr>';
			$bodyHtml .= '<tr><td>'.Mage::helper('job')->__('Tên ứng viên').':</td><td> '.$data['name'].'</td></tr>';
			$bodyHtml .= '<tr><td>'.Mage::helper('job')->__('Email').':</td><td> '.$data['email'].'</td></tr>';			
			$bodyHtml .= '<tr><td>'.Mage::helper('job')->__('Nội dung').':</td><td> '.$data['message'].'</td></tr>';
			$bodyHtml .= '</tbody></table>';
			
			$mail->setBodyHtml($bodyHtml);
			$mail->addTo('auto_iconic_vn@iconic-intl.com',Mage::helper('job')->__('IconicVN'));
			$mail->setFrom('info@iconicvn.com', Mage::helper('job')->__('IconicVN'));
			$mail->setSubject(Mage::helper('job')->__('Ứng tuyển').' "'. $job->getTitle()).'"';
			$checkSend = $mail->send($transport);
			if($checkSend){
				$this->getLayout()->getBlock('head')->setTitle(Mage::helper('job')->__('Bạn đã ứng tuyển thành công!'));
			}
			
			//set upload link to database
			if(strlen($cv) > 3){
				$user = Mage::getSingleton('customer/session')->getCustomer();
				$user->setUploadCv($cv)->save();
			}
			$this->renderLayout();
		}catch(Exception $e){
			//Mage::getSingleton('core/session')->addError($e);
			Mage::getSingleton('core/session')->addError(Mage::helper('job')->__('Không thể gửi mail.'));
			$this->_redirect('*/apply', array('id'=> $data['id']));
		}
	}
}
