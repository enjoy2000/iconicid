<?php
 
class Iconic_Job_Block_Adminhtml_Parentcategory_Grid extends Mage_Adminhtml_Block_Widget_Grid
{
    public function __construct()
    {
        parent::__construct();
        $this->setId('parentcategoryGrid');
        // This is the primary key of the database
        $this->setDefaultSort('parent_category_id');
        $this->setDefaultDir('ASC');
        $this->setSaveParametersInSession(true);
        $this->setUseAjax(true);
    }
 
    protected function _prepareCollection()
    {
        $collection = Mage::getModel('job/parentcategory')->getCollection();
        $this->setCollection($collection);
        return parent::_prepareCollection();
    }
 
    protected function _prepareColumns()
    {
        $this->addColumn('parentcategory_id', array(
            'header'    => Mage::helper('job')->__('ID'),
            'align'     =>'right',
            'width'     => '50px',
            'index'     => 'parentcategory_id',
        ));
 
        $this->addColumn('name', array(
            'header'    => Mage::helper('job')->__('Name'),
            'align'     =>'left',
            'index'     => 'name',
        ));
		
		$this->addColumn('group_category', array(
            'header'    => Mage::helper('job')->__('Group Category'),
            'align'     =>'left',
            'index'     => 'group_category',
        ));
 
 
        return parent::_prepareColumns();
    }
 
    public function getRowUrl($row)
    {
        return $this->getUrl('*/*/edit', array('id' => $row->getParentcategoryId()));
    }
 
    public function getGridUrl()
    {
      return $this->getUrl('*/*/grid', array('_current'=>true));
    }
 
 
}