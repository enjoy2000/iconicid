<?php
 
$installer = $this;
 
$installer->startSetup();
 
$installer->run("
 
-- DROP TABLE IF EXISTS {$this->getTable('job/feature')};
CREATE TABLE {$this->getTable('job/feature')} (
  `feature_id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `name_en` varchar(255) NOT NULL default '',
  `url_key` varchar(255) NOT NULL default '',
  PRIMARY KEY (`feature_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE {$this->getTable('job')} ADD COLUMN feature_id varchar(255) NULL;

INSERT INTO {$this->getTable('job/feature')} (name,name_en,url_key) VALUES ('本社採用','HQ Employed','hq-employed');
INSERT INTO {$this->getTable('job/feature')} (name,name_en,url_key) VALUES ('現地採用','Locally Employed','locally-employed');
INSERT INTO {$this->getTable('job/feature')} (name,name_en,url_key) VALUES ('女性歓迎','Female Preferred','female-preferred');
INSERT INTO {$this->getTable('job/feature')} (name,name_en,url_key) VALUES ('住宅手当有り','Housing Allowance','housing-allowance');
INSERT INTO {$this->getTable('job/feature')} (name,name_en,url_key) VALUES ('駐妻歓迎','Expat Wife Welcomed','expat-wife-welcomed');
INSERT INTO {$this->getTable('job/feature')} (name,name_en,url_key) VALUES ('時短勤務可','Part-time OK','part-time-ok');
INSERT INTO {$this->getTable('job/feature')} (name,name_en,url_key) VALUES ('経営幹部求人','Executive Job','executive-job');
INSERT INTO {$this->getTable('job/feature')} (name,name_en,url_key) VALUES ('街中勤務','City Job','city-job');
INSERT INTO {$this->getTable('job/feature')} (name,name_en,url_key) VALUES ('日本勤務','Work in Japan','work-in-japan');
INSERT INTO {$this->getTable('job/feature')} (name,name_en,url_key) VALUES ('海外勤務','Work Abroad','work-abroad');
INSERT INTO {$this->getTable('job/feature')} (name,name_en,url_key) VALUES ('高齢者歓迎','Aged Candidates OK','aged-candidates-ok');
INSERT INTO {$this->getTable('job/feature')} (name,name_en,url_key) VALUES ('未経験者歓迎','No Experience OK','no-experience-ok');
INSERT INTO {$this->getTable('job/feature')} (name,name_en,url_key) VALUES ('英語力不問','No English OK','no-english-ok');
    ");
 
$installer->endSetup();