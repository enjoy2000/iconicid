<?php
 
$installer = $this;
 
$installer->startSetup();
 
$installer->run("
 
-- DROP TABLE IF EXISTS {$this->getTable('job_location')};
CREATE TABLE {$this->getTable('job_location')} (
  `location_id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- DROP TABLE IF EXISTS {$this->getTable('job_parent_category')};
CREATE TABLE {$this->getTable('job_parent_category')} (
  `parentcategory_id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  PRIMARY KEY (`parentcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- DROP TABLE IF EXISTS {$this->getTable('job_category')};
CREATE TABLE {$this->getTable('job_category')} (
  `category_id` int(11) unsigned NOT NULL auto_increment,
  `parentcategory_id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL default '',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE {$this->getTable('job')} ADD COLUMN update_time datetime NULL;
 
    ");
	

 
$installer->endSetup();