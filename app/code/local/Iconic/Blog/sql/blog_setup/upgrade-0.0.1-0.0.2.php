<?php

$installer = $this;
$installer->startSetup();

$installer->run("
ALTER TABLE {$this->getTable('blog')} ADD COLUMN create_time datetime NULL;
ALTER TABLE {$this->getTable('blog')} ADD COLUMN time datetime NULL;
ALTER TABLE {$this->getTable('blog')} ADD COLUMN update_time datetime NULL;

");


$installer->endSetup();
