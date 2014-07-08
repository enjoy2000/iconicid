<?php
 
class Iconic_Job_Block_Adminhtml_Job_Grid extends Mage_Adminhtml_Block_Widget_Grid
{
    public function __construct()
    {
        parent::__construct();
        $this->setId('jobGrid');
        // This is the primary key of the database
        $this->setDefaultSort('job_id');
        $this->setDefaultDir('DESC');
        $this->setSaveParametersInSession(true);
        $this->setUseAjax(true);
    }
 
    protected function _prepareCollection()
    {
        $collection = Mage::getModel('job/job')->getCollection();
		
		//JOIN TABLES TO SHOW ON NAME ON GRID
		/* @var $collection Iconic_Job_Model_Mysql4_Category_Collection */
		
		$collection->getSelect()->join(array("c" => $collection->getTable('job/category')), 
			"main_table.category_id = c.category_id", "c.name as c_name");
		/* @var $collection Iconic_Job_Model_Mysql4_Type_Collection */
		
		$collection->getSelect()->join(array("t" => $collection->getTable('job/type')), 
			"main_table.job_type = t.type_id", "t.name as t_name");
		/* @var $collection Iconic_Job_Model_Mysql4_Level_Collection */
		
		$collection->getSelect()->join(array("l" => $collection->getTable('job/level')), 
			"main_table.job_level = l.level_id", "l.name as l_name");
		/* @var $collection Iconic_Job_Model_Mysql4_Location_Collection */
		
		$collection->getSelect()->join(array("la" => $collection->getTable('job/location')), 
			"main_table.location_id = la.location_id", "la.name as la_name");
		
		
        $this->setCollection($collection);
        return parent::_prepareCollection();
    }
	
    protected function _prepareColumns()
    {
        $this->addColumn('job_id', array(
            'header'    => Mage::helper('job')->__('ID'),
            'align'     =>'right',
            'width'     => '50px',
            'index'     => 'job_id',
        ));
		
		$this->addColumn('iconic_id', array(
            'header'    => Mage::helper('job')->__('IconicId'),
            'index'     => 'iconic_id',
        ));
 
        $this->addColumn('title', array(
            'header'    => Mage::helper('job')->__('Title'),
            'align'     =>'left',
            'index'     => 'title',
        ));
        
        $this->addColumn('category_id', array(
            'header'    => Mage::helper('job')->__('Category'),
            'index'     => 'c_name',
            'filter_index'=>'c.name',
        ));
                
        $this->addColumn('location_id', array(
            'header'    => Mage::helper('job')->__('Location'),
            'index'     => 'la_name',
            'filter_index'=>'la.name'            
        ));
                
        $this->addColumn('job_level', array(
            'header'    => Mage::helper('job')->__('Level'),
            'index'     => 'l_name',
            'filter_index'=>'l.name'
        ));
                
        $this->addColumn('t_name', array(
            'header'    => Mage::helper('job')->__('Type'),
            'index'     => 't_name',
            'filter_index'=>'t.name'
        ));
 
        $this->addColumn('created_time', array(
            'header'    => Mage::helper('job')->__('Creation Time'),
            'align'     => 'left',
            'width'     => '80px',
            'type'      => 'date',
            'default'   => '--',
            'index'     => 'created_time',
        ));
 
        return parent::_prepareColumns();
    }


    protected function _prepareMassaction()
    {
    	$this->setMassactionIdField('job_id');
    	$this->getMassactionBlock()->setFormFieldName('job_id');
    
    	$this->getMassactionBlock()->addItem('delete', array(
    			'label'    => Mage::helper('job')->__('Delete'),
    			'url'      => $this->getUrl('*/*/massDelete'),
    			'confirm'  => Mage::helper('job')->__('Are you sure?')
    	));
    	return $this;
    }
 
    public function getRowUrl($row)
    {
        return $this->getUrl('*/*/edit', array('id' => $row->getId()));
    }
 
    public function getGridUrl()
    {
      return $this->getUrl('*/*/grid', array('_current'=>true));
    }
 
 
}