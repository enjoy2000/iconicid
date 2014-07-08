<?php
 
class Iconic_Blog_Model_Mysql4_Author_Collection extends Mage_Core_Model_Mysql4_Collection_Abstract
{
    public function _construct()
    {
        //parent::__construct();
        $this->_init('blog/author');
    }
}