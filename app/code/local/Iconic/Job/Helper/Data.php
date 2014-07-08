<?php

class Iconic_Job_Helper_Data extends Mage_Core_Helper_Abstract
{
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
	
	public function noAccent($str)
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
		return $str;
	}
	
	public function formatDate($date)
    {
        $format = date('d M, Y', strtotime($date));
        return $format;
    }
	
	public function getCurrency(){
		return Mage::helper('job')->__('VND');
	}

	public function string_limit_words($string,$number=7){
		$string = strip_tags($string);
		$words = explode(' ', $string, ($number + 1));
		if(count($words) > $number){
			array_pop($words);
			return implode(' ', $words).'...';		
		}else{
			return implode(' ', $words);
		}		
	}
	
	public function getJobLink($job){
		$link = Mage::getBaseUrl()
					. $job->getCategory()->getParentCategory()->getUrlKey()
					. '/'
					. $job->getCategory()->getUrlKey()
					. '/'
					. $job->getUrlKey();
		return $link;
	}
	
	public function getApplyLink($jobId){
		return Mage::getBaseUrl().'job/apply?id='.$jobId;
	}
	
	public function renderJob($job){
		$location = Mage::getModel('job/location')->load($job->getLocationId())->getName();
		
		$render = '<a href="'.$this->getJobLink($job).'" title="' . $job->getTitle().'">' . $this->string_limit_words($job->getTitle()).'</a>';
		$render .= '<span class="inline created-time">'.$this->formatDate($job->getCreatedTime()).'</span>';
		$render .= '<span class="inline location">'.$location.'</span>';
		
		return $render;
	}

	public function highlight($inp, $words){
		$replace=array_flip(array_flip($words)); // remove duplicates
		$pattern=array();
		foreach ($replace as $k=>$fword) {
			$pattern[]='/\b(' . $fword . ')(?!>)\b/i';
			$replace[$k]='<b>$1</b>';
		}
		return preg_replace($pattern, $replace, $inp);
	}
	
	public function renderTitle($job){
		$title = $this->__('No. %s <span>|</span> %s', $job->getIconicId(), $job->getTitle());
		return $title;
	}
	
	public function redirectToSearchPage(){		
		Mage::app()->getResponse()->setRedirect('/job/search');
		return;
	}

	public function getRoute(){
		return 'job';
	}
	
	public function getCategoryUrl($catId){
		$cat = Mage::getModel('job/category')->load($catId);
		$parent = Mage::getModel('job/parentcategory')->load($cat->getParentcategoryId());
		$url = Mage::getBaseUrl().$parent->getUrlKey().'/'.$cat->getUrlKey();
		
		return $url;
	}
	
	public function getLoginUrl(){
		return 'dang-nhap';
	}
	
	public function getRegisterUrl(){
		return 'dang-ky';
	}
	
	public function getSearchUrl(){
		return 'tim-viec-lam';
	}
	
	public function getForgotUrl(){
		return 'quen-mat-khau';
	}
	
	public function getCreateCVUrl(){
		return 'tao-ho-so';
	}

	public function getSitemapUrl(){
		return 'so-do-trang';
	}
	
	public function limitText($str, $limit=58){
		if(strlen($str) > $limit){
			// truncate string
		    $stringCut = substr($str, 0, $limit);
		
		    // make sure it ends in a word so assassinate doesn't become ass...
		    $str = substr($stringCut, 0, strrpos($stringCut, ' ')).'...';
		}
		return $str;
	}
	
	function writeExcel($fileName, $arrData){
		//Create new PHPExcel object
		$objPHPExcel = new PHPExcel();
		//$objReader = PHPExcel_IOFactory::createReader('Excel2007');
		$objReader = new PHPExcel_Reader_Excel2007();
		$objPHPExcel = $objReader->load(Mage::getBaseDir()."/templates/register_form.xlsx");
		// Set properties
		$objPHPExcel->getProperties()->setCreator("ICONIC Manager");
		$objPHPExcel->getProperties()->setLastModifiedBy("ICONIC Manager");
		$objPHPExcel->getProperties()->setTitle("ICONIC Form");
		$objPHPExcel->getProperties()->setSubject("Employment And Register");
		$objPHPExcel->getProperties()->setDescription("Employment And Register");
		$objPHPExcel->setActiveSheetIndex(0);
		//Write Data
		for($i=0;$i<count($arrData);$i++){
			$objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow($i,2,$arrData[$i]);
			//$objPHPExcel->getActiveSheet()->getStyleByColumnAndRow($i,3)->getAlignment()->setWrapText(true);
		}
		$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
		$objWriter->save($fileName);
	}
}
	