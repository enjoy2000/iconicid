<?php

class Iconic_Job_Block_Collection extends Mage_Core_Block_Template
{
 
    public function __construct()
    {
        parent::__construct();
        $connection = Mage::getSingleton('core/resource')->getConnection('core_write');
        $categories = $connection->fetchAll('SELECT `name` FROM `job_category`');
        $request = $this->getRequest();        
        
        $jobs = Mage::getModel('job/job')->getCollection();
        $jobs->setPageSize(10);
        if(!$request->getParam('order')){
            $jobs->setOrder('total_bets', 'DESC');
        }
        else{
            if(substr($request->getParam('order'), 0, 1) == '-'){
                $order = substr($request->getParam('order'), 1);
                $jobs->setOrder($order, 'ASC');
            }
            else{
                $jobs->setOrder($request->getParam('order'), 'DESC');
            }
        }
        if($_GET){
            if($request->getParam('category')){
                $jobs->addFieldToFilter('category', $request->getParam('category'));
                if(!$request->getParam('status')){
                    $jobs->addFieldToFilter('status', 'available');
                }
                else{
                    $jobs->addFieldToFilter('status'  , $request->getParam('status')); 
                }       
                $jobs->load();
            }
            else{
                if(!$request->getParam('status')){
                    $jobs->addFieldToFilter('status', 'available');
                }
                else{
                    $jobs->addFieldToFilter('status'  , $request->getParam('status')); 
                }          
                $jobs->load();
            }            
        }else{
            $jobs->addFieldToFilter('status', 'available');
        }        
        $this->setCollection($jobs);
    }
 
    protected function _prepareLayout()
    {
        parent::_prepareLayout();
 
        $pager = $this->getLayout()->createBlock('page/html_pager', 'custom.pager');
        $pager->setAvailableLimit(array(5=>5,10=>10,20=>20,'all'=>'all'));
        $pager->setCollection($this->getCollection());
        $this->setChild('pager', $pager);
        $this->getCollection()->load();
        return $this;
    }
 
    public function getPagerHtml()
    {
        return $this->getChildHtml('pager');
    }
}