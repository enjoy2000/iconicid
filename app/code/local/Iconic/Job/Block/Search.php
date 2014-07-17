<?php

class Iconic_Job_Block_Search extends Mage_Core_Block_Template
{
	protected function _prepareLayout(){
		$helper = Mage::helper('job');
		if ($breadcrumbs = $this->getLayout()->getBlock('breadcrumbs')) {
			$breadcrumbs->addCrumb('home', array('label'=>$helper->__('Home'), 'title'=>$helper->__('Home'), 'link'=>Mage::helper('job')->getBaseUrl()));
			$breadcrumbs->addCrumb('search_results', array('label'=>$helper->__('Kết quả tìm kiếm'), 'title'=>$helper->__('Kết quả tìm kiếm'), 'link'=>Mage::getUrl(Mage::helper('job')->getSearchUrl())));
		}		
		
		$this->setPost($this->getRequest()->getPost());
		return parent::_prepareLayout();
	}
	
	protected function _beforeToHtml(){
		if($this->needFetchJobs()){
			$this->_fetchJobs();
			$pager = $this->getLayout()->createBlock('page/html_pager', 'custom.pager');
			$pager->setShowPerPage(false);
			$pager->setAvailableLimit(array(12=>12));
			$pager->setPageSize(12);
	        $pager->setCollection($this->getResults());
	        $this->setChild('pager', $pager);
		}
		return parent::_beforeToHtml();
	}
	
	protected function _fetchJobs(){
		$collection = Mage::getModel('job/job')->getCollection();
		/* @var $collection Iconic_Job_Model_Mysql4_Job_Collection */
		
		if ($this->getKeyword()){
			$likeStm = array('like'=> "%{$this->getKeyword()}%");
			$collection->addFieldToFilter(
							array('title', 'info', 'requirement'),
							array($likeStm, $likeStm, $likeStm));
		}
		
		if ($this->getCategory()){
			$collection->addFieldToFilter('category_id', array('eq' => $this->getCategory()));
		}
		
		if ($this->getLocation()){
			$collection->addFieldToFilter('location_id', array('eq' => $this->getLocation()));
		}
		if ($this->getJobLevel()){
			$collection->addFieldToFilter('job_level', array('eq' => $this->getJobLevel()));
		}
		if ($this->getFeature()){
			$collection->addFieldToFilter('feature_id', array('like' => '%,'.$this->getFeature().',%'));
		}
		
		if ($this->getFunctionCategory()){
			$collection->addFieldToFilter('function_category_id', array('eq' => $this->getFunctionCategory()));
		}
		
		if($this->getIndustry()){
			$cats = Mage::getModel('job/category')->getCollection()->addFieldToFilter('parentcategory_id', array('eq'=>$this->getIndustry()));
			$catIds = array();
			foreach($cats as $cat){
				$catIds[] = $cat->getCategoryId();
			}
			$collection->addFieldToFilter('category_id', array('in' => $catIds));
		}
		
		if($this->getFunction()){
			$cats2 = Mage::getModel('job/category')->getCollection()->addFieldToFilter('parentcategory_id', array('eq'=>$this->getFunction()));
			$catIds2 = array();
			foreach($cats2 as $cat){
				$catIds2[] = $cat->getCategoryId();
			}
			$collection->addFieldToFilter('category_id', array('in' => $catIds2));
		}
		
		$collection->setOrder('created_time','DESC');
		//var_dump($collection->getSelect()->__toString());
		
		
		$this->setResults($collection);
	}
	
	public function needFetchJobs(){
		return !$this->getResults() and $this->isQueryParamAvailable();
	}
	
	public function isQueryParamAvailable(){
		return true;
	}
	
	public function getLocationList(){
		//get list location and category
		if (!$this->hasData('locationList')){
			$location = Mage::getModel('job/location')->getCollection()
						->setOrder('url_key','ASC')->load();
			$listLocation = '';
			if ($this->getLocation()){
				foreach ($location as $loc){
					$locName = Mage::helper('job')->getTransName($loc);
					$selected = "";
					if($loc->getLocationId() == $this->getLocation()){
						$selected = " selected=\"selected\"";
					}
					$listLocation .= "<option value=\"{$loc->getLocationId()}\"{$selected}>{$locName}</option>";
				}
			} else {
				foreach ($location as $loc){
					$locName = Mage::helper('job')->getTransName($loc);
					$listLocation .= '<option value="' . $loc->getLocationId() . '">' . $locName . '</option>';
				}				
			}
			$this->setData('locationList', $listLocation);
		}
		return $this->getData('locationList');
	}
	
	public function getCategoryList(){
		if (!$this->hasData('categoryList')){
		
			$parentCategory = Mage::getModel('job/parentcategory')->getCollection()->addFieldToFilter('group_category', array('eq'=>'industry'));
			$listCategory = '';
			if ($this->getIndustry()){
				foreach ($parentCategory as $parent){
					$selected = "";
					if($parent->getId() == $this->getIndustry()){
						$selected = " selected=\"selected\"";
					}
					$listCategory .= "<option{$selected} value=\"{$parent->getId()}\">".Mage::helper('job')->getTransName($parent).'</option>';
				}
			} else {
				foreach ($parentCategory as $parent){
					$listCategory .= "<option value=\"{$parent->getId()}\">".Mage::helper('job')->getTransName($parent).'</option>';
				}
			}
			$this->setData('categoryList', $listCategory);
		}
		return $this->getData('categoryList');
	}
	
	public function getFunctionList(){
		if (!$this->hasData('functionList')){
		
			$parentCategory = Mage::getModel('job/parentcategory')->getCollection()->addFieldToFilter('group_category', array('eq'=>'function'));
			$listCategory = '';
			if ($this->getFunction()){
				foreach ($parentCategory as $parent){
					$selected = "";
					if($parent->getId() == $this->getFunction()){
						$selected = " selected=\"selected\"";
					}
					$listCategory .= "<option{$selected} value=\"{$parent->getId()}\">".Mage::helper('job')->getTransName($parent).'</option>';
				}
			} else {
				foreach ($parentCategory as $parent){
					$listCategory .= "<option value=\"{$parent->getId()}\">".Mage::helper('job')->getTransName($parent).'</option>';
				}
			}
			$this->setData('functionList', $listCategory);
		}
		return $this->getData('functionList');
	}

	public function getFilters(){
		if($this->needFetchJobs()){
			$this->_fetchJobs();
		}
		$filters = array();
		if (!$this->getCategory()){
			$filter = $this->getLayout()->createBlock('job/search_filter');
			$filter->setCollection($this->getResults());
			$filter->setField('category_id');
			$filter->setDesticationField('category_id');
			$filter->setModel('job/category');
			$filter->setParamName('category');
			$filter->setTitle(Mage::helper('job')->__('Tìm việc theo ngành nghề'));
			$filters['category'] = $filter;
		}
		
		if (!$this->getFunctionCategory()){
			$filter = $this->getLayout()->createBlock('job/search_filter');
			$filter->setCollection($this->getResults());
			$filter->setField('function_category_id');
			$filter->setDesticationField('parentcategory_id');
			$filter->setModel('job/parentcategory');
			$filter->setParamName('function_category');
			$filters['function_category'] = $filter;
			$filter->setTitle(Mage::helper('job')->__('Tìm việc theo chức năng'));
		}

		if (!$this->getJobLevel()){
			$filter = $this->getLayout()->createBlock('job/search_filter');
			$filter->setCollection($this->getResults());
			$filter->setField('job_level');
			$filter->setDesticationField('level_id');
			$filter->setModel('job/level');
			$filter->setParamName('level');
			$filter->setTitle(Mage::helper('job')->__('Tìm việc theo đối tượng'));
			$filters['level'] = $filter;
		}
		return $filters;
	}
 
    public function getPagerHtml(){
        return $this->getChildHtml('pager');
    }
	
	public function getFeatureTags(){
		$feature = Mage::getModel('job/feature')->getCollection();
		return $feature;
	}
}
        