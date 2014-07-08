<?php
 
class Iconic_Job_Block_Adminhtml_Level_Grid extends Mage_Adminhtml_Block_Widget_Grid
{
    public function __construct()
    {
        parent::__construct();
        $this->setId('levelGrid');
        // This is the primary key of the database
        $this->setDefaultSort('level_id');
        $this->setDefaultDir('ASC');
        $this->setSaveParametersInSession(true);
        $this->setUseAjax(true);
    }
 
    protected function _prepareCollection()
    {
        $collection = Mage::getModel('job/level')->getCollection();
		
        $this->setCollection($collection);
        return parent::_prepareCollection();
    }
 
    protected function _prepareColumns()
    {
        $this->addColumn('level_id', array(
            'header'    => Mage::helper('job')->__('ID'),
            'align'     =>'right',
            'width'     => '50px',
            'index'     => 'level_id',
        ));
 
        $this->addColumn('name', array(
            'header'    => Mage::helper('job')->__('Name'),
            'align'     =>'left',
            'index'     => 'name',
        ));
 
        return parent::_prepareColumns();
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