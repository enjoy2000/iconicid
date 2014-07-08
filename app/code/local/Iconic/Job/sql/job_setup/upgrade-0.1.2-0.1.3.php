<?php
 
$installer = $this;
 
$installer->startSetup();
 
$trans = Mage::helper('job'); 
 
$installer->run("
 
INSERT INTO {$this->getTable('job_level')} (name) VALUES ('{$trans->__('Mới tốt nghiệp')}');
INSERT INTO {$this->getTable('job_level')} (name) VALUES ('{$trans->__('Có kinh nghiệm')}');
INSERT INTO {$this->getTable('job_level')} (name) VALUES ('{$trans->__('Trưởng nhóm / Giám sát')}');
INSERT INTO {$this->getTable('job_level')} (name) VALUES ('{$trans->__('Trưởng phòng / Quản lý')}');
INSERT INTO {$this->getTable('job_level')} (name) VALUES ('{$trans->__('Giám đốc')}');
INSERT INTO {$this->getTable('job_level')} (name) VALUES ('{$trans->__('Tổng giám đốc')}');
INSERT INTO {$this->getTable('job_level')} (name) VALUES ('{$trans->__('Chủ tịch')}');


INSERT INTO {$this->getTable('job_type')} (name) VALUES ('{$trans->__('Toàn thời gian')}');
INSERT INTO {$this->getTable('job_type')} (name) VALUES ('{$trans->__('Bán thời gian')}');
INSERT INTO {$this->getTable('job_type')} (name) VALUES ('{$trans->__('Làm việc tự do')}');

 
    ");
	

 
$installer->endSetup();