<?php

$installer = $this;
$installer->startSetup();

$installer->run("

ALTER TABLE {$this->getTable('blog')} ADD COLUMN facebook int(11) unsigned NOT NULL default '0';
ALTER TABLE {$this->getTable('blog')} ADD COLUMN twitter int(11) unsigned NOT NULL default '0';

");


$installer->endSetup();
