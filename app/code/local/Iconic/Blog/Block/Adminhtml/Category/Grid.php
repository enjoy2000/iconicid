<?php
 
class Iconic_Blog_Block_Adminhtml_Category_Grid extends Mage_Adminhtml_Block_Widget_Grid
{
    public function __construct()
    {
        parent::__construct();
        $this->setId('categoryGrid');
        // This is the primary key of the database
        $this->setDefaultSort('parent_category_id');
        $this->setDefaultDir('ASC');
        $this->setSaveParametersInSession(true);
        $this->setUseAjax(true);
    }
 
    protected function _prepareCollection()
    {
        $collection = Mage::getModel('blog/category')->getCollection();
		/* @var $collection Iconic_Blog_Model_Mysql4_Parentcategory_Collection */
		
		
		$collection->getSelect()->join(array("p" => $collection->getTable('blog/parentcategory')), 
			"main_table.parentcategory_id = p.parentcategory_id", "p.name as p_name");
		
        $this->setCollection($collection);
        return parent::_prepareCollection();
    }
 
    protected function _prepareColumns()
    {
        $this->addColumn('category_id', array(
            'header'    => Mage::helper('blog')->__('ID'),
            'align'     =>'right',
            'width'     => '50px',
            'index'     => 'category_id',
        ));
 
        $this->addColumn('name', array(
            'header'    => Mage::helper('blog')->__('Name'),
            'align'     =>'left',
            'index'     => 'name',
        ));
		
		$this->addColumn('parentcategory_id', array(
            'header'    => Mage::helper('blog')->__('Parent Category'),
            'align'     =>'left',
            'index'     => 'p_name',
            'filter_index'=> 'p.name',
        ));
		
		$this->addColumn('aa_id', array(
            'header'    => Mage::helper('blog')->__('Group Category'),
            'index'     => 'aa_id',
            'filter'	=> false,
            'sortable'  => false,
            'renderer'  => 'Iconic_Blog_Block_Adminhtml_Category_Grid_Renderer_Link',
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