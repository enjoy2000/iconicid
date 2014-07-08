<?php

$installer = $this;
$installer->startSetup();

$installer->run("
DROP TABLE IF EXISTS {$this->getTable('blog')};
CREATE TABLE {$this->getTable('blog')} (
    `blog_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `title` varchar(255) NOT NULL DEFAULT '',
    `url_key` varchar(255) NOT NULL DEFAULT '',
    `category_id` varchar(255) NOT NULL DEFAULT '',
    `author` int(11) unsigned NOT NULL,
    `short_content` text NOT NULL,
    `full_content` text NOT NULL,
    `image` varchar(255) NOT NULL DEFAULT '',
    `meta_keywords` text NOT NULL,
    `meta_description` text NOT NULL,
    PRIMARY KEY ( `blog_id` )
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- DROP TABLE IF EXISTS {$this->getTable('blog_category')};
CREATE TABLE {$this->getTable('blog_category')} (
    `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `parentcategory_id` int(11) unsigned NOT NULL,
    `name` varchar(255) NOT NULL DEFAULT '',
    `url_key` varchar(255) NOT NULL DEFAULT '',
    PRIMARY KEY ( `category_id` )
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- DROP TABLE IF EXISTS {$this->getTable('blog_parentcategory')};
CREATE TABLE {$this->getTable('blog_parentcategory')} (
    `parentcategory_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL DEFAULT '',
    `url_key` varchar(255) NOT NULL DEFAULT '',
    PRIMARY KEY ( `parentcategory_id` )
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- DROP TABLE IF EXISTS {$this->getTable('blog_author')};
CREATE TABLE {$this->getTable('blog_author')} (
    `author_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL DEFAULT '',
    `link` varchar(255) NOT NULL DEFAULT '',
    `image` varchar(255) NOT NULL DEFAULT '',
    PRIMARY KEY ( `author_id` )
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

");


$installer->endSetup();
