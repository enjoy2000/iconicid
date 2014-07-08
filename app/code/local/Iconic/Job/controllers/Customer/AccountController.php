<?php
# Controllers are not autoloaded so we will have to do it manually:
require_once 'Mage/Customer/controllers/AccountController.php';
class Iconic_Job_Customer_AccountController extends Mage_Customer_AccountController
{
	
    # Overloaded createPostAction
    public function createPostAction()
    {
        /** @var $session Mage_Customer_Model_Session */
        $session = $this->_getSession();
        if ($session->isLoggedIn()) {
            $this->_redirect('*/*/');
            return;
        }
        $session->setEscapeMessages(true); // prevent XSS injection in user input
        if (!$this->getRequest()->isPost()) {
            $errUrl = $this->_getUrl('*/*/create', array('_secure' => true));
            $this->_redirectError($errUrl);
            return;
        }

        $customer = $this->_getCustomer();

        try {
            $errors = $this->_getCustomerErrors($customer);

            if (empty($errors)) {
            	$customer->setSex($this->getRequest()->getParam('sex'));
            	$customer->setLocation($this->getRequest()->getParam('location'));
            	$customer->setBirthYear($this->getRequest()->getParam('birthyear'));
                $customer->save();
                $this->_dispatchRegisterSuccess($customer);
				//success action
				$session = $this->_getSession();
		        if ($customer->isConfirmationRequired()) {
		            /** @var $app Mage_Core_Model_App */
		            $app = $this->_getApp();
		            /** @var $store  Mage_Core_Model_Store*/
		            $store = $app->getStore();
		            $customer->sendNewAccountEmail(
		                'confirmation',
		                $session->getBeforeAuthUrl(),
		                $store->getId()
		            );
		            $customerHelper = $this->_getHelper('customer');
		            $session->addSuccess($this->__('Account confirmation is required. Please, check your email for the confirmation link. To resend the confirmation email please <a href="%s">click here</a>.',
		                $customerHelper->getEmailConfirmationUrl($customer->getEmail())));
		            $url = $this->_getUrl('*/*/index', array('_secure' => true));
		        } else {
		            $session->setCustomerAsLoggedIn($customer);
		            $session->renewSession();
		            $url = $this->_welcomeCustomer($customer);
		        }
                $this->_redirect('job/index/afterregister');
                return;
            } else {
                $this->_addSessionError($errors);
            }
        } catch (Mage_Core_Exception $e) {
            $session->setCustomerFormData($this->getRequest()->getPost());
            if ($e->getCode() === Mage_Customer_Model_Customer::EXCEPTION_EMAIL_EXISTS) {
                $url = $this->_getUrl(Mage::helper('job')->getForgotUrl());
                $message = $this->__('Email này đã được dùng để đăng ký. hãy bấm vào <a href="%s">đây</a> để lấy lại mật khẩu và quyền truy cập tài khoản.', $url);
                $session->setEscapeMessages(false);
            } else {
                $message = $e->getMessage();
            }
            $session->addError($message);
        } catch (Exception $e) {
            $session->setCustomerFormData($this->getRequest()->getPost())
                ->addException($e, $this->__('Cannot save the customer.'));
        }
        $errUrl = $this->_getUrl('*/*/create', array('_secure' => true));
        $this->_redirectError($errUrl);
    }

	
    /**
     * Forgot customer password action
     */
    public function forgotPasswordPostAction()
    {
        $email = (string) $this->getRequest()->getPost('email');
        if ($email) {
            if (!Zend_Validate::is($email, 'EmailAddress')) {
                $this->_getSession()->setForgottenEmail($email);
                $this->_getSession()->addError($this->__('Invalid email address.'));
                $this->_redirect('*/*/forgotpassword');
                return;
            }

            /** @var $customer Mage_Customer_Model_Customer */
            $customer = $this->_getModel('customer/customer')
                ->setWebsiteId(Mage::app()->getStore()->getWebsiteId())
                ->loadByEmail($email);

            if ($customer->getId()) {
                try {
                    $newResetPasswordLinkToken =  $this->_getHelper('customer')->generateResetPasswordLinkToken();
                    $customer->changeResetPasswordLinkToken($newResetPasswordLinkToken);
                    $customer->sendPasswordResetConfirmationEmail();
                } catch (Exception $exception) {
                    $this->_getSession()->addError($exception->getMessage());
                    $this->_redirect('*/*/forgotpassword');
                    return;
                }
            }
            $this->_redirect('job/index/afterforgot', array('m'=>$email));
			
            return;
        } else {
            $this->_getSession()->addError($this->__('Please enter your email.'));
            $this->_redirect('*/*/forgotpassword');
            return;
        }
    }
}