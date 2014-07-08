<?php

$installer = $this;
$installer->startSetup();

$installer->run("

ALTER TABLE {$this->getTable('blog/author')} CHANGE `link` `url_key` varchar(255) NOT NULL;

");


$installer->endSetup();
