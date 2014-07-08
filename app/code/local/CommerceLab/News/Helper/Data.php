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

class CommerceLab_News_Helper_Data extends Mage_Core_Helper_Abstract
{
    const UNAPPROVED_STATUS = 0;
    const APPROVED_STATUS = 1;

    const XML_PATH_ENABLED          = 'news/news/enabled';
    const XML_PATH_TITLE            = 'news/news/title';
    const XML_PATH_MENU_LEFT        = 'news/news/menuLeft';
    const XML_PATH_MENU_RIGHT       = 'news/news/menuRoght';
    const XML_PATH_FOOTER_ENABLED   = 'news/news/footerEnabled';
    const XML_PATH_LAYOUT           = 'news/news/layout';

    public function isEnabled()
    {
        return Mage::getStoreConfig( self::XML_PATH_ENABLED );
    }

    public function isTitle()
    {
        return Mage::getStoreConfig( self::XML_PATH_TITLE );
    }

    public function isMenuLeft()
    {
        return Mage::getStoreConfig( self::XML_PATH_MENU_LEFT );
    }

    public function isMenuRight()
    {
        return Mage::getStoreConfig( self::XML_PATH_MENU_RIGHT );
    }

    public function isFooterEnabled()
    {
        return Mage::getStoreConfig( self::XML_PATH_FOOTER_ENABLED );
    }

    public function isLayout()
    {
        return Mage::getStoreConfig( self::XML_PATH_LAYOUT );
    }

    public function getUserName()
    {
        $customer = Mage::getSingleton('customer/session')->getCustomer();
        return trim("{$customer->getFirstname()} {$customer->getLastname()}");
    }

    public function getRoute(){
        $route = Mage::getStoreConfig('clnews/news/route');
        if (!$route){
            $route = "clnews";
        }
        return $route;
    }

    public function getUserEmail()
    {
        $customer = Mage::getSingleton('customer/session')->getCustomer();
        return $customer->getEmail();
    }

    public function getRssLink($categoryId)
    {
        if ($categoryId) {
            return Mage::getUrl('clnews/rss', array('category' => $categoryId));
        } else {
            return Mage::getUrl('clnews/rss');
        } 
    }

    public function getFileUrl($newsitem)
    {
        $file = Mage::getBaseDir('media'). 'clnews' . DS . $newsitem->getDocument();
        $file = str_replace(Mage::getBaseDir('media'), Mage::getBaseUrl('media'), $file);
        $file = str_replace('\\', '/', $file);
        return $file;
    }

    public function showAuthor()
    {
        return Mage::getStoreConfig('clnews/news/showauthorofnews');
    }

    public function showCategory()
    {
        return Mage::getStoreConfig('clnews/news/showcategoryofnews');
    }

    public function showDate()
    {
        return Mage::getStoreConfig('clnews/news/showdateofnews');
    }

    public function showTime()
    {
        return Mage::getStoreConfig('clnews/news/showtimeofnews');
    }

    public function enableLinkRoute()
    {
        return Mage::getStoreConfig('clnews/news/enablelinkrout');
    }

    public function getLinkRoute()
    {
        return Mage::getStoreConfig('clnews/news/linkrout');
    }
    public function getTagsAccess()
    {
        return Mage::getStoreConfig('clnews/news/tags');
    }

    public function getGoogleAccess()
    {
        return Mage::getStoreConfig('clnews/news/google');
    }

    public function getTwitterAccess()
    {
        return Mage::getStoreConfig('clnews/news/twitter');
    }

    public function getLinkedInAccess()
    {
        return Mage::getStoreConfig('clnews/news/linked_in');
    }

    public function getFaceBookAccess()
    {
        return Mage::getStoreConfig('clnews/news/facebook');
    }

    public function resizeImage($imageName, $width=NULL, $height=NULL, $imagePath=NULL)
    {
        $imagePath = str_replace("/", DS, $imagePath);
        $imagePathFull = Mage::getBaseDir('media') . DS . $imagePath . DS . $imageName;

        if($width == NULL && $height == NULL) {
            $width = 100;
            $height = 100;
        }
        $resizePath = $width . 'x' . $height;
        $resizePathFull = Mage::getBaseDir('media') . DS . $imagePath . DS . $resizePath . DS . $imageName;

        if (file_exists($imagePathFull) && !file_exists($resizePathFull)) {
            $imageObj = new Varien_Image($imagePathFull);
            $imageObj->keepAspectRatio(TRUE);
            $imageObj->resize($width,$height);
            $imageObj->save($resizePathFull);
        }

        $imagePath=str_replace(DS, "/", $imagePath);
        return Mage::getBaseUrl("media") . $imagePath . "/" . $resizePath . "/" . $imageName;
    }

    public function formatUrlKey($str)
    {
        $trans = array(
		'á' => 'a', 'à' => 'a', 'ả' => 'a', 'ã' => 'a', 'ạ' => 'a',
		'ắ' => 'a', 'ằ' => 'a', 'ẳ' => 'a', 'ẵ' => 'a', 'ặ' => 'a', 'ă' => 'a',
		'ấ' => 'a', 'ầ' => 'a', 'ẩ' => 'a', 'ẫ' => 'a', 'ậ' => 'a', 'â' => 'a',
		'Á' => 'a', 'À' => 'a', 'Ả' => 'a', 'Ã' => 'a', 'Ạ' => 'a',
		'Ắ' => 'a', 'Ằ' => 'a', 'Ẳ' => 'a', 'Ẵ' => 'a', 'Ặ' => 'a', 'Ă' => 'a',
		'Ấ' => 'a', 'Ầ' => 'a', 'Ẩ' => 'a', 'Ẫ' => 'a', 'Ậ' => 'a', 'Â' => 'a',
		'Đ' => 'd', 'đ' => 'd',
		'é' => 'e', 'è' => 'e', 'ẻ' => 'e', 'ẽ' => 'e', 'ẹ' => 'e',
		'É' => 'e', 'È' => 'e', 'Ẻ' => 'e', 'Ẽ' => 'e', 'Ẹ' => 'e',
		'ế' => 'e', 'ề' => 'e', 'ể' => 'e', 'ễ' => 'e', 'ệ' => 'e', 'ê' => 'e',
		'Ế' => 'e', 'Ề' => 'e', 'Ể' => 'e', 'Ễ' => 'e', 'Ệ' => 'e', 'Ê' => 'e',
		'í' => 'i', 'ì' => 'i', 'ỉ' => 'i', 'ĩ' => 'i', 'ị' => 'i',
		'Í' => 'i', 'Ì' => 'i', 'Ỉ' => 'i', 'Ĩ' => 'i', 'Ị' => 'i',
		'ó' => 'o', 'ò' => 'o', 'ỏ' => 'o', 'õ' => 'o', 'ọ' => 'o',
		'ố' => 'o', 'ồ' => 'o', 'ổ' => 'o', 'ỗ' => 'o', 'ộ' => 'o',
		'ớ' => 'o', 'ờ' => 'o', 'ở' => 'o', 'ỡ' => 'o', 'ợ' => 'o', 'ơ' => 'o',
		'Ó' => 'o', 'Ò' => 'o', 'Ỏ' => 'o', 'Õ' => 'o', 'Ọ' => 'o',
		'Ố' => 'o', 'Ồ' => 'o', 'Ổ' => 'o', 'Ỗ' => 'o', 'Ộ' => 'o',
		'Ớ' => 'o', 'Ờ' => 'o', 'Ở' => 'o', 'Ỡ' => 'o', 'Ợ' => 'o', 'Ơ' => 'o',
		'ú' => 'u', 'ù' => 'u', 'ủ' => 'u', 'ũ' => 'u', 'ụ' => 'u',
		'ứ' => 'u', 'ừ' => 'u', 'ử' => 'u', 'ữ' => 'u', 'ự' => 'u', 'ư' => 'u',
		'Ú' => 'u', 'Ù' => 'u', 'Ủ' => 'u', 'Ũ' => 'u', 'Ụ' => 'u',
		'Ứ' => 'u', 'Ừ' => 'u', 'Ử' => 'u', 'Ữ' => 'u', 'Ự' => 'u', 'Ư' => 'u',
		'ý' => 'y', 'ỳ' => 'y', 'ỷ' => 'y', 'ỹ' => 'y', 'ỵ' => 'y',
		'Ý' => 'y', 'Ỳ' => 'y', 'Ỷ' => 'y', 'Ỹ' => 'y', 'Ỵ' => 'y'
		);
		$str = strtr($str, $trans);
		
		$urlKey = preg_replace('#[^0-9a-z]+#i', '-', Mage::helper('catalog/product_url')->format($str));
		$urlKey = strtolower($urlKey);
		$urlKey = trim($urlKey, '-');
    
        return $urlKey;
    }

    public function getNewsitemUrlSuffix()
    {
        return Mage::getStoreConfig('clnews/news/itemurlsuffix');
    }

    public function formatDate($date)
    {
        $date = Mage::helper('core')->formatDate($date, 'short', true);
        if (!Mage::helper('clnews')->showTime()) {
            $pos = strpos($date, ' ');
            $date = substr($date, 0, $pos);
        }
        return $date;
    }
	
	public function getShortDescLink($item){
		return Mage::getBaseUrl().'media/'.$item->getImageShortContent();
	}
	
	public function getFullDescLink($item){
		return Mage::getBaseUrl().'media/'.$item->getImageFullContent();
	}
}
