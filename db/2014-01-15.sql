-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 15, 2014 at 03:27 PM
-- Server version: 5.1.71
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iconicvn`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminnotification_inbox`
--

CREATE TABLE IF NOT EXISTS `adminnotification_inbox` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Notification id',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed',
  PRIMARY KEY (`notification_id`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox' AUTO_INCREMENT=94 ;

--
-- Dumping data for table `adminnotification_inbox`
--

INSERT INTO `adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
(1, 4, '2008-07-25 05:24:40', 'Magento 1.1 Production Version Now Available', 'We are thrilled to announce the availability of the production release of Magento 1.1. Read more about the release in the Magento Blog.', 'http://www.magentocommerce.com/blog/comments/magento-11-is-here-1/', 0, 0),
(2, 4, '2008-08-02 05:30:16', 'Updated iPhone Theme is now available', 'Updated iPhone theme for Magento 1.1 is now available on Magento Connect and for upgrade through your Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/updated-iphone-theme-for-magento-11-is-now-available/', 0, 0),
(3, 3, '2008-08-02 05:40:27', 'Magento version 1.1.2 is now available', 'Magento version 1.1.2 is now available for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-version-112-is-now-available/', 0, 0),
(4, 3, '2008-08-13 21:51:46', 'Magento version 1.1.3 is now available', 'Magento version 1.1.3 is now available', 'http://www.magentocommerce.com/blog/comments/magento-version-113-is-now-available/', 0, 0),
(5, 1, '2008-09-03 01:10:31', 'Magento Version 1.1.4 Security Update Now Available', 'Magento 1.1.4 Security Update Now Available. If you are using Magento version 1.1.x, we highly recommend upgrading to this version as soon as possible.', 'http://www.magentocommerce.com/blog/comments/magento-version-114-security-update/', 0, 0),
(6, 3, '2008-09-16 02:09:54', 'Magento version 1.1.5 Now Available', 'Magento version 1.1.5 Now Available.\n\nThis release includes many bug fixes, a new category manager and a new skin for the default Magento theme.', 'http://www.magentocommerce.com/blog/comments/magento-version-115-now-available/', 0, 0),
(7, 3, '2008-09-18 00:18:35', 'Magento version 1.1.6 Now Available', 'Magento version 1.1.6 Now Available.\n\nThis version includes bug fixes for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-116-now-available/', 0, 0),
(8, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(9, 3, '2008-11-20 06:31:12', 'Magento version 1.1.7 Now Available', 'Magento version 1.1.7 Now Available.\n\nThis version includes over 350 issue resolutions for Magento 1.1.x that are listed in the release notes section, and new functionality that includes:\n\n-Google Website Optimizer integration\n-Google Base integration\n-Scheduled DB logs cleaning option', 'http://www.magentocommerce.com/blog/comments/magento-version-117-now-available/', 0, 0),
(10, 3, '2008-11-27 02:24:50', 'Magento Version 1.1.8 Now Available', 'Magento version 1.1.8 now available.\n\nThis version includes some issue resolutions for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-118-now-available/', 0, 0),
(11, 3, '2008-12-30 12:45:59', 'Magento version 1.2.0 is now available for download and upgrade', 'We are extremely happy to announce the availability of Magento version 1.2.0 for download and upgrade.\n\nThis version includes numerous issue resolutions for Magento version 1.1.x and some highly requested new features such as:\n\n    * Support for Downloadable/Digital Products. \n    * Added Layered Navigation to site search result page.\n    * Improved site search to utilize MySQL fulltext search\n    * Added support for fixed-taxes on product level.\n    * Upgraded Zend Framework to the latest stable version 1.7.2', 'http://www.magentocommerce.com/blog/comments/magento-version-120-is-now-available/', 0, 0),
(12, 2, '2008-12-31 02:59:22', 'Magento version 1.2.0.1 now available', 'Magento version 1.2.0.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1201-available/', 0, 0),
(13, 2, '2009-01-13 01:41:49', 'Magento version 1.2.0.2 now available', 'Magento version 1.2.0.2 is now available for download and upgrade. This version includes an issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1202-now-available/', 0, 0),
(14, 3, '2009-01-24 05:25:56', 'Magento version 1.2.0.3 now available', 'Magento version 1.2.0.3 is now available for download and upgrade. This version includes issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1203-now-available/', 0, 0),
(15, 3, '2009-02-03 02:57:00', 'Magento version 1.2.1 is now available for download and upgrade', 'We are happy to announce the availability of Magento version 1.2.1 for download and upgrade.\n\nThis version includes some issue resolutions for Magento version 1.2.x. A full list of items included in this release can be found on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-121-now-available/', 0, 0),
(16, 3, '2009-02-24 05:45:47', 'Magento version 1.2.1.1 now available', 'Magento version 1.2.1.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1211-now-available/', 0, 0),
(17, 3, '2009-02-27 06:39:24', 'CSRF Attack Prevention', 'We have just posted a blog entry about a hypothetical CSRF attack on a Magento admin panel. Please read the post to find out if your Magento installation is at risk at http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 'http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 0, 0),
(18, 2, '2009-03-04 04:03:58', 'Magento version 1.2.1.2 now available', 'Magento version 1.2.1.2 is now available for download and upgrade.\nThis version includes some updates to improve admin security as described in the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-1212-now-available/', 0, 0),
(19, 3, '2009-03-31 06:22:40', 'Magento version 1.3.0 now available', 'Magento version 1.3.0 is now available for download and upgrade. This version includes numerous issue resolutions for Magento version 1.2.x and new features as described on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-130-is-now-available/', 0, 0),
(20, 3, '2009-04-18 08:06:02', 'Magento version 1.3.1 now available', 'Magento version 1.3.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and new features such as Checkout By Amazon and Amazon Flexible Payment. To see a full list of updates please check the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-131-now-available/', 0, 0),
(21, 3, '2009-05-20 02:31:21', 'Magento version 1.3.1.1 now available', 'Magento version 1.3.1.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and a security update for Magento installations that run on multiple domains or sub-domains. If you are running Magento with multiple domains or sub-domains we highly recommend upgrading to this version.', 'http://www.magentocommerce.com/blog/comments/magento-version-1311-now-available/', 0, 0),
(22, 3, '2009-05-30 02:54:06', 'Magento version 1.3.2 now available', 'This version includes some improvements and issue resolutions for version 1.3.x that are listed on the release notes page. also included is a Beta version of the Compile module.', 'http://www.magentocommerce.com/blog/comments/magento-version-132-now-available/', 0, 0),
(23, 3, '2009-06-01 23:32:52', 'Magento version 1.3.2.1 now available', 'Magento version 1.3.2.1 now available for download and upgrade.\n\nThis release solves an issue for users running Magento with PHP 5.2.0, and changes to index.php to support the new Compiler Module.', 'http://www.magentocommerce.com/blog/comments/magento-version-1321-now-available/', 0, 0),
(24, 3, '2009-07-02 05:21:44', 'Magento version 1.3.2.2 now available', 'Magento version 1.3.2.2 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1322-now-available/', 0, 0),
(25, 3, '2009-07-23 10:48:54', 'Magento version 1.3.2.3 now available', 'Magento version 1.3.2.3 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. We recommend to upgrade to this version if PayPal payment modules are in use. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1323-now-available/', 0, 0),
(26, 4, '2009-08-28 22:26:28', 'PayPal is updating Payflow Pro and Website Payments Pro (Payflow Edition) UK.', 'If you are using Payflow Pro and/or Website Payments Pro (Payflow Edition) UK.  payment methods, you will need to update the URLâ€˜s in your Magento Administrator Panel in order to process transactions after September 1, 2009. Full details are available here: http://www.magentocommerce.com/wiki/paypal_payflow_changes', 'http://www.magentocommerce.com/wiki/paypal_payflow_changes', 0, 0),
(27, 2, '2009-09-24 00:16:49', 'Magento Version 1.3.2.4 Security Update', 'Magento Version 1.3.2.4 is now available. This version includes a security updates for Magento 1.3.x that solves possible XSS vulnerability issue on customer registration page and is available through SVN, Download Page and through the Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-version-1324-security-update/', 0, 0),
(28, 4, '2009-09-25 18:57:54', 'Magento Preview Version 1.4.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha2-now-available/', 0, 0),
(29, 4, '2009-10-07 04:55:40', 'Magento Preview Version 1.4.0.0-alpha3 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha3 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha3-now-available/', 0, 0),
(30, 4, '2009-12-09 04:30:36', 'Magento Preview Version 1.4.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-beta1-now-available/', 0, 0),
(31, 4, '2009-12-31 14:22:12', 'Magento Preview Version 1.4.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-rc1-now-available/', 0, 0),
(32, 4, '2010-02-13 08:39:53', 'Magento CE Version 1.4.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.0.0 Stable for upgrade and download.', 'http://bit.ly/c53rpK', 0, 0),
(33, 3, '2010-02-20 07:39:36', 'Magento CE Version 1.4.0.1 Stable is now available', 'Magento CE 1.4.0.1 Stable is now available for upgrade and download.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1401-stable-now-available/', 0, 0),
(34, 4, '2010-04-24 00:09:03', 'Magento Version CE 1.3.3.0 Stable - Now Available With Support for 3-D Secure', 'Based on community requests, we are excited to announce the release of Magento CE 1.3.3.0-Stable with support for 3-D Secure. This release is intended for Magento merchants using version 1.3.x, who want to add support for 3-D Secure.', 'http://www.magentocommerce.com/blog/comments/magento-version-ce-1330-stable-now-available-with-support-for-3-d-secure/', 0, 0),
(35, 4, '2010-05-31 21:20:21', 'Announcing the Launch of Magento Mobile', 'The Magento team is pleased to announce the launch of Magento mobile, a new product that will allow Magento merchants to easily create branded, native mobile storefront applications that are deeply integrated with Magentoâ€™s market-leading eCommerce platform. The product includes a new administrative manager, a native iPhone app that is fully customizable, and a service where Magento manages the submission and maintenance process for the iTunes App Store.\n\nLearn more by visiting the Magento mobile product page and sign-up to be the first to launch a native mobile commerce app, fully integrated with Magento.', 'http://www.magentocommerce.com/product/mobile', 0, 0),
(36, 4, '2010-06-11 00:08:08', 'Magento CE Version 1.4.1.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.0 Stable for upgrade and download. Some of the highlights of this release include: Enhanced PayPal integration (more info to follow), Change of Database structure of the Sales module to no longer use EAV, and much more.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1410-stable-now-available/', 0, 0),
(37, 4, '2010-07-27 01:37:34', 'Magento CE Version 1.4.1.1 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-now-available/', 0, 0),
(38, 4, '2010-07-28 09:12:12', 'Magento CE Version 1.4.2.0-beta1 Preview Release Now Available', 'This release gives a preview of the new Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-beta1-now-available/', 0, 0),
(39, 4, '2010-07-29 00:15:01', 'Magento CE Version 1.4.1.1 Patch Available', 'As some users experienced issues with upgrading to CE 1.4.1.1 through PEAR channels we provided a patch for it that is available on our blog http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 0, 0),
(40, 4, '2010-10-12 04:13:25', 'Magento Mobile is now live!', 'Magento Mobile is now live! Signup today to have your own native iPhone mobile-shopping app in iTunes for the holiday season! Learn more at http://www.magentomobile.com/', 'http://www.magentomobile.com/', 0, 0),
(41, 4, '2010-11-09 02:52:06', 'Magento CE Version 1.4.2.0-RC1 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC1 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc1-now-available/', 0, 0),
(42, 4, '2010-12-03 01:33:00', 'Magento CE Version 1.4.2.0-RC2 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC2 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc2-now-available/', 0, 0),
(43, 4, '2010-12-09 03:29:55', 'Magento CE Version 1.4.2.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1420-stable-now-available/', 0, 0),
(44, 4, '2010-12-18 04:23:55', 'Magento Preview Version CE 1.5.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha1-now-available/', 0, 0),
(45, 4, '2010-12-30 04:51:08', 'Magento Preview Version CE 1.5.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha2-now-available/', 0, 0),
(46, 4, '2011-01-14 05:35:36', 'Magento Preview Version CE 1.5.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta1-now-available/', 0, 0),
(47, 4, '2011-01-22 02:19:09', 'Magento Preview Version CE 1.5.0.0-beta2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta2-now-available/', 0, 0),
(48, 4, '2011-01-28 02:27:57', 'Magento Preview Version CE 1.5.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc1-now-available/', 0, 0),
(49, 4, '2011-02-04 02:56:33', 'Magento Preview Version CE 1.5.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc2-now-available/', 0, 0),
(50, 4, '2011-02-09 00:43:23', 'Magento CE Version 1.5.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.5.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-community-professional-and-enterprise-editions-releases-now-availab/', 0, 0),
(51, 4, '2011-02-10 04:42:57', 'Magento CE 1.5.0.1 stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.0.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-1501-stable-now-available/', 0, 0),
(52, 4, '2011-03-19 00:15:45', 'Magento CE 1.5.1.0-beta1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-beta1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-beta1-now-available/', 0, 0),
(53, 4, '2011-03-31 22:43:02', 'Magento CE 1.5.1.0-rc1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-rc1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-rc1-now-available/', 0, 0),
(54, 4, '2011-04-26 23:21:07', 'Magento CE 1.5.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1510-stable-now-available/', 0, 0),
(55, 4, '2011-05-26 23:33:23', 'Magento Preview Version CE 1.6.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-alpha1-now-available/', 0, 0),
(56, 4, '2011-06-15 22:12:08', 'Magento Preview Version CE 1.6.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-beta1for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-beta1-now-available/', 0, 0),
(57, 4, '2011-06-30 23:03:58', 'Magento Preview Version CE 1.6.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc1-now-available/', 0, 0),
(58, 4, '2011-07-11 23:07:39', 'Magento Preview Version CE 1.6.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc2-now-available/', 0, 0),
(59, 4, '2011-08-19 21:58:31', 'Magento CE 1.6.0.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1600-stable-now-available/', 0, 0),
(60, 4, '2011-09-17 05:31:26', 'Magento Preview Version CE 1.6.1.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-beta1-now-available/', 0, 0),
(61, 4, '2011-09-29 19:44:10', 'Magento Preview Version CE 1.6.1.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-rc1-now-available/', 0, 0),
(62, 4, '2011-10-19 21:50:05', 'Magento CE 1.6.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1610-stable-now-available/', 0, 0),
(63, 4, '2011-12-30 22:39:35', 'Magento Preview Version CE 1.7.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-alpha1-now-available/', 0, 0),
(64, 4, '2012-01-11 22:24:20', 'Magento CE 1.6.2.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1620-stable-now-available/', 0, 0),
(65, 4, '2012-03-03 00:54:12', 'Magento Preview Version CE 1.7.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-beta1-now-available/', 0, 0),
(66, 4, '2012-04-23 14:02:40', 'Magento Community Preview Version CE 1.7.0.0-RC1 has been released!', 'Learn more about the exciting new features and updates in this release and how you can take it for a test drive. As this is a preview version, we need to stress that it''s likely unstable and that we DON''T recommend that you use it in any production environment just yet.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-rc1-now-available/', 0, 0),
(67, 4, '2012-05-11 09:46:54', 'Magento Community 1.7 and Magento Enterprise 1.12 now available!', 'Learn more about the exciting new features and updates in these releases.', 'http://www.magentocommerce.com/blog/comments/magento-enterprise-112-and-community-17-now-available/', 0, 0),
(68, 4, '2012-06-20 18:54:07', 'Magento Community Edition 1.7.0.1 now available! ', 'We have just released an updated version of Magento Community Edition, version 1.7.0.1. This update delivers new, minor functionality and fixes for some potential security vulnerabilities.', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-1701-released/', 0, 0),
(69, 4, '2012-07-05 19:21:43', 'Important Security Update - Zend Platform Vulnerability', 'We have recently learned of a serious vulnerability in the Zend platform on which Magento is built. Learn more and access a patch that addresses this issue. ', 'http://www.magentocommerce.com/blog/comments/important-security-update-zend-platform-vulnerability/', 0, 0),
(70, 4, '2012-11-19 20:27:42', 'Wrap up more holiday sales with financing', 'Give your customers up to 6 months financing. You get paid right away with Bill Me Later, a PayPal service. It’s a great way to extend financing in time for the holidays. Learn More.', 'http://www.magentocommerce.com/paypal/billmelater?utm_source=CEMessaging&utm_medium=copy&utm_content=sixmonths&utm_campaign=BML', 0, 0),
(71, 4, '2012-12-07 11:22:30', 'Increase Your Sales With PayPal', 'Magento merchants using PayPal Express Checkout can help increase their sales on average 18%. It is one simple thing you can do right now to help boost your sales. Learn more.', 'http://www.magentocommerce.com/add-paypal?utm_source=CEModule&utm_medium=copy&utm_content=18&utm_campaign=choosepaypal', 0, 0),
(72, 4, '2013-01-15 22:02:07', 'Imagine 2013 Registration is Now Open!', 'Join 1500 merchants, partners, developers and enthusiasts from 35+ countries around the world for Magento’s premier global conference! Collaborate, learn, network and get inspired by the future of eCommerce. Tickets will sell out fast! April 8th – 10th in Las Vegas.', 'https://registration.imagineecommerce.com/', 0, 0),
(73, 4, '2013-02-12 17:53:42', 'Get More eCommerce Power with Magento Enterprise', 'Limited time offer: Get a free, customized evaluation of your Community Edition site from a Magento Solution Partner. This evaluation gives you a clear look at the numerous benefits you can achieve by upgrading to Enterprise Edition. ', 'http://www.magentocommerce.com/community-to-enterprise?utm_source=CEMM&utm_medium=copy&utm_campaign=CE2EE', 0, 0),
(74, 2, '2013-09-27 17:28:13', 'Magento Community Edition 1.8.0.0 - now available for download!', 'Get tax, security, performance, and many other improvements. \n\nLearn more at http://www.magentocommerce.com/blog/comments/magento-community-edition-one-eight-now-available/ ', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-one-eight-now-available/', 0, 0),
(75, 4, '2013-12-11 15:35:06', 'Magento Community Edition 1.8.1.0 is here!', 'This new version offers significant tax calculation, product quality, and security enhancements. Be sure to carefully review the upgrade instructions before starting. More information is available at http://www.magentocommerce.com/blog/comments/magento-community-edition-1810-is-here/', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-1810-is-here/', 0, 0),
(76, 4, '2013-12-12 23:24:39', 'Important Magento Community Edition Patch', 'A security patch is available for Magento Community Edition 1.4.0.0 through 1.7.0.2; the issue has been fixed in Magento Community Edition 1.8.0.0 and later. It resolves a vulnerability discovered through our quarterly penetration testing process and has not been reported by merchants. We encourage all merchants to apply the patch in their next regularly scheduled maintenance cycle. The patch is available at http://www.magentocommerce.com/download in the Magento Community Edition Patches section.', 'http://www.magentocommerce.com/download', 0, 0),
(77, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(78, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(79, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(80, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(81, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(82, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(83, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(84, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(85, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(86, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(87, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(88, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(89, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(90, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(91, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(92, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(93, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_assert`
--

CREATE TABLE IF NOT EXISTS `admin_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert ID',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert Type',
  `assert_data` text COMMENT 'Assert Data',
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Assert Table' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_assert`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE IF NOT EXISTS `admin_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name',
  PRIMARY KEY (`role_id`),
  KEY `IDX_ADMIN_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `IDX_ADMIN_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin Role Table' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`role_id`, `parent_id`, `tree_level`, `sort_order`, `role_type`, `user_id`, `role_name`) VALUES
(1, 0, 1, 1, 'G', 0, 'Administrators'),
(2, 1, 2, 0, 'U', 1, 'Icoinc');

-- --------------------------------------------------------

--
-- Table structure for table `admin_rule`
--

CREATE TABLE IF NOT EXISTS `admin_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert ID',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role Type',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_ADMIN_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `IDX_ADMIN_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_rule`
--

INSERT INTO `admin_rule` (`rule_id`, `role_id`, `resource_id`, `privileges`, `assert_id`, `role_type`, `permission`) VALUES
(1, 1, 'all', NULL, 0, 'G', 'allow');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE IF NOT EXISTS `admin_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(100) DEFAULT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User Created Time',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UNQ_ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin User Table' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `created`, `modified`, `logdate`, `lognum`, `reload_acl_flag`, `is_active`, `extra`, `rp_token`, `rp_token_created_at`) VALUES
(1, 'Icoinc', 'VN', 'enjoy3013@gmail.com', 'admin', '6eae036b35de41d600cad402dda073a5:NXpdvElJ5GFSvpwrcVJU2q1lUcycsIej', '2014-01-13 01:41:42', '2014-01-13 01:41:42', '2014-01-15 07:30:34', 16, 0, 1, 'a:1:{s:11:"configState";a:19:{s:11:"clnews_news";s:1:"1";s:15:"clnews_comments";s:1:"1";s:10:"clnews_rss";s:1:"0";s:7:"web_url";s:1:"0";s:7:"web_seo";s:1:"0";s:12:"web_unsecure";s:1:"0";s:10:"web_secure";s:1:"0";s:11:"web_default";s:1:"1";s:9:"web_polls";s:1:"0";s:10:"web_cookie";s:1:"0";s:11:"web_session";s:1:"0";s:24:"web_browser_capabilities";s:1:"0";s:14:"design_package";s:1:"0";s:12:"design_theme";s:1:"0";s:11:"design_head";s:1:"1";s:13:"design_header";s:1:"0";s:13:"design_footer";s:1:"0";s:17:"design_pagination";s:1:"0";s:12:"design_email";s:1:"0";}}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `api2_acl_attribute`
--

CREATE TABLE IF NOT EXISTS `api2_acl_attribute` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `user_type` varchar(20) NOT NULL COMMENT 'Type of user',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `operation` varchar(20) NOT NULL COMMENT 'Operation',
  `allowed_attributes` text COMMENT 'Allowed attributes',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_API2_ACL_ATTRIBUTE_USER_TYPE_RESOURCE_ID_OPERATION` (`user_type`,`resource_id`,`operation`),
  KEY `IDX_API2_ACL_ATTRIBUTE_USER_TYPE` (`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Filter ACL Attributes' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `api2_acl_attribute`
--


-- --------------------------------------------------------

--
-- Table structure for table `api2_acl_role`
--

CREATE TABLE IF NOT EXISTS `api2_acl_role` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `role_name` varchar(255) NOT NULL COMMENT 'Name of role',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_API2_ACL_ROLE_CREATED_AT` (`created_at`),
  KEY `IDX_API2_ACL_ROLE_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Roles' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `api2_acl_role`
--

INSERT INTO `api2_acl_role` (`entity_id`, `created_at`, `updated_at`, `role_name`) VALUES
(1, '2014-01-13 08:35:49', NULL, 'Guest'),
(2, '2014-01-13 08:35:49', NULL, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `api2_acl_rule`
--

CREATE TABLE IF NOT EXISTS `api2_acl_rule` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `privilege` varchar(20) DEFAULT NULL COMMENT 'ACL Privilege',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_API2_ACL_RULE_ROLE_ID_RESOURCE_ID_PRIVILEGE` (`role_id`,`resource_id`,`privilege`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Rules' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `api2_acl_rule`
--


-- --------------------------------------------------------

--
-- Table structure for table `api2_acl_user`
--

CREATE TABLE IF NOT EXISTS `api2_acl_user` (
  `admin_id` int(10) unsigned NOT NULL COMMENT 'Admin ID',
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID',
  UNIQUE KEY `UNQ_API2_ACL_USER_ADMIN_ID` (`admin_id`),
  KEY `FK_API2_ACL_USER_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Users';

--
-- Dumping data for table `api2_acl_user`
--


-- --------------------------------------------------------

--
-- Table structure for table `api_assert`
--

CREATE TABLE IF NOT EXISTS `api_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert id',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert type',
  `assert_data` text COMMENT 'Assert additional data',
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Asserts' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `api_assert`
--


-- --------------------------------------------------------

--
-- Table structure for table `api_role`
--

CREATE TABLE IF NOT EXISTS `api_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent role id',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role level in tree',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order to display on admin area',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User id',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role name',
  PRIMARY KEY (`role_id`),
  KEY `IDX_API_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `IDX_API_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Roles' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `api_role`
--


-- --------------------------------------------------------

--
-- Table structure for table `api_rule`
--

CREATE TABLE IF NOT EXISTS `api_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Api rule Id',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Api role Id',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Module code',
  `api_privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert id',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role type',
  `api_permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_API_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `IDX_API_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Rules' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `api_rule`
--


-- --------------------------------------------------------

--
-- Table structure for table `api_session`
--

CREATE TABLE IF NOT EXISTS `api_session` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'User id',
  `logdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login date',
  `sessid` varchar(40) DEFAULT NULL COMMENT 'Sessioin id',
  KEY `IDX_API_SESSION_USER_ID` (`user_id`),
  KEY `IDX_API_SESSION_SESSID` (`sessid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Sessions';

--
-- Dumping data for table `api_session`
--


-- --------------------------------------------------------

--
-- Table structure for table `api_user`
--

CREATE TABLE IF NOT EXISTS `api_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User id',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'First name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'Last name',
  `email` varchar(128) DEFAULT NULL COMMENT 'Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'Nickname',
  `api_key` varchar(100) DEFAULT NULL COMMENT 'Api key',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User record create date',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User record modify date',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Quantity of log ins',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Refresh ACL flag',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Account status',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Users' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `api_user`
--


-- --------------------------------------------------------

--
-- Table structure for table `captcha_log`
--

CREATE TABLE IF NOT EXISTS `captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(32) NOT NULL COMMENT 'Value',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count Login Attempts';

--
-- Dumping data for table `captcha_log`
--


-- --------------------------------------------------------

--
-- Table structure for table `clnews_category`
--

CREATE TABLE IF NOT EXISTS `clnews_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `url_key` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(6) NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `sort_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `clnews_category`
--

INSERT INTO `clnews_category` (`category_id`, `title`, `url_key`, `sort_order`, `meta_keywords`, `meta_description`, `parent_id`, `level`, `sort_id`) VALUES
(1, 'Hướng Dẫn Tìm Việc', 'huong-dan-tim-viec', 1, 'hướng dẫn tìm việc, kiếm việc', 'Các bài viết hướng dẫn ứng viên và người tìm việc nhằm giúp họ có thêm kinh nghiệm khi ứng tuyển cho các vị trí.', 0, 0, 0),
(2, 'Hướng Dẫn Tuyển Dụng', 'huong-dan-tuyen-dung', 2, 'hướng dẫn tuyển dụng, đăng tuyển dụng', 'Hướng dẫn dành cho các bộ phận nhân sự nhằm có thể tìm kiếm và tuyển dụng một các tốt hơn, hiệu quả hơn.', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `clnews_category_store`
--

CREATE TABLE IF NOT EXISTS `clnews_category_store` (
  `category_id` smallint(6) unsigned DEFAULT NULL,
  `store_id` smallint(6) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clnews_category_store`
--

INSERT INTO `clnews_category_store` (`category_id`, `store_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `clnews_comment`
--

CREATE TABLE IF NOT EXISTS `clnews_comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` smallint(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `comment_status` smallint(6) NOT NULL DEFAULT '0',
  `created_time` datetime DEFAULT NULL,
  `user` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `clnews_comment`
--


-- --------------------------------------------------------

--
-- Table structure for table `clnews_news`
--

CREATE TABLE IF NOT EXISTS `clnews_news` (
  `news_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `url_key` varchar(255) NOT NULL DEFAULT '',
  `short_content` text NOT NULL,
  `full_content` text NOT NULL,
  `document` varchar(255) NOT NULL DEFAULT '',
  `image_short_content` varchar(255) NOT NULL DEFAULT '',
  `image_full_content` varchar(255) NOT NULL DEFAULT '',
  `image_short_content_show` int(11) NOT NULL DEFAULT '0',
  `image_full_content_show` int(11) NOT NULL DEFAULT '0',
  `full_path_document` varchar(255) NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT '0',
  `news_time` datetime DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `publicate_from_time` datetime DEFAULT NULL,
  `publicate_to_time` datetime DEFAULT NULL,
  `author` varchar(255) NOT NULL DEFAULT '',
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `comments_enabled` tinyint(11) NOT NULL,
  `publicate_from_hours` int(11) NOT NULL DEFAULT '0',
  `publicate_to_hours` int(11) NOT NULL DEFAULT '0',
  `publicate_from_minutes` int(11) NOT NULL DEFAULT '0',
  `publicate_to_minutes` int(11) NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `tags` text NOT NULL,
  `short_height_resize` int(11) DEFAULT NULL,
  `short_width_resize` int(11) DEFAULT NULL,
  `full_width_resize` int(11) DEFAULT NULL,
  `full_height_resize` int(11) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `clnews_news`
--

INSERT INTO `clnews_news` (`news_id`, `title`, `url_key`, `short_content`, `full_content`, `document`, `image_short_content`, `image_full_content`, `image_short_content_show`, `image_full_content_show`, `full_path_document`, `status`, `news_time`, `created_time`, `update_time`, `publicate_from_time`, `publicate_to_time`, `author`, `meta_keywords`, `meta_description`, `comments_enabled`, `publicate_from_hours`, `publicate_to_hours`, `publicate_from_minutes`, `publicate_to_minutes`, `link`, `tags`, `short_height_resize`, `short_width_resize`, `full_width_resize`, `full_height_resize`) VALUES
(2, 'Làm Thế Nào Để Tìm Được Một Việc Làm Tốt?', 'lam-the-nao-de-tim-duoc-mot-viec-lam-tot', '<p>Short Description</p>\r\n<p>Short DescriptionShort Description Short Description Short Description Short Description Short Description Short Description Short Description Short Description Short Description Short Description&nbsp;Short Description Short Description Short Description Short Description Short Description Short Description Short Description</p>', '<p>Full Description</p>\r\n<p>Full DescriptionFull Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description Full Description</p>', '13896015902015440691.jpg', 'clnews/1389601590600240784.jpg', 'clnews/1389601590600240784.jpg', 1, 1, '/var/www/iconicvn/media/clnews/13896015902015440691.jpg', 1, '2014-01-13 03:09:00', '2014-01-13 08:26:30', '2014-01-15 03:09:13', NULL, NULL, '<a href="">ICONIC Vietnam</a>', 'việc làm, công việc', 'Hướng dẫn cách thể nào để tìm được việc làm tốt cho bản thân bạn.', 1, 0, 0, 0, 0, '', 'what, what?', 0, 0, 0, 0),
(3, 'Làm Sao Để Tuyển Dụng Nhân Tài?', 'lam-sao-de-tuyen-dung-nhan-tai', '<p>Short description Short description Short description Short description Short description Short description Short description Short description Short description Short description Short description Short description Short description Short description Short description Short description</p>', '<p>Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description</p>', '', 'clnews/1389671394807219353.jpg', 'clnews/1389671394807219353.jpg', 0, 0, '', 1, '2014-01-14 01:39:00', '2014-01-14 03:49:54', '2014-01-15 01:39:11', NULL, NULL, 'ICONIC Vietnam', '', '', 0, 0, 0, 0, 0, '', '', NULL, NULL, NULL, NULL),
(4, 'Việc Làm Lương Cao? Dễ Như Trở Bàn Tay', 'viec-lam-luong-cao-de-nhu-tro-ban-tay', '<p>T&igrave;m việc lương cao kh&ocirc;ng kh&oacute;, chỉ cần bạn l&agrave;m theo những điều sau đ&acirc;y.</p>', '<p>Full description</p>\r\n<p>Full descriptionFull description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description Full description</p>', '', 'clnews/1389672173851653221.jpg', 'clnews/1389672173851653221.jpg', 0, 0, '', 1, '2014-01-14 01:39:00', '2014-01-14 04:02:53', '2014-01-15 01:39:19', NULL, NULL, 'ICONIC Vietnam', '', '', 0, 0, 0, 0, 0, '', '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clnews_news_category`
--

CREATE TABLE IF NOT EXISTS `clnews_news_category` (
  `category_id` smallint(6) unsigned DEFAULT NULL,
  `news_id` smallint(6) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clnews_news_category`
--

INSERT INTO `clnews_news_category` (`category_id`, `news_id`) VALUES
(2, 3),
(1, 4),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `clnews_news_store`
--

CREATE TABLE IF NOT EXISTS `clnews_news_store` (
  `news_id` smallint(6) unsigned DEFAULT NULL,
  `store_id` smallint(6) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clnews_news_store`
--

INSERT INTO `clnews_news_store` (`news_id`, `store_id`) VALUES
(3, 1),
(4, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_block`
--

CREATE TABLE IF NOT EXISTS `cms_block` (
  `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Block Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active',
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CMS Block Table' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_block`
--

INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(1, 'Footer Links', 'footer_links', '<ul>\r\n<li><a href="{{store direct_url="about-magento-demo-store"}}">About Us</a></li>\r\n<li><a href="{{store direct_url="customer-service"}}">Customer Service</a></li>\r\n<li class="last privacy"><a href="{{store direct_url="privacy-policy-cookie-restriction-mode"}}">Privacy Policy</a></li>\r\n</ul>', '2014-01-13 01:35:56', '2014-01-13 01:35:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_block_store`
--

CREATE TABLE IF NOT EXISTS `cms_block_store` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`block_id`,`store_id`),
  KEY `IDX_CMS_BLOCK_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

--
-- Dumping data for table `cms_block_store`
--

INSERT INTO `cms_block_store` (`block_id`, `store_id`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_page`
--

CREATE TABLE IF NOT EXISTS `cms_page` (
  `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `root_template` varchar(255) DEFAULT NULL COMMENT 'Page Template',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Page Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date',
  PRIMARY KEY (`page_id`),
  KEY `IDX_CMS_PAGE_IDENTIFIER` (`identifier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CMS Page Table' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `cms_page`
--

INSERT INTO `cms_page` (`page_id`, `title`, `root_template`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`) VALUES
(1, 'Lỗi 404 - Không Tìm Thấy Trang Web Bạn Cần', 'one_column', 'Page keywords', 'Page description', 'no-route', NULL, '<div class="page-title">\r\n<h1>&Ocirc;i, xin lỗi ...</h1>\r\n</div>\r\n<dl><dt>Trang web m&agrave; bạn đang t&igrave;m kh&ocirc;ng tồn tại v&agrave; c&oacute; thể l&agrave; v&igrave; một trong c&aacute;c l&yacute; do sau đ&acirc;y:</dt><dd>\r\n<ul class="disc">\r\n<li>C&oacute; thể địa chỉ bạn g&otilde; v&agrave;o kh&ocirc;ng đ&uacute;ng, xin kiểm tra lại sự ch&iacute;nh x&aacute;c.</li>\r\n<li>C&oacute; thể đường link v&agrave;o trang web bạn bấm v&agrave;o đ&atilde; bị x&oacute;a.</li>\r\n</ul>\r\n</dd></dl><dl><dt>Vậy giờ t&ocirc;i phải l&agrave;m sao?</dt><dd>Xin đừng lo lắng, c&oacute; ch&uacute;ng t&ocirc;i ở đ&acirc;y để gi&uacute;p bạn! C&oacute; rất nhiều c&aacute;ch để gi&uacute;p bạn quay lại đ&uacute;ng đường.</dd><dd>\r\n<ul class="disc">\r\n<li><a onclick="history.go(-1); return false;" href="#">Quay trở lại</a> trang trước.</li>\r\n<li>Sử dụng c&aacute;c link sau đ&acirc;y để quay trở lại!<br /><a href="{{store url=""}}">Trang Chủ</a> <span class="separator">|</span> <a href="{{store url="customer/account"}}">T&agrave;i Khoản Của T&ocirc;i</a></li>\r\n</ul>\r\n</dd></dl>', '2014-01-13 01:35:56', '2014-01-15 05:24:13', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Việc Làm Tốt Nhất Cho Người Việt - ICONIC Việt Nam', 'one_column', NULL, NULL, 'home', NULL, '<p>{{block type="job/search" name="job.search" template="job/search.phtml"}}</p>\r\n<div id="home-main-content" class="clearfix">\r\n<p>{{block type="job/newest" name="job.newest" template="job/newest.phtml"}}</p>\r\n<p>{{block type="clnews/news" name="right.clnews.latest" template="clnews/latest.phtml"}}</p>\r\n</div>', '2014-01-13 01:35:56', '2014-01-15 03:51:16', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'About Us', 'two_columns_right', NULL, NULL, 'about-magento-demo-store', NULL, '<div class="page-title">\r\n<h1>About Magento Store</h1>\r\n</div>\r\n<div class="col3-set">\r\n<div class="col-1"><p><a href="http://www.varien.com/"><img src="{{skin url=''images/media/about_us_img.jpg''}}" title="Varien" alt="Varien" /></a></p><p style="line-height:1.2em;"><small>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.</small></p>\r\n<p style="color:#888; font:1.2em/1.4em georgia, serif;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta.</p></div>\r\n<div class="col-2">\r\n<p><strong style="color:#de036f;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.</strong></p>\r\n<p>Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo. </p>\r\n<p>Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus. Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi. Vestibulum sapien dolor, aliquet nec, porta ac, malesuada a, libero. Praesent feugiat purus eget est. Nulla facilisi. Vestibulum tincidunt sapien eu velit. Mauris purus. Maecenas eget mauris eu orci accumsan feugiat. Pellentesque eget velit. Nunc tincidunt.</p></div>\r\n<div class="col-3">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper </p>\r\n<p><strong style="color:#de036f;">Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus.</strong></p>\r\n<p>Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi.</p>\r\n<div class="divider"></div>\r\n<p>To all of you, from all of us at Magento Store - Thank you and Happy eCommerce!</p>\r\n<p style="line-height:1.2em;"><strong style="font:italic 2em Georgia, serif;">John Doe</strong><br /><small>Some important guy</small></p></div>\r\n</div>', '2014-01-13 01:35:56', '2014-01-13 01:35:56', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Customer Service', 'three_columns', NULL, NULL, 'customer-service', NULL, '<div class="page-title">\r\n<h1>Customer Service</h1>\r\n</div>\r\n<ul class="disc">\r\n<li><a href="#answer1">Shipping &amp; Delivery</a></li>\r\n<li><a href="#answer2">Privacy &amp; Security</a></li>\r\n<li><a href="#answer3">Returns &amp; Replacements</a></li>\r\n<li><a href="#answer4">Ordering</a></li>\r\n<li><a href="#answer5">Payment, Pricing &amp; Promotions</a></li>\r\n<li><a href="#answer6">Viewing Orders</a></li>\r\n<li><a href="#answer7">Updating Account Information</a></li>\r\n</ul>\r\n<dl>\r\n<dt id="answer1">Shipping &amp; Delivery</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer2">Privacy &amp; Security</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer3">Returns &amp; Replacements</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer4">Ordering</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer5">Payment, Pricing &amp; Promotions</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer6">Viewing Orders</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer7">Updating Account Information</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n</dl>', '2014-01-13 01:35:56', '2014-01-13 01:35:56', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Enable Cookies', 'one_column', NULL, NULL, 'enable-cookies', NULL, '<div class="std">\r\n    <ul class="messages">\r\n        <li class="notice-msg">\r\n            <ul>\r\n                <li>Please enable cookies in your web browser to continue.</li>\r\n            </ul>\r\n        </li>\r\n    </ul>\r\n    <div class="page-title">\r\n        <h1><a name="top"></a>What are Cookies?</h1>\r\n    </div>\r\n    <p>Cookies are short pieces of data that are sent to your computer when you visit a website. On later visits, this data is then returned to that website. Cookies allow us to recognize you automatically whenever you visit our site so that we can personalize your experience and provide you with better service. We also use cookies (and similar browser data, such as Flash cookies) for fraud prevention and other purposes. If your web browser is set to refuse cookies from our website, you will not be able to complete a purchase or take advantage of certain features of our website, such as storing items in your Shopping Cart or receiving personalized recommendations. As a result, we strongly encourage you to configure your web browser to accept cookies from our website.</p>\r\n    <h2 class="subtitle">Enabling Cookies</h2>\r\n    <ul class="disc">\r\n        <li><a href="#ie7">Internet Explorer 7.x</a></li>\r\n        <li><a href="#ie6">Internet Explorer 6.x</a></li>\r\n        <li><a href="#firefox">Mozilla/Firefox</a></li>\r\n        <li><a href="#opera">Opera 7.x</a></li>\r\n    </ul>\r\n    <h3><a name="ie7"></a>Internet Explorer 7.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Start Internet Explorer</p>\r\n        </li>\r\n        <li>\r\n            <p>Under the <strong>Tools</strong> menu, click <strong>Internet Options</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-1.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Privacy</strong> tab</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-2.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Advanced</strong> button</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-3.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Put a check mark in the box for <strong>Override Automatic Cookie Handling</strong>, put another check mark in the <strong>Always accept session cookies </strong>box</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-4.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-5.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-6.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Restart Internet Explore</p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="ie6"></a>Internet Explorer 6.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Select <strong>Internet Options</strong> from the Tools menu</p>\r\n            <p><img src="{{skin url="images/cookies/ie6-1.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> tab</p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Default</strong> button (or manually slide the bar down to <strong>Medium</strong>) under <strong>Settings</strong>. Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie6-2.gif"}}" alt="" /></p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="firefox"></a>Mozilla/Firefox</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Click on the <strong>Tools</strong>-menu in Mozilla</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Options...</strong> item in the menu - a new window open</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> selection in the left part of the window. (See image below)</p>\r\n            <p><img src="{{skin url="images/cookies/firefox.png"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Expand the <strong>Cookies</strong> section</p>\r\n        </li>\r\n        <li>\r\n            <p>Check the <strong>Enable cookies</strong> and <strong>Accept cookies normally</strong> checkboxes</p>\r\n        </li>\r\n        <li>\r\n            <p>Save changes by clicking <strong>Ok</strong>.</p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="opera"></a>Opera 7.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Click on the <strong>Tools</strong> menu in Opera</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Preferences...</strong> item in the menu - a new window open</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> selection near the bottom left of the window. (See image below)</p>\r\n            <p><img src="{{skin url="images/cookies/opera.png"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>The <strong>Enable cookies</strong> checkbox must be checked, and <strong>Accept all cookies</strong> should be selected in the &quot;<strong>Normal cookies</strong>&quot; drop-down</p>\r\n        </li>\r\n        <li>\r\n            <p>Save changes by clicking <strong>Ok</strong></p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n</div>\r\n', '2014-01-13 01:35:56', '2014-01-13 01:35:56', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Privacy Policy', 'one_column', NULL, NULL, 'privacy-policy-cookie-restriction-mode', 'Privacy Policy', '<p style="color: #ff0000; font-weight: bold; font-size: 13px">\n    Please replace this text with you Privacy Policy.\n    Please add any additional cookies your website uses below (e.g., Google Analytics)\n</p>\n<p>\n    This privacy policy sets out how {{config path="general/store_information/name"}} uses and protects any information\n    that you give {{config path="general/store_information/name"}} when you use this website.\n    {{config path="general/store_information/name"}} is committed to ensuring that your privacy is protected.\n    Should we ask you to provide certain information by which you can be identified when using this website,\n    then you can be assured that it will only be used in accordance with this privacy statement.\n    {{config path="general/store_information/name"}} may change this policy from time to time by updating this page.\n    You should check this page from time to time to ensure that you are happy with any changes.\n</p>\n<h2>What we collect</h2>\n<p>We may collect the following information:</p>\n<ul>\n    <li>name</li>\n    <li>contact information including email address</li>\n    <li>demographic information such as postcode, preferences and interests</li>\n    <li>other information relevant to customer surveys and/or offers</li>\n</ul>\n<p>\n    For the exhaustive list of cookies we collect see the <a href="#list">List of cookies we collect</a> section.\n</p>\n<h2>What we do with the information we gather</h2>\n<p>\n    We require this information to understand your needs and provide you with a better service,\n    and in particular for the following reasons:\n</p>\n<ul>\n    <li>Internal record keeping.</li>\n    <li>We may use the information to improve our products and services.</li>\n    <li>\n        We may periodically send promotional emails about new products, special offers or other information which we\n        think you may find interesting using the email address which you have provided.\n    </li>\n    <li>\n        From time to time, we may also use your information to contact you for market research purposes.\n        We may contact you by email, phone, fax or mail. We may use the information to customise the website\n        according to your interests.\n    </li>\n</ul>\n<h2>Security</h2>\n<p>\n    We are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure,\n    we have put in place suitable physical, electronic and managerial procedures to safeguard and secure\n    the information we collect online.\n</p>\n<h2>How we use cookies</h2>\n<p>\n    A cookie is a small file which asks permission to be placed on your computer''s hard drive.\n    Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit\n    a particular site. Cookies allow web applications to respond to you as an individual. The web application\n    can tailor its operations to your needs, likes and dislikes by gathering and remembering information about\n    your preferences.\n</p>\n<p>\n    We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page traffic\n    and improve our website in order to tailor it to customer needs. We only use this information for statistical\n    analysis purposes and then the data is removed from the system.\n</p>\n<p>\n    Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful\n    and which you do not. A cookie in no way gives us access to your computer or any information about you,\n    other than the data you choose to share with us. You can choose to accept or decline cookies.\n    Most web browsers automatically accept cookies, but you can usually modify your browser setting\n    to decline cookies if you prefer. This may prevent you from taking full advantage of the website.\n</p>\n<h2>Links to other websites</h2>\n<p>\n    Our website may contain links to other websites of interest. However, once you have used these links\n    to leave our site, you should note that we do not have any control over that other website.\n    Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst\n    visiting such sites and such sites are not governed by this privacy statement.\n    You should exercise caution and look at the privacy statement applicable to the website in question.\n</p>\n<h2>Controlling your personal information</h2>\n<p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\n<ul>\n    <li>\n        whenever you are asked to fill in a form on the website, look for the box that you can click to indicate\n        that you do not want the information to be used by anybody for direct marketing purposes\n    </li>\n    <li>\n        if you have previously agreed to us using your personal information for direct marketing purposes,\n        you may change your mind at any time by writing to or emailing us at\n        {{config path="trans_email/ident_general/email"}}\n    </li>\n</ul>\n<p>\n    We will not sell, distribute or lease your personal information to third parties unless we have your permission\n    or are required by law to do so. We may use your personal information to send you promotional information\n    about third parties which we think you may find interesting if you tell us that you wish this to happen.\n</p>\n<p>\n    You may request details of personal information which we hold about you under the Data Protection Act 1998.\n    A small fee will be payable. If you would like a copy of the information held on you please write to\n    {{config path="general/store_information/address"}}.\n</p>\n<p>\n    If you believe that any information we are holding on you is incorrect or incomplete,\n    please write to or email us as soon as possible, at the above address.\n    We will promptly correct any information found to be incorrect.\n</p>\n<h2><a name="list"></a>List of cookies we collect</h2>\n<p>The table below lists the cookies we collect and what information they store.</p>\n<table class="data-table">\n    <thead>\n        <tr>\n            <th>COOKIE name</th>\n            <th>COOKIE Description</th>\n        </tr>\n    </thead>\n    <tbody>\n        <tr>\n            <th>CART</th>\n            <td>The association with your shopping cart.</td>\n        </tr>\n        <tr>\n            <th>CATEGORY_INFO</th>\n            <td>Stores the category info on the page, that allows to display pages more quickly.</td>\n        </tr>\n        <tr>\n            <th>COMPARE</th>\n            <td>The items that you have in the Compare Products list.</td>\n        </tr>\n        <tr>\n            <th>CURRENCY</th>\n            <td>Your preferred currency</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER</th>\n            <td>An encrypted version of your customer id with the store.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_AUTH</th>\n            <td>An indicator if you are currently logged into the store.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_INFO</th>\n            <td>An encrypted version of the customer group you belong to.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_SEGMENT_IDS</th>\n            <td>Stores the Customer Segment ID</td>\n        </tr>\n        <tr>\n            <th>EXTERNAL_NO_CACHE</th>\n            <td>A flag, which indicates whether caching is disabled or not.</td>\n        </tr>\n        <tr>\n            <th>FRONTEND</th>\n            <td>You sesssion ID on the server.</td>\n        </tr>\n        <tr>\n            <th>GUEST-VIEW</th>\n            <td>Allows guests to edit their orders.</td>\n        </tr>\n        <tr>\n            <th>LAST_CATEGORY</th>\n            <td>The last category you visited.</td>\n        </tr>\n        <tr>\n            <th>LAST_PRODUCT</th>\n            <td>The most recent product you have viewed.</td>\n        </tr>\n        <tr>\n            <th>NEWMESSAGE</th>\n            <td>Indicates whether a new message has been received.</td>\n        </tr>\n        <tr>\n            <th>NO_CACHE</th>\n            <td>Indicates whether it is allowed to use cache.</td>\n        </tr>\n        <tr>\n            <th>PERSISTENT_SHOPPING_CART</th>\n            <td>A link to information about your cart and viewing history if you have asked the site.</td>\n        </tr>\n        <tr>\n            <th>POLL</th>\n            <td>The ID of any polls you have recently voted in.</td>\n        </tr>\n        <tr>\n            <th>POLLN</th>\n            <td>Information on what polls you have voted on.</td>\n        </tr>\n        <tr>\n            <th>RECENTLYCOMPARED</th>\n            <td>The items that you have recently compared.            </td>\n        </tr>\n        <tr>\n            <th>STF</th>\n            <td>Information on products you have emailed to friends.</td>\n        </tr>\n        <tr>\n            <th>STORE</th>\n            <td>The store view or language you have selected.</td>\n        </tr>\n        <tr>\n            <th>USER_ALLOWED_SAVE_COOKIE</th>\n            <td>Indicates whether a customer allowed to use cookies.</td>\n        </tr>\n        <tr>\n            <th>VIEWED_PRODUCT_IDS</th>\n            <td>The products that you have recently viewed.</td>\n        </tr>\n        <tr>\n            <th>WISHLIST</th>\n            <td>An encrypted list of products added to your Wishlist.</td>\n        </tr>\n        <tr>\n            <th>WISHLIST_CNT</th>\n            <td>The number of items in your Wishlist.</td>\n        </tr>\n    </tbody>\n</table>', '2014-01-13 01:35:57', '2014-01-13 01:35:57', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Tìm Kiếm Việc Làm Nhanh Chóng', 'one_column', NULL, NULL, 'nguoi-tim-viec', NULL, '<div id="page-title">\r\n<h2 class="blue-tit text-blue">Người t&igrave;m việc</h2>\r\n</div>\r\n<div class="cms-row clearfix">\r\n<div class="fll width-20"><img src="/skin/frontend/default/iconic/images/viec-lam-left.jpg" alt="" /></div>\r\n<div class="fll width-50">\r\n<h3 class="top-tit">Nếu bạn đang t&igrave;m cơ hội việc l&agrave;m h&atilde;y đến với ICONIC!</h3>\r\n<p>Iconic hỗ trợ tư vấn, tuyển dụng miễn ph&iacute; cho c&aacute;c ứng vi&ecirc;n c&oacute; nguyện vọng t&igrave;m việc/chuyển việc ở Việt Nam.<br /> Ngo&agrave;i những vị tr&iacute; được đăng tuyển c&ocirc;ng khai, Iconic c&oacute; rất nhiều vị tr&iacute; kh&ocirc;ng được th&ocirc;ng b&aacute;o rộng r&atilde;i. Để nhận được sự hỗ trợ tốt nhất, bạn đừng ngại ngần m&agrave; h&atilde;y li&ecirc;n lạc về Iconic.</p>\r\n</div>\r\n</div>\r\n<div class="cms-row clearfix">\r\n<div class="flr width-20"><img src="/skin/frontend/default/iconic/images/viec-lam-right.jpg" alt="" /></div>\r\n<div class="flr width-50">\r\n<h3 class="top-tit">Dịch vụ hỗ trợ T&igrave;m Việc/Chuyển Việc</h3>\r\n<ul class="small-grey">\r\n<li>Cầu nối giữa c&aacute;c doanh nghiệp v&agrave; người t&igrave;m việc&hellip;</li>\r\n<li>Giới thiệu việc l&agrave;m, trọng t&acirc;m hướng đến c&aacute;c doanh nghiệp c&oacute; vốn đầu tư nước ngo&agrave;i, đặc biệt l&agrave; c&aacute;c doanh nghiệp Nhật Bản.</li>\r\n<li>Cung cấp cơ hội cho những ứng vi&ecirc;n mong muốn l&agrave;m việc cho c&aacute;c doanh nghiệp Nhật Bản tại Việt Nam.</li>\r\n</ul>\r\n<h5 class="blue-circle-tit">Quy tr&igrave;nh dịch vụ hỗ trợ t&igrave;m việc/ chuyển việc</h5>\r\n<ol class="grey">\r\n<li><strong>Kết nối</strong>\r\n<p>Bạn h&atilde;y đăng k&yacute; t&igrave;m việc tr&ecirc;n website hoặc gửi Hồ sơ qua email. Nếu bạn t&igrave;m thấy th&ocirc;ng tin tuyển dụng ph&ugrave; hợp tr&ecirc;n website n&agrave;y, h&atilde;y ghi lại m&atilde; số th&ocirc;ng tin tuyển dụng đ&oacute; rồi li&ecirc;n lạc về Iconic. Hoặc trong trường hợp bạn kh&ocirc;ng t&igrave;m thấy th&ocirc;ng tin tuyển dụng m&agrave; m&igrave;nh quan t&acirc;m th&igrave; h&atilde;y nhớ, ch&uacute;ng t&ocirc;i vẫn c&ograve;n những vị tr&iacute; tuyển dụng kh&ocirc;ng được đăng tuyển c&ocirc;ng khai. V&igrave; thế, đừng ngại ngần m&agrave; h&atilde;y li&ecirc;n lạc cho ch&uacute;ng t&ocirc;i để nhận được sự hỗ trợ.</p>\r\n</li>\r\n<li><strong>Li&ecirc;n lạc từ Iconic</strong>\r\n<p>Từ ph&iacute;a Iconic sẽ li&ecirc;n lạc trực tiếp để tư vấn cho c&aacute;c ứng vi&ecirc;n đ&atilde; đăng k&yacute; th&ocirc;ng tin.</p>\r\n</li>\r\n<li><strong>Gặp gỡ v&agrave; trao đổi</strong>\r\n<p>Ứng vi&ecirc;n sinh sống tại Việt Nam vui l&ograve;ng đến c&ocirc;ng ty ch&uacute;ng t&ocirc;i (văn ph&ograve;ng tại th&agrave;nh phố Hồ Ch&iacute; Minh hoặc H&agrave; Nội) để trao đổi cụ thể về việc l&agrave;m. Với c&aacute;c ứng vi&ecirc;n sinh sống tại nước ngo&agrave;i (chẳng hạn Nhật Bản), ch&uacute;ng t&ocirc;i xin ph&eacute;p được trao đổi qua SKYPE.</p>\r\n</li>\r\n<li><strong>Phỏng vấn ở c&ocirc;ng ty tuyển dụng</strong>\r\n<p>Th&ocirc;ng thường th&igrave; phần lớn c&aacute;c cuộc phỏng vấn sẽ được tiến h&agrave;nh ở Việt Nam. Tuy nhi&ecirc;n, t&ugrave;y theo nh&agrave; tuyển dụng m&agrave; cũng c&oacute; thể sẽ tiến h&agrave;nh phỏng vấn ở Nhật Bản, hoặc th&ocirc;ng qua SKYPE hay c&aacute;c cuộc họp sử dụng camera v.v&hellip;</p>\r\n</li>\r\n<li><strong>Nhận việc v&agrave; bắt đầu đi l&agrave;m</strong>\r\n<p>Trường hợp c&oacute; quyết định tuyển dụng từ ph&iacute;a c&ocirc;ng ty tuyển dụng, về nguy&ecirc;n tắc, Iconic sẽ thay mặt cho c&ocirc;ng ty tuyển dụng để li&ecirc;n lạc với ứng vi&ecirc;n. Sau khi đạt được thỏa thuận về ng&agrave;y đi l&agrave;m, điều kiện l&agrave;m việc, chế độ đ&atilde;i ngộ&hellip; ứng vi&ecirc;n sẽ bắt đầu c&ocirc;ng việc mới.</p>\r\n</li>\r\n</ol></div>\r\n</div>', '2014-01-13 01:55:30', '2014-01-15 05:14:20', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Tuyển Dụng Nhân Viên Tài Năng', 'one_column', NULL, NULL, 'nha-tuyen-dung', NULL, '<div id="page-title">\r\n<h2 class="blue-tit text-blue">Nh&agrave; tuyển dụng</h2>\r\n</div>\r\n<div class="nha-tuyen-dung clearfix width-65">\r\n<h2 class="black-tit">Dịch vụ tư vấn nh&acirc;n sự</h2>\r\n<h3 class="top-tit">Dịch vụ giới thiệu nh&acirc;n sự</h3>\r\n<div class="clearfix">\r\n<div class="dich-vu fll width-50">\r\n<h4 class="blue-circle-tit">Sử dụng nh&acirc;n t&agrave;i</h4>\r\n<ul>\r\n<li>1. Việc tư vấn v&agrave; giới thiệu của ICONIC sẽ đem lại th&agrave;nh c&ocirc;ng mỹ m&atilde;n cho qu&yacute; c&ocirc;ng ty.</li>\r\n<li>2. ICONIC lu&ocirc;n t&igrave;m kiếm những ứng vi&ecirc;n ưu t&uacute; nhất ở mọi độ tuổi.</li>\r\n<li>3. Ch&uacute;ng t&ocirc;i sử dụng trang web của Iconic v&agrave; nhiều phương tiện trung gian kh&aacute;c nhau một c&aacute;ch hiệu quả v&agrave; lu&ocirc;n bảo mật th&ocirc;ng tin của kh&aacute;ch h&agrave;ng.</li>\r\n<li>4. ICONIC sẽ thay thế qu&yacute; c&ocirc;ng ty đảm nhận những c&ocirc;ng việc phức tạp, từ việc tuyển chọn, phỏng vấn đến việc đ&agrave;m ph&aacute;n với ứng vi&ecirc;n.</li>\r\n</ul>\r\n</div>\r\n<div class="flr width-50"><img src="/skin/frontend/default/iconic/images/icons-dich-vu.jpg" alt="" /></div>\r\n</div>\r\n<h4 class="blue-circle-tit">Quy tr&igrave;nh sử dụng dịch vụ giới thiệu nh&acirc;n sự</h4>\r\n<ol class="grey">\r\n<li><strong>Đăng k&yacute;:</strong>\r\n<p>H&atilde;y đăng k&yacute; v&agrave;o ICONIC. Người đảm nhiệm tư vấn sẽ nhanh ch&oacute;ng trả lời.</p>\r\n</li>\r\n<li><strong>X&aacute;c nhận nội dung c&ocirc;ng việc:</strong>\r\n<p>H&atilde;y cho biết cụ thể nội dung c&ocirc;ng việc, y&ecirc;u cầu về nghiệp vụ v&agrave; điều kiện l&agrave;m việc để ch&uacute;ng t&ocirc;i c&oacute; thể tuyển chọn ra ứng vi&ecirc;n th&iacute;ch hợp.</p>\r\n</li>\r\n<li><strong>Tuyển chọn:</strong>\r\n<p>Ch&uacute;ng t&ocirc;i sẽ gửi th&ocirc;ng tin những ứng vi&ecirc;n được ICONIC tuyển chọn đến qu&yacute; c&ocirc;ng ty.</p>\r\n</li>\r\n<li><strong>Phỏng vấn:</strong>\r\n<p>Tiến h&agrave;nh phỏng vấn tại qu&yacute; c&ocirc;ng ty.</p>\r\n</li>\r\n<li><strong>Tuyển chọn lần cuối:</strong>\r\n<p>Qu&yacute; c&ocirc;ng ty th&ocirc;ng b&aacute;o cho ch&uacute;ng t&ocirc;i biết kết quả tuyển chọn cuối c&ugrave;ng. Ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh th&ocirc;ng b&aacute;o đến ứng vi&ecirc;n kết quả đạt hay kh&ocirc;ng đạt.</p>\r\n</li>\r\n<li><strong>X&aacute;c nhận điều kiện l&agrave;m việc:</strong>\r\n<p>Tiến h&agrave;nh x&aacute;c nhận mong muốn l&agrave;m việc tại c&ocirc;ng ty, v&agrave; điều chỉnh những điều kiện/ ng&agrave;y v&agrave;o c&ocirc;ng ty với ứng vi&ecirc;n.</p>\r\n</li>\r\n<li><strong>V&agrave;o l&agrave;m việc c&ocirc;ng ty:</strong>\r\n<p>C&ocirc;ng ty ch&uacute;ng t&ocirc;i sẽ li&ecirc;n lạc trực tiếp, x&aacute;c nhận ng&agrave;y v&agrave;o c&ocirc;ng ty của ứng vi&ecirc;n.</p>\r\n</li>\r\n</ol>\r\n<h3 class="top-tit">Dịch vụ giới thiệu - Cung cấp nhanh th&ocirc;ng dịch vi&ecirc;n tiếng Nhật</h3>\r\n<p class="margin-bottom">Ch&uacute;ng t&ocirc;i cung cấp th&ocirc;ng dịch vi&ecirc;n cho tất cả c&aacute;c trường hợp cần sử dụng đến th&ocirc;ng dịch từ Tiếng Việt sang tiếng Nhật tại thị trường Việt Nam.Click v&agrave;o đ&acirc;y để xem chi tiết.</p>\r\n<h2 class="black-tit">DỊCH VỤ HỖ TRỢ THƯƠNG MẠI</h2>\r\n<h3 class="top-tit">Dịch vụ tư vấn nghiệp vụ quản l&yacute; nh&acirc;n sự</h3>\r\n<div class="clearfix">\r\n<div class="fll"><img class="quanly" src="/skin/frontend/default/iconic/images/quanly.jpg" alt="" /></div>\r\n<div class="flr width-80">Ch&uacute;ng t&ocirc;i sẽ tư vấn những phương ph&aacute;p quản l&yacute; nh&acirc;n sự tốt nhất cho qu&yacute; c&ocirc;ng ty.<br /> C&ocirc;ng ty ch&uacute;ng t&ocirc;i kh&ocirc;ng chỉ giới thiệu ứng vi&ecirc;n m&agrave; c&ograve;n coi trọng mức độ ho&agrave; hợp giữa sự trưởng th&agrave;nh của nh&acirc;n vi&ecirc;n v&agrave; sự ph&aacute;t triển của qu&yacute; c&ocirc;ng ty.<br /> Ch&uacute;ng t&ocirc;i cũng đồng thời tư vấn cho qu&yacute; c&ocirc;ng ty đang gặp kh&oacute; khăn trong việc đ&agrave;o tạo nguồn nh&acirc;n lực tại Việt Nam.</div>\r\n</div>\r\n</div>', '2014-01-13 01:56:43', '2014-01-15 05:14:11', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'ICONIC Việt Nam - Giới Thiệu Công Ty', 'one_column', 'giới thiệu, công ty, ICONIC, Việt Nam', NULL, 'gioi-thieu-cong-ty', NULL, '<div id="page-title">\r\n<h2 class="blue-tit text-blue">Người t&igrave;m việc</h2>\r\n</div>\r\n<div class="width-65 gioi-thieu-cong-ty">\r\n<div class="row info">\r\n<h2 class="black-tit">Lịch sử h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển</h2>\r\n<div class="content">\r\n<div class="ceo">\r\n<h5 class="text-blue">Yasukura Hiroaki<br /> Tổng gi&aacute;m đốc</h5>\r\n<p>Tốt nghiệp học viện Kansei- Khoa ch&iacute;nh s&aacute;ch tổng hợp.<br /> &Ocirc;ng l&agrave; nh&acirc;n vi&ecirc;n của c&ocirc;ng ty cổ phần Venture Link , chuy&ecirc;n tư vấn cho c&aacute;c x&iacute; nghiệp vừa v&agrave; nhỏ, phụ tr&aacute;ch việc mở rộng c&aacute;c thương hiệu độc quyền tr&ecirc;n phạm vi to&agrave;n quốc.<br /> Trong thời gian l&agrave;m việc tại tập đo&agrave;n Brainwork Vietnam, &ocirc;ng đ&atilde; viếng thăm v&agrave; thảo luận việc kinh doanh với khoảng 500 c&ocirc;ng ty, x&iacute; nghiệp Việt Nam trong v&ograve;ng một năm.<br /> Th&aacute;ng 5/2008, &ocirc;ng ch&iacute;nh thức th&agrave;nh lập<br /> <span class="text-blue"> C&Ocirc;NGTY ICONIC CO., LTD. </span></p>\r\n</div>\r\n<div class="hcm"><span class="text-black">Địa chỉ:</span><br /> 4F Avenis Building, 145 Điện Bi&ecirc;n Phủ, Q.1, Hồ Ch&iacute; Minh, Việt Nam<br /><br /> <span class="text-black">Điện Thoại:</span><br /> (84-8)3821-5122, 23, 24</div>\r\n<div class="hn"><span class="text-black">Địa chỉ:</span><br /> 4F TDL Bldg, 22 L&aacute;ng Hạ, Q. Đống Đa, H&agrave; Nội, Việt Nam<br /><br /> <span class="text-black">Điện Thoại:</span><br /> (884-4)3776-5963, 84</div>\r\n</div>\r\n</div>\r\n<div class="row">\r\n<h2 class="black-tit">Th&ocirc;ng điệp của người đại diện</h2>\r\n<div class="content"><img class="quote-left" src="/skin/frontend/default/iconic/images/quote-left.jpg" alt="Quote Left" />\r\n<div class="quote-text">\r\n<div class="first-text">Vượt qua ranh giới quốc gia h&atilde;y c&ugrave;ng ch&uacute;ng t&ocirc;i tận hưởng niềm vui trong c&ocirc;ng việc</div>\r\n<p>C&ugrave;ng với qu&aacute; tr&igrave;nh giao lưu phi ranh giới giữa c&aacute;c quốc gia, c&aacute;c ng&agrave;nh c&ocirc;ng nghiệp cũng ng&agrave;y c&agrave;ng trở n&ecirc;n quốc tế h&oacute;a. Từ ng&agrave;nh c&ocirc;ng nghiệp sơ khai l&agrave; nhập khẩu n&ocirc;ng sản rồi ph&aacute;t triển n&ecirc;n ng&agrave;nh c&ocirc;ng nghiệp chế tạo v&agrave; đến nay đ&atilde; từng bước biến đổi th&agrave;nh ng&agrave;nh c&ocirc;ng nghiệp dịch vụ. Để đ&aacute;p ứng cho tiến tr&igrave;nh ph&aacute;t triển đ&oacute;, ch&uacute;ng ta kh&ocirc;ng thể kh&ocirc;ng thừa nhận việc đa dạng h&oacute;a v&agrave; quốc tế h&oacute;a nh&acirc;n sự trong c&aacute;c c&ocirc;ng ty li&ecirc;n doanh.</p>\r\n<p>Ng&agrave;y nay, người Nhật đ&atilde; kh&ocirc;ng c&ograve;n suy nghĩ l&agrave; chỉ l&agrave;m việc tại c&aacute;c c&ocirc;ng ty ở Nhật Bản, m&agrave; tr&ecirc;n thực tế con người đ&atilde; v&agrave; đang vượt qua mọi trở ngại về sự kh&aacute;c biệt giữa c&aacute;c tập tục văn ho&aacute;, giữa c&aacute;c tư duy, quan điểm kh&aacute;c nhau để c&ugrave;ng l&agrave;m việc ở mọi loại h&igrave;nh c&ocirc;ng ty v&agrave; tr&ecirc;n mọi lĩnh vực. Trước đ&acirc;y tại Nhật Bản người ta đ&atilde; mặc định với nhau rằng chỉ c&oacute; người Nhật mới được l&agrave;m việc trong c&aacute;c c&ocirc;ng ty của Nhật. V&igrave; vậy m&agrave; phương ph&aacute;p quản l&yacute; trong c&ocirc;ng ty chỉ to&agrave;n người Nhật đ&atilde; l&agrave; một vấn đề kh&oacute; khăn. V&agrave; từ giờ trở đi, việc l&agrave;m thế n&agrave;o để một tập thể vốn đ&atilde; lu&ocirc;n đồng nhất chấp nhận sự đa dạng h&oacute;a lại c&agrave;ng l&agrave; vấn đề nan giải hơn.</p>\r\n<p>Đặc biệt l&agrave; sự xuất hiện của c&aacute;c nước Ch&acirc;u &Aacute;, những quốc gia đang ng&agrave;y c&agrave;ng ph&aacute;t triển m&agrave; bất cứ ai cũng phải nh&igrave;n nhận. V&igrave; nghĩ rằng cần tăng cường sự hợp t&aacute;c giữa Nhật Bản với c&aacute;c quốc gia Ch&acirc;u &Aacute; n&ecirc;n t&ocirc;i đ&atilde; bắt đầu sự nghiệp của m&igrave;nh tại Việt Nam. L&agrave; người nh&igrave;n nhận thấy tiềm năng to lớn của Việt Nam, t&ocirc;i mong muốn rằng c&oacute; thể đ&aacute;p ứng được nhu cầu tuyển dụng nh&acirc;n t&agrave;i của c&aacute;c c&ocirc;ng ty Nhật Bản cũng như Việt Nam. Đối với c&aacute;c c&ocirc;ng ty li&ecirc;n doanh cũng như c&aacute;c c&ocirc;ng ty Nhật đang hoạt động tại c&aacute;c nước Ch&acirc;u &Aacute; th&igrave; việc giải quyết vấn đề nh&acirc;n sự trong thời đại quốc tế h&oacute;a l&agrave; một c&ocirc;ng việc kh&oacute; khăn. C&ocirc;ng ty ICONIC ch&uacute;ng t&ocirc;i đưa ra những giải ph&aacute;p cho vấn đề &ldquo;tận hưởng niềm vui th&iacute;ch trong c&ocirc;ng việc&rdquo; cho d&ugrave; phải vượt qua ranh giới c&aacute;c quốc gia v&agrave; chấp nhận sự đa dạng h&oacute;a.</p>\r\n</div>\r\n<img class="quote-right" src="/skin/frontend/default/iconic/images/quote-right.jpg" alt="Quote Right" /></div>\r\n</div>\r\n</div>', '2014-01-13 02:23:47', '2014-01-15 03:26:37', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Tuyển Dụng và Tìm Việc Làm Trở Nên Dễ Hơn', 'one_column', 'keyword, keyword, keyword', 'Description Description Description Description Description Description Description Description Description Description Description ', 'tuyen-dung', 'Tuyển Dụng và Tìm Việc Làm Trở Nên Dễ Hơn', '<p>Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. Text with optimized keyword and great content.&nbsp;Text with optimized keyword and great content. v</p>', '2014-01-14 08:05:07', '2014-01-14 08:05:40', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_store`
--

CREATE TABLE IF NOT EXISTS `cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`page_id`,`store_id`),
  KEY `IDX_CMS_PAGE_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

--
-- Dumping data for table `cms_page_store`
--

INSERT INTO `cms_page_store` (`page_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(1, 1),
(2, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_cache`
--

CREATE TABLE IF NOT EXISTS `core_cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time',
  PRIMARY KEY (`id`),
  KEY `IDX_CORE_CACHE_EXPIRE_TIME` (`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';

--
-- Dumping data for table `core_cache`
--


-- --------------------------------------------------------

--
-- Table structure for table `core_cache_option`
--

CREATE TABLE IF NOT EXISTS `core_cache_option` (
  `code` varchar(32) NOT NULL COMMENT 'Code',
  `value` smallint(6) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cache Options';

--
-- Dumping data for table `core_cache_option`
--

INSERT INTO `core_cache_option` (`code`, `value`) VALUES
('block_html', 0),
('collections', 0),
('config', 0),
('config_api', 0),
('config_api2', 0),
('eav', 0),
('layout', 0),
('translate', 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_cache_tag`
--

CREATE TABLE IF NOT EXISTS `core_cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id',
  PRIMARY KEY (`tag`,`cache_id`),
  KEY `IDX_CORE_CACHE_TAG_CACHE_ID` (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';

--
-- Dumping data for table `core_cache_tag`
--


-- --------------------------------------------------------

--
-- Table structure for table `core_config_data`
--

CREATE TABLE IF NOT EXISTS `core_config_data` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value',
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `UNQ_CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Config Data' AUTO_INCREMENT=110 ;

--
-- Dumping data for table `core_config_data`
--

INSERT INTO `core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`) VALUES
(1, 'default', 0, 'general/region/display_all', '1'),
(2, 'default', 0, 'general/region/state_required', 'AT,CA,CH,DE,EE,ES,FI,FR,LT,LV,RO,US'),
(3, 'default', 0, 'web/seo/use_rewrites', '1'),
(4, 'default', 0, 'admin/dashboard/enable_charts', '1'),
(5, 'default', 0, 'web/unsecure/base_url', 'http://iconic.itworks.vn/'),
(6, 'default', 0, 'web/secure/base_url', 'http://iconic.itworks.vn/'),
(7, 'default', 0, 'general/locale/code', 'en_US'),
(8, 'default', 0, 'general/locale/timezone', 'Asia/Bangkok'),
(9, 'default', 0, 'currency/options/base', 'VND'),
(10, 'default', 0, 'currency/options/default', 'VND'),
(11, 'default', 0, 'currency/options/allow', 'VND'),
(12, 'default', 0, 'clnews/news/title', 'Blog'),
(13, 'default', 0, 'clnews/news/route', 'blog'),
(14, 'default', 0, 'clnews/news/showbreadcrumbs', '1'),
(15, 'default', 0, 'clnews/news/itemslimit', NULL),
(16, 'default', 0, 'clnews/news/itemsperpage', '10'),
(17, 'default', 0, 'clnews/news/showrightblock', '0'),
(18, 'default', 0, 'clnews/news/showleftblock', '0'),
(19, 'default', 0, 'clnews/news/showlatestnews', '0'),
(20, 'default', 0, 'clnews/news/latestitemscount', NULL),
(21, 'default', 0, 'clnews/news/showdateofnews', '1'),
(22, 'default', 0, 'clnews/news/showtimeofnews', '0'),
(23, 'default', 0, 'clnews/news/showauthorofnews', '0'),
(24, 'default', 0, 'clnews/news/showcategoryofnews', '0'),
(25, 'default', 0, 'clnews/news/enablelinkrout', '0'),
(26, 'default', 0, 'clnews/news/itemurlsuffix', NULL),
(27, 'default', 0, 'clnews/news/linkrout', NULL),
(28, 'default', 0, 'clnews/news/tags', '0'),
(29, 'default', 0, 'clnews/news/google', '0'),
(30, 'default', 0, 'clnews/news/twitter', '0'),
(31, 'default', 0, 'clnews/news/facebook', '0'),
(32, 'default', 0, 'clnews/news/linked_in', '0'),
(33, 'default', 0, 'clnews/news/metatitle', NULL),
(34, 'default', 0, 'clnews/news/metakeywords', NULL),
(35, 'default', 0, 'clnews/news/metadescription', NULL),
(36, 'default', 0, 'clnews/news/shortdescr_image_max_width', '150'),
(37, 'default', 0, 'clnews/news/shortdescr_image_max_height', '120'),
(38, 'default', 0, 'clnews/news/fulldescr_image_max_width', '400'),
(39, 'default', 0, 'clnews/news/fulldescr_image_max_height', '300'),
(40, 'default', 0, 'clnews/news/resize_to_max', '1'),
(41, 'default', 0, 'clnews/comments/recipient_email', NULL),
(42, 'default', 0, 'clnews/comments/sender_email_identity', 'general'),
(43, 'default', 0, 'clnews/comments/email_template', 'clnews_comments_email_template'),
(44, 'default', 0, 'clnews/comments/need_confirmation', '0'),
(45, 'default', 0, 'clnews/comments/need_login', '1'),
(46, 'default', 0, 'clnews/comments/commentsperpage', NULL),
(47, 'default', 0, 'clnews/rss/enable', '0'),
(48, 'default', 0, 'clnews/rss/posts', NULL),
(49, 'default', 0, 'web/url/use_store', '0'),
(50, 'default', 0, 'web/url/redirect_to_base', '1'),
(51, 'default', 0, 'web/unsecure/base_link_url', '{{unsecure_base_url}}'),
(52, 'default', 0, 'web/unsecure/base_skin_url', '{{unsecure_base_url}}skin/'),
(53, 'default', 0, 'web/unsecure/base_media_url', '{{unsecure_base_url}}media/'),
(54, 'default', 0, 'web/unsecure/base_js_url', '{{unsecure_base_url}}js/'),
(55, 'default', 0, 'web/secure/base_link_url', '{{secure_base_url}}'),
(56, 'default', 0, 'web/secure/base_skin_url', '{{secure_base_url}}skin/'),
(57, 'default', 0, 'web/secure/base_media_url', '{{secure_base_url}}media/'),
(58, 'default', 0, 'web/secure/base_js_url', '{{secure_base_url}}js/'),
(59, 'default', 0, 'web/secure/use_in_frontend', '0'),
(60, 'default', 0, 'web/secure/use_in_adminhtml', '0'),
(61, 'default', 0, 'web/secure/offloader_header', 'SSL_OFFLOADED'),
(62, 'default', 0, 'web/default/front', 'cms'),
(63, 'default', 0, 'web/default/cms_home_page', 'home'),
(64, 'default', 0, 'web/default/no_route', 'cms/index/noRoute'),
(65, 'default', 0, 'web/default/cms_no_route', 'no-route'),
(66, 'default', 0, 'web/default/cms_no_cookies', 'enable-cookies'),
(67, 'default', 0, 'web/default/show_cms_breadcrumbs', '0'),
(68, 'default', 0, 'web/polls/poll_check_by_ip', '0'),
(69, 'default', 0, 'web/cookie/cookie_lifetime', '3600'),
(70, 'default', 0, 'web/cookie/cookie_path', NULL),
(71, 'default', 0, 'web/cookie/cookie_domain', NULL),
(72, 'default', 0, 'web/cookie/cookie_httponly', '1'),
(73, 'default', 0, 'web/cookie/cookie_restriction', '0'),
(74, 'default', 0, 'web/session/use_remote_addr', '0'),
(75, 'default', 0, 'web/session/use_http_via', '0'),
(76, 'default', 0, 'web/session/use_http_x_forwarded_for', '0'),
(77, 'default', 0, 'web/session/use_http_user_agent', '0'),
(78, 'default', 0, 'web/session/use_frontend_sid', '1'),
(79, 'default', 0, 'web/browser_capabilities/cookies', '1'),
(80, 'default', 0, 'web/browser_capabilities/javascript', '1'),
(81, 'default', 0, 'design/package/name', 'default'),
(82, 'default', 0, 'design/package/ua_regexp', 'a:0:{}'),
(83, 'default', 0, 'design/theme/locale', NULL),
(84, 'default', 0, 'design/theme/template', NULL),
(85, 'default', 0, 'design/theme/template_ua_regexp', 'a:0:{}'),
(86, 'default', 0, 'design/theme/skin', NULL),
(87, 'default', 0, 'design/theme/skin_ua_regexp', 'a:0:{}'),
(88, 'default', 0, 'design/theme/layout', NULL),
(89, 'default', 0, 'design/theme/layout_ua_regexp', 'a:0:{}'),
(90, 'default', 0, 'design/theme/default', NULL),
(91, 'default', 0, 'design/theme/default_ua_regexp', 'a:0:{}'),
(92, 'default', 0, 'design/head/default_title', 'IconicVN'),
(93, 'default', 0, 'design/head/title_prefix', NULL),
(94, 'default', 0, 'design/head/title_suffix', NULL),
(95, 'default', 0, 'design/head/default_description', 'IconicVN'),
(96, 'default', 0, 'design/head/default_keywords', 'Iconic'),
(97, 'default', 0, 'design/head/default_robots', 'NOINDEX,NOFOLLOW'),
(98, 'default', 0, 'design/head/includes', NULL),
(99, 'default', 0, 'design/head/demonotice', '0'),
(100, 'default', 0, 'design/header/logo_src', 'images/logo.gif'),
(101, 'default', 0, 'design/header/logo_alt', 'Magento Commerce'),
(102, 'default', 0, 'design/header/welcome', 'Default welcome msg!'),
(103, 'default', 0, 'design/footer/copyright', '&copy; 2013 Magento Demo Store. All Rights Reserved.'),
(104, 'default', 0, 'design/footer/absolute_footer', NULL),
(105, 'default', 0, 'design/pagination/pagination_frame', '5'),
(106, 'default', 0, 'design/pagination/pagination_frame_skip', NULL),
(107, 'default', 0, 'design/pagination/anchor_text_for_previous', NULL),
(108, 'default', 0, 'design/pagination/anchor_text_for_next', NULL),
(109, 'default', 0, 'design/email/logo_alt', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_email_template`
--

CREATE TABLE IF NOT EXISTS `core_email_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Creation',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `UNQ_CORE_EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  KEY `IDX_CORE_EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `IDX_CORE_EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `core_email_template`
--


-- --------------------------------------------------------

--
-- Table structure for table `core_flag`
--

CREATE TABLE IF NOT EXISTS `core_flag` (
  `flag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` text COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update',
  PRIMARY KEY (`flag_id`),
  KEY `IDX_CORE_FLAG_LAST_UPDATE` (`last_update`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Flag' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `core_flag`
--

INSERT INTO `core_flag` (`flag_id`, `flag_code`, `state`, `flag_data`, `last_update`) VALUES
(1, 'admin_notification_survey', 0, 'a:1:{s:13:"survey_viewed";b:1;}', '2014-01-13 01:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `core_layout_link`
--

CREATE TABLE IF NOT EXISTS `core_layout_link` (
  `layout_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `area` varchar(64) DEFAULT NULL COMMENT 'Area',
  `package` varchar(64) DEFAULT NULL COMMENT 'Package',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  PRIMARY KEY (`layout_link_id`),
  UNIQUE KEY `UNQ_CORE_LAYOUT_LINK_STORE_ID_PACKAGE_THEME_LAYOUT_UPDATE_ID` (`store_id`,`package`,`theme`,`layout_update_id`),
  KEY `IDX_CORE_LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Link' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `core_layout_link`
--


-- --------------------------------------------------------

--
-- Table structure for table `core_layout_update`
--

CREATE TABLE IF NOT EXISTS `core_layout_update` (
  `layout_update_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Layout Update Id',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`layout_update_id`),
  KEY `IDX_CORE_LAYOUT_UPDATE_HANDLE` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Updates' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `core_layout_update`
--


-- --------------------------------------------------------

--
-- Table structure for table `core_resource`
--

CREATE TABLE IF NOT EXISTS `core_resource` (
  `code` varchar(50) NOT NULL COMMENT 'Resource Code',
  `version` varchar(50) DEFAULT NULL COMMENT 'Resource Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Resources';

--
-- Dumping data for table `core_resource`
--

INSERT INTO `core_resource` (`code`, `version`, `data_version`) VALUES
('adminnotification_setup', '1.6.0.0', '1.6.0.0'),
('admin_setup', '1.6.1.1', '1.6.1.1'),
('api2_setup', '1.0.0.0', '1.0.0.0'),
('api_setup', '1.6.0.1', '1.6.0.1'),
('backup_setup', '1.6.0.0', '1.6.0.0'),
('captcha_setup', '1.7.0.0.0', '1.7.0.0.0'),
('clnews_setup', '1.0.2', '1.0.2'),
('cms_setup', '1.6.0.0.1', '1.6.0.0.1'),
('compiler_setup', '1.6.0.0', '1.6.0.0'),
('contacts_setup', '1.6.0.0', '1.6.0.0'),
('core_setup', '1.6.0.3', '1.6.0.3'),
('cron_setup', '1.6.0.0', '1.6.0.0'),
('customer_setup', '1.6.2.0.1', '1.6.2.0.1'),
('dataflow_setup', '1.6.0.0', '1.6.0.0'),
('directory_setup', '1.6.0.2', '1.6.0.2'),
('eav_setup', '1.6.0.0', '1.6.0.0'),
('index_setup', '1.6.0.0', '1.6.0.0'),
('job_setup', '0.2.0', '0.2.0'),
('log_setup', '1.6.0.0', '1.6.0.0'),
('moneybookers_setup', '1.6.0.0', '1.6.0.0'),
('oauth_setup', '1.0.0.0', '1.0.0.0'),
('poll_setup', '1.6.0.0', '1.6.0.0'),
('shipping_setup', '1.6.0.0', '1.6.0.0'),
('widget_setup', '1.6.0.0', '1.6.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `core_session`
--

CREATE TABLE IF NOT EXISTS `core_session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database Sessions Storage';

--
-- Dumping data for table `core_session`
--


-- --------------------------------------------------------

--
-- Table structure for table `core_store`
--

CREATE TABLE IF NOT EXISTS `core_store` (
  `store_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Store Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Activity',
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `UNQ_CORE_STORE_CODE` (`code`),
  KEY `IDX_CORE_STORE_WEBSITE_ID` (`website_id`),
  KEY `IDX_CORE_STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`),
  KEY `IDX_CORE_STORE_GROUP_ID` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Stores' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `core_store`
--

INSERT INTO `core_store` (`store_id`, `code`, `website_id`, `group_id`, `name`, `sort_order`, `is_active`) VALUES
(0, 'admin', 0, 0, 'Admin', 0, 1),
(1, 'default', 1, 1, 'Default Store View', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_store_group`
--

CREATE TABLE IF NOT EXISTS `core_store_group` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Root Category Id',
  `default_store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Store Id',
  PRIMARY KEY (`group_id`),
  KEY `IDX_CORE_STORE_GROUP_WEBSITE_ID` (`website_id`),
  KEY `IDX_CORE_STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Store Groups' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `core_store_group`
--

INSERT INTO `core_store_group` (`group_id`, `website_id`, `name`, `root_category_id`, `default_store_id`) VALUES
(0, 0, 'Default', 0, 0),
(1, 1, 'Main Website Store', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_translate`
--

CREATE TABLE IF NOT EXISTS `core_translate` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Key Id of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  `crc_string` bigint(20) NOT NULL DEFAULT '1591228201' COMMENT 'Translation String CRC32 Hash',
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `UNQ_CORE_TRANSLATE_STORE_ID_LOCALE_CRC_STRING_STRING` (`store_id`,`locale`,`crc_string`,`string`),
  KEY `IDX_CORE_TRANSLATE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Translations' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `core_translate`
--


-- --------------------------------------------------------

--
-- Table structure for table `core_url_rewrite`
--

CREATE TABLE IF NOT EXISTS `core_url_rewrite` (
  `url_rewrite_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rewrite Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `id_path` varchar(255) DEFAULT NULL COMMENT 'Id Path',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `is_system` smallint(5) unsigned DEFAULT '1' COMMENT 'Defines is Rewrite System',
  `options` varchar(255) DEFAULT NULL COMMENT 'Options',
  `description` varchar(255) DEFAULT NULL COMMENT 'Deascription',
  PRIMARY KEY (`url_rewrite_id`),
  UNIQUE KEY `UNQ_CORE_URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  UNIQUE KEY `UNQ_CORE_URL_REWRITE_ID_PATH_IS_SYSTEM_STORE_ID` (`id_path`,`is_system`,`store_id`),
  KEY `IDX_CORE_URL_REWRITE_TARGET_PATH_STORE_ID` (`target_path`,`store_id`),
  KEY `IDX_CORE_URL_REWRITE_ID_PATH` (`id_path`),
  KEY `IDX_CORE_URL_REWRITE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Url Rewrites' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `core_url_rewrite`
--


-- --------------------------------------------------------

--
-- Table structure for table `core_variable`
--

CREATE TABLE IF NOT EXISTS `core_variable` (
  `variable_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name',
  PRIMARY KEY (`variable_id`),
  UNIQUE KEY `UNQ_CORE_VARIABLE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variables' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `core_variable`
--


-- --------------------------------------------------------

--
-- Table structure for table `core_variable_value`
--

CREATE TABLE IF NOT EXISTS `core_variable_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Value Id',
  `variable_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Variable Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CORE_VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`),
  KEY `IDX_CORE_VARIABLE_VALUE_VARIABLE_ID` (`variable_id`),
  KEY `IDX_CORE_VARIABLE_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Value' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `core_variable_value`
--


-- --------------------------------------------------------

--
-- Table structure for table `core_website`
--

CREATE TABLE IF NOT EXISTS `core_website` (
  `website_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Group Id',
  `is_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Defines Is Website Default',
  PRIMARY KEY (`website_id`),
  UNIQUE KEY `UNQ_CORE_WEBSITE_CODE` (`code`),
  KEY `IDX_CORE_WEBSITE_SORT_ORDER` (`sort_order`),
  KEY `IDX_CORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Websites' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `core_website`
--

INSERT INTO `core_website` (`website_id`, `code`, `name`, `sort_order`, `default_group_id`, `is_default`) VALUES
(0, 'admin', 'Admin', 0, 0, 0),
(1, 'base', 'Main Website', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cron_schedule`
--

CREATE TABLE IF NOT EXISTS `cron_schedule` (
  `schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Schedule Id',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At',
  PRIMARY KEY (`schedule_id`),
  KEY `IDX_CRON_SCHEDULE_JOB_CODE` (`job_code`),
  KEY `IDX_CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron Schedule' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cron_schedule`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_address_entity`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_CSTR_ADDR_ENTT_DTIME_ENTT_ID_ATTR_ID_VAL` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_address_entity_datetime`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_address_entity_decimal`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_int`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_address_entity_int`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_text`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_address_entity_text`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_address_entity_varchar`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `customer_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model',
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

--
-- Dumping data for table `customer_eav_attribute`
--

INSERT INTO `customer_eav_attribute` (`attribute_id`, `is_visible`, `input_filter`, `multiline_count`, `validate_rules`, `is_system`, `sort_order`, `data_model`) VALUES
(1, 1, NULL, 0, NULL, 1, 10, NULL),
(2, 0, NULL, 0, NULL, 1, 0, NULL),
(3, 1, NULL, 0, NULL, 1, 20, NULL),
(4, 0, NULL, 0, NULL, 0, 30, NULL),
(5, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
(6, 0, NULL, 0, NULL, 0, 50, NULL),
(7, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
(8, 0, NULL, 0, NULL, 0, 70, NULL),
(9, 1, NULL, 0, 'a:1:{s:16:"input_validation";s:5:"email";}', 1, 80, NULL),
(10, 1, NULL, 0, NULL, 1, 25, NULL),
(11, 0, 'date', 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 0, 90, NULL),
(12, 0, NULL, 0, NULL, 1, 0, NULL),
(13, 0, NULL, 0, NULL, 1, 0, NULL),
(14, 0, NULL, 0, NULL, 1, 0, NULL),
(15, 0, NULL, 0, 'a:1:{s:15:"max_text_length";i:255;}', 0, 100, NULL),
(16, 0, NULL, 0, NULL, 1, 0, NULL),
(17, 0, NULL, 0, NULL, 0, 0, NULL),
(18, 0, NULL, 0, 'a:0:{}', 0, 110, NULL),
(19, 0, NULL, 0, NULL, 0, 10, NULL),
(20, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 20, NULL),
(21, 0, NULL, 0, NULL, 0, 30, NULL),
(22, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
(23, 0, NULL, 0, NULL, 0, 50, NULL),
(24, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
(25, 1, NULL, 2, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 70, NULL),
(26, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 80, NULL),
(27, 1, NULL, 0, NULL, 1, 90, NULL),
(28, 1, NULL, 0, NULL, 1, 100, NULL),
(29, 1, NULL, 0, NULL, 1, 100, NULL),
(30, 1, NULL, 0, 'a:0:{}', 1, 110, 'customer/attribute_data_postcode'),
(31, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 120, NULL),
(32, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 130, NULL),
(33, 0, NULL, 0, NULL, 1, 0, NULL),
(34, 0, NULL, 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 1, 0, NULL),
(35, 1, NULL, 0, NULL, 1, 28, NULL),
(36, 1, NULL, 0, NULL, 1, 140, NULL),
(37, 0, NULL, 0, NULL, 1, 0, NULL),
(38, 0, NULL, 0, NULL, 1, 0, NULL),
(39, 0, NULL, 0, NULL, 1, 0, NULL),
(40, 0, NULL, 0, NULL, 1, 0, NULL),
(41, 1, NULL, 0, NULL, 1, 0, NULL),
(42, 1, NULL, 0, NULL, 1, 0, NULL),
(43, 1, NULL, 0, NULL, 1, 0, NULL),
(44, 1, NULL, 0, NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_eav_attribute_website`
--

CREATE TABLE IF NOT EXISTS `customer_eav_attribute_website` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `is_visible` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) unsigned DEFAULT NULL COMMENT 'Multiline Count',
  PRIMARY KEY (`attribute_id`,`website_id`),
  KEY `IDX_CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

--
-- Dumping data for table `customer_eav_attribute_website`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_entity`
--

CREATE TABLE IF NOT EXISTS `customer_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `website_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Website Id',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  KEY `IDX_CUSTOMER_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `IDX_CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Entity' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customer_entity`
--

INSERT INTO `customer_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `website_id`, `email`, `group_id`, `increment_id`, `store_id`, `created_at`, `updated_at`, `is_active`, `disable_auto_group_change`) VALUES
(1, 1, 0, 1, 'tinhtu@iconic-intl.com', 1, NULL, 1, '2014-01-15 06:14:54', '2014-01-15 06:14:54', 1, 0),
(2, 1, 0, 1, 'enjoy.harpyhunter@yahoo.com', 1, NULL, 1, '2014-01-15 06:59:31', '2014-01-15 06:59:31', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `customer_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_entity_datetime`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `customer_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_entity_decimal`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_int`
--

CREATE TABLE IF NOT EXISTS `customer_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_entity_int`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_text`
--

CREATE TABLE IF NOT EXISTS `customer_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_entity_text`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `customer_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar' AUTO_INCREMENT=12 ;

--
-- Dumping data for table `customer_entity_varchar`
--

INSERT INTO `customer_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 1, 5, 1, 'Bùi'),
(2, 1, 7, 1, 'Tú'),
(3, 1, 12, 1, 'af4549f155185a88ad916039ca49866f:E4K8JO8FQyDHZjkSi4JKmtqyLOaMQ0Hu'),
(5, 1, 3, 1, 'Default Store View'),
(7, 1, 5, 2, 'Dao'),
(8, 1, 7, 2, 'Hat'),
(9, 1, 12, 2, '2595c07195d669d4fe1f883147a4d46b:Nsmc8rFUiGS8HkpTI4tRLeBeLfzrv0JN'),
(11, 1, 3, 2, 'Default Store View');

-- --------------------------------------------------------

--
-- Table structure for table `customer_form_attribute`
--

CREATE TABLE IF NOT EXISTS `customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`form_code`,`attribute_id`),
  KEY `IDX_CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

--
-- Dumping data for table `customer_form_attribute`
--

INSERT INTO `customer_form_attribute` (`form_code`, `attribute_id`) VALUES
('adminhtml_customer', 1),
('adminhtml_customer', 3),
('adminhtml_customer', 4),
('checkout_register', 4),
('customer_account_create', 4),
('customer_account_edit', 4),
('adminhtml_customer', 5),
('checkout_register', 5),
('customer_account_create', 5),
('customer_account_edit', 5),
('adminhtml_customer', 6),
('checkout_register', 6),
('customer_account_create', 6),
('customer_account_edit', 6),
('adminhtml_customer', 7),
('checkout_register', 7),
('customer_account_create', 7),
('customer_account_edit', 7),
('adminhtml_customer', 8),
('checkout_register', 8),
('customer_account_create', 8),
('customer_account_edit', 8),
('adminhtml_checkout', 9),
('adminhtml_customer', 9),
('checkout_register', 9),
('customer_account_create', 9),
('customer_account_edit', 9),
('adminhtml_checkout', 10),
('adminhtml_customer', 10),
('adminhtml_checkout', 11),
('adminhtml_customer', 11),
('checkout_register', 11),
('customer_account_create', 11),
('customer_account_edit', 11),
('adminhtml_checkout', 15),
('adminhtml_customer', 15),
('checkout_register', 15),
('customer_account_create', 15),
('customer_account_edit', 15),
('adminhtml_customer', 17),
('checkout_register', 17),
('customer_account_create', 17),
('customer_account_edit', 17),
('adminhtml_checkout', 18),
('adminhtml_customer', 18),
('checkout_register', 18),
('customer_account_create', 18),
('customer_account_edit', 18),
('adminhtml_customer_address', 19),
('customer_address_edit', 19),
('customer_register_address', 19),
('adminhtml_customer_address', 20),
('customer_address_edit', 20),
('customer_register_address', 20),
('adminhtml_customer_address', 21),
('customer_address_edit', 21),
('customer_register_address', 21),
('adminhtml_customer_address', 22),
('customer_address_edit', 22),
('customer_register_address', 22),
('adminhtml_customer_address', 23),
('customer_address_edit', 23),
('customer_register_address', 23),
('adminhtml_customer_address', 24),
('customer_address_edit', 24),
('customer_register_address', 24),
('adminhtml_customer_address', 25),
('customer_address_edit', 25),
('customer_register_address', 25),
('adminhtml_customer_address', 26),
('customer_address_edit', 26),
('customer_register_address', 26),
('adminhtml_customer_address', 27),
('customer_address_edit', 27),
('customer_register_address', 27),
('adminhtml_customer_address', 28),
('customer_address_edit', 28),
('customer_register_address', 28),
('adminhtml_customer_address', 29),
('customer_address_edit', 29),
('customer_register_address', 29),
('adminhtml_customer_address', 30),
('customer_address_edit', 30),
('customer_register_address', 30),
('adminhtml_customer_address', 31),
('customer_address_edit', 31),
('customer_register_address', 31),
('adminhtml_customer_address', 32),
('customer_address_edit', 32),
('customer_register_address', 32),
('adminhtml_customer', 35),
('adminhtml_customer_address', 36),
('customer_address_edit', 36),
('customer_register_address', 36);

-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

CREATE TABLE IF NOT EXISTS `customer_group` (
  `customer_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Customer Group Id',
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tax Class Id',
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Group' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `customer_group`
--

INSERT INTO `customer_group` (`customer_group_id`, `customer_group_code`, `tax_class_id`) VALUES
(0, 'NOT LOGGED IN', 3),
(1, 'General', 3),
(2, 'Wholesale', 3),
(3, 'Retailer', 3);

-- --------------------------------------------------------

--
-- Table structure for table `dataflow_batch`
--

CREATE TABLE IF NOT EXISTS `dataflow_batch` (
  `batch_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `adapter` varchar(128) DEFAULT NULL COMMENT 'Adapter',
  `params` text COMMENT 'Parameters',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`batch_id`),
  KEY `IDX_DATAFLOW_BATCH_PROFILE_ID` (`profile_id`),
  KEY `IDX_DATAFLOW_BATCH_STORE_ID` (`store_id`),
  KEY `IDX_DATAFLOW_BATCH_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `dataflow_batch`
--


-- --------------------------------------------------------

--
-- Table structure for table `dataflow_batch_export`
--

CREATE TABLE IF NOT EXISTS `dataflow_batch_export` (
  `batch_export_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Export Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`batch_export_id`),
  KEY `IDX_DATAFLOW_BATCH_EXPORT_BATCH_ID` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Export' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `dataflow_batch_export`
--


-- --------------------------------------------------------

--
-- Table structure for table `dataflow_batch_import`
--

CREATE TABLE IF NOT EXISTS `dataflow_batch_import` (
  `batch_import_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Import Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`batch_import_id`),
  KEY `IDX_DATAFLOW_BATCH_IMPORT_BATCH_ID` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Import' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `dataflow_batch_import`
--


-- --------------------------------------------------------

--
-- Table structure for table `dataflow_import_data`
--

CREATE TABLE IF NOT EXISTS `dataflow_import_data` (
  `import_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Import Id',
  `session_id` int(11) DEFAULT NULL COMMENT 'Session Id',
  `serial_number` int(11) NOT NULL DEFAULT '0' COMMENT 'Serial Number',
  `value` text COMMENT 'Value',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`import_id`),
  KEY `IDX_DATAFLOW_IMPORT_DATA_SESSION_ID` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Import Data' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `dataflow_import_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `dataflow_profile`
--

CREATE TABLE IF NOT EXISTS `dataflow_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Profile Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `actions_xml` text COMMENT 'Actions Xml',
  `gui_data` text COMMENT 'Gui Data',
  `direction` varchar(6) DEFAULT NULL COMMENT 'Direction',
  `entity_type` varchar(64) DEFAULT NULL COMMENT 'Entity Type',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `data_transfer` varchar(11) DEFAULT NULL COMMENT 'Data Transfer',
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dataflow_profile`
--

INSERT INTO `dataflow_profile` (`profile_id`, `name`, `created_at`, `updated_at`, `actions_xml`, `gui_data`, `direction`, `entity_type`, `store_id`, `data_transfer`) VALUES
(1, 'Export All Products', '2014-01-13 01:35:56', '2014-01-13 01:35:56', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(2, 'Export Product Stocks', '2014-01-13 01:35:56', '2014-01-13 01:35:56', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:25:"export_product_stocks.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:4:"true";s:7:"product";a:2:{s:2:"db";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}s:4:"file";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(3, 'Import All Products', '2014-01-13 01:35:56', '2014-01-13 01:35:56', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(4, 'Import Product Stocks', '2014-01-13 01:35:56', '2014-01-13 01:35:56', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:18:"export_product.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(5, 'Export Customers', '2014-01-13 01:35:56', '2014-01-13 01:35:56', '<action type="customer/convert_adapter_customer" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="filter/adressType"><![CDATA[default_billing]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="customer/convert_parser_customer" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_customers.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:20:"export_customers.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'customer', 0, 'file'),
(6, 'Import Customers', '2014-01-13 01:35:56', '2014-01-13 01:35:56', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">customer/convert_adapter_customer</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:19:"export_customer.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'customer', 0, 'interactive');

-- --------------------------------------------------------

--
-- Table structure for table `dataflow_profile_history`
--

CREATE TABLE IF NOT EXISTS `dataflow_profile_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `action_code` varchar(64) DEFAULT NULL COMMENT 'Action Code',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User Id',
  `performed_at` timestamp NULL DEFAULT NULL COMMENT 'Performed At',
  PRIMARY KEY (`history_id`),
  KEY `IDX_DATAFLOW_PROFILE_HISTORY_PROFILE_ID` (`profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile History' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dataflow_profile_history`
--

INSERT INTO `dataflow_profile_history` (`history_id`, `profile_id`, `action_code`, `user_id`, `performed_at`) VALUES
(1, 1, 'create', 0, '2014-01-13 01:35:56'),
(2, 2, 'create', 0, '2014-01-13 01:35:56'),
(3, 3, 'create', 0, '2014-01-13 01:35:56'),
(4, 4, 'create', 0, '2014-01-13 01:35:56'),
(5, 5, 'create', 0, '2014-01-13 01:35:56'),
(6, 6, 'create', 0, '2014-01-13 01:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `dataflow_session`
--

CREATE TABLE IF NOT EXISTS `dataflow_session` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Session Id',
  `user_id` int(11) NOT NULL COMMENT 'User Id',
  `created_date` timestamp NULL DEFAULT NULL COMMENT 'Created Date',
  `file` varchar(255) DEFAULT NULL COMMENT 'File',
  `type` varchar(32) DEFAULT NULL COMMENT 'Type',
  `direction` varchar(32) DEFAULT NULL COMMENT 'Direction',
  `comment` varchar(255) DEFAULT NULL COMMENT 'Comment',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Session' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `dataflow_session`
--


-- --------------------------------------------------------

--
-- Table structure for table `design_change`
--

CREATE TABLE IF NOT EXISTS `design_change` (
  `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity',
  PRIMARY KEY (`design_change_id`),
  KEY `IDX_DESIGN_CHANGE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Design Changes' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `design_change`
--

INSERT INTO `design_change` (`design_change_id`, `store_id`, `design`, `date_from`, `date_to`) VALUES
(1, 1, 'default/iconic', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directory_country`
--

CREATE TABLE IF NOT EXISTS `directory_country` (
  `country_id` varchar(2) NOT NULL DEFAULT '' COMMENT 'Country Id in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

--
-- Dumping data for table `directory_country`
--

INSERT INTO `directory_country` (`country_id`, `iso2_code`, `iso3_code`) VALUES
('AD', 'AD', 'AND'),
('AE', 'AE', 'ARE'),
('AF', 'AF', 'AFG'),
('AG', 'AG', 'ATG'),
('AI', 'AI', 'AIA'),
('AL', 'AL', 'ALB'),
('AM', 'AM', 'ARM'),
('AN', 'AN', 'ANT'),
('AO', 'AO', 'AGO'),
('AQ', 'AQ', 'ATA'),
('AR', 'AR', 'ARG'),
('AS', 'AS', 'ASM'),
('AT', 'AT', 'AUT'),
('AU', 'AU', 'AUS'),
('AW', 'AW', 'ABW'),
('AX', 'AX', 'ALA'),
('AZ', 'AZ', 'AZE'),
('BA', 'BA', 'BIH'),
('BB', 'BB', 'BRB'),
('BD', 'BD', 'BGD'),
('BE', 'BE', 'BEL'),
('BF', 'BF', 'BFA'),
('BG', 'BG', 'BGR'),
('BH', 'BH', 'BHR'),
('BI', 'BI', 'BDI'),
('BJ', 'BJ', 'BEN'),
('BL', 'BL', 'BLM'),
('BM', 'BM', 'BMU'),
('BN', 'BN', 'BRN'),
('BO', 'BO', 'BOL'),
('BR', 'BR', 'BRA'),
('BS', 'BS', 'BHS'),
('BT', 'BT', 'BTN'),
('BV', 'BV', 'BVT'),
('BW', 'BW', 'BWA'),
('BY', 'BY', 'BLR'),
('BZ', 'BZ', 'BLZ'),
('CA', 'CA', 'CAN'),
('CC', 'CC', 'CCK'),
('CD', 'CD', 'COD'),
('CF', 'CF', 'CAF'),
('CG', 'CG', 'COG'),
('CH', 'CH', 'CHE'),
('CI', 'CI', 'CIV'),
('CK', 'CK', 'COK'),
('CL', 'CL', 'CHL'),
('CM', 'CM', 'CMR'),
('CN', 'CN', 'CHN'),
('CO', 'CO', 'COL'),
('CR', 'CR', 'CRI'),
('CU', 'CU', 'CUB'),
('CV', 'CV', 'CPV'),
('CX', 'CX', 'CXR'),
('CY', 'CY', 'CYP'),
('CZ', 'CZ', 'CZE'),
('DE', 'DE', 'DEU'),
('DJ', 'DJ', 'DJI'),
('DK', 'DK', 'DNK'),
('DM', 'DM', 'DMA'),
('DO', 'DO', 'DOM'),
('DZ', 'DZ', 'DZA'),
('EC', 'EC', 'ECU'),
('EE', 'EE', 'EST'),
('EG', 'EG', 'EGY'),
('EH', 'EH', 'ESH'),
('ER', 'ER', 'ERI'),
('ES', 'ES', 'ESP'),
('ET', 'ET', 'ETH'),
('FI', 'FI', 'FIN'),
('FJ', 'FJ', 'FJI'),
('FK', 'FK', 'FLK'),
('FM', 'FM', 'FSM'),
('FO', 'FO', 'FRO'),
('FR', 'FR', 'FRA'),
('GA', 'GA', 'GAB'),
('GB', 'GB', 'GBR'),
('GD', 'GD', 'GRD'),
('GE', 'GE', 'GEO'),
('GF', 'GF', 'GUF'),
('GG', 'GG', 'GGY'),
('GH', 'GH', 'GHA'),
('GI', 'GI', 'GIB'),
('GL', 'GL', 'GRL'),
('GM', 'GM', 'GMB'),
('GN', 'GN', 'GIN'),
('GP', 'GP', 'GLP'),
('GQ', 'GQ', 'GNQ'),
('GR', 'GR', 'GRC'),
('GS', 'GS', 'SGS'),
('GT', 'GT', 'GTM'),
('GU', 'GU', 'GUM'),
('GW', 'GW', 'GNB'),
('GY', 'GY', 'GUY'),
('HK', 'HK', 'HKG'),
('HM', 'HM', 'HMD'),
('HN', 'HN', 'HND'),
('HR', 'HR', 'HRV'),
('HT', 'HT', 'HTI'),
('HU', 'HU', 'HUN'),
('ID', 'ID', 'IDN'),
('IE', 'IE', 'IRL'),
('IL', 'IL', 'ISR'),
('IM', 'IM', 'IMN'),
('IN', 'IN', 'IND'),
('IO', 'IO', 'IOT'),
('IQ', 'IQ', 'IRQ'),
('IR', 'IR', 'IRN'),
('IS', 'IS', 'ISL'),
('IT', 'IT', 'ITA'),
('JE', 'JE', 'JEY'),
('JM', 'JM', 'JAM'),
('JO', 'JO', 'JOR'),
('JP', 'JP', 'JPN'),
('KE', 'KE', 'KEN'),
('KG', 'KG', 'KGZ'),
('KH', 'KH', 'KHM'),
('KI', 'KI', 'KIR'),
('KM', 'KM', 'COM'),
('KN', 'KN', 'KNA'),
('KP', 'KP', 'PRK'),
('KR', 'KR', 'KOR'),
('KW', 'KW', 'KWT'),
('KY', 'KY', 'CYM'),
('KZ', 'KZ', 'KAZ'),
('LA', 'LA', 'LAO'),
('LB', 'LB', 'LBN'),
('LC', 'LC', 'LCA'),
('LI', 'LI', 'LIE'),
('LK', 'LK', 'LKA'),
('LR', 'LR', 'LBR'),
('LS', 'LS', 'LSO'),
('LT', 'LT', 'LTU'),
('LU', 'LU', 'LUX'),
('LV', 'LV', 'LVA'),
('LY', 'LY', 'LBY'),
('MA', 'MA', 'MAR'),
('MC', 'MC', 'MCO'),
('MD', 'MD', 'MDA'),
('ME', 'ME', 'MNE'),
('MF', 'MF', 'MAF'),
('MG', 'MG', 'MDG'),
('MH', 'MH', 'MHL'),
('MK', 'MK', 'MKD'),
('ML', 'ML', 'MLI'),
('MM', 'MM', 'MMR'),
('MN', 'MN', 'MNG'),
('MO', 'MO', 'MAC'),
('MP', 'MP', 'MNP'),
('MQ', 'MQ', 'MTQ'),
('MR', 'MR', 'MRT'),
('MS', 'MS', 'MSR'),
('MT', 'MT', 'MLT'),
('MU', 'MU', 'MUS'),
('MV', 'MV', 'MDV'),
('MW', 'MW', 'MWI'),
('MX', 'MX', 'MEX'),
('MY', 'MY', 'MYS'),
('MZ', 'MZ', 'MOZ'),
('NA', 'NA', 'NAM'),
('NC', 'NC', 'NCL'),
('NE', 'NE', 'NER'),
('NF', 'NF', 'NFK'),
('NG', 'NG', 'NGA'),
('NI', 'NI', 'NIC'),
('NL', 'NL', 'NLD'),
('NO', 'NO', 'NOR'),
('NP', 'NP', 'NPL'),
('NR', 'NR', 'NRU'),
('NU', 'NU', 'NIU'),
('NZ', 'NZ', 'NZL'),
('OM', 'OM', 'OMN'),
('PA', 'PA', 'PAN'),
('PE', 'PE', 'PER'),
('PF', 'PF', 'PYF'),
('PG', 'PG', 'PNG'),
('PH', 'PH', 'PHL'),
('PK', 'PK', 'PAK'),
('PL', 'PL', 'POL'),
('PM', 'PM', 'SPM'),
('PN', 'PN', 'PCN'),
('PR', 'PR', 'PRI'),
('PS', 'PS', 'PSE'),
('PT', 'PT', 'PRT'),
('PW', 'PW', 'PLW'),
('PY', 'PY', 'PRY'),
('QA', 'QA', 'QAT'),
('RE', 'RE', 'REU'),
('RO', 'RO', 'ROU'),
('RS', 'RS', 'SRB'),
('RU', 'RU', 'RUS'),
('RW', 'RW', 'RWA'),
('SA', 'SA', 'SAU'),
('SB', 'SB', 'SLB'),
('SC', 'SC', 'SYC'),
('SD', 'SD', 'SDN'),
('SE', 'SE', 'SWE'),
('SG', 'SG', 'SGP'),
('SH', 'SH', 'SHN'),
('SI', 'SI', 'SVN'),
('SJ', 'SJ', 'SJM'),
('SK', 'SK', 'SVK'),
('SL', 'SL', 'SLE'),
('SM', 'SM', 'SMR'),
('SN', 'SN', 'SEN'),
('SO', 'SO', 'SOM'),
('SR', 'SR', 'SUR'),
('ST', 'ST', 'STP'),
('SV', 'SV', 'SLV'),
('SY', 'SY', 'SYR'),
('SZ', 'SZ', 'SWZ'),
('TC', 'TC', 'TCA'),
('TD', 'TD', 'TCD'),
('TF', 'TF', 'ATF'),
('TG', 'TG', 'TGO'),
('TH', 'TH', 'THA'),
('TJ', 'TJ', 'TJK'),
('TK', 'TK', 'TKL'),
('TL', 'TL', 'TLS'),
('TM', 'TM', 'TKM'),
('TN', 'TN', 'TUN'),
('TO', 'TO', 'TON'),
('TR', 'TR', 'TUR'),
('TT', 'TT', 'TTO'),
('TV', 'TV', 'TUV'),
('TW', 'TW', 'TWN'),
('TZ', 'TZ', 'TZA'),
('UA', 'UA', 'UKR'),
('UG', 'UG', 'UGA'),
('UM', 'UM', 'UMI'),
('US', 'US', 'USA'),
('UY', 'UY', 'URY'),
('UZ', 'UZ', 'UZB'),
('VA', 'VA', 'VAT'),
('VC', 'VC', 'VCT'),
('VE', 'VE', 'VEN'),
('VG', 'VG', 'VGB'),
('VI', 'VI', 'VIR'),
('VN', 'VN', 'VNM'),
('VU', 'VU', 'VUT'),
('WF', 'WF', 'WLF'),
('WS', 'WS', 'WSM'),
('YE', 'YE', 'YEM'),
('YT', 'YT', 'MYT'),
('ZA', 'ZA', 'ZAF'),
('ZM', 'ZM', 'ZMB'),
('ZW', 'ZW', 'ZWE');

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_format`
--

CREATE TABLE IF NOT EXISTS `directory_country_format` (
  `country_format_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Country Format Id',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format',
  PRIMARY KEY (`country_format_id`),
  UNIQUE KEY `UNQ_DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `directory_country_format`
--


-- --------------------------------------------------------

--
-- Table structure for table `directory_country_region`
--

CREATE TABLE IF NOT EXISTS `directory_country_region` (
  `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Region Id',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country Id in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`region_id`),
  KEY `IDX_DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Directory Country Region' AUTO_INCREMENT=485 ;

--
-- Dumping data for table `directory_country_region`
--

INSERT INTO `directory_country_region` (`region_id`, `country_id`, `code`, `default_name`) VALUES
(1, 'US', 'AL', 'Alabama'),
(2, 'US', 'AK', 'Alaska'),
(3, 'US', 'AS', 'American Samoa'),
(4, 'US', 'AZ', 'Arizona'),
(5, 'US', 'AR', 'Arkansas'),
(6, 'US', 'AF', 'Armed Forces Africa'),
(7, 'US', 'AA', 'Armed Forces Americas'),
(8, 'US', 'AC', 'Armed Forces Canada'),
(9, 'US', 'AE', 'Armed Forces Europe'),
(10, 'US', 'AM', 'Armed Forces Middle East'),
(11, 'US', 'AP', 'Armed Forces Pacific'),
(12, 'US', 'CA', 'California'),
(13, 'US', 'CO', 'Colorado'),
(14, 'US', 'CT', 'Connecticut'),
(15, 'US', 'DE', 'Delaware'),
(16, 'US', 'DC', 'District of Columbia'),
(17, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 'US', 'FL', 'Florida'),
(19, 'US', 'GA', 'Georgia'),
(20, 'US', 'GU', 'Guam'),
(21, 'US', 'HI', 'Hawaii'),
(22, 'US', 'ID', 'Idaho'),
(23, 'US', 'IL', 'Illinois'),
(24, 'US', 'IN', 'Indiana'),
(25, 'US', 'IA', 'Iowa'),
(26, 'US', 'KS', 'Kansas'),
(27, 'US', 'KY', 'Kentucky'),
(28, 'US', 'LA', 'Louisiana'),
(29, 'US', 'ME', 'Maine'),
(30, 'US', 'MH', 'Marshall Islands'),
(31, 'US', 'MD', 'Maryland'),
(32, 'US', 'MA', 'Massachusetts'),
(33, 'US', 'MI', 'Michigan'),
(34, 'US', 'MN', 'Minnesota'),
(35, 'US', 'MS', 'Mississippi'),
(36, 'US', 'MO', 'Missouri'),
(37, 'US', 'MT', 'Montana'),
(38, 'US', 'NE', 'Nebraska'),
(39, 'US', 'NV', 'Nevada'),
(40, 'US', 'NH', 'New Hampshire'),
(41, 'US', 'NJ', 'New Jersey'),
(42, 'US', 'NM', 'New Mexico'),
(43, 'US', 'NY', 'New York'),
(44, 'US', 'NC', 'North Carolina'),
(45, 'US', 'ND', 'North Dakota'),
(46, 'US', 'MP', 'Northern Mariana Islands'),
(47, 'US', 'OH', 'Ohio'),
(48, 'US', 'OK', 'Oklahoma'),
(49, 'US', 'OR', 'Oregon'),
(50, 'US', 'PW', 'Palau'),
(51, 'US', 'PA', 'Pennsylvania'),
(52, 'US', 'PR', 'Puerto Rico'),
(53, 'US', 'RI', 'Rhode Island'),
(54, 'US', 'SC', 'South Carolina'),
(55, 'US', 'SD', 'South Dakota'),
(56, 'US', 'TN', 'Tennessee'),
(57, 'US', 'TX', 'Texas'),
(58, 'US', 'UT', 'Utah'),
(59, 'US', 'VT', 'Vermont'),
(60, 'US', 'VI', 'Virgin Islands'),
(61, 'US', 'VA', 'Virginia'),
(62, 'US', 'WA', 'Washington'),
(63, 'US', 'WV', 'West Virginia'),
(64, 'US', 'WI', 'Wisconsin'),
(65, 'US', 'WY', 'Wyoming'),
(66, 'CA', 'AB', 'Alberta'),
(67, 'CA', 'BC', 'British Columbia'),
(68, 'CA', 'MB', 'Manitoba'),
(69, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 'CA', 'NB', 'New Brunswick'),
(71, 'CA', 'NS', 'Nova Scotia'),
(72, 'CA', 'NT', 'Northwest Territories'),
(73, 'CA', 'NU', 'Nunavut'),
(74, 'CA', 'ON', 'Ontario'),
(75, 'CA', 'PE', 'Prince Edward Island'),
(76, 'CA', 'QC', 'Quebec'),
(77, 'CA', 'SK', 'Saskatchewan'),
(78, 'CA', 'YT', 'Yukon Territory'),
(79, 'DE', 'NDS', 'Niedersachsen'),
(80, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 'DE', 'BAY', 'Bayern'),
(82, 'DE', 'BER', 'Berlin'),
(83, 'DE', 'BRG', 'Brandenburg'),
(84, 'DE', 'BRE', 'Bremen'),
(85, 'DE', 'HAM', 'Hamburg'),
(86, 'DE', 'HES', 'Hessen'),
(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 'DE', 'SAR', 'Saarland'),
(91, 'DE', 'SAS', 'Sachsen'),
(92, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 'DE', 'THE', 'Thüringen'),
(95, 'AT', 'WI', 'Wien'),
(96, 'AT', 'NO', 'Niederösterreich'),
(97, 'AT', 'OO', 'Oberösterreich'),
(98, 'AT', 'SB', 'Salzburg'),
(99, 'AT', 'KN', 'Kärnten'),
(100, 'AT', 'ST', 'Steiermark'),
(101, 'AT', 'TI', 'Tirol'),
(102, 'AT', 'BL', 'Burgenland'),
(103, 'AT', 'VB', 'Voralberg'),
(104, 'CH', 'AG', 'Aargau'),
(105, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 'CH', 'BE', 'Bern'),
(108, 'CH', 'BL', 'Basel-Landschaft'),
(109, 'CH', 'BS', 'Basel-Stadt'),
(110, 'CH', 'FR', 'Freiburg'),
(111, 'CH', 'GE', 'Genf'),
(112, 'CH', 'GL', 'Glarus'),
(113, 'CH', 'GR', 'Graubünden'),
(114, 'CH', 'JU', 'Jura'),
(115, 'CH', 'LU', 'Luzern'),
(116, 'CH', 'NE', 'Neuenburg'),
(117, 'CH', 'NW', 'Nidwalden'),
(118, 'CH', 'OW', 'Obwalden'),
(119, 'CH', 'SG', 'St. Gallen'),
(120, 'CH', 'SH', 'Schaffhausen'),
(121, 'CH', 'SO', 'Solothurn'),
(122, 'CH', 'SZ', 'Schwyz'),
(123, 'CH', 'TG', 'Thurgau'),
(124, 'CH', 'TI', 'Tessin'),
(125, 'CH', 'UR', 'Uri'),
(126, 'CH', 'VD', 'Waadt'),
(127, 'CH', 'VS', 'Wallis'),
(128, 'CH', 'ZG', 'Zug'),
(129, 'CH', 'ZH', 'Zürich'),
(130, 'ES', 'A Coruсa', 'A Coruña'),
(131, 'ES', 'Alava', 'Alava'),
(132, 'ES', 'Albacete', 'Albacete'),
(133, 'ES', 'Alicante', 'Alicante'),
(134, 'ES', 'Almeria', 'Almeria'),
(135, 'ES', 'Asturias', 'Asturias'),
(136, 'ES', 'Avila', 'Avila'),
(137, 'ES', 'Badajoz', 'Badajoz'),
(138, 'ES', 'Baleares', 'Baleares'),
(139, 'ES', 'Barcelona', 'Barcelona'),
(140, 'ES', 'Burgos', 'Burgos'),
(141, 'ES', 'Caceres', 'Caceres'),
(142, 'ES', 'Cadiz', 'Cadiz'),
(143, 'ES', 'Cantabria', 'Cantabria'),
(144, 'ES', 'Castellon', 'Castellon'),
(145, 'ES', 'Ceuta', 'Ceuta'),
(146, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 'ES', 'Cordoba', 'Cordoba'),
(148, 'ES', 'Cuenca', 'Cuenca'),
(149, 'ES', 'Girona', 'Girona'),
(150, 'ES', 'Granada', 'Granada'),
(151, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 'ES', 'Huelva', 'Huelva'),
(154, 'ES', 'Huesca', 'Huesca'),
(155, 'ES', 'Jaen', 'Jaen'),
(156, 'ES', 'La Rioja', 'La Rioja'),
(157, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 'ES', 'Leon', 'Leon'),
(159, 'ES', 'Lleida', 'Lleida'),
(160, 'ES', 'Lugo', 'Lugo'),
(161, 'ES', 'Madrid', 'Madrid'),
(162, 'ES', 'Malaga', 'Malaga'),
(163, 'ES', 'Melilla', 'Melilla'),
(164, 'ES', 'Murcia', 'Murcia'),
(165, 'ES', 'Navarra', 'Navarra'),
(166, 'ES', 'Ourense', 'Ourense'),
(167, 'ES', 'Palencia', 'Palencia'),
(168, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 'ES', 'Salamanca', 'Salamanca'),
(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 'ES', 'Segovia', 'Segovia'),
(172, 'ES', 'Sevilla', 'Sevilla'),
(173, 'ES', 'Soria', 'Soria'),
(174, 'ES', 'Tarragona', 'Tarragona'),
(175, 'ES', 'Teruel', 'Teruel'),
(176, 'ES', 'Toledo', 'Toledo'),
(177, 'ES', 'Valencia', 'Valencia'),
(178, 'ES', 'Valladolid', 'Valladolid'),
(179, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 'ES', 'Zamora', 'Zamora'),
(181, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 'FR', '1', 'Ain'),
(183, 'FR', '2', 'Aisne'),
(184, 'FR', '3', 'Allier'),
(185, 'FR', '4', 'Alpes-de-Haute-Provence'),
(186, 'FR', '5', 'Hautes-Alpes'),
(187, 'FR', '6', 'Alpes-Maritimes'),
(188, 'FR', '7', 'Ardèche'),
(189, 'FR', '8', 'Ardennes'),
(190, 'FR', '9', 'Ariège'),
(191, 'FR', '10', 'Aube'),
(192, 'FR', '11', 'Aude'),
(193, 'FR', '12', 'Aveyron'),
(194, 'FR', '13', 'Bouches-du-Rhône'),
(195, 'FR', '14', 'Calvados'),
(196, 'FR', '15', 'Cantal'),
(197, 'FR', '16', 'Charente'),
(198, 'FR', '17', 'Charente-Maritime'),
(199, 'FR', '18', 'Cher'),
(200, 'FR', '19', 'Corrèze'),
(201, 'FR', '2A', 'Corse-du-Sud'),
(202, 'FR', '2B', 'Haute-Corse'),
(203, 'FR', '21', 'Côte-d''Or'),
(204, 'FR', '22', 'Côtes-d''Armor'),
(205, 'FR', '23', 'Creuse'),
(206, 'FR', '24', 'Dordogne'),
(207, 'FR', '25', 'Doubs'),
(208, 'FR', '26', 'Drôme'),
(209, 'FR', '27', 'Eure'),
(210, 'FR', '28', 'Eure-et-Loir'),
(211, 'FR', '29', 'Finistère'),
(212, 'FR', '30', 'Gard'),
(213, 'FR', '31', 'Haute-Garonne'),
(214, 'FR', '32', 'Gers'),
(215, 'FR', '33', 'Gironde'),
(216, 'FR', '34', 'Hérault'),
(217, 'FR', '35', 'Ille-et-Vilaine'),
(218, 'FR', '36', 'Indre'),
(219, 'FR', '37', 'Indre-et-Loire'),
(220, 'FR', '38', 'Isère'),
(221, 'FR', '39', 'Jura'),
(222, 'FR', '40', 'Landes'),
(223, 'FR', '41', 'Loir-et-Cher'),
(224, 'FR', '42', 'Loire'),
(225, 'FR', '43', 'Haute-Loire'),
(226, 'FR', '44', 'Loire-Atlantique'),
(227, 'FR', '45', 'Loiret'),
(228, 'FR', '46', 'Lot'),
(229, 'FR', '47', 'Lot-et-Garonne'),
(230, 'FR', '48', 'Lozère'),
(231, 'FR', '49', 'Maine-et-Loire'),
(232, 'FR', '50', 'Manche'),
(233, 'FR', '51', 'Marne'),
(234, 'FR', '52', 'Haute-Marne'),
(235, 'FR', '53', 'Mayenne'),
(236, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 'FR', '55', 'Meuse'),
(238, 'FR', '56', 'Morbihan'),
(239, 'FR', '57', 'Moselle'),
(240, 'FR', '58', 'Nièvre'),
(241, 'FR', '59', 'Nord'),
(242, 'FR', '60', 'Oise'),
(243, 'FR', '61', 'Orne'),
(244, 'FR', '62', 'Pas-de-Calais'),
(245, 'FR', '63', 'Puy-de-Dôme'),
(246, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 'FR', '65', 'Hautes-Pyrénées'),
(248, 'FR', '66', 'Pyrénées-Orientales'),
(249, 'FR', '67', 'Bas-Rhin'),
(250, 'FR', '68', 'Haut-Rhin'),
(251, 'FR', '69', 'Rhône'),
(252, 'FR', '70', 'Haute-Saône'),
(253, 'FR', '71', 'Saône-et-Loire'),
(254, 'FR', '72', 'Sarthe'),
(255, 'FR', '73', 'Savoie'),
(256, 'FR', '74', 'Haute-Savoie'),
(257, 'FR', '75', 'Paris'),
(258, 'FR', '76', 'Seine-Maritime'),
(259, 'FR', '77', 'Seine-et-Marne'),
(260, 'FR', '78', 'Yvelines'),
(261, 'FR', '79', 'Deux-Sèvres'),
(262, 'FR', '80', 'Somme'),
(263, 'FR', '81', 'Tarn'),
(264, 'FR', '82', 'Tarn-et-Garonne'),
(265, 'FR', '83', 'Var'),
(266, 'FR', '84', 'Vaucluse'),
(267, 'FR', '85', 'Vendée'),
(268, 'FR', '86', 'Vienne'),
(269, 'FR', '87', 'Haute-Vienne'),
(270, 'FR', '88', 'Vosges'),
(271, 'FR', '89', 'Yonne'),
(272, 'FR', '90', 'Territoire-de-Belfort'),
(273, 'FR', '91', 'Essonne'),
(274, 'FR', '92', 'Hauts-de-Seine'),
(275, 'FR', '93', 'Seine-Saint-Denis'),
(276, 'FR', '94', 'Val-de-Marne'),
(277, 'FR', '95', 'Val-d''Oise'),
(278, 'RO', 'AB', 'Alba'),
(279, 'RO', 'AR', 'Arad'),
(280, 'RO', 'AG', 'Argeş'),
(281, 'RO', 'BC', 'Bacău'),
(282, 'RO', 'BH', 'Bihor'),
(283, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 'RO', 'BT', 'Botoşani'),
(285, 'RO', 'BV', 'Braşov'),
(286, 'RO', 'BR', 'Brăila'),
(287, 'RO', 'B', 'Bucureşti'),
(288, 'RO', 'BZ', 'Buzău'),
(289, 'RO', 'CS', 'Caraş-Severin'),
(290, 'RO', 'CL', 'Călăraşi'),
(291, 'RO', 'CJ', 'Cluj'),
(292, 'RO', 'CT', 'Constanţa'),
(293, 'RO', 'CV', 'Covasna'),
(294, 'RO', 'DB', 'Dâmboviţa'),
(295, 'RO', 'DJ', 'Dolj'),
(296, 'RO', 'GL', 'Galaţi'),
(297, 'RO', 'GR', 'Giurgiu'),
(298, 'RO', 'GJ', 'Gorj'),
(299, 'RO', 'HR', 'Harghita'),
(300, 'RO', 'HD', 'Hunedoara'),
(301, 'RO', 'IL', 'Ialomiţa'),
(302, 'RO', 'IS', 'Iaşi'),
(303, 'RO', 'IF', 'Ilfov'),
(304, 'RO', 'MM', 'Maramureş'),
(305, 'RO', 'MH', 'Mehedinţi'),
(306, 'RO', 'MS', 'Mureş'),
(307, 'RO', 'NT', 'Neamţ'),
(308, 'RO', 'OT', 'Olt'),
(309, 'RO', 'PH', 'Prahova'),
(310, 'RO', 'SM', 'Satu-Mare'),
(311, 'RO', 'SJ', 'Sălaj'),
(312, 'RO', 'SB', 'Sibiu'),
(313, 'RO', 'SV', 'Suceava'),
(314, 'RO', 'TR', 'Teleorman'),
(315, 'RO', 'TM', 'Timiş'),
(316, 'RO', 'TL', 'Tulcea'),
(317, 'RO', 'VS', 'Vaslui'),
(318, 'RO', 'VL', 'Vâlcea'),
(319, 'RO', 'VN', 'Vrancea'),
(320, 'FI', 'Lappi', 'Lappi'),
(321, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
(322, 'FI', 'Kainuu', 'Kainuu'),
(323, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
(324, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
(325, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
(326, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
(327, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
(328, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
(329, 'FI', 'Satakunta', 'Satakunta'),
(330, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
(331, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
(332, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
(333, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
(334, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
(335, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
(336, 'FI', 'Uusimaa', 'Uusimaa'),
(337, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
(338, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
(339, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
(340, 'EE', 'EE-37', 'Harjumaa'),
(341, 'EE', 'EE-39', 'Hiiumaa'),
(342, 'EE', 'EE-44', 'Ida-Virumaa'),
(343, 'EE', 'EE-49', 'Jõgevamaa'),
(344, 'EE', 'EE-51', 'Järvamaa'),
(345, 'EE', 'EE-57', 'Läänemaa'),
(346, 'EE', 'EE-59', 'Lääne-Virumaa'),
(347, 'EE', 'EE-65', 'Põlvamaa'),
(348, 'EE', 'EE-67', 'Pärnumaa'),
(349, 'EE', 'EE-70', 'Raplamaa'),
(350, 'EE', 'EE-74', 'Saaremaa'),
(351, 'EE', 'EE-78', 'Tartumaa'),
(352, 'EE', 'EE-82', 'Valgamaa'),
(353, 'EE', 'EE-84', 'Viljandimaa'),
(354, 'EE', 'EE-86', 'Võrumaa'),
(355, 'LV', 'LV-DGV', 'Daugavpils'),
(356, 'LV', 'LV-JEL', 'Jelgava'),
(357, 'LV', 'Jēkabpils', 'Jēkabpils'),
(358, 'LV', 'LV-JUR', 'Jūrmala'),
(359, 'LV', 'LV-LPX', 'Liepāja'),
(360, 'LV', 'LV-LE', 'Liepājas novads'),
(361, 'LV', 'LV-REZ', 'Rēzekne'),
(362, 'LV', 'LV-RIX', 'Rīga'),
(363, 'LV', 'LV-RI', 'Rīgas novads'),
(364, 'LV', 'Valmiera', 'Valmiera'),
(365, 'LV', 'LV-VEN', 'Ventspils'),
(366, 'LV', 'Aglonas novads', 'Aglonas novads'),
(367, 'LV', 'LV-AI', 'Aizkraukles novads'),
(368, 'LV', 'Aizputes novads', 'Aizputes novads'),
(369, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
(370, 'LV', 'Alojas novads', 'Alojas novads'),
(371, 'LV', 'Alsungas novads', 'Alsungas novads'),
(372, 'LV', 'LV-AL', 'Alūksnes novads'),
(373, 'LV', 'Amatas novads', 'Amatas novads'),
(374, 'LV', 'Apes novads', 'Apes novads'),
(375, 'LV', 'Auces novads', 'Auces novads'),
(376, 'LV', 'Babītes novads', 'Babītes novads'),
(377, 'LV', 'Baldones novads', 'Baldones novads'),
(378, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
(379, 'LV', 'LV-BL', 'Balvu novads'),
(380, 'LV', 'LV-BU', 'Bauskas novads'),
(381, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
(382, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
(383, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
(384, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
(385, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
(386, 'LV', 'Ciblas novads', 'Ciblas novads'),
(387, 'LV', 'LV-CE', 'Cēsu novads'),
(388, 'LV', 'Dagdas novads', 'Dagdas novads'),
(389, 'LV', 'LV-DA', 'Daugavpils novads'),
(390, 'LV', 'LV-DO', 'Dobeles novads'),
(391, 'LV', 'Dundagas novads', 'Dundagas novads'),
(392, 'LV', 'Durbes novads', 'Durbes novads'),
(393, 'LV', 'Engures novads', 'Engures novads'),
(394, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
(395, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
(396, 'LV', 'LV-GU', 'Gulbenes novads'),
(397, 'LV', 'Iecavas novads', 'Iecavas novads'),
(398, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
(399, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
(400, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
(401, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
(402, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
(403, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
(404, 'LV', 'LV-JL', 'Jelgavas novads'),
(405, 'LV', 'LV-JK', 'Jēkabpils novads'),
(406, 'LV', 'Kandavas novads', 'Kandavas novads'),
(407, 'LV', 'Kokneses novads', 'Kokneses novads'),
(408, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
(409, 'LV', 'Krustpils novads', 'Krustpils novads'),
(410, 'LV', 'LV-KR', 'Krāslavas novads'),
(411, 'LV', 'LV-KU', 'Kuldīgas novads'),
(412, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
(413, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
(414, 'LV', 'LV-LM', 'Limbažu novads'),
(415, 'LV', 'Lubānas novads', 'Lubānas novads'),
(416, 'LV', 'LV-LU', 'Ludzas novads'),
(417, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
(418, 'LV', 'Līvānu novads', 'Līvānu novads'),
(419, 'LV', 'LV-MA', 'Madonas novads'),
(420, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
(421, 'LV', 'Mālpils novads', 'Mālpils novads'),
(422, 'LV', 'Mārupes novads', 'Mārupes novads'),
(423, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
(424, 'LV', 'Neretas novads', 'Neretas novads'),
(425, 'LV', 'Nīcas novads', 'Nīcas novads'),
(426, 'LV', 'LV-OG', 'Ogres novads'),
(427, 'LV', 'Olaines novads', 'Olaines novads'),
(428, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
(429, 'LV', 'LV-PR', 'Preiļu novads'),
(430, 'LV', 'Priekules novads', 'Priekules novads'),
(431, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
(432, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
(433, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
(434, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
(435, 'LV', 'Raunas novads', 'Raunas novads'),
(436, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
(437, 'LV', 'Rojas novads', 'Rojas novads'),
(438, 'LV', 'Ropažu novads', 'Ropažu novads'),
(439, 'LV', 'Rucavas novads', 'Rucavas novads'),
(440, 'LV', 'Rugāju novads', 'Rugāju novads'),
(441, 'LV', 'Rundāles novads', 'Rundāles novads'),
(442, 'LV', 'LV-RE', 'Rēzeknes novads'),
(443, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
(444, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
(445, 'LV', 'Salas novads', 'Salas novads'),
(446, 'LV', 'Salaspils novads', 'Salaspils novads'),
(447, 'LV', 'LV-SA', 'Saldus novads'),
(448, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
(449, 'LV', 'Siguldas novads', 'Siguldas novads'),
(450, 'LV', 'Skrundas novads', 'Skrundas novads'),
(451, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
(452, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
(453, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
(454, 'LV', 'Strenču novads', 'Strenču novads'),
(455, 'LV', 'Sējas novads', 'Sējas novads'),
(456, 'LV', 'LV-TA', 'Talsu novads'),
(457, 'LV', 'LV-TU', 'Tukuma novads'),
(458, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
(459, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
(460, 'LV', 'LV-VK', 'Valkas novads'),
(461, 'LV', 'LV-VM', 'Valmieras novads'),
(462, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
(463, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
(464, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
(465, 'LV', 'LV-VE', 'Ventspils novads'),
(466, 'LV', 'Viesītes novads', 'Viesītes novads'),
(467, 'LV', 'Viļakas novads', 'Viļakas novads'),
(468, 'LV', 'Viļānu novads', 'Viļānu novads'),
(469, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
(470, 'LV', 'Zilupes novads', 'Zilupes novads'),
(471, 'LV', 'Ādažu novads', 'Ādažu novads'),
(472, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
(473, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
(474, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
(475, 'LT', 'LT-AL', 'Alytaus Apskritis'),
(476, 'LT', 'LT-KU', 'Kauno Apskritis'),
(477, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
(478, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
(479, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
(480, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
(481, 'LT', 'LT-TA', 'Tauragės Apskritis'),
(482, 'LT', 'LT-TE', 'Telšių Apskritis'),
(483, 'LT', 'LT-UT', 'Utenos Apskritis'),
(484, 'LT', 'LT-VL', 'Vilniaus Apskritis');

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_region_name`
--

CREATE TABLE IF NOT EXISTS `directory_country_region_name` (
  `locale` varchar(8) NOT NULL DEFAULT '' COMMENT 'Locale',
  `region_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Region Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`locale`,`region_id`),
  KEY `IDX_DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

--
-- Dumping data for table `directory_country_region_name`
--

INSERT INTO `directory_country_region_name` (`locale`, `region_id`, `name`) VALUES
('en_US', 1, 'Alabama'),
('en_US', 2, 'Alaska'),
('en_US', 3, 'American Samoa'),
('en_US', 4, 'Arizona'),
('en_US', 5, 'Arkansas'),
('en_US', 6, 'Armed Forces Africa'),
('en_US', 7, 'Armed Forces Americas'),
('en_US', 8, 'Armed Forces Canada'),
('en_US', 9, 'Armed Forces Europe'),
('en_US', 10, 'Armed Forces Middle East'),
('en_US', 11, 'Armed Forces Pacific'),
('en_US', 12, 'California'),
('en_US', 13, 'Colorado'),
('en_US', 14, 'Connecticut'),
('en_US', 15, 'Delaware'),
('en_US', 16, 'District of Columbia'),
('en_US', 17, 'Federated States Of Micronesia'),
('en_US', 18, 'Florida'),
('en_US', 19, 'Georgia'),
('en_US', 20, 'Guam'),
('en_US', 21, 'Hawaii'),
('en_US', 22, 'Idaho'),
('en_US', 23, 'Illinois'),
('en_US', 24, 'Indiana'),
('en_US', 25, 'Iowa'),
('en_US', 26, 'Kansas'),
('en_US', 27, 'Kentucky'),
('en_US', 28, 'Louisiana'),
('en_US', 29, 'Maine'),
('en_US', 30, 'Marshall Islands'),
('en_US', 31, 'Maryland'),
('en_US', 32, 'Massachusetts'),
('en_US', 33, 'Michigan'),
('en_US', 34, 'Minnesota'),
('en_US', 35, 'Mississippi'),
('en_US', 36, 'Missouri'),
('en_US', 37, 'Montana'),
('en_US', 38, 'Nebraska'),
('en_US', 39, 'Nevada'),
('en_US', 40, 'New Hampshire'),
('en_US', 41, 'New Jersey'),
('en_US', 42, 'New Mexico'),
('en_US', 43, 'New York'),
('en_US', 44, 'North Carolina'),
('en_US', 45, 'North Dakota'),
('en_US', 46, 'Northern Mariana Islands'),
('en_US', 47, 'Ohio'),
('en_US', 48, 'Oklahoma'),
('en_US', 49, 'Oregon'),
('en_US', 50, 'Palau'),
('en_US', 51, 'Pennsylvania'),
('en_US', 52, 'Puerto Rico'),
('en_US', 53, 'Rhode Island'),
('en_US', 54, 'South Carolina'),
('en_US', 55, 'South Dakota'),
('en_US', 56, 'Tennessee'),
('en_US', 57, 'Texas'),
('en_US', 58, 'Utah'),
('en_US', 59, 'Vermont'),
('en_US', 60, 'Virgin Islands'),
('en_US', 61, 'Virginia'),
('en_US', 62, 'Washington'),
('en_US', 63, 'West Virginia'),
('en_US', 64, 'Wisconsin'),
('en_US', 65, 'Wyoming'),
('en_US', 66, 'Alberta'),
('en_US', 67, 'British Columbia'),
('en_US', 68, 'Manitoba'),
('en_US', 69, 'Newfoundland and Labrador'),
('en_US', 70, 'New Brunswick'),
('en_US', 71, 'Nova Scotia'),
('en_US', 72, 'Northwest Territories'),
('en_US', 73, 'Nunavut'),
('en_US', 74, 'Ontario'),
('en_US', 75, 'Prince Edward Island'),
('en_US', 76, 'Quebec'),
('en_US', 77, 'Saskatchewan'),
('en_US', 78, 'Yukon Territory'),
('en_US', 79, 'Niedersachsen'),
('en_US', 80, 'Baden-Württemberg'),
('en_US', 81, 'Bayern'),
('en_US', 82, 'Berlin'),
('en_US', 83, 'Brandenburg'),
('en_US', 84, 'Bremen'),
('en_US', 85, 'Hamburg'),
('en_US', 86, 'Hessen'),
('en_US', 87, 'Mecklenburg-Vorpommern'),
('en_US', 88, 'Nordrhein-Westfalen'),
('en_US', 89, 'Rheinland-Pfalz'),
('en_US', 90, 'Saarland'),
('en_US', 91, 'Sachsen'),
('en_US', 92, 'Sachsen-Anhalt'),
('en_US', 93, 'Schleswig-Holstein'),
('en_US', 94, 'Thüringen'),
('en_US', 95, 'Wien'),
('en_US', 96, 'Niederösterreich'),
('en_US', 97, 'Oberösterreich'),
('en_US', 98, 'Salzburg'),
('en_US', 99, 'Kärnten'),
('en_US', 100, 'Steiermark'),
('en_US', 101, 'Tirol'),
('en_US', 102, 'Burgenland'),
('en_US', 103, 'Voralberg'),
('en_US', 104, 'Aargau'),
('en_US', 105, 'Appenzell Innerrhoden'),
('en_US', 106, 'Appenzell Ausserrhoden'),
('en_US', 107, 'Bern'),
('en_US', 108, 'Basel-Landschaft'),
('en_US', 109, 'Basel-Stadt'),
('en_US', 110, 'Freiburg'),
('en_US', 111, 'Genf'),
('en_US', 112, 'Glarus'),
('en_US', 113, 'Graubünden'),
('en_US', 114, 'Jura'),
('en_US', 115, 'Luzern'),
('en_US', 116, 'Neuenburg'),
('en_US', 117, 'Nidwalden'),
('en_US', 118, 'Obwalden'),
('en_US', 119, 'St. Gallen'),
('en_US', 120, 'Schaffhausen'),
('en_US', 121, 'Solothurn'),
('en_US', 122, 'Schwyz'),
('en_US', 123, 'Thurgau'),
('en_US', 124, 'Tessin'),
('en_US', 125, 'Uri'),
('en_US', 126, 'Waadt'),
('en_US', 127, 'Wallis'),
('en_US', 128, 'Zug'),
('en_US', 129, 'Zürich'),
('en_US', 130, 'A Coruña'),
('en_US', 131, 'Alava'),
('en_US', 132, 'Albacete'),
('en_US', 133, 'Alicante'),
('en_US', 134, 'Almeria'),
('en_US', 135, 'Asturias'),
('en_US', 136, 'Avila'),
('en_US', 137, 'Badajoz'),
('en_US', 138, 'Baleares'),
('en_US', 139, 'Barcelona'),
('en_US', 140, 'Burgos'),
('en_US', 141, 'Caceres'),
('en_US', 142, 'Cadiz'),
('en_US', 143, 'Cantabria'),
('en_US', 144, 'Castellon'),
('en_US', 145, 'Ceuta'),
('en_US', 146, 'Ciudad Real'),
('en_US', 147, 'Cordoba'),
('en_US', 148, 'Cuenca'),
('en_US', 149, 'Girona'),
('en_US', 150, 'Granada'),
('en_US', 151, 'Guadalajara'),
('en_US', 152, 'Guipuzcoa'),
('en_US', 153, 'Huelva'),
('en_US', 154, 'Huesca'),
('en_US', 155, 'Jaen'),
('en_US', 156, 'La Rioja'),
('en_US', 157, 'Las Palmas'),
('en_US', 158, 'Leon'),
('en_US', 159, 'Lleida'),
('en_US', 160, 'Lugo'),
('en_US', 161, 'Madrid'),
('en_US', 162, 'Malaga'),
('en_US', 163, 'Melilla'),
('en_US', 164, 'Murcia'),
('en_US', 165, 'Navarra'),
('en_US', 166, 'Ourense'),
('en_US', 167, 'Palencia'),
('en_US', 168, 'Pontevedra'),
('en_US', 169, 'Salamanca'),
('en_US', 170, 'Santa Cruz de Tenerife'),
('en_US', 171, 'Segovia'),
('en_US', 172, 'Sevilla'),
('en_US', 173, 'Soria'),
('en_US', 174, 'Tarragona'),
('en_US', 175, 'Teruel'),
('en_US', 176, 'Toledo'),
('en_US', 177, 'Valencia'),
('en_US', 178, 'Valladolid'),
('en_US', 179, 'Vizcaya'),
('en_US', 180, 'Zamora'),
('en_US', 181, 'Zaragoza'),
('en_US', 182, 'Ain'),
('en_US', 183, 'Aisne'),
('en_US', 184, 'Allier'),
('en_US', 185, 'Alpes-de-Haute-Provence'),
('en_US', 186, 'Hautes-Alpes'),
('en_US', 187, 'Alpes-Maritimes'),
('en_US', 188, 'Ardèche'),
('en_US', 189, 'Ardennes'),
('en_US', 190, 'Ariège'),
('en_US', 191, 'Aube'),
('en_US', 192, 'Aude'),
('en_US', 193, 'Aveyron'),
('en_US', 194, 'Bouches-du-Rhône'),
('en_US', 195, 'Calvados'),
('en_US', 196, 'Cantal'),
('en_US', 197, 'Charente'),
('en_US', 198, 'Charente-Maritime'),
('en_US', 199, 'Cher'),
('en_US', 200, 'Corrèze'),
('en_US', 201, 'Corse-du-Sud'),
('en_US', 202, 'Haute-Corse'),
('en_US', 203, 'Côte-d''Or'),
('en_US', 204, 'Côtes-d''Armor'),
('en_US', 205, 'Creuse'),
('en_US', 206, 'Dordogne'),
('en_US', 207, 'Doubs'),
('en_US', 208, 'Drôme'),
('en_US', 209, 'Eure'),
('en_US', 210, 'Eure-et-Loir'),
('en_US', 211, 'Finistère'),
('en_US', 212, 'Gard'),
('en_US', 213, 'Haute-Garonne'),
('en_US', 214, 'Gers'),
('en_US', 215, 'Gironde'),
('en_US', 216, 'Hérault'),
('en_US', 217, 'Ille-et-Vilaine'),
('en_US', 218, 'Indre'),
('en_US', 219, 'Indre-et-Loire'),
('en_US', 220, 'Isère'),
('en_US', 221, 'Jura'),
('en_US', 222, 'Landes'),
('en_US', 223, 'Loir-et-Cher'),
('en_US', 224, 'Loire'),
('en_US', 225, 'Haute-Loire'),
('en_US', 226, 'Loire-Atlantique'),
('en_US', 227, 'Loiret'),
('en_US', 228, 'Lot'),
('en_US', 229, 'Lot-et-Garonne'),
('en_US', 230, 'Lozère'),
('en_US', 231, 'Maine-et-Loire'),
('en_US', 232, 'Manche'),
('en_US', 233, 'Marne'),
('en_US', 234, 'Haute-Marne'),
('en_US', 235, 'Mayenne'),
('en_US', 236, 'Meurthe-et-Moselle'),
('en_US', 237, 'Meuse'),
('en_US', 238, 'Morbihan'),
('en_US', 239, 'Moselle'),
('en_US', 240, 'Nièvre'),
('en_US', 241, 'Nord'),
('en_US', 242, 'Oise'),
('en_US', 243, 'Orne'),
('en_US', 244, 'Pas-de-Calais'),
('en_US', 245, 'Puy-de-Dôme'),
('en_US', 246, 'Pyrénées-Atlantiques'),
('en_US', 247, 'Hautes-Pyrénées'),
('en_US', 248, 'Pyrénées-Orientales'),
('en_US', 249, 'Bas-Rhin'),
('en_US', 250, 'Haut-Rhin'),
('en_US', 251, 'Rhône'),
('en_US', 252, 'Haute-Saône'),
('en_US', 253, 'Saône-et-Loire'),
('en_US', 254, 'Sarthe'),
('en_US', 255, 'Savoie'),
('en_US', 256, 'Haute-Savoie'),
('en_US', 257, 'Paris'),
('en_US', 258, 'Seine-Maritime'),
('en_US', 259, 'Seine-et-Marne'),
('en_US', 260, 'Yvelines'),
('en_US', 261, 'Deux-Sèvres'),
('en_US', 262, 'Somme'),
('en_US', 263, 'Tarn'),
('en_US', 264, 'Tarn-et-Garonne'),
('en_US', 265, 'Var'),
('en_US', 266, 'Vaucluse'),
('en_US', 267, 'Vendée'),
('en_US', 268, 'Vienne'),
('en_US', 269, 'Haute-Vienne'),
('en_US', 270, 'Vosges'),
('en_US', 271, 'Yonne'),
('en_US', 272, 'Territoire-de-Belfort'),
('en_US', 273, 'Essonne'),
('en_US', 274, 'Hauts-de-Seine'),
('en_US', 275, 'Seine-Saint-Denis'),
('en_US', 276, 'Val-de-Marne'),
('en_US', 277, 'Val-d''Oise'),
('en_US', 278, 'Alba'),
('en_US', 279, 'Arad'),
('en_US', 280, 'Argeş'),
('en_US', 281, 'Bacău'),
('en_US', 282, 'Bihor'),
('en_US', 283, 'Bistriţa-Năsăud'),
('en_US', 284, 'Botoşani'),
('en_US', 285, 'Braşov'),
('en_US', 286, 'Brăila'),
('en_US', 287, 'Bucureşti'),
('en_US', 288, 'Buzău'),
('en_US', 289, 'Caraş-Severin'),
('en_US', 290, 'Călăraşi'),
('en_US', 291, 'Cluj'),
('en_US', 292, 'Constanţa'),
('en_US', 293, 'Covasna'),
('en_US', 294, 'Dâmboviţa'),
('en_US', 295, 'Dolj'),
('en_US', 296, 'Galaţi'),
('en_US', 297, 'Giurgiu'),
('en_US', 298, 'Gorj'),
('en_US', 299, 'Harghita'),
('en_US', 300, 'Hunedoara'),
('en_US', 301, 'Ialomiţa'),
('en_US', 302, 'Iaşi'),
('en_US', 303, 'Ilfov'),
('en_US', 304, 'Maramureş'),
('en_US', 305, 'Mehedinţi'),
('en_US', 306, 'Mureş'),
('en_US', 307, 'Neamţ'),
('en_US', 308, 'Olt'),
('en_US', 309, 'Prahova'),
('en_US', 310, 'Satu-Mare'),
('en_US', 311, 'Sălaj'),
('en_US', 312, 'Sibiu'),
('en_US', 313, 'Suceava'),
('en_US', 314, 'Teleorman'),
('en_US', 315, 'Timiş'),
('en_US', 316, 'Tulcea'),
('en_US', 317, 'Vaslui'),
('en_US', 318, 'Vâlcea'),
('en_US', 319, 'Vrancea'),
('en_US', 320, 'Lappi'),
('en_US', 321, 'Pohjois-Pohjanmaa'),
('en_US', 322, 'Kainuu'),
('en_US', 323, 'Pohjois-Karjala'),
('en_US', 324, 'Pohjois-Savo'),
('en_US', 325, 'Etelä-Savo'),
('en_US', 326, 'Etelä-Pohjanmaa'),
('en_US', 327, 'Pohjanmaa'),
('en_US', 328, 'Pirkanmaa'),
('en_US', 329, 'Satakunta'),
('en_US', 330, 'Keski-Pohjanmaa'),
('en_US', 331, 'Keski-Suomi'),
('en_US', 332, 'Varsinais-Suomi'),
('en_US', 333, 'Etelä-Karjala'),
('en_US', 334, 'Päijät-Häme'),
('en_US', 335, 'Kanta-Häme'),
('en_US', 336, 'Uusimaa'),
('en_US', 337, 'Itä-Uusimaa'),
('en_US', 338, 'Kymenlaakso'),
('en_US', 339, 'Ahvenanmaa'),
('en_US', 340, 'Harjumaa'),
('en_US', 341, 'Hiiumaa'),
('en_US', 342, 'Ida-Virumaa'),
('en_US', 343, 'Jõgevamaa'),
('en_US', 344, 'Järvamaa'),
('en_US', 345, 'Läänemaa'),
('en_US', 346, 'Lääne-Virumaa'),
('en_US', 347, 'Põlvamaa'),
('en_US', 348, 'Pärnumaa'),
('en_US', 349, 'Raplamaa'),
('en_US', 350, 'Saaremaa'),
('en_US', 351, 'Tartumaa'),
('en_US', 352, 'Valgamaa'),
('en_US', 353, 'Viljandimaa'),
('en_US', 354, 'Võrumaa'),
('en_US', 355, 'Daugavpils'),
('en_US', 356, 'Jelgava'),
('en_US', 357, 'Jēkabpils'),
('en_US', 358, 'Jūrmala'),
('en_US', 359, 'Liepāja'),
('en_US', 360, 'Liepājas novads'),
('en_US', 361, 'Rēzekne'),
('en_US', 362, 'Rīga'),
('en_US', 363, 'Rīgas novads'),
('en_US', 364, 'Valmiera'),
('en_US', 365, 'Ventspils'),
('en_US', 366, 'Aglonas novads'),
('en_US', 367, 'Aizkraukles novads'),
('en_US', 368, 'Aizputes novads'),
('en_US', 369, 'Aknīstes novads'),
('en_US', 370, 'Alojas novads'),
('en_US', 371, 'Alsungas novads'),
('en_US', 372, 'Alūksnes novads'),
('en_US', 373, 'Amatas novads'),
('en_US', 374, 'Apes novads'),
('en_US', 375, 'Auces novads'),
('en_US', 376, 'Babītes novads'),
('en_US', 377, 'Baldones novads'),
('en_US', 378, 'Baltinavas novads'),
('en_US', 379, 'Balvu novads'),
('en_US', 380, 'Bauskas novads'),
('en_US', 381, 'Beverīnas novads'),
('en_US', 382, 'Brocēnu novads'),
('en_US', 383, 'Burtnieku novads'),
('en_US', 384, 'Carnikavas novads'),
('en_US', 385, 'Cesvaines novads'),
('en_US', 386, 'Ciblas novads'),
('en_US', 387, 'Cēsu novads'),
('en_US', 388, 'Dagdas novads'),
('en_US', 389, 'Daugavpils novads'),
('en_US', 390, 'Dobeles novads'),
('en_US', 391, 'Dundagas novads'),
('en_US', 392, 'Durbes novads'),
('en_US', 393, 'Engures novads'),
('en_US', 394, 'Garkalnes novads'),
('en_US', 395, 'Grobiņas novads'),
('en_US', 396, 'Gulbenes novads'),
('en_US', 397, 'Iecavas novads'),
('en_US', 398, 'Ikšķiles novads'),
('en_US', 399, 'Ilūkstes novads'),
('en_US', 400, 'Inčukalna novads'),
('en_US', 401, 'Jaunjelgavas novads'),
('en_US', 402, 'Jaunpiebalgas novads'),
('en_US', 403, 'Jaunpils novads'),
('en_US', 404, 'Jelgavas novads'),
('en_US', 405, 'Jēkabpils novads'),
('en_US', 406, 'Kandavas novads'),
('en_US', 407, 'Kokneses novads'),
('en_US', 408, 'Krimuldas novads'),
('en_US', 409, 'Krustpils novads'),
('en_US', 410, 'Krāslavas novads'),
('en_US', 411, 'Kuldīgas novads'),
('en_US', 412, 'Kārsavas novads'),
('en_US', 413, 'Lielvārdes novads'),
('en_US', 414, 'Limbažu novads'),
('en_US', 415, 'Lubānas novads'),
('en_US', 416, 'Ludzas novads'),
('en_US', 417, 'Līgatnes novads'),
('en_US', 418, 'Līvānu novads'),
('en_US', 419, 'Madonas novads'),
('en_US', 420, 'Mazsalacas novads'),
('en_US', 421, 'Mālpils novads'),
('en_US', 422, 'Mārupes novads'),
('en_US', 423, 'Naukšēnu novads'),
('en_US', 424, 'Neretas novads'),
('en_US', 425, 'Nīcas novads'),
('en_US', 426, 'Ogres novads'),
('en_US', 427, 'Olaines novads'),
('en_US', 428, 'Ozolnieku novads'),
('en_US', 429, 'Preiļu novads'),
('en_US', 430, 'Priekules novads'),
('en_US', 431, 'Priekuļu novads'),
('en_US', 432, 'Pārgaujas novads'),
('en_US', 433, 'Pāvilostas novads'),
('en_US', 434, 'Pļaviņu novads'),
('en_US', 435, 'Raunas novads'),
('en_US', 436, 'Riebiņu novads'),
('en_US', 437, 'Rojas novads'),
('en_US', 438, 'Ropažu novads'),
('en_US', 439, 'Rucavas novads'),
('en_US', 440, 'Rugāju novads'),
('en_US', 441, 'Rundāles novads'),
('en_US', 442, 'Rēzeknes novads'),
('en_US', 443, 'Rūjienas novads'),
('en_US', 444, 'Salacgrīvas novads'),
('en_US', 445, 'Salas novads'),
('en_US', 446, 'Salaspils novads'),
('en_US', 447, 'Saldus novads'),
('en_US', 448, 'Saulkrastu novads'),
('en_US', 449, 'Siguldas novads'),
('en_US', 450, 'Skrundas novads'),
('en_US', 451, 'Skrīveru novads'),
('en_US', 452, 'Smiltenes novads'),
('en_US', 453, 'Stopiņu novads'),
('en_US', 454, 'Strenču novads'),
('en_US', 455, 'Sējas novads'),
('en_US', 456, 'Talsu novads'),
('en_US', 457, 'Tukuma novads'),
('en_US', 458, 'Tērvetes novads'),
('en_US', 459, 'Vaiņodes novads'),
('en_US', 460, 'Valkas novads'),
('en_US', 461, 'Valmieras novads'),
('en_US', 462, 'Varakļānu novads'),
('en_US', 463, 'Vecpiebalgas novads'),
('en_US', 464, 'Vecumnieku novads'),
('en_US', 465, 'Ventspils novads'),
('en_US', 466, 'Viesītes novads'),
('en_US', 467, 'Viļakas novads'),
('en_US', 468, 'Viļānu novads'),
('en_US', 469, 'Vārkavas novads'),
('en_US', 470, 'Zilupes novads'),
('en_US', 471, 'Ādažu novads'),
('en_US', 472, 'Ērgļu novads'),
('en_US', 473, 'Ķeguma novads'),
('en_US', 474, 'Ķekavas novads'),
('en_US', 475, 'Alytaus Apskritis'),
('en_US', 476, 'Kauno Apskritis'),
('en_US', 477, 'Klaipėdos Apskritis'),
('en_US', 478, 'Marijampolės Apskritis'),
('en_US', 479, 'Panevėžio Apskritis'),
('en_US', 480, 'Šiaulių Apskritis'),
('en_US', 481, 'Tauragės Apskritis'),
('en_US', 482, 'Telšių Apskritis'),
('en_US', 483, 'Utenos Apskritis'),
('en_US', 484, 'Vilniaus Apskritis');

-- --------------------------------------------------------

--
-- Table structure for table `directory_currency_rate`
--

CREATE TABLE IF NOT EXISTS `directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate',
  PRIMARY KEY (`currency_from`,`currency_to`),
  KEY `IDX_DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

--
-- Dumping data for table `directory_currency_rate`
--

INSERT INTO `directory_currency_rate` (`currency_from`, `currency_to`, `rate`) VALUES
('EUR', 'EUR', 1.000000000000),
('EUR', 'USD', 1.415000000000),
('USD', 'EUR', 0.706700000000),
('USD', 'USD', 1.000000000000);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute`
--

CREATE TABLE IF NOT EXISTS `eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_code` varchar(255) DEFAULT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note',
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `UNQ_EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`),
  KEY `IDX_EAV_ATTRIBUTE_ENTITY_TYPE_ID` (`entity_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute' AUTO_INCREMENT=45 ;

--
-- Dumping data for table `eav_attribute`
--

INSERT INTO `eav_attribute` (`attribute_id`, `entity_type_id`, `attribute_code`, `attribute_model`, `backend_model`, `backend_type`, `backend_table`, `frontend_model`, `frontend_input`, `frontend_label`, `frontend_class`, `source_model`, `is_required`, `is_user_defined`, `default_value`, `is_unique`, `note`) VALUES
(1, 1, 'website_id', NULL, 'customer/customer_attribute_backend_website', 'static', NULL, NULL, 'select', 'Associate to Website', NULL, 'customer/customer_attribute_source_website', 1, 0, NULL, 0, NULL),
(2, 1, 'store_id', NULL, 'customer/customer_attribute_backend_store', 'static', NULL, NULL, 'select', 'Create In', NULL, 'customer/customer_attribute_source_store', 1, 0, NULL, 0, NULL),
(3, 1, 'created_in', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Created From', NULL, NULL, 0, 0, NULL, 0, NULL),
(4, 1, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(5, 1, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(6, 1, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(7, 1, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(8, 1, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(9, 1, 'email', NULL, NULL, 'static', NULL, NULL, 'text', 'Email', NULL, NULL, 1, 0, NULL, 0, NULL),
(10, 1, 'group_id', NULL, NULL, 'static', NULL, NULL, 'select', 'Group', NULL, 'customer/customer_attribute_source_group', 1, 0, NULL, 0, NULL),
(11, 1, 'dob', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, 'eav/entity_attribute_frontend_datetime', 'date', 'Date Of Birth', NULL, NULL, 0, 0, NULL, 0, NULL),
(12, 1, 'password_hash', NULL, 'customer/customer_attribute_backend_password', 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(13, 1, 'default_billing', NULL, 'customer/customer_attribute_backend_billing', 'int', NULL, NULL, 'text', 'Default Billing Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(14, 1, 'default_shipping', NULL, 'customer/customer_attribute_backend_shipping', 'int', NULL, NULL, 'text', 'Default Shipping Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(15, 1, 'taxvat', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Tax/VAT Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(16, 1, 'confirmation', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Is Confirmed', NULL, NULL, 0, 0, NULL, 0, NULL),
(17, 1, 'created_at', NULL, NULL, 'static', NULL, NULL, 'date', 'Created At', NULL, NULL, 0, 0, NULL, 0, NULL),
(18, 1, 'gender', NULL, NULL, 'int', NULL, NULL, 'select', 'Gender', NULL, 'eav/entity_attribute_source_table', 0, 0, NULL, 0, NULL),
(19, 2, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(20, 2, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(21, 2, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(22, 2, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(23, 2, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(24, 2, 'company', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Company', NULL, NULL, 0, 0, NULL, 0, NULL),
(25, 2, 'street', NULL, 'customer/entity_address_attribute_backend_street', 'text', NULL, NULL, 'multiline', 'Street Address', NULL, NULL, 1, 0, NULL, 0, NULL),
(26, 2, 'city', NULL, NULL, 'varchar', NULL, NULL, 'text', 'City', NULL, NULL, 1, 0, NULL, 0, NULL),
(27, 2, 'country_id', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country', NULL, 'customer/entity_address_attribute_source_country', 1, 0, NULL, 0, NULL),
(28, 2, 'region', NULL, 'customer/entity_address_attribute_backend_region', 'varchar', NULL, NULL, 'text', 'State/Province', NULL, NULL, 0, 0, NULL, 0, NULL),
(29, 2, 'region_id', NULL, NULL, 'int', NULL, NULL, 'hidden', 'State/Province', NULL, 'customer/entity_address_attribute_source_region', 0, 0, NULL, 0, NULL),
(30, 2, 'postcode', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Zip/Postal Code', NULL, NULL, 1, 0, NULL, 0, NULL),
(31, 2, 'telephone', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Telephone', NULL, NULL, 1, 0, NULL, 0, NULL),
(32, 2, 'fax', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Fax', NULL, NULL, 0, 0, NULL, 0, NULL),
(33, 1, 'rp_token', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(34, 1, 'rp_token_created_at', NULL, NULL, 'datetime', NULL, NULL, 'date', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(35, 1, 'disable_auto_group_change', NULL, 'customer/attribute_backend_data_boolean', 'static', NULL, NULL, 'boolean', 'Disable Automatic Group Change Based on VAT ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(36, 2, 'vat_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number', NULL, NULL, 0, 0, NULL, 0, NULL),
(37, 2, 'vat_is_valid', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validity', NULL, NULL, 0, 0, NULL, 0, NULL),
(38, 2, 'vat_request_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(39, 2, 'vat_request_date', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request date', NULL, NULL, 0, 0, NULL, 0, NULL),
(40, 2, 'vat_request_success', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validation request success', NULL, NULL, 0, 0, NULL, 0, NULL),
(41, 1, 'sex', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Giới tính', NULL, 'job/entity_sex', 1, 1, '0', 0, NULL),
(42, 1, 'location', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Nơi cư trú', NULL, 'job/entity_location', 1, 1, '0', 0, NULL),
(43, 1, 'birth_year', NULL, NULL, 'int', NULL, NULL, 'select', 'Năm sinh', NULL, 'job/entity_birth_year', 1, 1, '0', 0, NULL),
(44, 1, 'upload_cv', NULL, NULL, 'varchar', NULL, NULL, 'input', 'CV', NULL, 'job/entity_upload_cv', 0, 1, '0', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_group`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_group` (
  `attribute_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Default Id',
  PRIMARY KEY (`attribute_group_id`),
  UNIQUE KEY `UNQ_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  KEY `IDX_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `eav_attribute_group`
--

INSERT INTO `eav_attribute_group` (`attribute_group_id`, `attribute_set_id`, `attribute_group_name`, `sort_order`, `default_id`) VALUES
(1, 1, 'General', 1, 1),
(2, 2, 'General', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_label`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_label` (
  `attribute_label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`attribute_label_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `eav_attribute_label`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `IDX_EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `eav_attribute_option`
--

INSERT INTO `eav_attribute_option` (`option_id`, `attribute_id`, `sort_order`) VALUES
(1, 18, 0),
(2, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option_value`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  KEY `IDX_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `eav_attribute_option_value`
--

INSERT INTO `eav_attribute_option_value` (`value_id`, `option_id`, `store_id`, `value`) VALUES
(1, 1, 0, 'Male'),
(2, 2, 0, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_set`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_set` (
  `attribute_set_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`attribute_set_id`),
  UNIQUE KEY `UNQ_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  KEY `IDX_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `eav_attribute_set`
--

INSERT INTO `eav_attribute_set` (`attribute_set_id`, `entity_type_id`, `attribute_set_name`, `sort_order`) VALUES
(1, 1, 'Default', 1),
(2, 2, 'Default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity`
--

CREATE TABLE IF NOT EXISTS `eav_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `eav_entity`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_attribute`
--

CREATE TABLE IF NOT EXISTS `eav_entity_attribute` (
  `entity_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`entity_attribute_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  KEY `IDX_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  KEY `IDX_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes' AUTO_INCREMENT=41 ;

--
-- Dumping data for table `eav_entity_attribute`
--

INSERT INTO `eav_entity_attribute` (`entity_attribute_id`, `entity_type_id`, `attribute_set_id`, `attribute_group_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, 1, 1, 1, 10),
(2, 1, 1, 1, 2, 0),
(3, 1, 1, 1, 3, 20),
(4, 1, 1, 1, 4, 30),
(5, 1, 1, 1, 5, 40),
(6, 1, 1, 1, 6, 50),
(7, 1, 1, 1, 7, 60),
(8, 1, 1, 1, 8, 70),
(9, 1, 1, 1, 9, 80),
(10, 1, 1, 1, 10, 25),
(11, 1, 1, 1, 11, 90),
(12, 1, 1, 1, 12, 0),
(13, 1, 1, 1, 13, 0),
(14, 1, 1, 1, 14, 0),
(15, 1, 1, 1, 15, 100),
(16, 1, 1, 1, 16, 0),
(17, 1, 1, 1, 17, 86),
(18, 1, 1, 1, 18, 110),
(19, 2, 2, 2, 19, 10),
(20, 2, 2, 2, 20, 20),
(21, 2, 2, 2, 21, 30),
(22, 2, 2, 2, 22, 40),
(23, 2, 2, 2, 23, 50),
(24, 2, 2, 2, 24, 60),
(25, 2, 2, 2, 25, 70),
(26, 2, 2, 2, 26, 80),
(27, 2, 2, 2, 27, 90),
(28, 2, 2, 2, 28, 100),
(29, 2, 2, 2, 29, 100),
(30, 2, 2, 2, 30, 110),
(31, 2, 2, 2, 31, 120),
(32, 2, 2, 2, 32, 130),
(33, 1, 1, 1, 33, 111),
(34, 1, 1, 1, 34, 112),
(35, 1, 1, 1, 35, 28),
(36, 2, 2, 2, 36, 140),
(37, 2, 2, 2, 37, 132),
(38, 2, 2, 2, 38, 133),
(39, 2, 2, 2, 39, 134),
(40, 2, 2, 2, 40, 135);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `eav_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `eav_entity_datetime`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `eav_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `eav_entity_decimal`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_int`
--

CREATE TABLE IF NOT EXISTS `eav_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `eav_entity_int`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_store`
--

CREATE TABLE IF NOT EXISTS `eav_entity_store` (
  `entity_store_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Store Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented Id',
  PRIMARY KEY (`entity_store_id`),
  KEY `IDX_EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `eav_entity_store`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_text`
--

CREATE TABLE IF NOT EXISTS `eav_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_TEXT_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `eav_entity_text`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_type`
--

CREATE TABLE IF NOT EXISTS `eav_entity_type` (
  `entity_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity Id Field',
  `is_data_sharing` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT '' COMMENT 'Increment Model',
  `increment_per_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) unsigned NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT '' COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection',
  PRIMARY KEY (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `eav_entity_type`
--

INSERT INTO `eav_entity_type` (`entity_type_id`, `entity_type_code`, `entity_model`, `attribute_model`, `entity_table`, `value_table_prefix`, `entity_id_field`, `is_data_sharing`, `data_sharing_key`, `default_attribute_set_id`, `increment_model`, `increment_per_store`, `increment_pad_length`, `increment_pad_char`, `additional_attribute_table`, `entity_attribute_collection`) VALUES
(1, 'customer', 'customer/customer', 'customer/attribute', 'customer/entity', NULL, NULL, 1, 'default', 1, 'eav/entity_increment_numeric', 0, 8, '0', 'customer/eav_attribute', 'customer/attribute_collection'),
(2, 'customer_address', 'customer/address', 'customer/attribute', 'customer/address_entity', NULL, NULL, 1, 'default', 2, NULL, 0, 8, '0', 'customer/eav_attribute', 'customer/address_attribute_collection');

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `eav_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `eav_entity_varchar`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_form_element`
--

CREATE TABLE IF NOT EXISTS `eav_form_element` (
  `element_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Element Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `fieldset_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Fieldset Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`element_id`),
  UNIQUE KEY `UNQ_EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  KEY `IDX_EAV_FORM_ELEMENT_TYPE_ID` (`type_id`),
  KEY `IDX_EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  KEY `IDX_EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Element' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `eav_form_element`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_form_fieldset`
--

CREATE TABLE IF NOT EXISTS `eav_form_fieldset` (
  `fieldset_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Fieldset Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `UNQ_EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`),
  KEY `IDX_EAV_FORM_FIELDSET_TYPE_ID` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `eav_form_fieldset`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_form_fieldset_label`
--

CREATE TABLE IF NOT EXISTS `eav_form_fieldset_label` (
  `fieldset_id` smallint(5) unsigned NOT NULL COMMENT 'Fieldset Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`fieldset_id`,`store_id`),
  KEY `IDX_EAV_FORM_FIELDSET_LABEL_FIELDSET_ID` (`fieldset_id`),
  KEY `IDX_EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';

--
-- Dumping data for table `eav_form_fieldset_label`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_form_type`
--

CREATE TABLE IF NOT EXISTS `eav_form_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `UNQ_EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  KEY `IDX_EAV_FORM_TYPE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `eav_form_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `eav_form_type_entity`
--

CREATE TABLE IF NOT EXISTS `eav_form_type_entity` (
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`type_id`,`entity_type_id`),
  KEY `IDX_EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

--
-- Dumping data for table `eav_form_type_entity`
--


-- --------------------------------------------------------

--
-- Table structure for table `index_event`
--

CREATE TABLE IF NOT EXISTS `index_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `type` varchar(64) NOT NULL COMMENT 'Type',
  `entity` varchar(64) NOT NULL COMMENT 'Entity',
  `entity_pk` bigint(20) DEFAULT NULL COMMENT 'Entity Primary Key',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `old_data` mediumtext COMMENT 'Old Data',
  `new_data` mediumtext COMMENT 'New Data',
  PRIMARY KEY (`event_id`),
  UNIQUE KEY `UNQ_INDEX_EVENT_TYPE_ENTITY_ENTITY_PK` (`type`,`entity`,`entity_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Index Event' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `index_event`
--


-- --------------------------------------------------------

--
-- Table structure for table `index_process`
--

CREATE TABLE IF NOT EXISTS `index_process` (
  `process_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Process Id',
  `indexer_code` varchar(32) NOT NULL COMMENT 'Indexer Code',
  `status` varchar(15) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `started_at` timestamp NULL DEFAULT NULL COMMENT 'Started At',
  `ended_at` timestamp NULL DEFAULT NULL COMMENT 'Ended At',
  `mode` varchar(9) NOT NULL DEFAULT 'real_time' COMMENT 'Mode',
  PRIMARY KEY (`process_id`),
  UNIQUE KEY `UNQ_INDEX_PROCESS_INDEXER_CODE` (`indexer_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Index Process' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `index_process`
--


-- --------------------------------------------------------

--
-- Table structure for table `index_process_event`
--

CREATE TABLE IF NOT EXISTS `index_process_event` (
  `process_id` int(10) unsigned NOT NULL COMMENT 'Process Id',
  `event_id` bigint(20) unsigned NOT NULL COMMENT 'Event Id',
  `status` varchar(7) NOT NULL DEFAULT 'new' COMMENT 'Status',
  PRIMARY KEY (`process_id`,`event_id`),
  KEY `IDX_INDEX_PROCESS_EVENT_EVENT_ID` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Index Process Event';

--
-- Dumping data for table `index_process_event`
--


-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE IF NOT EXISTS `job` (
  `job_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `requirement` text NOT NULL,
  `info` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT '0',
  `created_time` datetime DEFAULT NULL,
  `category_id` int(11) unsigned NOT NULL,
  `location_id` int(11) unsigned NOT NULL,
  `job_level` int(11) unsigned NOT NULL,
  `job_salary` int(11) unsigned NOT NULL DEFAULT '0',
  `job_type` int(11) unsigned NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `url_key` varchar(255) NOT NULL,
  `job_salary_to` int(11) unsigned NOT NULL DEFAULT '0',
  `job_salary_currency` varchar(11) NOT NULL,
  `function_category_id` int(11) unsigned NOT NULL,
  `job_salary_type` varchar(11) NOT NULL,
  `iconic_id` varchar(11) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `title`, `requirement`, `info`, `status`, `created_time`, `category_id`, `location_id`, `job_level`, `job_salary`, `job_type`, `update_time`, `url_key`, `job_salary_to`, `job_salary_currency`, `function_category_id`, `job_salary_type`, `iconic_id`) VALUES
(1, 'Senior SEO - Marketing Executive', '<p>Requirement</p>\r\n<p>RequirementRequirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement</p>', '<p>Job Information</p>\r\n<p>Job InformationJob Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Information Job Informationvv</p>', '0', '2014-01-13 07:49:59', 13, 1, 2, 800, 1, '2014-01-13 07:50:12', 'senior-seo-marketing-executive', 1000, 'USD', 52, 'NET', 'VS1234'),
(2, 'Web Designer', '<p>Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement Requirement v</p>', '<p>Information</p>\r\n<p>InformationInformation Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information Information</p>', '0', '2014-01-13 08:05:32', 20, 2, 2, 8000000, 1, '2014-01-13 08:05:32', 'web-designer', 10000000, 'VND', 62, 'Gross', 'VN1234');

-- --------------------------------------------------------

--
-- Table structure for table `job_category`
--

CREATE TABLE IF NOT EXISTS `job_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parentcategory_id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url_key` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `job_category`
--

INSERT INTO `job_category` (`category_id`, `parentcategory_id`, `name`, `url_key`) VALUES
(1, 6, 'Xây Dựng Dân Sự', 'xay-dung-dan-su'),
(2, 6, 'Kiến Trúc', 'kien-truc'),
(3, 6, 'Nội/Ngoại Thất', 'noi-ngoai-that'),
(4, 6, 'Phát Triển Cơ Sở Hạ Tầng', 'phat-trien-co-so-ha-tang'),
(5, 6, 'Bất Động Sản', 'bat-dong-san'),
(6, 7, 'TV/Truyền Thông/Báo Chí', 'tv-truyen-thong-bao-chi'),
(7, 7, 'Internet/Truyền Thông Mạng', 'internet-truyen-thong-mang'),
(8, 7, 'Quảng Cáo/Đối Ngoại', 'quang-cao-doi-ngoai'),
(9, 8, 'Ngân Hàng', 'ngan-hang'),
(10, 8, 'Kiểm Toán/Kế Toán/Thuế', 'kiem-toan-ke-toan-thue'),
(11, 8, 'Tài Chính / Đầu Tư', 'tai-chinh-dau-tu'),
(12, 8, 'Chứng Khoán', 'chung-khoan'),
(13, 8, 'Bảo Hiểm', 'bao-hiem'),
(14, 9, 'Hàng không/Du lịch/Khách sạn', 'hang-khong-du-lich-khach-san'),
(15, 9, 'Nhà Hàng / Bar', 'nha-hang-bar'),
(16, 10, 'Tư Vấn (Kế Toán & Thuế)', 'tu-van-ke-toan-thue'),
(17, 10, 'Tư Vấn (Pháp Luật)', 'tu-van-phap-luat'),
(18, 10, 'Tư Vấn (Nhân Sự & Nghề Nghiệp)', 'tu-van-nhan-su-nghe-nghiep'),
(19, 10, 'Tư Vấn (khác)', 'tu-van-khac'),
(20, 10, 'Giáo Dục/Đào Tạo', 'giao-duc-dao-tao'),
(21, 10, 'Y Tế/Chăm Sóc Sức Khỏe/Làm Đẹp', 'y-te-cham-soc-suc-khoe-lam-dep'),
(22, 10, 'An Ninh', 'an-ninh'),
(23, 11, 'Vận Chuyển/Giao Nhận', 'van-chuyen-giao-nhan'),
(24, 11, 'Kho Vận', 'kho-van'),
(25, 12, 'Bán lẻ/Bán sỉ', 'ban-le-ban-si'),
(26, 13, 'Thương Mại và Xuất Nhập Khẩu', 'thuong-mai-xuat-nhap-khau'),
(27, 14, 'Web/Phần Mềm', 'web-phan-mem'),
(28, 14, 'Phần Cứng/Mạng/Server/Database', 'phan-cung-mang-server-database'),
(29, 14, 'Viễn Thông', 'vien-thong'),
(30, 14, 'Dịch Vụ - Bán Hàng Trực Tuyến', 'dich-vu-ban-hang-truc-tuyen'),
(31, 14, 'AutoCAD', 'autocad'),
(32, 15, 'Dầu Khí/Gas/Khoáng Chất', 'dau-khi-gas-khoang-chat'),
(33, 15, 'Hóa Chất/Nhựa/Chất Dẻo', 'hoa-chat-nhua-chat-deo'),
(34, 15, 'Dược Phẩm/Công Nghệ Sinh Học', 'duoc-pham-cong-nghe-sinh-hoc'),
(35, 15, 'Dệt may/Da Giày/Hàng Thời Trang', 'det-may-da-giay-hang-thoi-trang'),
(36, 15, 'Ô tô', 'o-to'),
(37, 15, 'Sắt/Kim Loại/Phi Kim/Khuôn Đúc', 'sat-kim-loai-phi-kim-khuon-duc'),
(38, 15, 'Điện / Điện Tử', 'dien-dien-tu'),
(39, 15, 'Máy Móc / Thiết Bị Chính Xác', 'may-moc-thiet-bi-chinh-xac'),
(40, 15, 'Gốm Sứ', 'gom-su'),
(41, 15, 'Gỗ/Giấy/Bột Gỗ', 'go-giay-bot-go'),
(42, 15, 'Thực Phẩm và Đồ Uống', 'thuc-pham-do-uong'),
(43, 15, 'Vật Dụng Gia Đình/Chăm Sóc Sức Khỏe', 'vat-dung-gia-dinh-suc-khoe'),
(44, 15, 'In Ấn/Phát Hành', 'in-an-phat-hinh'),
(45, 15, 'Thẩm Định Tổng Hợp', 'tham-dinh-tong-hop'),
(46, 16, 'Môi Trường', 'moi-truong'),
(47, 16, 'Cài Đặt/Bảo trì - Sửa chữa', 'cai-dat-bao-tri-sua-chua'),
(48, 17, 'Nông Nghiệp', 'nong-nghiep'),
(49, 17, 'Đánh Bắt Thủy Sản', 'danh-bat-thuy-san'),
(50, 17, 'Lâm Nghiệp', 'lam-nghiep'),
(51, 17, 'Khác', 'nghanh-cong-nghiep-khac'),
(52, 18, 'Marketing', 'marketing'),
(53, 18, 'Bán Hàng/Kinh Doanh', 'ban-hang-kinh-doanh'),
(54, 18, 'Dịch Vụ Khách Hàng', 'dich-vu-khach-hang'),
(55, 18, 'Bán Hàng Kỹ Thuật', 'ban-hang-ky-thuat'),
(56, 19, 'Hành Chánh/Thư Ký', 'hanh-chanh-thu-ky'),
(57, 19, 'Kế Toán', 'ke-toan'),
(58, 19, 'Nhân Sự', 'nhan-su'),
(59, 19, 'Biên Phiên Dịch', 'bien-phien-dich'),
(60, 19, 'Pháp Lý', 'phap-ly'),
(61, 20, 'IT - Phần Cứng/Mạng', 'it-phan-cung-mang'),
(62, 20, 'IT - Web/Phần Mềm', 'it-web-phan-mem'),
(63, 21, 'Xuất/Nhập Khẩu', 'xuat-nhap-khau'),
(64, 21, 'Nghiên Cứu và Phát Triển', 'nghien-cuu-va-phat-trien'),
(65, 21, 'QA/QC/ISO', 'quan-ly-chat-luong-iso'),
(66, 21, 'An Toàn Lao Động', 'an-toan-lao-dong'),
(67, 21, 'Dây Chuyền Sản Xuất', 'day-chuyen-san-xuat'),
(68, 21, 'Vật Tư/Cung Vấn', 'vat-tu-cung-van'),
(69, 21, 'Hoạch Định/Dự Án', 'hoach-dinh-du-an'),
(70, 22, 'Điện/Điện Tử', 'dien-dien-tu'),
(71, 22, 'Cơ Khí', 'co-khi'),
(72, 22, 'Hóa Học/Hóa Sinh', 'hoa-hoc-hoa-sinh'),
(73, 22, 'Môi Trường/Xử Lý Chất Thải', 'moi-truong-xu-ly-chat-thoai'),
(74, 23, 'Khác', 'chuc-nang-khac');

-- --------------------------------------------------------

--
-- Table structure for table `job_level`
--

CREATE TABLE IF NOT EXISTS `job_level` (
  `level_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `job_level`
--

INSERT INTO `job_level` (`level_id`, `name`) VALUES
(1, 'Mới tốt nghiệp'),
(2, 'Có kinh nghiệm'),
(3, 'Trưởng nhóm / Giám sát'),
(4, 'Trưởng phòng / Quản lý'),
(5, 'Giám đốc'),
(6, 'Tổng giám đốc'),
(7, 'Chủ tịch');

-- --------------------------------------------------------

--
-- Table structure for table `job_location`
--

CREATE TABLE IF NOT EXISTS `job_location` (
  `location_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `job_location`
--

INSERT INTO `job_location` (`location_id`, `name`) VALUES
(1, 'Hồ Chí Minh'),
(2, 'Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `job_parent_category`
--

CREATE TABLE IF NOT EXISTS `job_parent_category` (
  `parentcategory_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url_key` varchar(255) NOT NULL,
  `group_category` varchar(25) NOT NULL,
  PRIMARY KEY (`parentcategory_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `job_parent_category`
--

INSERT INTO `job_parent_category` (`parentcategory_id`, `name`, `url_key`, `group_category`) VALUES
(6, 'Xây Dựng', 'xay-dung', 'industry'),
(7, 'Truyền Thông', 'truyen-thong', 'industry'),
(8, 'Dịch Vụ Tài Chính', 'dich-vu-tai-chinh', 'industry'),
(9, 'Khách Sạn và Du Lịch', 'khach-san-du-lich', 'industry'),
(10, 'Dịch Vụ', 'dich-vu', 'industry'),
(11, 'Vận Tải', 'van-tai', 'industry'),
(12, 'Bán Lẻ/Bán Sỉ', 'ban-le-ban-si', 'industry'),
(13, 'Thương Mại và Xuất Nhập Khẩu', 'thuong-mai-xuat-nhap-khau', 'industry'),
(14, 'Công Nghệ Thông Tin', 'cong-nghe-thong-tin', 'industry'),
(15, 'Sản Xuất', 'san-xuat', 'industry'),
(16, 'Kỹ Thuật', 'ky-thuat', 'industry'),
(17, 'Ngành Công Nghiệp Chủ Đạo', 'nganh-cong-nghiep-chu-dao', 'industry'),
(18, 'Giao Dịch Khách Hàng', 'giao-dich-khach-hang', 'function'),
(19, 'Bộ Phận Hỗ Trợ', 'bo-phan-ho-tro', 'function'),
(20, 'Công Nghệ', 'chuc-nang-cong-nghe', 'function'),
(21, 'Sản Xuất', 'chuc-nang-san-xuat', 'function'),
(22, 'Kỹ Thuật', 'chuc-nang-ky-thuat', 'function'),
(23, 'Khác', 'chuc-nang-khac', 'function');

-- --------------------------------------------------------

--
-- Table structure for table `job_type`
--

CREATE TABLE IF NOT EXISTS `job_type` (
  `type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `job_type`
--

INSERT INTO `job_type` (`type_id`, `name`) VALUES
(1, 'Toàn thời gian'),
(2, 'Bán thời gian'),
(3, 'Làm việc tự do');

-- --------------------------------------------------------

--
-- Table structure for table `log_customer`
--

CREATE TABLE IF NOT EXISTS `log_customer` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `customer_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `login_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login Time',
  `logout_at` timestamp NULL DEFAULT NULL COMMENT 'Logout Time',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`log_id`),
  KEY `IDX_LOG_CUSTOMER_VISITOR_ID` (`visitor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log Customers Table' AUTO_INCREMENT=9 ;

--
-- Dumping data for table `log_customer`
--

INSERT INTO `log_customer` (`log_id`, `visitor_id`, `customer_id`, `login_at`, `logout_at`, `store_id`) VALUES
(1, 93, 1, '2014-01-15 06:14:55', '2014-01-15 06:15:14', 1),
(2, 93, 1, '2014-01-15 06:16:46', '2014-01-15 07:01:05', 1),
(3, 94, 2, '2014-01-15 06:59:31', '2014-01-15 07:00:20', 1),
(4, 94, 2, '2014-01-15 07:00:52', '2014-01-15 07:01:05', 1),
(5, 94, 2, '2014-01-15 07:01:11', NULL, 1),
(6, 93, 1, '2014-01-15 07:01:23', '2014-01-15 07:01:39', 1),
(7, 93, 1, '2014-01-15 07:01:52', '2014-01-15 07:02:11', 1),
(8, 93, 1, '2014-01-15 07:02:24', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `log_quote`
--

CREATE TABLE IF NOT EXISTS `log_quote` (
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Deletion Time',
  PRIMARY KEY (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Quotes Table';

--
-- Dumping data for table `log_quote`
--


-- --------------------------------------------------------

--
-- Table structure for table `log_summary`
--

CREATE TABLE IF NOT EXISTS `log_summary` (
  `summary_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Summary ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `type_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Type ID',
  `visitor_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Visitor Count',
  `customer_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer Count',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date',
  PRIMARY KEY (`summary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Summary Table' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `log_summary`
--


-- --------------------------------------------------------

--
-- Table structure for table `log_summary_type`
--

CREATE TABLE IF NOT EXISTS `log_summary_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type ID',
  `type_code` varchar(64) DEFAULT NULL COMMENT 'Type Code',
  `period` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Period',
  `period_type` varchar(6) NOT NULL DEFAULT 'MINUTE' COMMENT 'Period Type',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log Summary Types Table' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `log_summary_type`
--

INSERT INTO `log_summary_type` (`type_id`, `type_code`, `period`, `period_type`) VALUES
(1, 'hour', 1, 'HOUR'),
(2, 'day', 1, 'DAY');

-- --------------------------------------------------------

--
-- Table structure for table `log_url`
--

CREATE TABLE IF NOT EXISTS `log_url` (
  `url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'URL ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `visit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Visit Time',
  PRIMARY KEY (`url_id`),
  KEY `IDX_LOG_URL_VISITOR_ID` (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log URL Table';

--
-- Dumping data for table `log_url`
--

INSERT INTO `log_url` (`url_id`, `visitor_id`, `visit_time`) VALUES
(1, 29, '2014-01-13 01:46:31'),
(2, 31, '2014-01-13 01:46:31'),
(3, 31, '2014-01-13 01:46:32'),
(4, 31, '2014-01-13 01:46:37'),
(5, 31, '2014-01-13 01:46:40'),
(6, 31, '2014-01-13 01:46:46'),
(7, 31, '2014-01-13 01:46:49'),
(8, 29, '2014-01-13 01:54:30'),
(9, 29, '2014-01-13 01:57:17'),
(10, 29, '2014-01-13 01:57:20'),
(11, 29, '2014-01-13 01:57:25'),
(12, 29, '2014-01-13 01:57:27'),
(13, 29, '2014-01-13 01:57:29'),
(14, 31, '2014-01-13 01:59:21'),
(15, 31, '2014-01-13 01:59:29'),
(16, 31, '2014-01-13 01:59:37'),
(17, 31, '2014-01-13 01:59:45'),
(18, 31, '2014-01-13 01:59:53'),
(19, 31, '2014-01-13 02:02:04'),
(20, 31, '2014-01-13 02:02:09'),
(21, 31, '2014-01-13 02:02:40'),
(22, 31, '2014-01-13 02:02:45'),
(23, 29, '2014-01-13 02:03:53'),
(24, 29, '2014-01-13 02:03:54'),
(25, 29, '2014-01-13 02:03:56'),
(26, 29, '2014-01-13 02:03:57'),
(27, 29, '2014-01-13 02:03:59'),
(28, 29, '2014-01-13 02:04:03'),
(29, 29, '2014-01-13 02:04:04'),
(30, 29, '2014-01-13 02:04:06'),
(31, 29, '2014-01-13 02:04:32'),
(32, 29, '2014-01-13 02:04:33'),
(33, 29, '2014-01-13 02:04:34'),
(34, 29, '2014-01-13 02:04:35'),
(35, 29, '2014-01-13 02:04:36'),
(36, 29, '2014-01-13 02:04:38'),
(37, 29, '2014-01-13 02:06:18'),
(38, 29, '2014-01-13 02:06:26'),
(39, 29, '2014-01-13 02:06:28'),
(40, 29, '2014-01-13 02:06:29'),
(41, 29, '2014-01-13 02:06:30'),
(42, 29, '2014-01-13 02:06:31'),
(43, 29, '2014-01-13 02:07:18'),
(44, 29, '2014-01-13 02:07:21'),
(45, 29, '2014-01-13 02:07:22'),
(46, 1, '2014-01-13 02:26:23'),
(47, 31, '2014-01-13 02:28:51'),
(48, 31, '2014-01-13 02:31:23'),
(49, 31, '2014-01-13 02:31:26'),
(50, 31, '2014-01-13 02:31:28'),
(51, 31, '2014-01-13 02:34:56'),
(52, 31, '2014-01-13 02:35:45'),
(53, 31, '2014-01-13 02:35:47'),
(54, 31, '2014-01-13 02:36:49'),
(55, 31, '2014-01-13 02:37:13'),
(56, 31, '2014-01-13 02:37:16'),
(57, 31, '2014-01-13 02:40:39'),
(58, 31, '2014-01-13 02:40:40'),
(59, 31, '2014-01-13 02:40:41'),
(60, 31, '2014-01-13 02:40:45'),
(61, 31, '2014-01-13 02:40:47'),
(62, 31, '2014-01-13 02:40:50'),
(63, 1, '2014-01-13 02:42:10'),
(64, 31, '2014-01-13 02:51:19'),
(65, 31, '2014-01-13 02:51:22'),
(66, 1, '2014-01-13 03:03:06'),
(67, 1, '2014-01-13 03:03:39'),
(68, 1, '2014-01-13 03:03:41'),
(69, 1, '2014-01-13 03:03:46'),
(70, 1, '2014-01-13 03:03:49'),
(71, 1, '2014-01-13 03:03:54'),
(72, 1, '2014-01-13 03:04:02'),
(73, 1, '2014-01-13 03:09:55'),
(74, 31, '2014-01-13 03:26:14'),
(75, 31, '2014-01-13 03:28:45'),
(76, 31, '2014-01-13 03:32:58'),
(77, 31, '2014-01-13 03:33:11'),
(78, 31, '2014-01-13 03:33:15'),
(79, 31, '2014-01-13 03:33:18'),
(80, 31, '2014-01-13 03:34:15'),
(81, 31, '2014-01-13 03:34:16'),
(82, 31, '2014-01-13 03:34:18'),
(83, 31, '2014-01-13 03:34:19'),
(84, 31, '2014-01-13 03:34:20'),
(85, 31, '2014-01-13 03:34:21'),
(86, 31, '2014-01-13 03:34:22'),
(87, 31, '2014-01-13 03:34:24'),
(88, 31, '2014-01-13 03:34:27'),
(89, 31, '2014-01-13 03:34:28'),
(90, 31, '2014-01-13 03:34:31'),
(91, 31, '2014-01-13 03:34:32'),
(92, 31, '2014-01-13 03:34:33'),
(93, 31, '2014-01-13 03:34:35'),
(94, 31, '2014-01-13 03:34:37'),
(95, 31, '2014-01-13 03:34:38'),
(96, 31, '2014-01-13 03:40:31'),
(97, 31, '2014-01-13 03:40:32'),
(98, 2, '2014-01-13 03:40:53'),
(99, 3, '2014-01-13 03:45:24'),
(100, 4, '2014-01-13 03:45:25'),
(101, 5, '2014-01-13 03:45:27'),
(102, 6, '2014-01-13 04:12:33'),
(103, 7, '2014-01-13 04:23:35'),
(104, 8, '2014-01-13 04:57:13'),
(105, 9, '2014-01-13 05:53:41'),
(106, 10, '2014-01-13 06:35:25'),
(107, 9, '2014-01-13 06:37:06'),
(108, 9, '2014-01-13 06:37:26'),
(109, 11, '2014-01-13 07:50:16'),
(110, 11, '2014-01-13 07:50:20'),
(111, 11, '2014-01-13 07:50:46'),
(112, 11, '2014-01-13 07:50:53'),
(113, 11, '2014-01-13 07:50:56'),
(114, 11, '2014-01-13 08:05:37'),
(115, 11, '2014-01-13 08:26:41'),
(116, 11, '2014-01-13 08:39:23'),
(117, 12, '2014-01-13 08:46:17'),
(118, 12, '2014-01-13 08:46:32'),
(119, 12, '2014-01-13 08:46:38'),
(120, 12, '2014-01-13 08:46:45'),
(121, 12, '2014-01-13 08:46:51'),
(122, 12, '2014-01-13 08:47:07'),
(123, 12, '2014-01-13 08:47:09'),
(124, 12, '2014-01-13 08:47:34'),
(125, 12, '2014-01-13 08:47:36'),
(126, 12, '2014-01-13 08:47:43'),
(127, 12, '2014-01-13 08:47:47'),
(128, 11, '2014-01-13 09:00:59'),
(129, 12, '2014-01-13 09:01:01'),
(130, 11, '2014-01-13 09:01:01'),
(131, 11, '2014-01-13 09:01:04'),
(132, 11, '2014-01-13 09:01:06'),
(133, 11, '2014-01-13 09:01:08'),
(134, 11, '2014-01-13 09:01:17'),
(135, 11, '2014-01-13 09:01:19'),
(136, 11, '2014-01-13 09:01:20'),
(137, 11, '2014-01-13 09:01:31'),
(138, 13, '2014-01-13 10:04:36'),
(139, 14, '2014-01-13 10:07:43'),
(140, 14, '2014-01-13 10:07:55'),
(141, 14, '2014-01-13 10:07:55'),
(142, 14, '2014-01-13 10:07:58'),
(143, 14, '2014-01-13 10:09:08'),
(144, 14, '2014-01-13 10:09:11'),
(145, 14, '2014-01-13 10:14:21'),
(146, 14, '2014-01-13 10:20:36'),
(147, 14, '2014-01-13 10:27:42'),
(148, 14, '2014-01-13 10:27:47'),
(149, 14, '2014-01-13 10:27:49'),
(150, 14, '2014-01-13 10:32:44'),
(151, 14, '2014-01-13 10:34:10'),
(152, 14, '2014-01-13 10:34:13'),
(153, 14, '2014-01-13 10:35:18'),
(154, 15, '2014-01-13 14:12:46'),
(155, 16, '2014-01-13 14:43:15'),
(156, 17, '2014-01-13 14:43:18'),
(157, 18, '2014-01-13 14:43:20'),
(158, 19, '2014-01-13 18:17:59'),
(159, 20, '2014-01-13 18:18:00'),
(160, 21, '2014-01-14 01:50:23'),
(161, 22, '2014-01-14 01:50:25'),
(162, 23, '2014-01-14 01:50:25'),
(163, 24, '2014-01-14 01:51:51'),
(164, 25, '2014-01-14 01:53:58'),
(165, 26, '2014-01-14 01:53:58'),
(166, 27, '2014-01-14 01:53:59'),
(167, 28, '2014-01-14 01:53:59'),
(168, 30, '2014-01-14 01:55:57'),
(169, 24, '2014-01-14 01:57:10'),
(170, 31, '2014-01-14 01:57:27'),
(171, 32, '2014-01-14 01:57:32'),
(172, 30, '2014-01-14 01:58:37'),
(173, 24, '2014-01-14 01:59:07'),
(174, 24, '2014-01-14 01:59:13'),
(175, 24, '2014-01-14 01:59:15'),
(176, 31, '2014-01-14 02:51:57'),
(177, 33, '2014-01-14 02:52:00'),
(178, 34, '2014-01-14 03:46:30'),
(179, 34, '2014-01-14 03:46:35'),
(180, 34, '2014-01-14 03:50:00'),
(181, 34, '2014-01-14 04:03:54'),
(182, 34, '2014-01-14 04:07:12'),
(183, 34, '2014-01-14 04:07:30'),
(184, 34, '2014-01-14 04:07:33'),
(185, 34, '2014-01-14 04:07:38'),
(186, 34, '2014-01-14 04:07:43'),
(187, 34, '2014-01-14 04:07:52'),
(188, 35, '2014-01-14 06:03:57'),
(189, 35, '2014-01-14 06:07:04'),
(190, 35, '2014-01-14 06:07:11'),
(191, 35, '2014-01-14 06:07:14'),
(192, 35, '2014-01-14 06:07:16'),
(193, 35, '2014-01-14 06:07:28'),
(194, 35, '2014-01-14 06:07:33'),
(195, 35, '2014-01-14 06:07:47'),
(196, 35, '2014-01-14 06:07:52'),
(197, 36, '2014-01-14 06:23:40'),
(198, 35, '2014-01-14 06:23:42'),
(199, 35, '2014-01-14 06:23:49'),
(200, 35, '2014-01-14 06:23:56'),
(201, 35, '2014-01-14 06:23:57'),
(202, 35, '2014-01-14 06:23:58'),
(203, 35, '2014-01-14 06:23:59'),
(204, 35, '2014-01-14 06:24:00'),
(205, 35, '2014-01-14 06:24:01'),
(206, 35, '2014-01-14 06:24:02'),
(207, 35, '2014-01-14 06:24:02'),
(208, 35, '2014-01-14 06:24:03'),
(209, 35, '2014-01-14 06:24:04'),
(210, 35, '2014-01-14 06:24:21'),
(211, 35, '2014-01-14 06:24:22'),
(212, 35, '2014-01-14 06:24:23'),
(213, 35, '2014-01-14 06:24:38'),
(214, 35, '2014-01-14 06:24:44'),
(215, 35, '2014-01-14 06:24:46'),
(216, 35, '2014-01-14 06:24:47'),
(217, 35, '2014-01-14 06:24:48'),
(218, 35, '2014-01-14 06:24:56'),
(219, 35, '2014-01-14 06:38:57'),
(220, 36, '2014-01-14 06:45:57'),
(221, 36, '2014-01-14 06:46:01'),
(222, 36, '2014-01-14 06:46:04'),
(223, 36, '2014-01-14 06:46:22'),
(224, 36, '2014-01-14 06:46:24'),
(225, 36, '2014-01-14 06:46:27'),
(226, 35, '2014-01-14 06:47:05'),
(227, 35, '2014-01-14 06:47:14'),
(228, 35, '2014-01-14 06:47:18'),
(229, 35, '2014-01-14 06:47:21'),
(230, 35, '2014-01-14 06:47:25'),
(231, 35, '2014-01-14 06:47:41'),
(232, 35, '2014-01-14 06:47:47'),
(233, 35, '2014-01-14 06:47:52'),
(234, 35, '2014-01-14 06:48:00'),
(235, 35, '2014-01-14 06:48:07'),
(236, 35, '2014-01-14 06:48:19'),
(237, 36, '2014-01-14 07:04:16'),
(238, 36, '2014-01-14 07:04:41'),
(239, 36, '2014-01-14 07:04:42'),
(240, 36, '2014-01-14 07:04:51'),
(241, 36, '2014-01-14 07:04:53'),
(242, 36, '2014-01-14 07:04:56'),
(243, 36, '2014-01-14 07:12:06'),
(244, 36, '2014-01-14 07:12:40'),
(245, 36, '2014-01-14 07:13:24'),
(246, 36, '2014-01-14 07:13:27'),
(247, 36, '2014-01-14 07:13:30'),
(248, 36, '2014-01-14 07:13:38'),
(249, 36, '2014-01-14 07:14:08'),
(250, 36, '2014-01-14 07:14:11'),
(251, 36, '2014-01-14 08:05:48'),
(252, 37, '2014-01-14 10:31:43'),
(253, 37, '2014-01-14 10:31:45'),
(254, 38, '2014-01-14 10:32:09'),
(255, 38, '2014-01-14 10:33:14'),
(256, 38, '2014-01-14 10:33:18'),
(257, 38, '2014-01-14 10:34:48'),
(258, 38, '2014-01-14 10:34:53'),
(259, 38, '2014-01-14 10:35:01'),
(260, 38, '2014-01-14 10:35:04'),
(261, 38, '2014-01-14 10:35:04'),
(262, 38, '2014-01-14 10:35:06'),
(263, 37, '2014-01-14 10:35:57'),
(264, 37, '2014-01-14 10:36:40'),
(265, 37, '2014-01-14 10:36:41'),
(266, 37, '2014-01-14 10:36:43'),
(267, 37, '2014-01-14 10:36:44'),
(268, 37, '2014-01-14 10:36:45'),
(269, 37, '2014-01-14 10:36:45'),
(270, 37, '2014-01-14 10:36:47'),
(271, 37, '2014-01-14 10:36:48'),
(272, 37, '2014-01-14 10:36:54'),
(273, 37, '2014-01-14 10:36:58'),
(274, 37, '2014-01-14 10:37:00'),
(275, 37, '2014-01-14 10:37:03'),
(276, 37, '2014-01-14 10:38:30'),
(277, 39, '2014-01-14 15:37:26'),
(278, 39, '2014-01-14 15:37:29'),
(279, 39, '2014-01-14 15:37:30'),
(280, 40, '2014-01-14 23:17:03'),
(281, 40, '2014-01-14 23:17:07'),
(282, 40, '2014-01-14 23:17:09'),
(283, 40, '2014-01-14 23:17:39'),
(284, 40, '2014-01-14 23:18:13'),
(285, 40, '2014-01-14 23:18:19'),
(286, 41, '2014-01-14 23:19:06'),
(287, 41, '2014-01-14 23:19:16'),
(288, 41, '2014-01-14 23:19:19'),
(289, 41, '2014-01-14 23:19:23'),
(290, 41, '2014-01-14 23:19:25'),
(291, 41, '2014-01-14 23:19:29'),
(292, 41, '2014-01-14 23:19:32'),
(293, 41, '2014-01-14 23:19:49'),
(294, 41, '2014-01-14 23:19:53'),
(295, 41, '2014-01-14 23:19:58'),
(296, 41, '2014-01-14 23:20:16'),
(297, 42, '2014-01-15 01:26:14'),
(298, 42, '2014-01-15 01:27:10'),
(299, 42, '2014-01-15 01:27:23'),
(300, 42, '2014-01-15 01:27:25'),
(301, 42, '2014-01-15 01:27:35'),
(302, 42, '2014-01-15 01:27:36'),
(303, 42, '2014-01-15 01:27:38'),
(304, 42, '2014-01-15 01:27:39'),
(305, 42, '2014-01-15 01:27:42'),
(306, 42, '2014-01-15 01:27:45'),
(307, 42, '2014-01-15 01:27:48'),
(308, 42, '2014-01-15 01:28:04'),
(309, 42, '2014-01-15 01:28:06'),
(310, 42, '2014-01-15 01:39:25'),
(311, 42, '2014-01-15 01:44:05'),
(312, 42, '2014-01-15 01:44:11'),
(313, 42, '2014-01-15 01:44:14'),
(314, 42, '2014-01-15 01:44:25'),
(315, 42, '2014-01-15 01:44:25'),
(316, 42, '2014-01-15 01:44:28'),
(317, 42, '2014-01-15 02:05:46'),
(318, 42, '2014-01-15 02:06:03'),
(319, 42, '2014-01-15 02:06:20'),
(320, 42, '2014-01-15 02:06:27'),
(321, 42, '2014-01-15 02:06:32'),
(322, 42, '2014-01-15 02:30:19'),
(323, 42, '2014-01-15 02:30:25'),
(324, 42, '2014-01-15 02:30:28'),
(325, 42, '2014-01-15 02:30:32'),
(326, 42, '2014-01-15 02:30:33'),
(327, 42, '2014-01-15 02:59:23'),
(328, 42, '2014-01-15 03:00:18'),
(329, 42, '2014-01-15 03:08:17'),
(330, 42, '2014-01-15 03:09:15'),
(331, 43, '2014-01-15 03:09:21'),
(332, 42, '2014-01-15 03:09:24'),
(333, 42, '2014-01-15 03:09:24'),
(334, 42, '2014-01-15 03:09:24'),
(335, 44, '2014-01-15 03:09:25'),
(336, 45, '2014-01-15 03:09:32'),
(337, 46, '2014-01-15 03:09:45'),
(338, 47, '2014-01-15 03:15:32'),
(339, 48, '2014-01-15 03:15:33'),
(340, 48, '2014-01-15 03:15:37'),
(341, 48, '2014-01-15 03:15:42'),
(342, 48, '2014-01-15 03:15:48'),
(343, 48, '2014-01-15 03:15:53'),
(344, 48, '2014-01-15 03:15:58'),
(345, 48, '2014-01-15 03:16:03'),
(346, 48, '2014-01-15 03:16:08'),
(347, 48, '2014-01-15 03:16:13'),
(348, 48, '2014-01-15 03:16:18'),
(349, 48, '2014-01-15 03:16:23'),
(350, 48, '2014-01-15 03:16:28'),
(351, 48, '2014-01-15 03:19:35'),
(352, 48, '2014-01-15 03:19:40'),
(353, 48, '2014-01-15 03:19:45'),
(354, 48, '2014-01-15 03:19:50'),
(355, 48, '2014-01-15 03:19:55'),
(356, 48, '2014-01-15 03:20:00'),
(357, 48, '2014-01-15 03:20:06'),
(358, 48, '2014-01-15 03:20:11'),
(359, 48, '2014-01-15 03:20:16'),
(360, 48, '2014-01-15 03:20:21'),
(361, 48, '2014-01-15 03:20:27'),
(362, 48, '2014-01-15 03:20:32'),
(363, 48, '2014-01-15 03:20:37'),
(364, 48, '2014-01-15 03:20:42'),
(365, 48, '2014-01-15 03:20:47'),
(366, 48, '2014-01-15 03:20:53'),
(367, 48, '2014-01-15 03:20:58'),
(368, 48, '2014-01-15 03:21:03'),
(369, 48, '2014-01-15 03:21:08'),
(370, 48, '2014-01-15 03:21:13'),
(371, 48, '2014-01-15 03:21:18'),
(372, 49, '2014-01-15 03:21:23'),
(373, 49, '2014-01-15 03:21:28'),
(374, 49, '2014-01-15 03:21:33'),
(375, 49, '2014-01-15 03:21:38'),
(376, 49, '2014-01-15 03:21:45'),
(377, 49, '2014-01-15 03:21:51'),
(378, 49, '2014-01-15 03:21:56'),
(379, 49, '2014-01-15 03:22:01'),
(380, 42, '2014-01-15 03:23:10'),
(381, 50, '2014-01-15 03:23:16'),
(382, 42, '2014-01-15 03:23:18'),
(383, 51, '2014-01-15 03:23:18'),
(384, 52, '2014-01-15 03:23:23'),
(385, 42, '2014-01-15 03:23:24'),
(386, 53, '2014-01-15 03:23:25'),
(387, 42, '2014-01-15 03:23:34'),
(388, 42, '2014-01-15 03:23:36'),
(389, 54, '2014-01-15 03:23:36'),
(390, 55, '2014-01-15 03:23:37'),
(391, 42, '2014-01-15 03:23:38'),
(392, 56, '2014-01-15 03:23:40'),
(393, 57, '2014-01-15 03:23:42'),
(394, 58, '2014-01-15 03:25:19'),
(395, 42, '2014-01-15 03:25:22'),
(396, 59, '2014-01-15 03:25:23'),
(397, 42, '2014-01-15 03:25:25'),
(398, 60, '2014-01-15 03:25:28'),
(399, 61, '2014-01-15 03:25:30'),
(400, 62, '2014-01-15 03:25:33'),
(401, 63, '2014-01-15 03:25:38'),
(402, 64, '2014-01-15 03:25:39'),
(403, 65, '2014-01-15 03:26:21'),
(404, 42, '2014-01-15 03:26:23'),
(405, 66, '2014-01-15 03:26:24'),
(406, 67, '2014-01-15 03:26:26'),
(407, 68, '2014-01-15 03:26:28'),
(408, 69, '2014-01-15 03:26:34'),
(409, 70, '2014-01-15 03:26:37'),
(410, 71, '2014-01-15 03:26:39'),
(411, 72, '2014-01-15 03:26:43'),
(412, 73, '2014-01-15 03:26:48'),
(413, 49, '2014-01-15 03:26:51'),
(414, 49, '2014-01-15 03:26:56'),
(415, 49, '2014-01-15 03:27:02'),
(416, 49, '2014-01-15 03:27:07'),
(417, 49, '2014-01-15 03:27:12'),
(418, 49, '2014-01-15 03:27:17'),
(419, 49, '2014-01-15 03:27:24'),
(420, 49, '2014-01-15 03:27:27'),
(421, 49, '2014-01-15 03:27:33'),
(422, 49, '2014-01-15 03:27:38'),
(423, 49, '2014-01-15 03:27:43'),
(424, 49, '2014-01-15 03:27:48'),
(425, 49, '2014-01-15 03:27:53'),
(426, 49, '2014-01-15 03:27:58'),
(427, 49, '2014-01-15 03:28:03'),
(428, 49, '2014-01-15 03:28:09'),
(429, 49, '2014-01-15 03:28:13'),
(430, 49, '2014-01-15 03:28:19'),
(431, 49, '2014-01-15 03:28:24'),
(432, 49, '2014-01-15 03:28:29'),
(433, 74, '2014-01-15 03:30:58'),
(434, 42, '2014-01-15 03:30:58'),
(435, 75, '2014-01-15 03:31:00'),
(436, 76, '2014-01-15 03:31:01'),
(437, 42, '2014-01-15 03:31:03'),
(438, 77, '2014-01-15 03:31:04'),
(439, 78, '2014-01-15 03:31:06'),
(440, 79, '2014-01-15 03:31:13'),
(441, 80, '2014-01-15 03:31:15'),
(442, 49, '2014-01-15 03:31:39'),
(443, 49, '2014-01-15 03:31:45'),
(444, 49, '2014-01-15 03:31:50'),
(445, 49, '2014-01-15 03:31:55'),
(446, 49, '2014-01-15 03:32:00'),
(447, 49, '2014-01-15 03:32:05'),
(448, 49, '2014-01-15 03:32:10'),
(449, 49, '2014-01-15 03:32:40'),
(450, 49, '2014-01-15 03:32:51'),
(451, 49, '2014-01-15 03:32:57'),
(452, 81, '2014-01-15 03:33:07'),
(453, 82, '2014-01-15 03:33:09'),
(454, 49, '2014-01-15 03:33:11'),
(455, 49, '2014-01-15 03:34:06'),
(456, 83, '2014-01-15 03:51:19'),
(457, 84, '2014-01-15 03:51:24'),
(458, 85, '2014-01-15 03:51:25'),
(459, 86, '2014-01-15 03:51:27'),
(460, 87, '2014-01-15 03:51:31'),
(461, 88, '2014-01-15 03:51:32'),
(462, 89, '2014-01-15 04:11:33'),
(463, 90, '2014-01-15 04:11:35'),
(464, 91, '2014-01-15 04:11:36'),
(465, 92, '2014-01-15 04:24:12'),
(466, 92, '2014-01-15 04:24:23'),
(467, 92, '2014-01-15 04:24:56'),
(468, 92, '2014-01-15 04:25:18'),
(469, 92, '2014-01-15 04:30:01'),
(470, 92, '2014-01-15 04:30:40'),
(471, 92, '2014-01-15 04:30:46'),
(472, 92, '2014-01-15 04:30:52'),
(473, 92, '2014-01-15 04:31:05'),
(474, 92, '2014-01-15 04:31:54'),
(475, 92, '2014-01-15 05:00:36'),
(476, 93, '2014-01-15 05:01:44'),
(477, 93, '2014-01-15 05:01:47'),
(478, 92, '2014-01-15 05:01:48'),
(479, 93, '2014-01-15 05:01:49'),
(480, 92, '2014-01-15 05:01:51'),
(481, 92, '2014-01-15 05:01:53'),
(482, 93, '2014-01-15 05:24:49'),
(483, 93, '2014-01-15 05:24:52'),
(484, 93, '2014-01-15 05:25:39'),
(485, 93, '2014-01-15 05:25:42'),
(486, 93, '2014-01-15 05:25:57'),
(487, 93, '2014-01-15 05:25:59'),
(488, 93, '2014-01-15 05:26:02'),
(489, 93, '2014-01-15 05:26:03'),
(490, 93, '2014-01-15 05:26:08'),
(491, 93, '2014-01-15 05:26:11'),
(492, 93, '2014-01-15 05:26:13'),
(493, 93, '2014-01-15 05:26:14'),
(494, 93, '2014-01-15 05:26:16'),
(495, 93, '2014-01-15 05:26:21'),
(496, 93, '2014-01-15 05:26:32'),
(497, 93, '2014-01-15 05:26:34'),
(498, 93, '2014-01-15 05:26:39'),
(499, 93, '2014-01-15 05:26:54'),
(500, 93, '2014-01-15 05:26:56'),
(501, 93, '2014-01-15 05:27:00'),
(502, 93, '2014-01-15 05:27:02'),
(503, 93, '2014-01-15 05:27:08'),
(504, 93, '2014-01-15 05:27:11'),
(505, 93, '2014-01-15 05:27:22'),
(506, 93, '2014-01-15 06:09:26'),
(507, 93, '2014-01-15 06:09:31'),
(508, 93, '2014-01-15 06:10:40'),
(509, 93, '2014-01-15 06:10:54'),
(510, 93, '2014-01-15 06:10:54'),
(511, 93, '2014-01-15 06:10:58'),
(512, 93, '2014-01-15 06:11:01'),
(513, 93, '2014-01-15 06:13:19'),
(514, 93, '2014-01-15 06:13:21'),
(515, 93, '2014-01-15 06:13:22'),
(516, 93, '2014-01-15 06:13:24'),
(517, 93, '2014-01-15 06:13:27'),
(518, 93, '2014-01-15 06:13:31'),
(519, 93, '2014-01-15 06:13:33'),
(520, 93, '2014-01-15 06:13:49'),
(521, 93, '2014-01-15 06:13:57'),
(522, 93, '2014-01-15 06:14:28'),
(523, 93, '2014-01-15 06:14:30'),
(524, 93, '2014-01-15 06:14:55'),
(525, 93, '2014-01-15 06:14:55'),
(526, 93, '2014-01-15 06:15:06'),
(527, 93, '2014-01-15 06:15:14'),
(528, 93, '2014-01-15 06:15:14'),
(529, 93, '2014-01-15 06:15:17'),
(530, 93, '2014-01-15 06:16:29'),
(531, 93, '2014-01-15 06:16:46'),
(532, 93, '2014-01-15 06:16:46'),
(533, 93, '2014-01-15 06:48:00'),
(534, 93, '2014-01-15 06:48:05'),
(535, 93, '2014-01-15 06:48:12'),
(536, 93, '2014-01-15 06:48:21'),
(537, 93, '2014-01-15 06:48:23'),
(538, 93, '2014-01-15 06:48:41'),
(539, 93, '2014-01-15 06:48:44'),
(540, 93, '2014-01-15 06:49:39'),
(541, 93, '2014-01-15 06:49:46'),
(542, 93, '2014-01-15 06:55:33'),
(543, 93, '2014-01-15 06:55:35'),
(544, 94, '2014-01-15 06:56:04'),
(545, 94, '2014-01-15 06:56:05'),
(546, 94, '2014-01-15 06:56:09'),
(547, 94, '2014-01-15 06:56:09'),
(548, 94, '2014-01-15 06:56:20'),
(549, 94, '2014-01-15 06:56:39'),
(550, 94, '2014-01-15 06:56:41'),
(551, 94, '2014-01-15 06:56:43'),
(552, 94, '2014-01-15 06:56:51'),
(553, 94, '2014-01-15 06:59:17'),
(554, 94, '2014-01-15 06:59:31'),
(555, 94, '2014-01-15 06:59:32'),
(556, 94, '2014-01-15 07:00:20'),
(557, 94, '2014-01-15 07:00:21'),
(558, 94, '2014-01-15 07:00:26'),
(559, 94, '2014-01-15 07:00:26'),
(560, 94, '2014-01-15 07:00:29'),
(561, 94, '2014-01-15 07:00:37'),
(562, 94, '2014-01-15 07:00:43'),
(563, 94, '2014-01-15 07:00:45'),
(564, 94, '2014-01-15 07:00:48'),
(565, 94, '2014-01-15 07:00:48'),
(566, 94, '2014-01-15 07:00:52'),
(567, 94, '2014-01-15 07:00:52'),
(568, 94, '2014-01-15 07:00:58'),
(569, 94, '2014-01-15 07:01:05'),
(570, 94, '2014-01-15 07:01:05'),
(571, 93, '2014-01-15 07:01:05'),
(572, 93, '2014-01-15 07:01:06'),
(573, 94, '2014-01-15 07:01:07'),
(574, 94, '2014-01-15 07:01:08'),
(575, 93, '2014-01-15 07:01:08'),
(576, 94, '2014-01-15 07:01:11'),
(577, 93, '2014-01-15 07:01:12'),
(578, 94, '2014-01-15 07:01:12'),
(579, 93, '2014-01-15 07:01:23'),
(580, 93, '2014-01-15 07:01:23'),
(581, 93, '2014-01-15 07:01:37'),
(582, 93, '2014-01-15 07:01:39'),
(583, 93, '2014-01-15 07:01:39'),
(584, 93, '2014-01-15 07:01:41'),
(585, 93, '2014-01-15 07:01:44'),
(586, 93, '2014-01-15 07:01:52'),
(587, 93, '2014-01-15 07:01:52'),
(588, 93, '2014-01-15 07:02:08'),
(589, 93, '2014-01-15 07:02:11'),
(590, 93, '2014-01-15 07:02:11'),
(591, 93, '2014-01-15 07:02:13'),
(592, 93, '2014-01-15 07:02:15'),
(593, 93, '2014-01-15 07:02:24'),
(594, 93, '2014-01-15 07:02:24'),
(595, 93, '2014-01-15 07:02:27'),
(596, 93, '2014-01-15 07:05:24'),
(597, 93, '2014-01-15 07:05:27'),
(598, 94, '2014-01-15 07:10:15'),
(599, 95, '2014-01-15 07:17:21'),
(600, 96, '2014-01-15 07:20:10'),
(601, 95, '2014-01-15 07:22:47'),
(602, 96, '2014-01-15 07:27:28'),
(603, 96, '2014-01-15 07:27:32'),
(604, 96, '2014-01-15 07:27:35'),
(605, 96, '2014-01-15 07:29:31'),
(606, 96, '2014-01-15 07:32:07'),
(607, 96, '2014-01-15 07:32:08'),
(608, 96, '2014-01-15 07:32:09'),
(609, 96, '2014-01-15 07:32:10'),
(610, 96, '2014-01-15 07:32:11'),
(611, 96, '2014-01-15 07:32:21'),
(612, 95, '2014-01-15 07:38:14'),
(613, 97, '2014-01-15 07:39:50'),
(614, 95, '2014-01-15 08:06:07'),
(615, 95, '2014-01-15 08:06:21'),
(616, 95, '2014-01-15 08:06:22'),
(617, 95, '2014-01-15 08:06:47'),
(618, 95, '2014-01-15 08:06:53'),
(619, 95, '2014-01-15 08:17:53'),
(620, 95, '2014-01-15 08:17:57'),
(621, 96, '2014-01-15 08:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `log_url_info`
--

CREATE TABLE IF NOT EXISTS `log_url_info` (
  `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'URL ID',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL',
  `referer` varchar(255) DEFAULT NULL COMMENT 'Referrer',
  PRIMARY KEY (`url_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log URL Info Table' AUTO_INCREMENT=622 ;

--
-- Dumping data for table `log_url_info`
--

INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
(1, 'http://iconic.itworks.vn/', NULL),
(2, 'http://iconic.itworks.vn/', NULL),
(3, 'http://iconic.itworks.vn/', NULL),
(4, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/'),
(5, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(6, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/blog'),
(7, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(8, 'http://iconic.itworks.vn/', NULL),
(9, 'http://iconic.itworks.vn/', NULL),
(10, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/'),
(11, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(12, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(13, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/blog'),
(14, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(15, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/'),
(16, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(17, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(18, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/blog'),
(19, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(20, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/customer/account/login/'),
(21, 'http://iconic.itworks.vn/customer/account/create/', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(22, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/customer/account/create/'),
(23, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog'),
(24, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/'),
(25, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(26, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(27, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/blog'),
(28, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(29, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/'),
(30, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(31, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/'),
(32, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/'),
(33, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(34, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/blog'),
(35, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(36, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(37, 'http://iconic.itworks.vn/', NULL),
(38, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/'),
(39, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(40, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(41, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/blog'),
(42, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(43, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(44, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/'),
(45, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(46, 'http://iconic.itworks.vn/', NULL),
(47, 'http://iconic.itworks.vn/', NULL),
(48, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/'),
(49, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/customer/account/login/'),
(50, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(51, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(52, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(53, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(54, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(55, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/customer/account/login/'),
(56, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/blog'),
(57, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/customer/account/login/'),
(58, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(59, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(60, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(61, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/blog'),
(62, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(63, 'http://iconic.itworks.vn/', NULL),
(64, 'http://iconic.itworks.vn/', NULL),
(65, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/'),
(66, 'http://iconic.itworks.vn/', NULL),
(67, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/'),
(68, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(69, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(70, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(71, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/blog'),
(72, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(73, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(74, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/'),
(75, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(76, 'http://iconic.itworks.vn/', NULL),
(77, 'http://iconic.itworks.vn/', NULL),
(78, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/'),
(79, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(80, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(81, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/'),
(82, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(83, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/blog'),
(84, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(85, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(86, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(87, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/'),
(88, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(89, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(90, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/blog'),
(91, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(92, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(93, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(94, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/blog'),
(95, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(96, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/'),
(97, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/customer/account/login/'),
(98, 'http://iconic.itworks.vn/', NULL),
(99, 'http://iconic.itworks.vn/robots.txt', NULL),
(100, 'http://iconic.itworks.vn/', NULL),
(101, 'http://iconic.itworks.vn/', NULL),
(102, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(103, 'http://iconic.itworks.vn/', NULL),
(104, 'http://iconic.itworks.vn/', NULL),
(105, 'http://iconic.itworks.vn/', NULL),
(106, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(107, 'http://iconic.itworks.vn/', NULL),
(108, 'http://iconic.itworks.vn/job/cong-nghe-thong-tin/phan-cung-mang-server-database', 'http://iconic.itworks.vn/'),
(109, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(110, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(111, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(112, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(113, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(114, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(115, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(116, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/'),
(117, 'http://iconic.itworks.vn/', NULL),
(118, 'http://iconic.itworks.vn/job/cong-nghe-thong-tin/phan-cung-mang-server-database', 'http://iconic.itworks.vn/'),
(119, 'http://iconic.itworks.vn/job/nganh-cong-nghiep-chu-dao', 'http://iconic.itworks.vn/job/cong-nghe-thong-tin/phan-cung-mang-server-database'),
(120, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/nganh-cong-nghiep-chu-dao'),
(121, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/'),
(122, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(123, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(124, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(125, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(126, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/blog'),
(127, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(128, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(129, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog'),
(130, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/'),
(131, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(132, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/blog'),
(133, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(134, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/blog'),
(135, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(136, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(137, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/'),
(138, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog'),
(139, 'http://iconic.itworks.vn/job/dich-vu/giao-duc-dao-tao/web-designer', 'http://iconic.itworks.vn/'),
(140, 'http://iconic.itworks.vn/job/apply?id=2', 'http://iconic.itworks.vn/job/dich-vu/giao-duc-dao-tao/web-designer'),
(141, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/job/dich-vu/giao-duc-dao-tao/web-designer'),
(142, 'http://iconic.itworks.vn/job/dich-vu/giao-duc-dao-tao/web-designer', 'http://iconic.itworks.vn/'),
(143, 'http://iconic.itworks.vn/job/dich-vu/giao-duc-dao-tao/web-designer', 'http://iconic.itworks.vn/'),
(144, 'http://iconic.itworks.vn/job/dich-vu/giao-duc-dao-tao/web-designer', 'http://iconic.itworks.vn/'),
(145, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/dich-vu/giao-duc-dao-tao/web-designer'),
(146, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/dich-vu/giao-duc-dao-tao/web-designer'),
(147, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(148, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/dich-vu/giao-duc-dao-tao/web-designer'),
(149, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/'),
(150, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(151, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(152, 'http://iconic.itworks.vn/job/dich-vu/giao-duc-dao-tao/web-designer', 'http://iconic.itworks.vn/'),
(153, 'http://iconic.itworks.vn/job/dich-vu/giao-duc-dao-tao/web-designer', 'http://iconic.itworks.vn/'),
(154, 'http://iconic.itworks.vn/', NULL),
(155, 'http://iconic.itworks.vn/', NULL),
(156, 'http://iconic.itworks.vn/robots.txt', NULL),
(157, 'http://iconic.itworks.vn/', NULL),
(158, 'http://iconic.itworks.vn/robots.txt', NULL),
(159, 'http://iconic.itworks.vn/', NULL),
(160, 'http://iconic.itworks.vn/robots.txt', NULL),
(161, 'http://iconic.itworks.vn/', NULL),
(162, 'http://iconic.itworks.vn/index.php/', NULL),
(163, 'http://iconic.itworks.vn/', NULL),
(164, 'http://iconic.itworks.vn/index.php/about-magento-demo-store', NULL),
(165, 'http://iconic.itworks.vn/index.php/contacts/', NULL),
(166, 'http://iconic.itworks.vn/index.php/customer-service', NULL),
(167, 'http://iconic.itworks.vn/index.php/privacy-policy-cookie-restriction-mode', NULL),
(168, 'http://iconic.itworks.vn/customer/account/login/', NULL),
(169, 'http://iconic.itworks.vn/', NULL),
(170, 'http://iconic.itworks.vn/', NULL),
(171, 'http://iconic.itworks.vn/', NULL),
(172, 'http://iconic.itworks.vn/index.php/customer/account/forgotpassword/', NULL),
(173, 'http://iconic.itworks.vn/job/dich-vu/giao-duc-dao-tao/web-designer', 'http://iconic.itworks.vn/'),
(174, 'http://iconic.itworks.vn/', NULL),
(175, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(176, 'http://iconic.itworks.vn/', NULL),
(177, 'http://iconic.itworks.vn/', NULL),
(178, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(179, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(180, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(181, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(182, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/'),
(183, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/blog'),
(184, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(185, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/'),
(186, 'http://iconic.itworks.vn/blog/viec-lam-luong-cao-de-nhu-tro-ban-tay', 'http://iconic.itworks.vn/blog'),
(187, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/'),
(188, 'http://iconic.itworks.vn/', NULL),
(189, 'http://iconic.itworks.vn/blog/viec-lam-luong-cao-de-nhu-tro-ban-tay', 'http://iconic.itworks.vn/'),
(190, 'http://iconic.itworks.vn/blog/viec-lam-luong-cao-de-nhu-tro-ban-tay', 'http://iconic.itworks.vn/blog/viec-lam-luong-cao-de-nhu-tro-ban-tay'),
(191, 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai', 'http://iconic.itworks.vn/blog/viec-lam-luong-cao-de-nhu-tro-ban-tay'),
(192, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai'),
(193, 'http://iconic.itworks.vn/job/ban-le-ban-si/ban-le-ban-si', 'http://iconic.itworks.vn/'),
(194, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/ban-le-ban-si/ban-le-ban-si'),
(195, 'http://iconic.itworks.vn/job/xay-dung/xay-dung-dan-su', 'http://iconic.itworks.vn/'),
(196, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/xay-dung/xay-dung-dan-su'),
(197, 'http://iconic.itworks.vn/', NULL),
(198, 'http://iconic.itworks.vn/', NULL),
(199, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(200, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(201, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/'),
(202, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(203, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(204, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/'),
(205, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/blog'),
(206, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(207, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/blog'),
(208, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(209, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(210, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(211, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/blog'),
(212, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(213, 'http://iconic.itworks.vn/blog/viec-lam-luong-cao-de-nhu-tro-ban-tay', 'http://iconic.itworks.vn/blog'),
(214, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/blog/viec-lam-luong-cao-de-nhu-tro-ban-tay'),
(215, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(216, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/'),
(217, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(218, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/'),
(219, 'http://iconic.itworks.vn/', NULL),
(220, 'http://iconic.itworks.vn/job/dich-vu/giao-duc-dao-tao/web-designer', 'http://iconic.itworks.vn/'),
(221, 'http://iconic.itworks.vn/', NULL),
(222, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(223, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(224, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/'),
(225, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(226, 'http://iconic.itworks.vn/job/ban-le-ban-si/ban-le-ban-si', 'http://iconic.itworks.vn/'),
(227, 'http://iconic.itworks.vn/job/ban-le-ban-si/', NULL),
(228, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/ban-le-ban-si/'),
(229, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(230, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/', NULL),
(231, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/'),
(232, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/'),
(233, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(234, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog'),
(235, 'http://iconic.itworks.vn/blog/viec-lam-luong-cao-de-nhu-tro-ban-tay', 'http://iconic.itworks.vn/'),
(236, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog/viec-lam-luong-cao-de-nhu-tro-ban-tay'),
(237, 'http://iconic.itworks.vn/', NULL),
(238, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/'),
(239, 'http://iconic.itworks.vn/blog/viec-lam-luong-cao-de-nhu-tro-ban-tay', 'http://iconic.itworks.vn/blog'),
(240, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/'),
(241, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog'),
(242, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(243, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(244, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/'),
(245, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(246, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(247, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(248, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog'),
(249, 'http://iconic.itworks.vn/job/search?function=18', 'http://iconic.itworks.vn/'),
(250, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog'),
(251, 'http://iconic.itworks.vn/tuyen-dung', NULL),
(252, 'http://iconic.itworks.vn/', NULL),
(253, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/'),
(254, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', NULL),
(255, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', NULL),
(256, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', NULL),
(257, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(258, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(259, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(260, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(261, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(262, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(263, 'http://iconic.itworks.vn/', NULL),
(264, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/'),
(265, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(266, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/'),
(267, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(268, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/blog'),
(269, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/blog'),
(270, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/blog'),
(271, 'http://iconic.itworks.vn/blog/viec-lam-luong-cao-de-nhu-tro-ban-tay', 'http://iconic.itworks.vn/blog'),
(272, 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai', 'http://iconic.itworks.vn/blog/viec-lam-luong-cao-de-nhu-tro-ban-tay'),
(273, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai'),
(274, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(275, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(276, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(277, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/'),
(278, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(279, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog'),
(280, 'http://iconic.itworks.vn/', NULL),
(281, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(282, 'http://iconic.itworks.vn/', NULL),
(283, 'http://iconic.itworks.vn/', NULL),
(284, 'http://iconic.itworks.vn/', NULL),
(285, 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(286, 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', NULL),
(287, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(288, 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(289, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(290, 'http://iconic.itworks.vn/blog/viec-lam-luong-cao-de-nhu-tro-ban-tay', 'http://iconic.itworks.vn/blog'),
(291, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog/viec-lam-luong-cao-de-nhu-tro-ban-tay'),
(292, 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(293, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(294, 'http://iconic.itworks.vn/dich-vu/giao-duc-dao-tao/web-designer', 'http://iconic.itworks.vn/'),
(295, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/dich-vu/giao-duc-dao-tao/web-designer'),
(296, 'http://iconic.itworks.vn/job/search?function=18', 'http://iconic.itworks.vn/'),
(297, 'http://iconic.itworks.vn/', NULL),
(298, 'http://iconic.itworks.vn/dich-vu/giao-duc-dao-tao/web-designer', 'http://iconic.itworks.vn/'),
(299, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/dich-vu/giao-duc-dao-tao/web-designer'),
(300, 'http://iconic.itworks.vn/blog/viec-lam-luong-cao-de-nhu-tro-ban-tay', 'http://iconic.itworks.vn/blog'),
(301, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/blog/viec-lam-luong-cao-de-nhu-tro-ban-tay'),
(302, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/blog'),
(303, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(304, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/'),
(305, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(306, 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(307, 'http://iconic.itworks.vn/job/search/', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(308, 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/job/search/'),
(309, 'http://iconic.itworks.vn/job/search/', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(310, 'http://iconic.itworks.vn/', NULL),
(311, 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(312, 'http://iconic.itworks.vn/', NULL),
(313, 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(314, 'http://iconic.itworks.vn/job/apply?id=1', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(315, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(316, 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', NULL),
(317, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(318, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/'),
(319, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(320, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(321, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/'),
(322, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(323, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/'),
(324, 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai', 'http://iconic.itworks.vn/blog'),
(325, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai'),
(326, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai'),
(327, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/'),
(328, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/blog'),
(329, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/blog'),
(330, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/blog'),
(331, 'http://iconic.itworks.vn/', NULL),
(332, 'http://iconic.itworks.vn/sitemap.xml', NULL),
(333, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', NULL),
(334, 'http://iconic.itworks.vn/robots.txt', NULL),
(335, 'http://iconic.itworks.vn/', NULL),
(336, 'http://iconic.itworks.vn/', NULL),
(337, 'http://iconic.itworks.vn/', NULL),
(338, 'http://iconic.itworks.vn/robots.txt', NULL),
(339, 'http://iconic.itworks.vn/blog', NULL),
(340, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', NULL),
(341, 'http://iconic.itworks.vn/customer/account/login/', NULL),
(342, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', NULL),
(343, 'http://iconic.itworks.vn/job/ban-le-ban-si/ban-le-ban-si', NULL),
(344, 'http://iconic.itworks.vn/job/cong-nghe-thong-tin/autocad', NULL),
(345, 'http://iconic.itworks.vn/job/cong-nghe-thong-tin/dich-vu-ban-hang-truc-tuyen', NULL),
(346, 'http://iconic.itworks.vn/job/cong-nghe-thong-tin/phan-cung-mang-server-database', NULL),
(347, 'http://iconic.itworks.vn/job/cong-nghe-thong-tin/vien-thong', NULL),
(348, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/chung-khoan', NULL),
(349, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/ngan-hang', NULL),
(350, 'http://iconic.itworks.vn/job/dich-vu/an-ninh', NULL),
(351, 'http://iconic.itworks.vn/job/dich-vu/giao-duc-dao-tao/web-designer', NULL),
(352, 'http://iconic.itworks.vn/job/dich-vu/tu-van-ke-toan-thue', NULL),
(353, 'http://iconic.itworks.vn/job/dich-vu/tu-van-khac', NULL),
(354, 'http://iconic.itworks.vn/job/nganh-cong-nghiep-chu-dao/nghanh-cong-nghiep-khac', NULL),
(355, 'http://iconic.itworks.vn/job/san-xuat/dau-khi-gas-khoang-chat', NULL),
(356, 'http://iconic.itworks.vn/job/san-xuat/duoc-pham-cong-nghe-sinh-hoc', NULL),
(357, 'http://iconic.itworks.vn/job/san-xuat/go-giay-bot-go', NULL),
(358, 'http://iconic.itworks.vn/job/san-xuat/gom-su', NULL),
(359, 'http://iconic.itworks.vn/job/san-xuat/hoa-chat-nhua-chat-deo', NULL),
(360, 'http://iconic.itworks.vn/job/san-xuat/may-moc-thiet-bi-chinh-xac', NULL),
(361, 'http://iconic.itworks.vn/job/san-xuat/o-to', NULL),
(362, 'http://iconic.itworks.vn/job/san-xuat/sat-kim-loai-phi-kim-khuon-duc', NULL),
(363, 'http://iconic.itworks.vn/job/san-xuat/tham-dinh-tong-hop', NULL),
(364, 'http://iconic.itworks.vn/job/san-xuat/thuc-pham-do-uong', NULL),
(365, 'http://iconic.itworks.vn/job/search?function=18', NULL),
(366, 'http://iconic.itworks.vn/job/search?function=20', NULL),
(367, 'http://iconic.itworks.vn/job/search?function=22', NULL),
(368, 'http://iconic.itworks.vn/job/search?level=1', NULL),
(369, 'http://iconic.itworks.vn/job/search?level=2', NULL),
(370, 'http://iconic.itworks.vn/job/search?level=3', NULL),
(371, 'http://iconic.itworks.vn/job/thuong-mai-xuat-nhap-khau/thuong-mai-xuat-nhap-khau', NULL),
(372, 'http://iconic.itworks.vn/job/truyen-thong/quang-cao-doi-ngoai', NULL),
(373, 'http://iconic.itworks.vn/job/truyen-thong/tv-truyen-thong-bao-chi', NULL),
(374, 'http://iconic.itworks.vn/job/van-tai/kho-van', NULL),
(375, 'http://iconic.itworks.vn/job/van-tai/van-chuyen-giao-nhan', NULL),
(376, 'http://iconic.itworks.vn/job/xay-dung/kien-truc', NULL),
(377, 'http://iconic.itworks.vn/job/xay-dung/noi-ngoai-that', NULL),
(378, 'http://iconic.itworks.vn/job/xay-dung/phat-trien-co-so-ha-tang', NULL),
(379, 'http://iconic.itworks.vn/nguoi-tim-viec', NULL),
(380, 'http://iconic.itworks.vn/tuyen-dung', NULL),
(381, 'http://iconic.itworks.vn/', NULL),
(382, 'http://iconic.itworks.vn/tuyen-dung', NULL),
(383, 'http://iconic.itworks.vn/', NULL),
(384, 'http://iconic.itworks.vn/', NULL),
(385, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/tuyen-dung'),
(386, 'http://iconic.itworks.vn/', NULL),
(387, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/blog'),
(388, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(389, 'http://iconic.itworks.vn/', NULL),
(390, 'http://iconic.itworks.vn/', NULL),
(391, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(392, 'http://iconic.itworks.vn/', NULL),
(393, 'http://iconic.itworks.vn/', NULL),
(394, 'http://iconic.itworks.vn/', NULL),
(395, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/'),
(396, 'http://iconic.itworks.vn/', NULL),
(397, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(398, 'http://iconic.itworks.vn/', NULL),
(399, 'http://iconic.itworks.vn/', NULL),
(400, 'http://iconic.itworks.vn/', NULL),
(401, 'http://iconic.itworks.vn/', NULL),
(402, 'http://iconic.itworks.vn/', NULL),
(403, 'http://iconic.itworks.vn/', NULL),
(404, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(405, 'http://iconic.itworks.vn/', NULL),
(406, 'http://iconic.itworks.vn/', NULL),
(407, 'http://iconic.itworks.vn/', NULL),
(408, 'http://iconic.itworks.vn/', NULL),
(409, 'http://iconic.itworks.vn/', NULL),
(410, 'http://iconic.itworks.vn/', NULL),
(411, 'http://iconic.itworks.vn/', NULL),
(412, 'http://iconic.itworks.vn/', NULL),
(413, 'http://iconic.itworks.vn/customer/account/create/', NULL),
(414, 'http://iconic.itworks.vn/job/cong-nghe-thong-tin/web-phan-mem', NULL),
(415, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem', NULL),
(416, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', NULL),
(417, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/kiem-toan-ke-toan-thue', NULL),
(418, 'http://iconic.itworks.vn/job/dich-vu-tai-chinh/tai-chinh-dau-tu', NULL),
(419, 'http://iconic.itworks.vn/job/dich-vu/giao-duc-dao-tao', NULL),
(420, 'http://iconic.itworks.vn/job/dich-vu/tu-van-nhan-su-nghe-nghiep', NULL),
(421, 'http://iconic.itworks.vn/job/dich-vu/tu-van-phap-luat', NULL),
(422, 'http://iconic.itworks.vn/job/dich-vu/y-te-cham-soc-suc-khoe-lam-dep', NULL),
(423, 'http://iconic.itworks.vn/job/khach-san-du-lich/hang-khong-du-lich-khach-san', NULL),
(424, 'http://iconic.itworks.vn/job/khach-san-du-lich/nha-hang-bar', NULL),
(425, 'http://iconic.itworks.vn/job/ky-thuat/cai-dat-bao-tri-sua-chua', NULL),
(426, 'http://iconic.itworks.vn/job/ky-thuat/moi-truong', NULL),
(427, 'http://iconic.itworks.vn/job/nganh-cong-nghiep-chu-dao/danh-bat-thuy-san', NULL),
(428, 'http://iconic.itworks.vn/job/nganh-cong-nghiep-chu-dao/lam-nghiep', NULL),
(429, 'http://iconic.itworks.vn/job/nganh-cong-nghiep-chu-dao/nong-nghiep', NULL),
(430, 'http://iconic.itworks.vn/job/san-xuat/det-may-da-giay-hang-thoi-trang', NULL),
(431, 'http://iconic.itworks.vn/job/san-xuat/dien-dien-tu', NULL),
(432, 'http://iconic.itworks.vn/job/san-xuat/in-an-phat-hinh', NULL),
(433, 'http://iconic.itworks.vn/', NULL),
(434, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(435, 'http://iconic.itworks.vn/', NULL),
(436, 'http://iconic.itworks.vn/', NULL),
(437, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(438, 'http://iconic.itworks.vn/', NULL),
(439, 'http://iconic.itworks.vn/', NULL),
(440, 'http://iconic.itworks.vn/', NULL),
(441, 'http://iconic.itworks.vn/', NULL),
(442, 'http://iconic.itworks.vn/job/san-xuat/vat-dung-gia-dinh-suc-khoe', NULL),
(443, 'http://iconic.itworks.vn/job/search?function=19', NULL),
(444, 'http://iconic.itworks.vn/job/search?function=21', NULL),
(445, 'http://iconic.itworks.vn/job/search?function=23', NULL),
(446, 'http://iconic.itworks.vn/job/search?level=4', NULL),
(447, 'http://iconic.itworks.vn/job/search?level=5', NULL),
(448, 'http://iconic.itworks.vn/job/search?level=6', NULL),
(449, 'http://iconic.itworks.vn/job/search?level=7', NULL),
(450, 'http://iconic.itworks.vn/job/truyen-thong/internet-truyen-thong-mang', NULL),
(451, 'http://iconic.itworks.vn/job/xay-dung/bat-dong-san', NULL),
(452, 'http://iconic.itworks.vn/', NULL),
(453, 'http://iconic.itworks.vn/', NULL),
(454, 'http://iconic.itworks.vn/job/xay-dung/xay-dung-dan-su', NULL),
(455, 'http://iconic.itworks.vn/nha-tuyen-dung', NULL),
(456, 'http://iconic.itworks.vn/', NULL),
(457, 'http://iconic.itworks.vn/', NULL),
(458, 'http://iconic.itworks.vn/', NULL),
(459, 'http://iconic.itworks.vn/', NULL),
(460, 'http://iconic.itworks.vn/', NULL),
(461, 'http://iconic.itworks.vn/', NULL),
(462, 'http://iconic.itworks.vn/', NULL),
(463, 'http://iconic.itworks.vn/', NULL),
(464, 'http://iconic.itworks.vn/', NULL),
(465, 'http://iconic.itworks.vn/', NULL),
(466, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/'),
(467, 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai', 'http://iconic.itworks.vn/blog'),
(468, 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai', 'http://iconic.itworks.vn/blog'),
(469, 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai', 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai'),
(470, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai'),
(471, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(472, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(473, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog'),
(474, 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(475, 'http://iconic.itworks.vn/', NULL),
(476, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/'),
(477, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/'),
(478, 'http://iconic.itworks.vn/', NULL),
(479, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(480, 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai', 'http://iconic.itworks.vn/'),
(481, 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai', 'http://iconic.itworks.vn/'),
(482, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(483, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/'),
(484, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(485, 'http://iconic.itworks.vn/dich-vu/giao-duc-dao-tao/web-designer', 'http://iconic.itworks.vn/'),
(486, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/dich-vu/giao-duc-dao-tao/web-designer'),
(487, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(488, 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(489, 'http://iconic.itworks.vn/job/search/', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(490, 'http://iconic.itworks.vn/job/xay-dung', 'http://iconic.itworks.vn/job/search/'),
(491, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/xay-dung'),
(492, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/'),
(493, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(494, 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(495, 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(496, 'http://iconic.itworks.vn/job/nganh-cong-nghiep-chu-dao', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem'),
(497, 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(498, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem'),
(499, 'http://iconic.itworks.vn/xay-dung/xay-dung-dan-su', 'http://iconic.itworks.vn/'),
(500, 'http://iconic.itworks.vn/job/search/', 'http://iconic.itworks.vn/xay-dung/xay-dung-dan-su'),
(501, 'http://iconic.itworks.vn/dich-vu/giao-duc-dao-tao/web-designer', 'http://iconic.itworks.vn/job/search/'),
(502, 'http://iconic.itworks.vn/job/search/', 'http://iconic.itworks.vn/dich-vu/giao-duc-dao-tao/web-designer'),
(503, 'http://iconic.itworks.vn/job/xay-dung', 'http://iconic.itworks.vn/job/search/'),
(504, 'http://iconic.itworks.vn/xay-dung', NULL),
(505, 'http://iconic.itworks.vn/job/search/', 'http://iconic.itworks.vn/xay-dung'),
(506, 'http://iconic.itworks.vn/job/search/', 'http://iconic.itworks.vn/xay-dung'),
(507, 'http://iconic.itworks.vn/job/search/', 'http://iconic.itworks.vn/xay-dung'),
(508, 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/job/search/'),
(509, 'http://iconic.itworks.vn/job/apply?id=1', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(510, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(511, 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', NULL),
(512, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(513, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/'),
(514, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/'),
(515, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(516, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/'),
(517, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(518, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(519, 'http://iconic.itworks.vn/dich-vu/giao-duc-dao-tao/web-designer', 'http://iconic.itworks.vn/'),
(520, 'http://iconic.itworks.vn/job/search/', 'http://iconic.itworks.vn/dich-vu/giao-duc-dao-tao/web-designer'),
(521, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/search/'),
(522, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/'),
(523, 'http://iconic.itworks.vn/customer/account/create/', 'http://iconic.itworks.vn/'),
(524, 'http://iconic.itworks.vn/customer/account/createpost/', 'http://iconic.itworks.vn/customer/account/create/'),
(525, 'http://iconic.itworks.vn/job/apply?id=1', 'http://iconic.itworks.vn/customer/account/create/'),
(526, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/apply?id=1'),
(527, 'http://iconic.itworks.vn/customer/account/logout/', 'http://iconic.itworks.vn/'),
(528, 'http://iconic.itworks.vn/customer/account/logoutSuccess/', 'http://iconic.itworks.vn/'),
(529, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/customer/account/logoutSuccess/'),
(530, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/'),
(531, 'http://iconic.itworks.vn/customer/account/loginPost/', 'http://iconic.itworks.vn/customer/account/login/'),
(532, 'http://iconic.itworks.vn/job/apply?id=1', 'http://iconic.itworks.vn/customer/account/login/'),
(533, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/apply?id=1'),
(534, 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(535, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(536, 'http://iconic.itworks.vn/giao-dich-khach-hang/', 'http://iconic.itworks.vn/'),
(537, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(538, 'http://iconic.itworks.vn/job/search?level=1', 'http://iconic.itworks.vn/'),
(539, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(540, 'http://iconic.itworks.vn/bo-phan-ho-tro/', 'http://iconic.itworks.vn/'),
(541, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(542, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/'),
(543, 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai', 'http://iconic.itworks.vn/blog'),
(544, 'http://iconic.itworks.vn/', NULL),
(545, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/'),
(546, 'http://iconic.itworks.vn/customer/account/loginPost/', 'http://iconic.itworks.vn/customer/account/login/'),
(547, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/customer/account/login/'),
(548, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/customer/account/login/'),
(549, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/'),
(550, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/customer/account/login/'),
(551, 'http://iconic.itworks.vn/customer/account/create/', 'http://iconic.itworks.vn/'),
(552, 'http://iconic.itworks.vn/customer/account/create/', 'http://iconic.itworks.vn/'),
(553, 'http://iconic.itworks.vn/customer/account/create/', 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai'),
(554, 'http://iconic.itworks.vn/customer/account/createpost/', 'http://iconic.itworks.vn/customer/account/create/'),
(555, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/customer/account/create/'),
(556, 'http://iconic.itworks.vn/customer/account/logout/', 'http://iconic.itworks.vn/'),
(557, 'http://iconic.itworks.vn/customer/account/logoutSuccess/', 'http://iconic.itworks.vn/'),
(558, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/customer/account/logoutSuccess/'),
(559, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/customer/account/logoutSuccess/'),
(560, 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(561, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(562, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/customer/account/login/'),
(563, 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive', 'http://iconic.itworks.vn/'),
(564, 'http://iconic.itworks.vn/job/apply?id=1', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(565, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/dich-vu-tai-chinh/bao-hiem/senior-seo-marketing-executive'),
(566, 'http://iconic.itworks.vn/customer/account/loginPost/', 'http://iconic.itworks.vn/customer/account/login/'),
(567, 'http://iconic.itworks.vn/job/apply?id=1', 'http://iconic.itworks.vn/customer/account/login/'),
(568, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/apply?id=1'),
(569, 'http://iconic.itworks.vn/customer/account/logout/', 'http://iconic.itworks.vn/'),
(570, 'http://iconic.itworks.vn/customer/account/logoutSuccess/', 'http://iconic.itworks.vn/'),
(571, 'http://iconic.itworks.vn/customer/account/logout/', 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai'),
(572, 'http://iconic.itworks.vn/customer/account/logoutSuccess/', 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai'),
(573, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/customer/account/logoutSuccess/'),
(574, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/'),
(575, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/customer/account/logoutSuccess/'),
(576, 'http://iconic.itworks.vn/customer/account/loginPost/', 'http://iconic.itworks.vn/customer/account/login/'),
(577, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/'),
(578, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/customer/account/login/'),
(579, 'http://iconic.itworks.vn/customer/account/loginPost/', 'http://iconic.itworks.vn/customer/account/login/'),
(580, 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai', 'http://iconic.itworks.vn/customer/account/login/'),
(581, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog/lam-sao-de-tuyen-dung-nhan-tai'),
(582, 'http://iconic.itworks.vn/customer/account/logout/', 'http://iconic.itworks.vn/'),
(583, 'http://iconic.itworks.vn/customer/account/logoutSuccess/', 'http://iconic.itworks.vn/'),
(584, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/customer/account/logoutSuccess/'),
(585, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/'),
(586, 'http://iconic.itworks.vn/customer/account/loginPost/', 'http://iconic.itworks.vn/customer/account/login/'),
(587, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/customer/account/login/'),
(588, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/'),
(589, 'http://iconic.itworks.vn/customer/account/logout/', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(590, 'http://iconic.itworks.vn/customer/account/logoutSuccess/', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(591, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/customer/account/logoutSuccess/'),
(592, 'http://iconic.itworks.vn/customer/account/login/', 'http://iconic.itworks.vn/'),
(593, 'http://iconic.itworks.vn/customer/account/loginPost/', 'http://iconic.itworks.vn/customer/account/login/'),
(594, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/customer/account/login/'),
(595, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(596, 'http://iconic.itworks.vn/dich-vu/giao-duc-dao-tao/web-designer', 'http://iconic.itworks.vn/'),
(597, 'http://iconic.itworks.vn/job/search/', 'http://iconic.itworks.vn/dich-vu/giao-duc-dao-tao/web-designer'),
(598, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/customer/account/create/'),
(599, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/job/search/'),
(600, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', NULL),
(601, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/'),
(602, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(603, 'http://iconic.itworks.vn/chuc-nang-san-xuat/', 'http://iconic.itworks.vn/');
INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
(604, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(605, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/'),
(606, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(607, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'http://iconic.itworks.vn/'),
(608, 'http://iconic.itworks.vn/nguoi-tim-viec', 'http://iconic.itworks.vn/gioi-thieu-cong-ty'),
(609, 'http://iconic.itworks.vn/nha-tuyen-dung', 'http://iconic.itworks.vn/nguoi-tim-viec'),
(610, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/nha-tuyen-dung'),
(611, 'http://iconic.itworks.vn/blog', 'http://iconic.itworks.vn/blog'),
(612, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', NULL),
(613, 'http://iconic.itworks.vn/', NULL),
(614, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', NULL),
(615, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', NULL),
(616, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', NULL),
(617, 'http://iconic.itworks.vn/', 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot'),
(618, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/'),
(619, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/'),
(620, 'http://iconic.itworks.vn/blog/lam-the-nao-de-tim-duoc-mot-viec-lam-tot', 'http://iconic.itworks.vn/'),
(621, 'http://iconic.itworks.vn/', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log_visitor`
--

CREATE TABLE IF NOT EXISTS `log_visitor` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last Visit Time',
  `last_url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Last URL ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log Visitors Table' AUTO_INCREMENT=98 ;

--
-- Dumping data for table `log_visitor`
--

INSERT INTO `log_visitor` (`visitor_id`, `session_id`, `first_visit_at`, `last_visit_at`, `last_url_id`, `store_id`) VALUES
(1, 'osmqkmio1vjfne8n46mkeh3ub4', '2014-01-13 02:26:21', '2014-01-13 03:09:55', 73, 1),
(2, 'us0aljnjse34cq8cj96mh789n4', '2014-01-13 03:40:52', '2014-01-13 03:40:53', 98, 1),
(3, 'i6qdl861l7aijann41cku2otl1', '2014-01-13 03:45:24', '2014-01-13 03:45:24', 99, 1),
(4, 'dnb5m4atjq3rb6jsq0qa2vmmr4', '2014-01-13 03:45:24', '2014-01-13 03:45:25', 100, 1),
(5, 'gqcr7hh9rjsv4c9rt93i2vosr2', '2014-01-13 03:45:27', '2014-01-13 03:45:27', 101, 1),
(6, 'u7n0vpva4lrv7r0kdr6a5427i0', '2014-01-13 04:12:33', '2014-01-13 04:12:33', 102, 1),
(7, 'ukr1ccqicnhdtd55j7jnml0a00', '2014-01-13 04:23:35', '2014-01-13 04:23:35', 103, 1),
(8, '4emvscn1o1vf4nifrkmuqjepo2', '2014-01-13 04:57:13', '2014-01-13 04:57:13', 104, 1),
(9, 'lsd0cn6mjchcrc1ddrajfhhtr5', '2014-01-13 05:53:41', '2014-01-13 06:37:26', 108, 1),
(10, 'ld6dhmb03t7e1ehmmo02ik9bl6', '2014-01-13 06:35:24', '2014-01-13 06:35:25', 106, 1),
(11, '2fu3r9vo1ivpi7hb46ukc5mvk3', '2014-01-13 07:50:16', '2014-01-13 09:01:31', 137, 1),
(12, '7sb4rovikrol47m2h811gjgfs3', '2014-01-13 08:46:17', '2014-01-13 09:01:01', 129, 1),
(13, 'rgqgob30lribjtcveg1hi97mq3', '2014-01-13 10:04:36', '2014-01-13 10:04:36', 138, 1),
(14, 'fc8pbscic4l7j2v4pc79kqeor3', '2014-01-13 10:07:43', '2014-01-13 10:35:18', 153, 1),
(15, '3p0dj6v0rh2oovvtne9cjg6pi6', '2014-01-13 14:12:46', '2014-01-13 14:12:46', 154, 1),
(16, 'kr2srcgetff349scrl0pl5v7a7', '2014-01-13 14:43:15', '2014-01-13 14:43:15', 155, 1),
(17, 'u7n8blv3n8g88ggh5ledvesml3', '2014-01-13 14:43:18', '2014-01-13 14:43:18', 156, 1),
(18, 'nvn8gjd7arpbcoubf6uag5sck2', '2014-01-13 14:43:19', '2014-01-13 14:43:20', 157, 1),
(19, 'gj8on0m238hrql4c19rd7g4ov2', '2014-01-13 18:17:59', '2014-01-13 18:17:59', 158, 1),
(20, '0v7joo4bg3h7sk57v5dlmt3al4', '2014-01-13 18:18:00', '2014-01-13 18:18:00', 159, 1),
(21, 'o803sqel09v13nln8dcnhrh7k6', '2014-01-14 01:50:22', '2014-01-14 01:50:23', 160, 1),
(22, 'm07io07hh84l4eplslv5sl21k6', '2014-01-14 01:50:25', '2014-01-14 01:50:25', 161, 1),
(23, 'k57rgarvs0d5i3qcgiu99la293', '2014-01-14 01:50:25', '2014-01-14 01:50:25', 162, 1),
(24, 'fndnf1qt3rn0hf2juk62nvms32', '2014-01-14 01:51:50', '2014-01-14 01:59:15', 175, 1),
(25, 'trne70dago40421b90b7mgek85', '2014-01-14 01:53:58', '2014-01-14 01:53:58', 164, 1),
(26, '1gfcoljtv6dsbs58pchermlum2', '2014-01-14 01:53:58', '2014-01-14 01:53:58', 165, 1),
(27, 'fq9gfheurs8uutv2phd73pitd5', '2014-01-14 01:53:59', '2014-01-14 01:53:59', 166, 1),
(28, 'adeuc4pup9nennshc7epphh2d1', '2014-01-14 01:53:59', '2014-01-14 01:53:59', 167, 1),
(29, 'k9nn0oqpquhs8u7dnut1ior3l5', '2014-01-14 01:55:56', '2014-01-14 01:55:56', 0, 1),
(30, 'k9nn0oqpquhs8u7dnut1ior3l5', '2014-01-14 01:55:56', '2014-01-14 01:58:37', 172, 1),
(31, 'nicjh7032dvi388klfn69kufj5', '2014-01-14 01:57:27', '2014-01-14 02:51:57', 176, 1),
(32, 'jof932jk8a9t5llnq0scbsp6o0', '2014-01-14 01:57:32', '2014-01-14 01:57:32', 171, 1),
(33, '6c43936lriva5pfq2kadkunt91', '2014-01-14 02:52:00', '2014-01-14 02:52:00', 177, 1),
(34, 'aen7q1sn4rpsi9b2aumodjmfp2', '2014-01-14 03:46:30', '2014-01-14 04:07:52', 187, 1),
(35, '04vgabv2g2v2n742qdhkurgte5', '2014-01-14 06:03:57', '2014-01-14 06:48:19', 236, 1),
(36, 'i37202o3556co8nf7i6m5be454', '2014-01-14 06:23:40', '2014-01-14 08:05:48', 251, 1),
(37, '2vj1ngun7adfrt8ugj84f0l7l0', '2014-01-14 10:31:43', '2014-01-14 10:38:30', 276, 1),
(38, 'j54q7g58tikqn85ooqbqhtcgp5', '2014-01-14 10:32:09', '2014-01-14 10:35:06', 262, 1),
(39, 'ktf2uoo2ck8pp4fj459mpbra46', '2014-01-14 15:37:26', '2014-01-14 15:37:30', 279, 1),
(40, '5mle0ol6l6r2hkm0l231k83ou5', '2014-01-14 23:17:03', '2014-01-14 23:18:19', 285, 1),
(41, 'bgiltb13chj4k9u7mk22p0r310', '2014-01-14 23:19:06', '2014-01-14 23:20:16', 296, 1),
(42, 'd23dhe0okpv4ck61racmfn7081', '2014-01-15 01:26:14', '2014-01-15 03:31:03', 437, 1),
(43, '5h38furfu7c9h0mt3k623m9m56', '2014-01-15 03:09:20', '2014-01-15 03:09:21', 331, 1),
(44, '7h6o14h47inve28icrem4ne4m7', '2014-01-15 03:09:25', '2014-01-15 03:09:25', 335, 1),
(45, '0jhs3p596gavmau6a7i6l5tiv2', '2014-01-15 03:09:32', '2014-01-15 03:09:32', 336, 1),
(46, 'd806p9birectjrve4ju2vf3u53', '2014-01-15 03:09:45', '2014-01-15 03:09:45', 337, 1),
(47, '35sauout10fr3q88v4k3d6rio6', '2014-01-15 03:15:32', '2014-01-15 03:15:32', 338, 1),
(48, 'lha6ip3jgqsotuejhiludt6lr0', '2014-01-15 03:15:33', '2014-01-15 03:21:18', 371, 1),
(49, '6kblugkbf9btbpohtavl7lp1n3', '2014-01-15 03:21:23', '2014-01-15 03:34:06', 455, 1),
(50, 'apd72uie0m695dpkvsrgo2hii0', '2014-01-15 03:23:15', '2014-01-15 03:23:16', 381, 1),
(51, 'rivp3196b388rns7up9ceiclh1', '2014-01-15 03:23:18', '2014-01-15 03:23:18', 383, 1),
(52, '05j0tvn1pa767s5d69b7ch9na5', '2014-01-15 03:23:23', '2014-01-15 03:23:23', 384, 1),
(53, 'n91au9vcva9ivh4qv3jlhfhe80', '2014-01-15 03:23:25', '2014-01-15 03:23:25', 386, 1),
(54, 'tppklb2br53ks92kmf9inqh735', '2014-01-15 03:23:36', '2014-01-15 03:23:36', 389, 1),
(55, 'tss80h8hoonbjmvqme21odef70', '2014-01-15 03:23:37', '2014-01-15 03:23:37', 390, 1),
(56, '4ujfgtsl6m8j4s46fr4fa4sna5', '2014-01-15 03:23:40', '2014-01-15 03:23:40', 392, 1),
(57, 'q6qj7v1agjeimhj177r6hnb9i0', '2014-01-15 03:23:41', '2014-01-15 03:23:42', 393, 1),
(58, 'gk8d2rifrm31953nnijv6hspe6', '2014-01-15 03:25:19', '2014-01-15 03:25:19', 394, 1),
(59, 'o0s70p3hbt2kt45sihs6j70f31', '2014-01-15 03:25:22', '2014-01-15 03:25:23', 396, 1),
(60, 'bpsq09qqk1a2k75nboae735bn5', '2014-01-15 03:25:28', '2014-01-15 03:25:28', 398, 1),
(61, 'r55nl6poab6qv67517l071nko0', '2014-01-15 03:25:30', '2014-01-15 03:25:30', 399, 1),
(62, 'i89ga4itp1nust9rrhg1t8gc52', '2014-01-15 03:25:32', '2014-01-15 03:25:33', 400, 1),
(63, 'di26b5j2lht7au1167diaojdm0', '2014-01-15 03:25:37', '2014-01-15 03:25:38', 401, 1),
(64, 'fkesn3n6d1ttr32k15bpshat83', '2014-01-15 03:25:38', '2014-01-15 03:25:39', 402, 1),
(65, 'oioifm55qms6352pm9ft4t1mf2', '2014-01-15 03:26:21', '2014-01-15 03:26:21', 403, 1),
(66, 'q8390a53pqni3qmhkqo04cd6i1', '2014-01-15 03:26:23', '2014-01-15 03:26:24', 405, 1),
(67, '9bif6adohf5ea9efogg4tsqep4', '2014-01-15 03:26:25', '2014-01-15 03:26:26', 406, 1),
(68, 'tra6bi7qsi2pg5l5atjv73hfh4', '2014-01-15 03:26:28', '2014-01-15 03:26:28', 407, 1),
(69, 'ng07kmmib618mdafkehel0ub80', '2014-01-15 03:26:33', '2014-01-15 03:26:34', 408, 1),
(70, 'b32gt2lp5mvvjvgh1arj4e03l3', '2014-01-15 03:26:36', '2014-01-15 03:26:37', 409, 1),
(71, 't9pdn71degeb04hsevd6sgj9d7', '2014-01-15 03:26:39', '2014-01-15 03:26:39', 410, 1),
(72, 'a67pb9tjkrgvosjpaaqldoc506', '2014-01-15 03:26:43', '2014-01-15 03:26:43', 411, 1),
(73, 'fqsc66joq0ha4br0dgbnflseu6', '2014-01-15 03:26:48', '2014-01-15 03:26:48', 412, 1),
(74, 'lltk4vamoh0shedcji57h8ggm3', '2014-01-15 03:30:58', '2014-01-15 03:30:58', 433, 1),
(75, 'jail76ra3ntp6v2oluqqkp2no3', '2014-01-15 03:31:00', '2014-01-15 03:31:00', 435, 1),
(76, 'he8kncp08iqhod1qlhc6nak2f2', '2014-01-15 03:31:01', '2014-01-15 03:31:01', 436, 1),
(77, 'sboai9tobd4igftoklv6rjdho4', '2014-01-15 03:31:04', '2014-01-15 03:31:04', 438, 1),
(78, 'bcg0oodtc051g548i9qjr5i5t5', '2014-01-15 03:31:06', '2014-01-15 03:31:06', 439, 1),
(79, 'oma6k77tmabheugp4qib2f9tl5', '2014-01-15 03:31:13', '2014-01-15 03:31:13', 440, 1),
(80, 'r945njfcjlg8jbdpjv3amdmv11', '2014-01-15 03:31:14', '2014-01-15 03:31:15', 441, 1),
(81, 'b5ke5gocpf8er96gg47rp7gnq2', '2014-01-15 03:33:07', '2014-01-15 03:33:07', 452, 1),
(82, 'k7r6gd3p0c1atdr23h8b2femm0', '2014-01-15 03:33:09', '2014-01-15 03:33:09', 453, 1),
(83, 'frh4s5512jos0etvv1e8oo8ms0', '2014-01-15 03:51:18', '2014-01-15 03:51:19', 456, 1),
(84, 'debbrbvu3cc1j0pqi80d2gq0d1', '2014-01-15 03:51:23', '2014-01-15 03:51:24', 457, 1),
(85, 'uo29m129ndl7a39bk9nkrmcva4', '2014-01-15 03:51:25', '2014-01-15 03:51:25', 458, 1),
(86, 't2rmc5td4dkr1deh8jtaug5f76', '2014-01-15 03:51:26', '2014-01-15 03:51:27', 459, 1),
(87, 'eki1o0usfhmbc3co0a9d60vjq3', '2014-01-15 03:51:31', '2014-01-15 03:51:31', 460, 1),
(88, '7jhd0md9g53lnu5ncosc3up7t7', '2014-01-15 03:51:32', '2014-01-15 03:51:32', 461, 1),
(89, 'tqd9j6boitbn4v6qav1gppn5h3', '2014-01-15 04:11:33', '2014-01-15 04:11:33', 462, 1),
(90, '7foj8siobc96e5tj38nnl6mdd1', '2014-01-15 04:11:34', '2014-01-15 04:11:35', 463, 1),
(91, 'at5rvpch5ab7cfguu8gp7eqg05', '2014-01-15 04:11:35', '2014-01-15 04:11:36', 464, 1),
(92, 'occlnpan2lmujcdv7pbumsfqf3', '2014-01-15 04:24:12', '2014-01-15 05:01:53', 481, 1),
(93, 'g1de64fnkj5o2arf6kftq7qjb1', '2014-01-15 05:01:44', '2014-01-15 07:05:27', 597, 1),
(94, '093nhttl11amq638jlkhgje642', '2014-01-15 06:56:04', '2014-01-15 07:10:15', 598, 1),
(95, 'g1de64fnkj5o2arf6kftq7qjb1', '2014-01-15 07:17:20', '2014-01-15 08:17:57', 620, 1),
(96, '093nhttl11amq638jlkhgje642', '2014-01-15 07:20:10', '2014-01-15 08:20:20', 621, 1),
(97, 'h6nqeu4ifuvv8l4ce3s5tubs41', '2014-01-15 07:39:50', '2014-01-15 07:39:50', 613, 1);

-- --------------------------------------------------------

--
-- Table structure for table `log_visitor_info`
--

CREATE TABLE IF NOT EXISTS `log_visitor_info` (
  `visitor_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `http_referer` varchar(255) DEFAULT NULL COMMENT 'HTTP Referrer',
  `http_user_agent` varchar(255) DEFAULT NULL COMMENT 'HTTP User-Agent',
  `http_accept_charset` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Charset',
  `http_accept_language` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Language',
  `server_addr` bigint(20) DEFAULT NULL COMMENT 'Server Address',
  `remote_addr` bigint(20) DEFAULT NULL COMMENT 'Remote Address',
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Info Table';

--
-- Dumping data for table `log_visitor_info`
--

INSERT INTO `log_visitor_info` (`visitor_id`, `http_referer`, `http_user_agent`, `http_accept_charset`, `http_accept_language`, `server_addr`, `remote_addr`) VALUES
(1, NULL, 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', NULL, 'en-US,en;q=0.5', 1025302874, 1906399955),
(2, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.69 Safari/537.36', NULL, 'vi,fr-FR;q=0.8,fr;q=0.6,en-US;q=0.4,en;q=0.2,ja;q=0.2', 1025302874, 1906399955),
(3, NULL, 'msnbot/2.0b (+http://search.msn.com/msnbot.htm)', NULL, NULL, 1025302874, 1094178118),
(4, NULL, 'msnbot/2.0b (+http://search.msn.com/msnbot.htm)', NULL, NULL, 1025302874, 1094178118),
(5, NULL, 'msnbot/2.0b (+http://search.msn.com/msnbot.htm)', NULL, NULL, 1025302874, 1094178118),
(6, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', NULL, 'en-US,en;q=0.5', 1025302874, 1906399955),
(7, NULL, 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', NULL, 'vi-VN,vi;q=0.8,fr-FR;q=0.6,fr;q=0.4,en-US;q=0.2,en;q=0.2', 1025302874, 1906399955),
(8, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', NULL, 'vi,en-US;q=0.8,en;q=0.6', 1025302874, 1897322483),
(9, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', NULL, 'vi-VN,vi;q=0.8,fr-FR;q=0.6,fr;q=0.4,en-US;q=0.2,en;q=0.2', 1025302874, 1958824670),
(10, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', NULL, 'en-US,en;q=0.5', 1025302874, 1906399955),
(11, 'http://iconic.itworks.vn/gioi-thieu-cong-ty', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', NULL, 'en-US,en;q=0.5', 1025302874, 1906399955),
(12, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', NULL, 'vi,en-US;q=0.8,en;q=0.6', 1025302874, 1897322483),
(13, 'http://iconic.itworks.vn/blog', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', NULL, 'en-US,en;q=0.5', 1025302874, 1906399955),
(14, 'http://iconic.itworks.vn/', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', NULL, 'vi,en-US;q=0.8,en;q=0.6', 1025302874, 1897322483),
(15, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25 (compatible; Googlebot-Mobile/2.1; +http://www.google.com/bot.html)', NULL, NULL, 1025302874, 1123634025),
(16, NULL, 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', NULL, 'en-US,en;q=0.8,vi;q=0.6', 1025302874, 1934428059),
(17, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488736755),
(18, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488736755),
(19, NULL, 'ia_archiver (+http://www.alexa.com/site/help/webmasters; crawler@alexa.com)', NULL, NULL, 1025302874, 2927748163),
(20, NULL, 'ia_archiver (+http://www.alexa.com/site/help/webmasters; crawler@alexa.com)', NULL, NULL, 1025302874, 2927748163),
(21, NULL, 'Mozilla/5.0 (compatible; coccoc/1.0; +http://help.coccoc.com/)', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us;q=0.7,en;q=0.3', 1025302874, 2065608535),
(22, NULL, 'Mozilla/5.0 (compatible; coccoc/1.0; +http://help.coccoc.com/)', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us;q=0.7,en;q=0.3', 1025302874, 2065608572),
(23, NULL, 'Mozilla/5.0 (compatible; coccoc/1.0; +http://help.coccoc.com/)', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us;q=0.7,en;q=0.3', 1025302874, 2065608572),
(24, NULL, 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', NULL, 'en-US,en;q=0.5', 1025302874, 1906399955),
(25, NULL, 'Mozilla/5.0 (compatible; coccoc/1.0; +http://help.coccoc.com/)', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us;q=0.7,en;q=0.3', 1025302874, 2065608535),
(26, NULL, 'Mozilla/5.0 (compatible; coccoc/1.0; +http://help.coccoc.com/)', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us;q=0.7,en;q=0.3', 1025302874, 2065608535),
(27, NULL, 'Mozilla/5.0 (compatible; coccoc/1.0; +http://help.coccoc.com/)', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us;q=0.7,en;q=0.3', 1025302874, 2065608535),
(28, NULL, 'Mozilla/5.0 (compatible; coccoc/1.0; +http://help.coccoc.com/)', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us;q=0.7,en;q=0.3', 1025302874, 2065608535),
(29, NULL, 'Mozilla/5.0 (compatible; coccoc/1.0; +http://help.coccoc.com/)', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us;q=0.7,en;q=0.3', 1025302874, 2065608572),
(30, NULL, 'Mozilla/5.0 (compatible; coccoc/1.0; +http://help.coccoc.com/)', 'ISO-8859-1,utf-8;q=0.7,*;q=0.7', 'en-us;q=0.7,en;q=0.3', 1025302874, 2065608572),
(31, NULL, 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.72 Safari/537.36', NULL, 'en-US,en;q=0.8,vi;q=0.6', 1025302874, 1906399955),
(32, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735960),
(33, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735975),
(34, 'http://iconic.itworks.vn/', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', NULL, 'en-US,en;q=0.5', 1025302874, 1906399955),
(35, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', NULL, 'vi,en-US;q=0.8,en;q=0.6', 1025302874, 1897322483),
(36, NULL, 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', NULL, 'en-US,en;q=0.5', 1025302874, 1906399955),
(37, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', NULL, 'vi,en-US;q=0.8,en;q=0.6', 1025302874, 1897322483),
(38, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', NULL, 'vi,en-US;q=0.8,en;q=0.6', 1025302874, 1897322483),
(39, 'http://iconic.itworks.vn/', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', NULL, 'vi,en-US;q=0.8,en;q=0.6', 1025302874, 1897322483),
(40, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', NULL, 'vi,en-US;q=0.8,en;q=0.6', 1025302874, 1897322483),
(41, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', NULL, 'vi,en-US;q=0.8,en;q=0.6', 1025302874, 1897322483),
(42, NULL, 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', NULL, 'en-US,en;q=0.5', 1025302874, 1906399955),
(43, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735960),
(44, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735961),
(45, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488736747),
(46, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735961),
(47, NULL, 'ia_archiver (+http://www.alexa.com/site/help/webmasters; crawler@alexa.com)', NULL, NULL, 1025302874, 2927748163),
(48, NULL, 'ia_archiver (+http://www.alexa.com/site/help/webmasters; crawler@alexa.com)', NULL, NULL, 1025302874, 2927748163),
(49, NULL, 'ia_archiver (+http://www.alexa.com/site/help/webmasters; crawler@alexa.com)', NULL, NULL, 1025302874, 2927748163),
(50, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735961),
(51, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735974),
(52, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735977),
(53, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488736755),
(54, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735974),
(55, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735961),
(56, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735976),
(57, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735961),
(58, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735962),
(59, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488736749),
(60, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735978),
(61, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735961),
(62, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488736749),
(63, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488736747),
(64, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735959),
(65, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735974),
(66, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735975),
(67, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735975),
(68, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735962),
(69, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735963),
(70, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735977),
(71, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735963),
(72, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735974),
(73, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488736755),
(74, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735961),
(75, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735974),
(76, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735961),
(77, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735962),
(78, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735961),
(79, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488736749),
(80, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735974),
(81, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735960),
(82, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735960),
(83, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735960),
(84, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735959),
(85, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735974),
(86, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735961),
(87, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735975),
(88, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735959),
(89, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735977),
(90, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735963),
(91, NULL, 'Mozilla/5.0 (compatible; archive.org_bot; Wayback Machine Live Record; +http://archive.org/details/archive.org_bot)', NULL, NULL, 1025302874, 3488735975),
(92, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', NULL, 'vi,en-US;q=0.8,en;q=0.6', 1025302874, 1897322483),
(93, 'http://iconic.itworks.vn/', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', NULL, 'en-US,en;q=0.5', 1025302874, 1906399955),
(94, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', NULL, 'vi,en-US;q=0.8,en;q=0.6', 1025302874, 1897322483),
(95, 'http://iconic.itworks.vn/job/search/', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', NULL, 'en-US,en;q=0.5', 1025302874, 1906399955),
(96, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', NULL, 'vi,en-US;q=0.8,en;q=0.6', 1025302874, 1897322483),
(97, NULL, 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36', NULL, 'fr-FR,fr;q=0.8,en-US;q=0.6,en;q=0.4', 1025302874, 1511899234);

-- --------------------------------------------------------

--
-- Table structure for table `log_visitor_online`
--

CREATE TABLE IF NOT EXISTS `log_visitor_online` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `visitor_type` varchar(1) NOT NULL COMMENT 'Visitor Type',
  `remote_addr` bigint(20) NOT NULL COMMENT 'Remote Address',
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NULL DEFAULT NULL COMMENT 'Last Visit Time',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `last_url` varchar(255) DEFAULT NULL COMMENT 'Last URL',
  PRIMARY KEY (`visitor_id`),
  KEY `IDX_LOG_VISITOR_ONLINE_VISITOR_TYPE` (`visitor_type`),
  KEY `IDX_LOG_VISITOR_ONLINE_FIRST_VISIT_AT_LAST_VISIT_AT` (`first_visit_at`,`last_visit_at`),
  KEY `IDX_LOG_VISITOR_ONLINE_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Online Table' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `log_visitor_online`
--


-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer`
--

CREATE TABLE IF NOT EXISTS `oauth_consumer` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(32) NOT NULL COMMENT 'Secret code',
  `callback_url` varchar(255) DEFAULT NULL COMMENT 'Callback URL',
  `rejected_callback_url` varchar(255) NOT NULL COMMENT 'Rejected callback URL',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_OAUTH_CONSUMER_KEY` (`key`),
  UNIQUE KEY `UNQ_OAUTH_CONSUMER_SECRET` (`secret`),
  KEY `IDX_OAUTH_CONSUMER_CREATED_AT` (`created_at`),
  KEY `IDX_OAUTH_CONSUMER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Consumers' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `oauth_consumer`
--


-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonce`
--

CREATE TABLE IF NOT EXISTS `oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int(10) unsigned NOT NULL COMMENT 'Nonce Timestamp',
  UNIQUE KEY `UNQ_OAUTH_NONCE_NONCE` (`nonce`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='oauth_nonce';

--
-- Dumping data for table `oauth_nonce`
--


-- --------------------------------------------------------

--
-- Table structure for table `oauth_token`
--

CREATE TABLE IF NOT EXISTS `oauth_token` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `consumer_id` int(10) unsigned NOT NULL COMMENT 'Consumer ID',
  `admin_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(32) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` varchar(255) NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_OAUTH_TOKEN_TOKEN` (`token`),
  KEY `IDX_OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`),
  KEY `FK_OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` (`admin_id`),
  KEY `FK_OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `oauth_token`
--


-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

CREATE TABLE IF NOT EXISTS `poll` (
  `poll_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Poll Id',
  `poll_title` varchar(255) DEFAULT NULL COMMENT 'Poll title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  `date_posted` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date posted',
  `date_closed` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  `active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is active',
  `closed` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is closed',
  `answers_display` smallint(6) DEFAULT NULL COMMENT 'Answers display',
  PRIMARY KEY (`poll_id`),
  KEY `IDX_POLL_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Poll' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `poll`
--

INSERT INTO `poll` (`poll_id`, `poll_title`, `votes_count`, `store_id`, `date_posted`, `date_closed`, `active`, `closed`, `answers_display`) VALUES
(1, 'What is your favorite color', 7, 0, '2014-01-13 01:36:02', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `poll_answer`
--

CREATE TABLE IF NOT EXISTS `poll_answer` (
  `answer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Answer Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `answer_title` varchar(255) DEFAULT NULL COMMENT 'Answer title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `answer_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Answers display',
  PRIMARY KEY (`answer_id`),
  KEY `IDX_POLL_ANSWER_POLL_ID` (`poll_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Poll Answers' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `poll_answer`
--

INSERT INTO `poll_answer` (`answer_id`, `poll_id`, `answer_title`, `votes_count`, `answer_order`) VALUES
(1, 1, 'Green', 4, 0),
(2, 1, 'Red', 1, 0),
(3, 1, 'Black', 0, 0),
(4, 1, 'Magenta', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `poll_store`
--

CREATE TABLE IF NOT EXISTS `poll_store` (
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`poll_id`,`store_id`),
  KEY `IDX_POLL_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Store';

--
-- Dumping data for table `poll_store`
--

INSERT INTO `poll_store` (`poll_id`, `store_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `poll_vote`
--

CREATE TABLE IF NOT EXISTS `poll_vote` (
  `vote_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `poll_answer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll answer id',
  `ip_address` bigint(20) DEFAULT NULL COMMENT 'Poll answer id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer id',
  `vote_time` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  PRIMARY KEY (`vote_id`),
  KEY `IDX_POLL_VOTE_POLL_ANSWER_ID` (`poll_answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Vote' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `poll_vote`
--


-- --------------------------------------------------------

--
-- Table structure for table `shipping_tablerate`
--

CREATE TABLE IF NOT EXISTS `shipping_tablerate` (
  `pk` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `website_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Destination Region Id',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(20) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost',
  PRIMARY KEY (`pk`),
  UNIQUE KEY `D60821CDB2AFACEE1566CFC02D0D4CAA` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shipping Tablerate' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `shipping_tablerate`
--


-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE IF NOT EXISTS `widget` (
  `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Widget Id',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters',
  PRIMARY KEY (`widget_id`),
  KEY `IDX_WIDGET_WIDGET_CODE` (`widget_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `widget`
--


-- --------------------------------------------------------

--
-- Table structure for table `widget_instance`
--

CREATE TABLE IF NOT EXISTS `widget_instance` (
  `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Instance Id',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `package_theme` varchar(255) DEFAULT NULL COMMENT 'Package Theme',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instances of Widget for Package Theme' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `widget_instance`
--


-- --------------------------------------------------------

--
-- Table structure for table `widget_instance_page`
--

CREATE TABLE IF NOT EXISTS `widget_instance_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Page Id',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Id',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Block Reference',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template',
  PRIMARY KEY (`page_id`),
  KEY `IDX_WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instance of Widget on Page' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `widget_instance_page`
--


-- --------------------------------------------------------

--
-- Table structure for table `widget_instance_page_layout`
--

CREATE TABLE IF NOT EXISTS `widget_instance_page_layout` (
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page Id',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  UNIQUE KEY `UNQ_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID_PAGE_ID` (`layout_update_id`,`page_id`),
  KEY `IDX_WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`),
  KEY `IDX_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID` (`layout_update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout updates';

--
-- Dumping data for table `widget_instance_page_layout`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_rule`
--
ALTER TABLE `admin_rule`
  ADD CONSTRAINT `FK_ADMIN_RULE_ROLE_ID_ADMIN_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `api2_acl_rule`
--
ALTER TABLE `api2_acl_rule`
  ADD CONSTRAINT `FK_API2_ACL_RULE_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `api2_acl_user`
--
ALTER TABLE `api2_acl_user`
  ADD CONSTRAINT `FK_API2_ACL_USER_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_API2_ACL_USER_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `api_rule`
--
ALTER TABLE `api_rule`
  ADD CONSTRAINT `FK_API_RULE_ROLE_ID_API_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `api_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `api_session`
--
ALTER TABLE `api_session`
  ADD CONSTRAINT `FK_API_SESSION_USER_ID_API_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cms_block_store`
--
ALTER TABLE `cms_block_store`
  ADD CONSTRAINT `FK_CMS_BLOCK_STORE_BLOCK_ID_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `cms_block` (`block_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CMS_BLOCK_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cms_page_store`
--
ALTER TABLE `cms_page_store`
  ADD CONSTRAINT `FK_CMS_PAGE_STORE_PAGE_ID_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CMS_PAGE_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_layout_link`
--
ALTER TABLE `core_layout_link`
  ADD CONSTRAINT `FK_CORE_LAYOUT_LINK_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_LYT_LNK_LYT_UPDATE_ID_CORE_LYT_UPDATE_LYT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_store`
--
ALTER TABLE `core_store`
  ADD CONSTRAINT `FK_CORE_STORE_GROUP_ID_CORE_STORE_GROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `core_store_group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_STORE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_store_group`
--
ALTER TABLE `core_store_group`
  ADD CONSTRAINT `FK_CORE_STORE_GROUP_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_translate`
--
ALTER TABLE `core_translate`
  ADD CONSTRAINT `FK_CORE_TRANSLATE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_url_rewrite`
--
ALTER TABLE `core_url_rewrite`
  ADD CONSTRAINT `FK_CORE_URL_REWRITE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_variable_value`
--
ALTER TABLE `core_variable_value`
  ADD CONSTRAINT `FK_CORE_VARIABLE_VALUE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_VARIABLE_VALUE_VARIABLE_ID_CORE_VARIABLE_VARIABLE_ID` FOREIGN KEY (`variable_id`) REFERENCES `core_variable` (`variable_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_ENTITY_PARENT_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_eav_attribute`
--
ALTER TABLE `customer_eav_attribute`
  ADD CONSTRAINT `FK_CSTR_EAV_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_eav_attribute_website`
--
ALTER TABLE `customer_eav_attribute_website`
  ADD CONSTRAINT `FK_CSTR_EAV_ATTR_WS_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_EAV_ATTR_WS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_entity`
--
ALTER TABLE `customer_entity`
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  ADD CONSTRAINT `FK_CSTR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  ADD CONSTRAINT `FK_CSTR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  ADD CONSTRAINT `FK_CSTR_ENTT_INT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_INT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_INT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  ADD CONSTRAINT `FK_CSTR_ENTT_TEXT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_TEXT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  ADD CONSTRAINT `FK_CSTR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_form_attribute`
--
ALTER TABLE `customer_form_attribute`
  ADD CONSTRAINT `FK_CSTR_FORM_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dataflow_batch`
--
ALTER TABLE `dataflow_batch`
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_PROFILE_ID_DATAFLOW_PROFILE_PROFILE_ID` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `dataflow_batch_export`
--
ALTER TABLE `dataflow_batch_export`
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_EXPORT_BATCH_ID_DATAFLOW_BATCH_BATCH_ID` FOREIGN KEY (`batch_id`) REFERENCES `dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `dataflow_batch_import`
--
ALTER TABLE `dataflow_batch_import`
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_IMPORT_BATCH_ID_DATAFLOW_BATCH_BATCH_ID` FOREIGN KEY (`batch_id`) REFERENCES `dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `dataflow_import_data`
--
ALTER TABLE `dataflow_import_data`
  ADD CONSTRAINT `FK_DATAFLOW_IMPORT_DATA_SESSION_ID_DATAFLOW_SESSION_SESSION_ID` FOREIGN KEY (`session_id`) REFERENCES `dataflow_session` (`session_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dataflow_profile_history`
--
ALTER TABLE `dataflow_profile_history`
  ADD CONSTRAINT `FK_AEA06B0C500063D3CE6EA671AE776645` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `design_change`
--
ALTER TABLE `design_change`
  ADD CONSTRAINT `FK_DESIGN_CHANGE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `directory_country_region_name`
--
ALTER TABLE `directory_country_region_name`
  ADD CONSTRAINT `FK_D7CFDEB379F775328EB6F62695E2B3E1` FOREIGN KEY (`region_id`) REFERENCES `directory_country_region` (`region_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  ADD CONSTRAINT `FK_EAV_ATTR_GROUP_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ATTR_OPT_VAL_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  ADD CONSTRAINT `FK_EAV_ATTR_SET_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity`
--
ALTER TABLE `eav_entity`
  ADD CONSTRAINT `FK_EAV_ENTITY_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  ADD CONSTRAINT `FK_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTT_ATTR_ATTR_GROUP_ID_EAV_ATTR_GROUP_ATTR_GROUP_ID` FOREIGN KEY (`attribute_group_id`) REFERENCES `eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  ADD CONSTRAINT `FK_EAV_ENTITY_DATETIME_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  ADD CONSTRAINT `FK_EAV_ENTITY_DECIMAL_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  ADD CONSTRAINT `FK_EAV_ENTITY_INT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_INT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  ADD CONSTRAINT `FK_EAV_ENTITY_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTT_STORE_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  ADD CONSTRAINT `FK_EAV_ENTITY_VARCHAR_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_form_element`
--
ALTER TABLE `eav_form_element`
  ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_FIELDSET_ID_EAV_FORM_FIELDSET_FIELDSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  ADD CONSTRAINT `FK_EAV_FORM_FIELDSET_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_form_fieldset_label`
--
ALTER TABLE `eav_form_fieldset_label`
  ADD CONSTRAINT `FK_EAV_FORM_FIELDSET_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_FSET_LBL_FSET_ID_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_form_type`
--
ALTER TABLE `eav_form_type`
  ADD CONSTRAINT `FK_EAV_FORM_TYPE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_form_type_entity`
--
ALTER TABLE `eav_form_type_entity`
  ADD CONSTRAINT `FK_EAV_FORM_TYPE_ENTITY_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_TYPE_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `index_process_event`
--
ALTER TABLE `index_process_event`
  ADD CONSTRAINT `FK_INDEX_PROCESS_EVENT_EVENT_ID_INDEX_EVENT_EVENT_ID` FOREIGN KEY (`event_id`) REFERENCES `index_event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_INDEX_PROCESS_EVENT_PROCESS_ID_INDEX_PROCESS_PROCESS_ID` FOREIGN KEY (`process_id`) REFERENCES `index_process` (`process_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `oauth_token`
--
ALTER TABLE `oauth_token`
  ADD CONSTRAINT `FK_OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_OAUTH_TOKEN_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poll`
--
ALTER TABLE `poll`
  ADD CONSTRAINT `FK_POLL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poll_answer`
--
ALTER TABLE `poll_answer`
  ADD CONSTRAINT `FK_POLL_ANSWER_POLL_ID_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poll_store`
--
ALTER TABLE `poll_store`
  ADD CONSTRAINT `FK_POLL_STORE_POLL_ID_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_POLL_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poll_vote`
--
ALTER TABLE `poll_vote`
  ADD CONSTRAINT `FK_POLL_VOTE_POLL_ANSWER_ID_POLL_ANSWER_ANSWER_ID` FOREIGN KEY (`poll_answer_id`) REFERENCES `poll_answer` (`answer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
  ADD CONSTRAINT `FK_WIDGET_INSTANCE_PAGE_INSTANCE_ID_WIDGET_INSTANCE_INSTANCE_ID` FOREIGN KEY (`instance_id`) REFERENCES `widget_instance` (`instance_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `widget_instance_page_layout`
--
ALTER TABLE `widget_instance_page_layout`
  ADD CONSTRAINT `FK_0A5D06DCEC6A6845F50E5FAAC5A1C96D` FOREIGN KEY (`layout_update_id`) REFERENCES `core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WIDGET_INSTANCE_PAGE_LYT_PAGE_ID_WIDGET_INSTANCE_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `widget_instance_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;
