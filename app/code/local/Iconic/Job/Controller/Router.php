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
 * @package    CommerceLab_News
 * @copyright  Copyright (c) 2012 CommerceLab Co. (http://commerce-lab.com)
 * @license    http://commerce-lab.com/LICENSE.txt
 */

class Iconic_Job_Controller_Router extends Mage_Core_Controller_Varien_Router_Abstract
{
    public function initControllerRouters($observer)
    {
        $front = $observer->getEvent()->getFront();
        $front->addRouter('job', $this);
    }

    public function match(Zend_Controller_Request_Http $request)
    {
    	Mage::getSingleton('core/session', array("name" => "frontend"));
        if (!Mage::app()->isInstalled()) {
            Mage::app()->getFrontController()->getResponse()
                ->setRedirect(Mage::getUrl('install'))
                ->sendResponse();
            exit;
        }

        $route = Mage::helper('job')->getRoute();

        $identifier = $request->getPathInfo();
		


        $identifier = substr_replace($request->getPathInfo(), '', 0, 1);
        $identifier = trim($identifier, " /");

        $parts = explode("/", $identifier);
		//url for tim-viec-lam
		if($parts[0] == Mage::helper('job')->getSearchUrl()){
			$request
				->setModuleName('job')
                ->setControllerName('search')
                ->setActionName('index');
			foreach($parts as $part){
				$loc = Mage::getModel('job/location')->load($part, 'url_key');
				$cat = Mage::getModel('job/category')->load($part, 'url_key');
				$feature = Mage::getModel('job/feature')->load($part, 'url_key');
				if($loc->getId()){
					$request
						->setParam('location', $loc->getId());
				}
				if($cat->getId()){
					$parent = Mage::getModel('job/parentcategory')->load($cat->getParentcategoryId());
					if($parent->getGroupCategory() == 'industry'){
						$request
							->setParam('category', $cat->getId());
					}else{
						$request
							->setParam('function_category', $cat->getId());
					}
				}
				if($feature->getId()){
					$request
						->setParam('feature', $feature->getId());
				}
				if(!$loc->getId() && !$cat->getId() && !$feature->getId() && ($part != Mage::helper('job')->getSearchUrl())){
					$request
						->setParam('q', Mage::getSingleton('core/session')->getKeywordSearch());
					//Mage::getSingleton('core/session')->unsKeywordSearch();
					
				}
			}
			return true;
		}
        
        switch(count($parts)){
            case 2: //sub category
                $category = Mage::getModel('job/category')->load($parts[1], 'url_key');
                
                if($category->getId()){
                	$parentCategory = Mage::getModel('job/parentcategory')->load($parts[0], 'url_key');
                    if($parentCategory->getGroupCategory() == 'industry'){
	                    $request
	                        ->setModuleName('job')
	                        ->setControllerName('search')
	                        ->setActionName('index')
	                        ->setParam('category', $category->getId());
	                        return true;
					}else{
						$request
	                        ->setModuleName('job')
	                        ->setControllerName('search')
	                        ->setActionName('index')
	                        ->setParam('function_category', $category->getId());
	                        return true;
					}
                }
            case 1: //parent category and other static link
            	
            	if($parts[0] == Mage::helper('job')->getRegisterUrl()){
            		$request
                        ->setModuleName('customer')
                        ->setControllerName('account')
                        ->setActionName('create');
                        return true;
            	}
				if($parts[0] == Mage::helper('job')->getLoginUrl()){
            		$request
                        ->setModuleName('customer')
                        ->setControllerName('account')
                        ->setActionName('login');
                        return true;
            	}
				/*
            	if($parts[0] == Mage::helper('job')->getSearchUrl()){
            		$request
                        ->setModuleName('job')
                        ->setControllerName('search')
                        ->setActionName('index');
                        return true;
            	}*/
            	if($parts[0] == Mage::helper('job')->getForgotUrl()){
            		$request
                        ->setModuleName('customer')
                        ->setControllerName('account')
                        ->setActionName('forgotpassword');
                        return true;
            	}
            	if($parts[0] == Mage::helper('job')->getCreateCVUrl()){
            		$request
                        ->setModuleName('job')
                        ->setControllerName('index')
                        ->setActionName('createcv');
                        return true;
            	}
				if($parts[0] == Mage::helper('job')->getSitemapUrl()){
            		$request
                        ->setModuleName('job')
                        ->setControllerName('index')
                        ->setActionName('sitemap');
                        return true;
            	}
				
                $parentCategory = Mage::getModel('job/parentcategory')->load($parts[0], 'url_key');
                if($parentCategory->getId()){
                	if($parentCategory->getGroupCategory() == 'industry'){
	                    $request
	                        ->setModuleName('job')
	                        ->setControllerName('search')
	                        ->setActionName('index')
	                        ->setParam('industry', $parentCategory->getId());
	                        return true;
					}else{
						$request
	                        ->setModuleName('job')
	                        ->setControllerName('search')
	                        ->setActionName('index')
	                        ->setParam('function', $parentCategory->getId());
	                        return true;
					}
                }
                break;
            case 3: //job detail
                $job = Mage::getModel('job/job')->load($parts[2], 'url_key');
                if($job->getId()){
                    $request
                        ->setModuleName('job')
                        ->setControllerName('details')
                        ->setActionName('index')
                        ->setParam('id', $job->getId());
                        return true;
                }
                break;
        }
        return false;
    }
}
