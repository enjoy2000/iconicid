<?php
 
class Iconic_Blog_Block_Adminhtml_Blog_Grid extends Mage_Adminhtml_Block_Widget_Grid
{
    public function __construct()
    {
        parent::__construct();
        $this->setId('blogGrid');
        // This is the primary key of the database
        $this->setDefaultSort('blog_id');
        $this->setDefaultDir('DESC');
        $this->setSaveParametersInSession(true);
        $this->setUseAjax(true);
    }
 
    protected function _prepareCollection()
    {
        $collection = Mage::getModel('blog/blog')->getCollection();
		
        $this->setCollection($collection);
        return parent::_prepareCollection();
    }
	
    protected function _prepareColumns()
    {
        $this->addColumn('blog_id', array(
            'header'    => Mage::helper('blog')->__('ID'),
            'align'     =>'right',
            'width'     => '50px',
            'index'     => 'blog_id',
        ));
 
        $this->addColumn('title', array(
            'header'    => Mage::helper('blog')->__('Title'),
            'align'     =>'left',
            'index'     => 'title',
        ));
        
		/*
        $this->addColumn('category_id', array(
            'header'    => Mage::helper('customer')->__('Industry'),
            'index'     => 'category_id',
            'filter'	=> false,
            'sortable'  => true,
            'renderer'  => 'Iconic_Blog_Block_Adminhtml_Blog_Grid_Renderer_Category',
        ));
		*/
 
        $this->addColumn('create_time', array(
            'header'    => Mage::helper('blog')->__('Creation Time'),
            'align'     => 'left',
            'width'     => '80px',
            'type'      => 'date',
            'default'   => '--',
            'index'     => 'create_time',
        ));
 
        return parent::_prepareColumns();
    }


    protected function _prepareMassaction()
    {
    	$this->setMassactionIdField('blog_id');
    	$this->getMassactionBlock()->setFormFieldName('blog_id');
    
    	$this->getMassactionBlock()->addItem('delete', array(
    			'label'    => Mage::helper('blog')->__('Delete'),
    			'url'      => $this->getUrl('*/*/massDelete'),
    			'confirm'  => Mage::helper('blog')->__('Are you sure?')
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