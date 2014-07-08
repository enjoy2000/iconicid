<?php
 
$installer = $this;
 
$installer->startSetup();
 
$installer->run("
 
-- DROP TABLE IF EXISTS {$this->getTable('job')};
CREATE TABLE {$this->getTable('job')} (
  `job_id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `requirement` text NOT NULL default '',
  `info` text NOT NULL default '',
  `status` varchar(20) NOT NULL default '0',
  `created_time` datetime NULL,
  `category_id` int(11) unsigned NOT NULL,
  `location_id` int(11) unsigned NOT NULL,
  `job_level` int(11) unsigned NOT NULL,
  `job_salary` int(11) unsigned NOT NULL default '0',
  `job_type` int(11) unsigned NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ");
 
$installer->endSetup();