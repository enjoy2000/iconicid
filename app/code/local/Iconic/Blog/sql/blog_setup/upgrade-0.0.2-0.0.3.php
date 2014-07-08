<?php

$installer = $this;
$installer->startSetup();

$installer->run("
ALTER TABLE {$this->getTable('blog')} ADD COLUMN views int(11) unsigned NOT NULL default '0';

");


$installer->endSetup();
