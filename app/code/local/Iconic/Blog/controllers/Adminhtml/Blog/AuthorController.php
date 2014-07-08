<?php
 
class Iconic_Blog_Adminhtml_Blog_AuthorController extends Mage_Adminhtml_Controller_Action
{
 
    protected function _initAction()
    {
        $this->loadLayout()
            ->_setActiveMenu('blog/items')
            ->_addBreadcrumb(Mage::helper('adminhtml')->__('Author Manager'), Mage::helper('adminhtml')->__('Author Manager'));
        return $this;
    }   
   
    public function indexAction() {
        $this->_initAction(); 
        $this->_addContent($this->getLayout()->createBlock('blog/adminhtml_author'));
        $this->renderLayout();
    }
 
    public function editAction()
    {
        $blogId     = $this->getRequest()->getParam('id');
        $blogModel  = Mage::getModel('blog/author')->load($blogId);
 
        if ($blogModel->getId() || $blogId == 0) {
 
            Mage::register('author_data', $blogModel);
 
            $this->loadLayout();
            $this->_setActiveMenu('blog/items');
           
            $this->_addBreadcrumb(Mage::helper('adminhtml')->__('Item Manager'), Mage::helper('adminhtml')->__('Author'));
            $this->_addBreadcrumb(Mage::helper('adminhtml')->__('Item News'), Mage::helper('adminhtml')->__('Author Details'));
           
            $this->getLayout()->getBlock('head')->setCanLoadExtJs(true);
           
            $this->_addContent($this->getLayout()->createBlock('blog/adminhtml_author_edit'))
                 ->_addLeft($this->getLayout()->createBlock('blog/adminhtml_author_edit_tabs'));
               
            $this->renderLayout();
        } else {
            Mage::getSingleton('adminhtml/session')->addError(Mage::helper('blog')->__('Item does not exist'));
            $this->_redirect('*/*/');
        }
    }
   
    public function newAction()
    {
        $this->_forward('edit');
    }
   
    public function saveAction()
    {
        if ($data = $this->getRequest()->getPost() ) {
            try {
                $blogModel = Mage::getModel('blog/author');
				if (isset($_FILES['image']['name']) && ($_FILES['image']['name'] != '')
                    && ($_FILES['image']['size'] != 0) ) {
                    try {
                        $uploader = new Varien_File_Uploader('image');
                        $uploader->setAllowedExtensions(array('jpg','jpeg','gif','png'));
                        $uploader->setAllowRenameFiles(false);

                        // Set the file upload mode
                        // false -> get the file directly in the specified folder
                        // true -> get the file in folders like /media/a/b/
                        $uploader->setFilesDispersion(false);

                        $path = Mage::getBaseDir('media') . DS . 'blog' . DS;

                        //saved the name in DB
                        $prefix = time().rand();
                        $fileName = $prefix.'.'.pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
                        $uploader->save($path, $fileName);
                        $filepath = 'blog' . DS .$fileName;
						
						//$basePath - origin file location
						$imgurl = Mage::getBaseDir('media') . DS . 'blog' . DS .$fileName;
						$imageObj = new Varien_Image($imgurl);
						$imageObj->constrainOnly(TRUE);
						$imageObj->keepAspectRatio(FALSE);
						$imageObj->keepFrame(FALSE);
						//$width, $height - sizes you need (Note: when keepAspectRatio(TRUE), height would be ignored)
						$imageObj->resize(25,25);
						$imageObj->quality(60);
						//$newPath - name of resized image
						$imageObj->save($imgurl);
                        /*
                        if (!getimagesize($filepath)) {
                            Mage::throwException($this->__('Disallowed file type.'));
                        }*/
                        $data['image'] = $filepath;
                        $data['image'] = str_replace('\\', '/', $data['image']);
                    } catch (Exception $e) {
                        Mage::getSingleton('adminhtml/session')->addError($e->getMessage());
                        $this->_redirect('*/*/edit', array('id' => $this->getRequest()->getParam('id')));
                        return;
                    }
                }elseif (isset($data['image']['delete'])) {
                    $path = Mage::getBaseDir('media') . DS;
                    $result = unlink($path . $data['image']['value']);
                    $data['image'] = '';
                } else {
                    if (isset($data['image']['value'])) {
                        $data['image'] = $data['image']['value'];
                    }
                }
               
                $blogModel->setData($data)
                	->setId($this->getRequest()->getParam('id'))
                    ->save();
               
                Mage::getSingleton('adminhtml/session')->addSuccess(Mage::helper('adminhtml')->__('Item was successfully saved'));
                Mage::getSingleton('adminhtml/session')->setBlogData(false);
 
                $this->_redirect('*/*/');
                return;
            } catch (Exception $e) {
                Mage::getSingleton('adminhtml/session')->addError($e->getMessage());
                Mage::getSingleton('adminhtml/session')->setBlogData($this->getRequest()->getPost());
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
                $blogModel = Mage::getModel('blog/author');
               
                $blogModel->setId($this->getRequest()->getParam('id'))
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
     * Product grid for AJAX author.
     * Sort and filter result for example.
     */
    public function gridAction()
    {
        $this->loadLayout();
        $this->getResponse()->setBody(
               $this->getLayout()->createBlock('blog/adminhtml_author_grid')->toHtml()
        );
    }
}