<?php
 
class Iconic_Job_Adminhtml_Job_FeatureController extends Mage_Adminhtml_Controller_Action
{
 
    protected function _initAction()
    {
        $this->loadLayout()
            ->_setActiveMenu('job/items')
            ->_addBreadcrumb(Mage::helper('adminhtml')->__('Feature Manager'), Mage::helper('adminhtml')->__('Feature Manager'));
        return $this;
    }   
   
    public function indexAction() {
        $this->_initAction(); 
        $this->_addContent($this->getLayout()->createBlock('job/adminhtml_feature'));
        $this->renderLayout();
    }
 
    public function editAction()
    {
        $jobId     = $this->getRequest()->getParam('id');
        $jobModel  = Mage::getModel('job/feature')->load($jobId);
 
        if ($jobModel->getId() || $jobId == 0) {
 
            Mage::register('feature_data', $jobModel);
 
            $this->loadLayout();
            $this->_setActiveMenu('job/items');
           
            $this->_addBreadcrumb(Mage::helper('adminhtml')->__('Item Manager'), Mage::helper('adminhtml')->__('Feature'));
            $this->_addBreadcrumb(Mage::helper('adminhtml')->__('Item News'), Mage::helper('adminhtml')->__('Feature Details'));
           
            $this->getLayout()->getBlock('head')->setCanLoadExtJs(true);
           
            $this->_addContent($this->getLayout()->createBlock('job/adminhtml_feature_edit'))
                 ->_addLeft($this->getLayout()->createBlock('job/adminhtml_feature_edit_tabs'));
               
            $this->renderLayout();
        } else {
            Mage::getSingleton('adminhtml/session')->addError(Mage::helper('job')->__('Item does not exist'));
            $this->_redirect('*/*/');
        }
    }
   
    public function newAction()
    {
        $this->_forward('edit');
    }
   
    public function saveAction()
    {
        if ( $this->getRequest()->getPost() ) {
            try {
                $postData = $this->getRequest()->getPost();
                $jobModel = Mage::getModel('job/feature');
               
                $jobModel->setData($postData)
                	->setId($this->getRequest()->getParam('id'))
                    ->save();
               
                Mage::getSingleton('adminhtml/session')->addSuccess(Mage::helper('adminhtml')->__('Item was successfully saved'));
                Mage::getSingleton('adminhtml/session')->setJobData(false);
 
                $this->_redirect('*/*/');
                return;
            } catch (Exception $e) {
                Mage::getSingleton('adminhtml/session')->addError($e->getMessage());
                Mage::getSingleton('adminhtml/session')->setJobData($this->getRequest()->getPost());
                $this->_redirect('*/*/edit', array('id' => $this->getRequest()->getParam('id')));
                return;
            }
        }
        $this->_redirect('*/*/');
    }
   
    public function deleteAction()
    {
        if( $this->getRequest()->getParam('id') > 0 ) {
            try {
                $jobModel = Mage::getModel('job/feature');
               
                $jobModel->setId($this->getRequest()->getParam('id'))
                    ->delete();
                   
                Mage::getSingleton('adminhtml/session')->addSuccess(Mage::helper('adminhtml')->__('Item was successfully deleted'));
                $this->_redirect('*/*/');
            } catch (Exception $e) {
                Mage::getSingleton('adminhtml/session')->addError($e->getMessage());
                $this->_redirect('*/*/edit', array('id' => $this->getRequest()->getParam('id')));
            }
        }
        $this->_redirect('*/*/');
    }
    /**
     * Product grid for AJAX feature.
     * Sort and filter result for example.
     */
    public function gridAction()
    {
        $this->loadLayout();
        $this->getResponse()->setBody(
               $this->getLayout()->createBlock('job/adminhtml_feature_grid')->toHtml()
        );
    }
}