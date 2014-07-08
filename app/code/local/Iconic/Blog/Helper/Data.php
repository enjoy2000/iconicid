<?php
class Iconic_Blog_Helper_Data extends Mage_Core_Helper_Abstract
{
	public function getRoute(){
		return 'blog';
	}
	
	public function getAuthorLink(){
		return 'author';
	}
	
	public function imgHeight(){
		return 125;
	}
	
	public function imgWidth(){
		return 162;
	}
	
	public function formatDate($date)
    {
        $format = date('d M, Y', strtotime($date));
        return $format;
    }
	
	public function getShareCount($url){
		$count = array();
		$url = rawurldecode($url);
		//google
		/*
		$curl = curl_init();
	    curl_setopt($curl, CURLOPT_URL, "https://clients6.google.com/rpc");
	    curl_setopt($curl, CURLOPT_POST, 1);
	    curl_setopt($curl, CURLOPT_POSTFIELDS, '[{"method":"pos.plusones.get","id":"p","params":{"nolog":true,"id":"' . $url . '","source":"widget","userId":"@viewer","groupId":"@self"},"jsonrpc":"2.0","key":"p","apiVersion":"v1"}]');
	    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
	    curl_setopt($curl, CURLOPT_HTTPHEADER, array('Content-type: application/json'));
	    $curl_results = curl_exec ($curl);
	    curl_close ($curl);
	    $json = json_decode($curl_results, true);
	    $count['google'] = intval( $json[0]['result']['metadata']['globalCounts']['count'] );
		*/
		//facebook
		$fb = file_get_contents("http://api.facebook.com/restserver.php?method=links.getStats&format=json&urls=".$url);
	    $fb = json_decode($fb, true);
		$count['facebook'] = $fb[0]['like_count'];
		//twitter
		$json = file_get_contents( "http://urls.api.twitter.com/1/urls/count.json?url=".$url );
	    $ajsn = json_decode($json, true);
	    $count['twitter'] = $ajsn['count'];
		//LinkedIn
		/*
 		$stream = file_get_contents("http://www.linkedin.com/countserv/count/share?url={$url}&for‌​mat=json");
		$json = json_decode($stream, true);
		$count['linkedin'] = intval($json['count']);
		*/
		
		return $count;
	}
	
}
		