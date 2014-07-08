<?php

$installer = $this;
$installer->startSetup();

$installer->run("

ALTER TABLE {$this->getTable('blog')} CHANGE `author` `author_id` INT(11) UNSIGNED NOT NULL;

");


$installer->endSetup();
