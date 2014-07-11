<?php
 
$installer = $this;
 
$installer->startSetup();
 
$installer->run("
ALTER TABLE {$this->getTable('job/parentcategory')} ADD name_en VARCHAR(255) NOT NULL AFTER name;
ALTER TABLE {$this->getTable('job/level')} ADD name_en VARCHAR(255) NOT NULL AFTER name;
ALTER TABLE {$this->getTable('job/location')} ADD name_en VARCHAR(255) NOT NULL AFTER name;
ALTER TABLE {$this->getTable('job/type')} ADD name_en VARCHAR(255) NOT NULL AFTER name;
    ");
 
$installer->endSetup();