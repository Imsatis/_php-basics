-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2019 at 03:07 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mailget`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_data`
--

CREATE TABLE `add_data` (
  `id` int(11) NOT NULL,
  `stat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `autoresponder`
--

CREATE TABLE `autoresponder` (
  `auto_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `from_name` varchar(255) NOT NULL,
  `from_email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `autoresponder_links_track`
--

CREATE TABLE `autoresponder_links_track` (
  `track_id` int(11) NOT NULL,
  `drip_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `link_id` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `emails_arr` longtext NOT NULL,
  `slot` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `autoresponder_open_track`
--

CREATE TABLE `autoresponder_open_track` (
  `track_id` int(11) NOT NULL,
  `drip_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `sending_id` varchar(255) NOT NULL,
  `open_email_list` longtext NOT NULL,
  `slot` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `sending_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `autoresponder_sending_email`
--

CREATE TABLE `autoresponder_sending_email` (
  `send_id` int(11) NOT NULL,
  `drip_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `email_list` longtext NOT NULL,
  `slot` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `autoresponder_unsubscribe_track`
--

CREATE TABLE `autoresponder_unsubscribe_track` (
  `un_track_id` int(11) NOT NULL,
  `drip_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `emails` longtext NOT NULL,
  `slot` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bolt_approvel_request_mail`
--

CREATE TABLE `bolt_approvel_request_mail` (
  `user_id` int(11) NOT NULL,
  `approval_mail` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bolt_paid_member`
--

CREATE TABLE `bolt_paid_member` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sent_count` int(11) NOT NULL,
  `notification_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bounce_emails`
--

CREATE TABLE `bounce_emails` (
  `list_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `list_name` varchar(255) NOT NULL,
  `emails` longtext NOT NULL,
  `count` int(11) NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bounce_emails_extra`
--

CREATE TABLE `bounce_emails_extra` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `emails` longtext NOT NULL,
  `count` int(11) NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  `slot` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `builder_email_list`
--

CREATE TABLE `builder_email_list` (
  `list_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `list_name` varchar(255) NOT NULL,
  `emails` longtext NOT NULL,
  `email_count` int(11) NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `builder_email_list`
--

INSERT INTO `builder_email_list` (`list_id`, `user_id`, `list_name`, `emails`, `email_count`, `reg_date`) VALUES
(767115, 2850, 'Default List', 's:133:\"{\"testuser@gmail.com\":{\"name\":\"Test User\",\"date\":\"2018-12-28 12:30:16\",\"email\":\"testuser@gmail.com\",\"mobile\":\"789456123\",\"ip\":\"::1\"}}\";', 1, '2018-12-28 12:21:35'),
(767116, 2851, 'Default List', 's:85:\"{\"test@gmail.com\":{\"date\":\"2019-01-02 11:32:01\",\"email\":\"test@gmail.com\",\"ip\":\"::1\"}}\";', 1, '2018-12-31 12:38:13');

-- --------------------------------------------------------

--
-- Table structure for table `builder_email_list_extra`
--

CREATE TABLE `builder_email_list_extra` (
  `id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `emails` longtext NOT NULL,
  `email_count` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `reg_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `builder_subscribe`
--

CREATE TABLE `builder_subscribe` (
  `id` int(11) NOT NULL,
  `builder_email` varchar(100) NOT NULL,
  `verify_code` varchar(100) NOT NULL,
  `status` int(5) NOT NULL,
  `link_id` int(11) NOT NULL,
  `count` int(5) NOT NULL,
  `subscribe` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `builder_users`
--

CREATE TABLE `builder_users` (
  `builder_userid` int(11) NOT NULL,
  `builder_username` varchar(255) NOT NULL,
  `builder_useremail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `enc_key` varchar(100) NOT NULL,
  `account` varchar(20) NOT NULL DEFAULT 'active',
  `ip_address` varchar(100) NOT NULL,
  `from_page` varchar(255) NOT NULL,
  `reg_date` datetime NOT NULL,
  `login_token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `builder_users`
--

INSERT INTO `builder_users` (`builder_userid`, `builder_username`, `builder_useremail`, `password`, `contact_no`, `enc_key`, `account`, `ip_address`, `from_page`, `reg_date`, `login_token`) VALUES
(2851, 'admin', 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '7894561230', '5645', 'active', '', '', '2018-12-19 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `build_template`
--

CREATE TABLE `build_template` (
  `visiter_id` int(11) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `html_id` varchar(255) NOT NULL,
  `temp_json` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('51200db8f33016b48b94269fe50468fa', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1547079935, 'a:4:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";i:2851;s:10:\"b_username\";s:5:\"admin\";s:11:\"b_useremail\";s:15:\"admin@gmail.com\";}'),
('b92cbe95a8129548fefb6c871d5fe3bf', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1547079836, 'a:4:{s:9:\"user_data\";s:0:\"\";s:6:\"userid\";i:2851;s:10:\"b_username\";s:5:\"admin\";s:11:\"b_useremail\";s:15:\"admin@gmail.com\";}');

-- --------------------------------------------------------

--
-- Table structure for table `clean_removed_emails`
--

CREATE TABLE `clean_removed_emails` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `emails` longtext NOT NULL,
  `count` int(11) NOT NULL,
  `slot_index` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `c_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `api_name` varchar(255) NOT NULL,
  `credential` text NOT NULL,
  `spam_hook` varchar(255) NOT NULL DEFAULT 'no',
  `bounce_hook` varchar(255) NOT NULL DEFAULT 'no',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `user_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `field_template` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delete_email_count`
--

CREATE TABLE `delete_email_count` (
  `del_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `total_unique_count` int(11) NOT NULL,
  `reset_date` datetime NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dkim_key`
--

CREATE TABLE `dkim_key` (
  `dkim_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `dkim_host` varchar(255) NOT NULL,
  `text_record` text NOT NULL,
  `spf_host` varchar(255) NOT NULL,
  `spf_key` varchar(255) NOT NULL DEFAULT 'v=spf1 ip4:104.131.72.186 ~all',
  `status` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `domain_info`
--

CREATE TABLE `domain_info` (
  `id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `domain_name` varchar(255) NOT NULL,
  `sub_domain` int(11) NOT NULL,
  `default_domain` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drip`
--

CREATE TABLE `drip` (
  `drip_id` int(11) NOT NULL,
  `drip_name` varchar(255) NOT NULL,
  `list_id` int(11) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `from_name` varchar(255) NOT NULL,
  `from_email` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `drip_links_track`
--

CREATE TABLE `drip_links_track` (
  `track_id` int(11) NOT NULL,
  `drip_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `link_id` varchar(255) NOT NULL,
  `emails_arr` longtext NOT NULL,
  `count` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drip_open_track`
--

CREATE TABLE `drip_open_track` (
  `track_id` int(11) NOT NULL,
  `drip_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `sending_id` varchar(255) NOT NULL,
  `open_email_list` longtext NOT NULL,
  `count` int(11) NOT NULL,
  `sending_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drip_report`
--

CREATE TABLE `drip_report` (
  `id` int(11) NOT NULL,
  `total_template` int(11) NOT NULL,
  `hour` int(11) NOT NULL,
  `start_index` int(11) NOT NULL,
  `last_index` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `sending_status` int(11) NOT NULL,
  `send_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drip_sending_email`
--

CREATE TABLE `drip_sending_email` (
  `send_id` int(11) NOT NULL,
  `drip_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email_list` longtext NOT NULL,
  `time` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drip_sending_email_extra`
--

CREATE TABLE `drip_sending_email_extra` (
  `s_id` int(11) NOT NULL,
  `send_id` int(11) NOT NULL,
  `drip_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email_list` longtext NOT NULL,
  `time` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drip_sending_setting`
--

CREATE TABLE `drip_sending_setting` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `drip_setting`
--

CREATE TABLE `drip_setting` (
  `row_no` int(11) NOT NULL,
  `drip_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `temp_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `send_date` datetime NOT NULL,
  `days` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'yes',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `drip_temp_emails_slot`
--

CREATE TABLE `drip_temp_emails_slot` (
  `id` int(11) NOT NULL,
  `send_id` int(11) NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `temp_id` int(11) NOT NULL,
  `emails` longtext NOT NULL,
  `slot_id` int(11) NOT NULL,
  `days` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `count` int(11) NOT NULL,
  `send_by` varchar(255) NOT NULL,
  `send_value` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drip_unsubscribe_track`
--

CREATE TABLE `drip_unsubscribe_track` (
  `un_track_id` int(11) NOT NULL,
  `drip_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `sender_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `emails` longtext CHARACTER SET latin1 NOT NULL,
  `count` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dyn_blocked_users`
--

CREATE TABLE `dyn_blocked_users` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `smtp_id` int(11) NOT NULL,
  `smtp_uname` varchar(255) NOT NULL,
  `smtp_pass` varchar(255) NOT NULL,
  `bounce_count` int(11) NOT NULL,
  `sent_count` int(11) NOT NULL,
  `bounce_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dyn_smtp_apikey`
--

CREATE TABLE `dyn_smtp_apikey` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dyn_api_key` varchar(255) NOT NULL,
  `max_limit_monthly` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_draft`
--

CREATE TABLE `email_draft` (
  `draft_no` int(11) NOT NULL,
  `temp_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_email` varchar(255) NOT NULL,
  `from_name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `exclude_list_arr` text NOT NULL,
  `list_arr` text NOT NULL,
  `individual_emails_arr_json` text NOT NULL,
  `send_by` varchar(255) NOT NULL,
  `smtp_value` varchar(255) NOT NULL,
  `routing_value` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_list_filter`
--

CREATE TABLE `email_list_filter` (
  `id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `filter_count` int(11) NOT NULL,
  `process_status` varchar(255) NOT NULL,
  `list_status` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_list_filter_backup`
--

CREATE TABLE `email_list_filter_backup` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `list_name` varchar(255) NOT NULL,
  `emails` longtext CHARACTER SET latin1 NOT NULL,
  `email_count` int(11) NOT NULL,
  `backup_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_list_filter_backup`
--

INSERT INTO `email_list_filter_backup` (`id`, `user_id`, `list_id`, `list_name`, `emails`, `email_count`, `backup_date`) VALUES
(1, 2850, 767115, 'Default List', 's:133:\"{\"testuser@gmail.com\":{\"name\":\"Test User\",\"date\":\"2018-12-28 12:30:16\",\"email\":\"testuser@gmail.com\",\"mobile\":\"789456123\",\"ip\":\"::1\"}}\";', 1, '2018-12-28 12:40:25'),
(2, 2850, 767115, 'Default List', 's:133:\"{\"testuser@gmail.com\":{\"name\":\"Test User\",\"date\":\"2018-12-28 12:30:16\",\"email\":\"testuser@gmail.com\",\"mobile\":\"789456123\",\"ip\":\"::1\"}}\";', 1, '2018-12-28 12:40:52'),
(3, 2850, 767115, 'Default List', 's:133:\"{\"testuser@gmail.com\":{\"name\":\"Test User\",\"date\":\"2018-12-28 12:30:16\",\"email\":\"testuser@gmail.com\",\"mobile\":\"789456123\",\"ip\":\"::1\"}}\";', 1, '2018-12-28 12:40:56'),
(4, 2850, 767115, 'Default List', 's:133:\"{\"testuser@gmail.com\":{\"name\":\"Test User\",\"date\":\"2018-12-28 12:30:16\",\"email\":\"testuser@gmail.com\",\"mobile\":\"789456123\",\"ip\":\"::1\"}}\";', 1, '2018-12-28 12:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `email_list_filter_backup_extra`
--

CREATE TABLE `email_list_filter_backup_extra` (
  `id` int(11) NOT NULL,
  `backup_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `list_name` varchar(255) NOT NULL,
  `emails` longtext NOT NULL,
  `email_count` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `backup_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_queue_type`
--

CREATE TABLE `email_queue_type` (
  `id` int(12) NOT NULL,
  `queue_type` varchar(255) NOT NULL DEFAULT 'process',
  `queue_value` varchar(255) NOT NULL DEFAULT 'normal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_scheduling`
--

CREATE TABLE `email_scheduling` (
  `id` int(11) NOT NULL,
  `temp_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `send_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `from_email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `from_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 NOT NULL,
  `exclude_list_arr` text CHARACTER SET utf8 NOT NULL,
  `list_arr` text CHARACTER SET utf8 NOT NULL,
  `individual_emails_arr_json` text CHARACTER SET utf8 NOT NULL,
  `create_date` datetime NOT NULL,
  `send_value` varchar(255) CHARACTER SET utf8 NOT NULL,
  `send_date` datetime NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'scheduled',
  `type` varchar(255) NOT NULL,
  `send_by_details` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_sqs_queue`
--

CREATE TABLE `email_sqs_queue` (
  `id` int(11) NOT NULL,
  `queue_type` varchar(255) NOT NULL DEFAULT 'process',
  `queue_value` varchar(255) NOT NULL DEFAULT 'NORMAL'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `template_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `template_json` longtext NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'bulk',
  `build_type` varchar(255) NOT NULL DEFAULT 'builder',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`template_id`, `user_id`, `template_json`, `type`, `build_type`, `date`) VALUES
(89, 2851, 's:3009:\"[{\"ofType\":\"link\",\"allAnchorLinks\":[]},{\"ofType\":\"header\",\"id\":\"header\",\"link\":false,\"bottomSpace\":false,\"headerAlign\":\"center\",\"imageUrl\":\"http://s3-us-west-2.amazonaws.com/mailget/builder_images/app_data/images/header_image.png\",\"imageWidth\":600,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"heading\",\"id\":\"module1\",\"content\":\"%3Ch1%20class%3D%22wysiwyg-text-align-center%22%20style%3D%22color%3A%20rgb(63%2C%2063%2C%2063)%3B%22%3EThe%20stunning%20email%20builder%20is%20here.%3C%2Fh1%3E\",\"position\":1,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"textImage\",\"id\":\"module2\",\"link\":false,\"imageUrl\":\"http://s3-us-west-2.amazonaws.com/mailget/builder_images/app_data/images/default_side_img.png\",\"imageWidth\":270,\"content\":\"Include%20a%20mixed%20block%20with%20text%20on%20left%20and%20image%20on%20right.%20You%20can%20also%20display%20image%20on%20left.%3Cbr%3ESee%20how%20awesome%20the%20image%20looks%20on%20the%20right.%20You%20can%20click%20the%20image%20on%20the%20right%20to%20open%20the%20link.\",\"position\":2,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"footer\",\"id\":\"footer\",\"content\":\"%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Ch2%20class%3D%22wysiwyg-text-align-center%22%20style%3D%22color%3A%20rgb(46%2C%2046%2C%2046)%3B%22%3EMagnet%20Brains%3C%2Fh2%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22wysiwyg-text-align-center%22%3EBhopal%3C%2Fdiv%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20\",\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"header\",\"id\":\"header\",\"link\":false,\"bottomSpace\":false,\"headerAlign\":\"center\",\"imageUrl\":\"http://s3-us-west-2.amazonaws.com/mailget/builder_images/app_data/images/header_image.png\",\"imageWidth\":600,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"footer\",\"id\":\"footer\",\"content\":\"%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Ch2%20class%3D%22wysiwyg-text-align-center%22%20style%3D%22color%3A%20rgb(46%2C%2046%2C%2046)%3B%22%3EMagnet%20Brains%3C%2Fh2%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22wysiwyg-text-align-center%22%3EBhopal%3C%2Fdiv%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20\",\"customStyle\":[\"text-align:center\"]},{\"subject\":\"test\"},{\"ofType\":\"colorPalette\",\"colors\":{\"mailBackgroundColor\":\"#e0e0e0\",\"ContentBackgroundColor\":\"#FFFFFF\",\"headingColor\":\"#3F3F3F\",\"textColor\":\"#2e2e2e\",\"buttonBackgroundColor\":\"#62A30C\",\"buttonTextColor\":\"#FFFFFF\",\"footerClass\":\"ta-center dark\",\"socialIconsBgColor\":\"#FFFFFF\",\"gbl_font_family\":\"Helvetica, \\\"Trebuchet MS\\\", sans-serif\"}}]\";', 'bulk', 'builder', '2019-01-08 00:36:20'),
(90, 2851, 's:3508:\"[{\"ofType\":\"link\",\"allAnchorLinks\":[]},{\"ofType\":\"header\",\"id\":\"header\",\"link\":false,\"bottomSpace\":false,\"headerAlign\":\"center\",\"imageUrl\":\"http://s3-us-west-2.amazonaws.com/mailget/builder_images/app_data/images/header_image.png\",\"imageWidth\":600,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"heading\",\"id\":\"module1\",\"content\":\"%3Ch1%20class%3D%22wysiwyg-text-align-center%22%20style%3D%22color%3A%20rgb(63%2C%2063%2C%2063)%3B%22%3EThe%20stunning%20email%20builder%20is%20here.%3C%2Fh1%3E\",\"position\":1,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"textImage\",\"id\":\"module2\",\"link\":false,\"imageUrl\":\"http://s3-us-west-2.amazonaws.com/mailget/builder_images/app_data/images/default_side_img.png\",\"imageWidth\":270,\"content\":\"Include%20a%20mixed%20block%20with%20text%20on%20left%20and%20image%20on%20right.%20You%20can%20also%20display%20image%20on%20left.%3Cbr%3ESee%20how%20awesome%20the%20image%20looks%20on%20the%20right.%20You%20can%20click%20the%20image%20on%20the%20right%20to%20open%20the%20link.\",\"position\":2,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"text\",\"id\":\"module4\",\"content\":\"%3Ch2%20style%3D%22color%3A%20rgb(63%2C%2063%2C%2063)%3B%22%3EWhy%20this%20email%20builder%20is%20awesome.%3C%2Fh2%3E%3Cul%20style%3D%22color%3A%20rgb(46%2C%2046%2C%2046)%3B%22%3E%3Cli%3ESuper%20Easy%20Email%20Builder%3C%2Fli%3E%3Cli%3ERobust%20and%20Simple%20to%20Use%3C%2Fli%3E%3Cli%3EFull%20Drag%20Drop%20Editor%3C%2Fli%3E%3Cli%3ELooks%20great%20across%20all%20the%20email%20clients%3C%2Fli%3E%3C%2Ful%3E\",\"position\":3,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"footer\",\"id\":\"footer\",\"content\":\"%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Ch2%20class%3D%22wysiwyg-text-align-center%22%20style%3D%22color%3A%20rgb(46%2C%2046%2C%2046)%3B%22%3EMagnet%20Brains%3C%2Fh2%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22wysiwyg-text-align-center%22%3EBhopal%3C%2Fdiv%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20\",\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"header\",\"id\":\"header\",\"link\":false,\"bottomSpace\":false,\"headerAlign\":\"center\",\"imageUrl\":\"http://s3-us-west-2.amazonaws.com/mailget/builder_images/app_data/images/header_image.png\",\"imageWidth\":600,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"footer\",\"id\":\"footer\",\"content\":\"%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Ch2%20class%3D%22wysiwyg-text-align-center%22%20style%3D%22color%3A%20rgb(46%2C%2046%2C%2046)%3B%22%3EMagnet%20Brains%3C%2Fh2%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22wysiwyg-text-align-center%22%3EBhopal%3C%2Fdiv%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20\",\"customStyle\":[\"text-align:center\"]},{\"subject\":\"1\"},{\"ofType\":\"colorPalette\",\"colors\":{\"mailBackgroundColor\":\"#e0e0e0\",\"ContentBackgroundColor\":\"#FFFFFF\",\"headingColor\":\"#3F3F3F\",\"textColor\":\"#2e2e2e\",\"buttonBackgroundColor\":\"#62A30C\",\"buttonTextColor\":\"#FFFFFF\",\"footerClass\":\"ta-center dark\",\"socialIconsBgColor\":\"#FFFFFF\",\"gbl_font_family\":\"Helvetica, \\\"Trebuchet MS\\\", sans-serif\"}}]\";', 'bulk', 'builder', '2019-01-08 00:37:49'),
(91, 2851, 's:3615:\"[{\"ofType\":\"link\",\"allAnchorLinks\":[]},{\"ofType\":\"header\",\"id\":\"header\",\"link\":false,\"bottomSpace\":false,\"headerAlign\":\"center\",\"imageUrl\":\"http://s3-us-west-2.amazonaws.com/mailget/builder_images/app_data/images/header_image.png\",\"imageWidth\":600,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"heading\",\"id\":\"module1\",\"content\":\"%3Ch1%20class%3D%22wysiwyg-text-align-center%22%20style%3D%22color%3A%20rgb(63%2C%2063%2C%2063)%3B%22%3EThe%20stunning%20email%20builder%20is%20here.%3C%2Fh1%3E\",\"position\":1,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"textImage\",\"id\":\"module2\",\"link\":false,\"imageUrl\":\"http://s3-us-west-2.amazonaws.com/mailget/builder_images/app_data/images/default_side_img.png\",\"imageWidth\":270,\"content\":\"Include%20a%20mixed%20block%20with%20text%20on%20left%20and%20image%20on%20right.%20You%20can%20also%20display%20image%20on%20left.%3Cbr%3ESee%20how%20awesome%20the%20image%20looks%20on%20the%20right.%20You%20can%20click%20the%20image%20on%20the%20right%20to%20open%20the%20link.\",\"position\":2,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"divider\",\"id\":\"module3\",\"dividerType\":\"solid\",\"position\":3,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"text\",\"id\":\"module4\",\"content\":\"%3Ch2%20style%3D%22color%3A%20rgb(63%2C%2063%2C%2063)%3B%22%3EWhy%20this%20email%20builder%20is%20awesome.%3C%2Fh2%3E%3Cul%20style%3D%22color%3A%20rgb(46%2C%2046%2C%2046)%3B%22%3E%3Cli%3ESuper%20Easy%20Email%20Builder%3C%2Fli%3E%3Cli%3ERobust%20and%20Simple%20to%20Use%3C%2Fli%3E%3Cli%3EFull%20Drag%20Drop%20Editor%3C%2Fli%3E%3Cli%3ELooks%20great%20across%20all%20the%20email%20clients%3C%2Fli%3E%3C%2Ful%3E\",\"position\":4,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"footer\",\"id\":\"footer\",\"content\":\"%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Ch2%20class%3D%22wysiwyg-text-align-center%22%20style%3D%22color%3A%20rgb(46%2C%2046%2C%2046)%3B%22%3EMagnet%20Brains%3C%2Fh2%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22wysiwyg-text-align-center%22%3EBhopal%3C%2Fdiv%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20\",\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"header\",\"id\":\"header\",\"link\":false,\"bottomSpace\":false,\"headerAlign\":\"center\",\"imageUrl\":\"http://s3-us-west-2.amazonaws.com/mailget/builder_images/app_data/images/header_image.png\",\"imageWidth\":600,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"footer\",\"id\":\"footer\",\"content\":\"%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Ch2%20class%3D%22wysiwyg-text-align-center%22%20style%3D%22color%3A%20rgb(46%2C%2046%2C%2046)%3B%22%3EMagnet%20Brains%3C%2Fh2%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22wysiwyg-text-align-center%22%3EBhopal%3C%2Fdiv%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20\",\"customStyle\":[\"text-align:center\"]},{\"subject\":\"2\"},{\"ofType\":\"colorPalette\",\"colors\":{\"mailBackgroundColor\":\"#e0e0e0\",\"ContentBackgroundColor\":\"#FFFFFF\",\"headingColor\":\"#3F3F3F\",\"textColor\":\"#2e2e2e\",\"buttonBackgroundColor\":\"#62A30C\",\"buttonTextColor\":\"#FFFFFF\",\"footerClass\":\"ta-center dark\",\"socialIconsBgColor\":\"#FFFFFF\",\"gbl_font_family\":\"Helvetica, \\\"Trebuchet MS\\\", sans-serif\"}}]\";', 'bulk', 'builder', '2019-01-08 00:38:38'),
(92, 2851, 's:4149:\"[{\"ofType\":\"link\",\"allAnchorLinks\":[{\"id\":\"rCksIv1\",\"value\":\"www.google.com\"}]},{\"ofType\":\"header\",\"id\":\"header\",\"link\":false,\"bottomSpace\":false,\"headerAlign\":\"center\",\"imageUrl\":\"http://s3-us-west-2.amazonaws.com/mailget/builder_images/app_data/images/header_image.png\",\"imageWidth\":600,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"heading\",\"id\":\"module1\",\"content\":\"%3Ch1%20class%3D%22wysiwyg-text-align-center%22%20style%3D%22color%3A%20rgb(63%2C%2063%2C%2063)%3B%22%3EThe%20stunning%20email%20builder%20is%20here.%3C%2Fh1%3E\",\"position\":1,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"textImage\",\"id\":\"module2\",\"link\":false,\"imageUrl\":\"http://s3-us-west-2.amazonaws.com/mailget/builder_images/app_data/images/default_side_img.png\",\"imageWidth\":270,\"content\":\"Include%20a%20mixed%20block%20with%20text%20on%20left%20and%20image%20on%20right.%20You%20can%20also%20display%20image%20on%20left.%3Cbr%3ESee%20how%20awesome%20the%20image%20looks%20on%20the%20right.%20You%20can%20click%20the%20image%20on%20the%20right%20to%20open%20the%20link.\",\"position\":2,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"divider\",\"id\":\"module3\",\"dividerType\":\"solid\",\"position\":3,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"text\",\"id\":\"module4\",\"content\":\"%3Ch2%20style%3D%22color%3A%20rgb(63%2C%2063%2C%2063)%3B%22%3EWhy%20this%20email%20builder%20is%20awesome.%3C%2Fh2%3E%3Cul%20style%3D%22color%3A%20rgb(46%2C%2046%2C%2046)%3B%22%3E%3Cli%3ESuper%20Easy%20Email%20Builder%3C%2Fli%3E%3Cli%3ERobust%20and%20Simple%20to%20Use%3C%2Fli%3E%3Cli%3EFull%20Drag%20Drop%20Editor%3C%2Fli%3E%3Cli%3ELooks%20great%20across%20all%20the%20email%20clients%3C%2Fli%3E%3C%2Ful%3E\",\"position\":4,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"button\",\"id\":\"module6\",\"linkId\":\"rCksIv1\",\"buttonLink\":\"http%3A%2F%2Ffgmail_replace_link%2Femail_tracker%2Flink_click%3Flink_id%3DrCksIv1%26temp_id%3Dmailget_temp_id_replace%26email_id%3Dmailget_email_id_replace%26s_id%3Dmailget_s_id_replace%26server%3Dreplace_smtp_server%26type%3Dreplace_drip_type\",\"buttonText\":\"Click%20Me\",\"buttonTextColor\":\"#ffffff\",\"buttonBgColor\":\"#1bc7f2\",\"buttonAlign\":\"left\",\"buttonFullWidth\":false,\"position\":5,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"footer\",\"id\":\"footer\",\"content\":\"%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Ch2%20class%3D%22wysiwyg-text-align-center%22%20style%3D%22color%3A%20rgb(46%2C%2046%2C%2046)%3B%22%3EMagnet%20Brains%3C%2Fh2%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22wysiwyg-text-align-center%22%3EBhopal%3C%2Fdiv%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20\",\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"header\",\"id\":\"header\",\"link\":false,\"bottomSpace\":false,\"headerAlign\":\"center\",\"imageUrl\":\"http://s3-us-west-2.amazonaws.com/mailget/builder_images/app_data/images/header_image.png\",\"imageWidth\":600,\"customStyle\":[\"text-align:center\"]},{\"ofType\":\"footer\",\"id\":\"footer\",\"content\":\"%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Ch2%20class%3D%22wysiwyg-text-align-center%22%20style%3D%22color%3A%20rgb(46%2C%2046%2C%2046)%3B%22%3EMagnet%20Brains%3C%2Fh2%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22wysiwyg-text-align-center%22%3EBhopal%3C%2Fdiv%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20\",\"customStyle\":[\"text-align:center\"]},{\"subject\":\"subject\"},{\"ofType\":\"colorPalette\",\"colors\":{\"mailBackgroundColor\":\"#e0e0e0\",\"ContentBackgroundColor\":\"#FFFFFF\",\"headingColor\":\"#3F3F3F\",\"textColor\":\"#2e2e2e\",\"buttonBackgroundColor\":\"#62A30C\",\"buttonTextColor\":\"#FFFFFF\",\"footerClass\":\"ta-center dark\",\"socialIconsBgColor\":\"#FFFFFF\",\"gbl_font_family\":\"Helvetica, \\\"Trebuchet MS\\\", sans-serif\"}}]\";', 'bulk', 'builder', '2019-01-09 22:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_type` varchar(20) DEFAULT NULL,
  `event_time` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `listid` varchar(255) DEFAULT NULL,
  `list_name` varchar(255) DEFAULT NULL,
  `list_label` varchar(255) DEFAULT NULL,
  `sendid` varchar(255) DEFAULT NULL,
  `bounce_type` varchar(255) DEFAULT NULL,
  `bounce_code` int(11) DEFAULT NULL,
  `bounce_text` text,
  `click_url` varchar(255) DEFAULT NULL,
  `click_tracking_id` varchar(255) DEFAULT NULL,
  `studio_rl_seq` bigint(20) DEFAULT NULL,
  `studio_rl_recipid` varchar(255) DEFAULT NULL,
  `studio_campaign_id` int(11) DEFAULT NULL,
  `studio_autoresponder_id` int(11) DEFAULT NULL,
  `studio_is_unique` tinyint(1) DEFAULT NULL,
  `studio_mailing_list_id` int(11) DEFAULT NULL,
  `studio_subscriber_id` int(11) DEFAULT NULL,
  `studio_ip` varchar(40) DEFAULT NULL,
  `studio_rl_seq_id` int(11) DEFAULT NULL,
  `studio_rl_distinct_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fetch_sqs_tracked_data`
--

CREATE TABLE `fetch_sqs_tracked_data` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email_from` varchar(255) CHARACTER SET utf8 NOT NULL,
  `queue_name` longtext CHARACTER SET utf8 NOT NULL,
  `flag` enum('0','1','2') CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fg_ref_fri`
--

CREATE TABLE `fg_ref_fri` (
  `fid` int(11) NOT NULL,
  `fg_uid` int(11) NOT NULL,
  `fg_fri_aff` int(11) NOT NULL,
  `fg_referral_link` varchar(100) CHARACTER SET utf8 NOT NULL,
  `fg_pay_status` varchar(100) CHARACTER SET utf8 NOT NULL,
  `fg_traceid` varchar(100) CHARACTER SET utf8 NOT NULL,
  `fg_referral_agent` varchar(255) CHARACTER SET utf32 NOT NULL,
  `fg_ip` varchar(100) CHARACTER SET utf32 NOT NULL,
  `fg_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fg_ref_stats`
--

CREATE TABLE `fg_ref_stats` (
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `fg_clicks` int(11) NOT NULL,
  `fg_signups` int(11) NOT NULL,
  `fg_pay_free` varchar(100) CHARACTER SET utf8 NOT NULL,
  `fg_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `footer_setting`
--

CREATE TABLE `footer_setting` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `footer_custom` varchar(255) NOT NULL,
  `via_mailget` varchar(255) NOT NULL DEFAULT 'YES',
  `html2plain` varchar(10) NOT NULL DEFAULT 'NO',
  `google_analytics` enum('0','1') NOT NULL DEFAULT '0',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `footer_setting`
--

INSERT INTO `footer_setting` (`id`, `user_id`, `company_address`, `company_name`, `website`, `footer_custom`, `via_mailget`, `html2plain`, `google_analytics`, `date`) VALUES
(2, 2850, 'Bhopal', 'Magnet Brains', 'https://magnetbrains.com', '0', 'YES', 'YES', '0', '2018-12-28'),
(3, 2851, 'Bhopal', 'Magnet Brains', 'www.magnetbrains.com', '0', 'YES', 'YES', '0', '2018-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `global_list_management`
--

CREATE TABLE `global_list_management` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `clean_status` varchar(255) NOT NULL,
  `smtp_check` varchar(255) NOT NULL,
  `role_email` varchar(255) NOT NULL,
  `soft_bounce` varchar(255) NOT NULL,
  `unsubscribe` varchar(255) NOT NULL,
  `syntax_check` varchar(255) NOT NULL,
  `disposable` varchar(255) NOT NULL,
  `mx_record` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `last_open_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `global_sending_suspended`
--

CREATE TABLE `global_sending_suspended` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `global_test`
--

CREATE TABLE `global_test` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '1',
  `email` varchar(255) NOT NULL,
  `disposable` varchar(255) NOT NULL,
  `smtp_check` varchar(255) NOT NULL,
  `mx_record` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ip_track_report`
--

CREATE TABLE `ip_track_report` (
  `ip_id` int(11) NOT NULL,
  `temp_id` int(11) NOT NULL,
  `sent_id` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `track_arr` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mailget_admin_setting`
--

CREATE TABLE `mailget_admin_setting` (
  `id` int(11) NOT NULL,
  `setting_type` varchar(255) NOT NULL,
  `setting_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mailget_apikey`
--

CREATE TABLE `mailget_apikey` (
  `key_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mailget_apikey`
--

INSERT INTO `mailget_apikey` (`key_id`, `user_id`, `api_key`, `date`) VALUES
(2, 2850, 'GLKCfPEoTV6c', '2018-12-28 13:04:29');

-- --------------------------------------------------------

--
-- Table structure for table `mailget_events`
--

CREATE TABLE `mailget_events` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `goal` varchar(255) NOT NULL,
  `step` int(11) NOT NULL,
  `days` int(11) NOT NULL,
  `cycle_limit` int(11) NOT NULL,
  `temp_type` varchar(255) NOT NULL,
  `temp_array` text NOT NULL,
  `date` datetime NOT NULL,
  `doc_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mailget_events_notification`
--

CREATE TABLE `mailget_events_notification` (
  `n_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `repeat_limit` int(11) NOT NULL,
  `repeat_total` int(11) NOT NULL,
  `days` int(11) NOT NULL,
  `reg_date` datetime NOT NULL,
  `last_sent_date` datetime NOT NULL,
  `step` int(11) NOT NULL,
  `running_event` enum('0','1','2') CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mailget_events_open`
--

CREATE TABLE `mailget_events_open` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `step` int(11) NOT NULL,
  `s_id` varchar(255) NOT NULL,
  `open` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mailget_events_sending_setting`
--

CREATE TABLE `mailget_events_sending_setting` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mailget_smtp`
--

CREATE TABLE `mailget_smtp` (
  `smtp_id` int(11) NOT NULL,
  `smtp_name` varchar(255) NOT NULL,
  `smtp_host` varchar(255) NOT NULL,
  `smtp_port` varchar(255) NOT NULL,
  `smtp_username` varchar(255) NOT NULL,
  `smtp_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mailget_smtp_template_limit`
--

CREATE TABLE `mailget_smtp_template_limit` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `temp_count` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mta_test`
--

CREATE TABLE `mta_test` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `new1`
--

CREATE TABLE `new1` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paid_member`
--

CREATE TABLE `paid_member` (
  `MID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `expiry_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paid_member`
--

INSERT INTO `paid_member` (`MID`, `userid`, `plan_name`, `plan_id`, `start_date`, `expiry_date`) VALUES
(3, 2851, 'MailGet Yearly (Upto 100,000 Subscribers)', 387, '2018-12-28 00:00:00', '2019-12-28 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_detail`
--

CREATE TABLE `payment_detail` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `payer_email` varchar(100) NOT NULL DEFAULT '',
  `receiver_email` varchar(100) NOT NULL DEFAULT '',
  `item_name` varchar(255) DEFAULT NULL,
  `card_brand` varchar(100) NOT NULL,
  `last4` int(5) NOT NULL,
  `exp_month` int(4) NOT NULL,
  `exp_year` int(5) NOT NULL,
  `residence_country` varchar(255) NOT NULL DEFAULT '',
  `mc_gross` varchar(10) NOT NULL DEFAULT '',
  `mc_fee` varchar(10) NOT NULL DEFAULT '',
  `mc_currency` varchar(20) NOT NULL DEFAULT '',
  `payment_type` varchar(50) NOT NULL DEFAULT '',
  `payer_status` varchar(50) NOT NULL DEFAULT '',
  `payer_id` varchar(50) NOT NULL DEFAULT '',
  `receiver_id` varchar(50) NOT NULL DEFAULT '',
  `parent_txn_id` varchar(30) NOT NULL DEFAULT '',
  `txn_id` varchar(30) NOT NULL DEFAULT '',
  `txn_type` varchar(10) NOT NULL DEFAULT '',
  `payment_status` varchar(50) NOT NULL DEFAULT '',
  `pending_reason` varchar(50) DEFAULT NULL,
  `transaction_subject` varchar(150) DEFAULT NULL,
  `verify_sign` varchar(150) DEFAULT NULL,
  `custom` varchar(255) NOT NULL DEFAULT '',
  `test_ipn` varchar(20) NOT NULL DEFAULT '',
  `member_key` varchar(100) NOT NULL,
  `payment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expire_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `plan_list`
--

CREATE TABLE `plan_list` (
  `id` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `email_limit` int(11) NOT NULL,
  `subscriber_limit` int(11) NOT NULL,
  `plan_type` varchar(255) NOT NULL,
  `plan_cat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plan_list`
--

INSERT INTO `plan_list` (`id`, `PID`, `plan_name`, `email_limit`, `subscriber_limit`, `plan_type`, `plan_cat`) VALUES
(2, 387, 'MailGet Yearly (Upto 100,000 Subscribers)', 10000, 10000, 'Y', 'SUBS');

-- --------------------------------------------------------

--
-- Table structure for table `pmta_and_tracking_ip_domain_detail`
--

CREATE TABLE `pmta_and_tracking_ip_domain_detail` (
  `id` int(11) NOT NULL,
  `domain_ip` varchar(255) NOT NULL,
  `sender_score` varchar(255) NOT NULL,
  `black_listed` varchar(255) NOT NULL,
  `blacklist_name` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pmta_pool`
--

CREATE TABLE `pmta_pool` (
  `pool_id` int(11) NOT NULL,
  `pool_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tls` varchar(255) CHARACTER SET utf8 NOT NULL,
  `enc_type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `port` int(10) NOT NULL,
  `from_email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pmta_mta` text NOT NULL,
  `priority` int(11) NOT NULL,
  `role_based` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pmta_smtp_detail`
--

CREATE TABLE `pmta_smtp_detail` (
  `user_id` int(11) NOT NULL,
  `smtp_username` varchar(255) NOT NULL,
  `smtp_password` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `port` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `block_limit` varchar(255) NOT NULL,
  `approved` varchar(255) NOT NULL,
  `plan_limit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `routing_tracking`
--

CREATE TABLE `routing_tracking` (
  `track_id` int(11) NOT NULL,
  `temp_id` int(11) NOT NULL,
  `send_id` varchar(100) NOT NULL,
  `server` varchar(100) NOT NULL,
  `total_open` int(11) NOT NULL,
  `total_click` int(11) NOT NULL,
  `total_unsubscribe` int(11) NOT NULL,
  `total_spam` int(11) NOT NULL,
  `total_bounce` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sending_email`
--

CREATE TABLE `sending_email` (
  `send_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `email_list` longtext NOT NULL,
  `count` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sending_email`
--

INSERT INTO `sending_email` (`send_id`, `template_id`, `sender_id`, `user_id`, `ip_address`, `email_list`, `count`, `date`) VALUES
(1, 61, 'DSvAQy', 2851, '::1', 's:113:\"{\"malsonsatis@outlook.com\":{\"name\":\"\",\"email\":\"malsonsatis@outlook.com\",\"date\":\"2019-01-05 08:25:41\",\"ip\":\"::1\"}}\";', 1, '2019-01-05 08:25:42'),
(2, 86, 'kDFBmo', 2851, '::1', 's:85:\"{\"test@gmail.com\":{\"date\":\"2019-01-02 11:32:01\",\"email\":\"test@gmail.com\",\"ip\":\"::1\"}}\";', 1, '2019-01-08 00:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `sending_email_extra`
--

CREATE TABLE `sending_email_extra` (
  `id` int(11) NOT NULL,
  `send_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `sender_id` varchar(25) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(25) NOT NULL,
  `email_list` longtext NOT NULL,
  `count` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sending_email_slots`
--

CREATE TABLE `sending_email_slots` (
  `slot_id` int(11) NOT NULL,
  `send_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_id_enc` varchar(255) NOT NULL,
  `template_id` int(11) NOT NULL,
  `temp_id_enc` varchar(255) NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `email_list` longtext NOT NULL,
  `count` int(11) NOT NULL,
  `send_by` varchar(255) NOT NULL,
  `send_value` varchar(255) NOT NULL,
  `slot_index` int(11) NOT NULL,
  `from_email` varchar(255) NOT NULL,
  `routing` varchar(255) NOT NULL DEFAULT 'no',
  `status` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sending_setting`
--

CREATE TABLE `sending_setting` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `send_limit_check`
--

CREATE TABLE `send_limit_check` (
  `id` int(12) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `plan_id` varchar(255) NOT NULL,
  `plan_month` int(11) NOT NULL,
  `total_sent` varchar(255) NOT NULL,
  `boost_count` int(11) NOT NULL DEFAULT '0',
  `boost_id` int(11) NOT NULL DEFAULT '0',
  `start_date` date NOT NULL,
  `expire_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ses_smtp_status_auto_update`
--

CREATE TABLE `ses_smtp_status_auto_update` (
  `up_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ses_smtp_status_auto_update`
--

INSERT INTO `ses_smtp_status_auto_update` (`up_id`, `user_id`, `update_date`) VALUES
(2, 2851, '2019-01-09');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_credential`
--

CREATE TABLE `smtp_credential` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_email` varchar(255) NOT NULL,
  `server` varchar(255) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `secret_key` varchar(255) NOT NULL,
  `tls` varchar(255) NOT NULL,
  `enc_type` varchar(255) NOT NULL DEFAULT 'tls',
  `port` int(10) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smtp_routing`
--

CREATE TABLE `smtp_routing` (
  `r_id` int(11) NOT NULL,
  `temp_id` int(11) NOT NULL,
  `send_id` varchar(255) NOT NULL,
  `smtp_ses` varchar(255) NOT NULL,
  `list_size` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `from_email` varchar(255) NOT NULL,
  `email_arr` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smtp_ses_status`
--

CREATE TABLE `smtp_ses_status` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ses_smtp_id` varchar(255) NOT NULL,
  `smtp_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `check_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spam_emails`
--

CREATE TABLE `spam_emails` (
  `list_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `list_name` varchar(255) NOT NULL,
  `emails` longtext NOT NULL,
  `count` int(11) NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spam_emails_extra`
--

CREATE TABLE `spam_emails_extra` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `emails` longtext NOT NULL,
  `count` int(11) NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  `slot` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subdomain_tracking`
--

CREATE TABLE `subdomain_tracking` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `track_id` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `domain_changed` varchar(255) NOT NULL DEFAULT 'no',
  `prev_domain_id` int(11) NOT NULL DEFAULT '0',
  `domain_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suspended_list`
--

CREATE TABLE `suspended_list` (
  `sus_list_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `emails` longtext NOT NULL,
  `email_count` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suspended_list_extra`
--

CREATE TABLE `suspended_list_extra` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `emails` longtext NOT NULL,
  `email_count` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `template_html`
--

CREATE TABLE `template_html` (
  `html_id` int(11) NOT NULL,
  `temp_id` int(11) NOT NULL,
  `html` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `template_html`
--

INSERT INTO `template_html` (`html_id`, `temp_id`, `html`, `date`) VALUES
(89, 89, '\"&lt;!DOCTYPE html PUBLIC &quot;-\\/\\/W3C\\/\\/DTD XHTML 1.0 Transitional\\/\\/EN&quot; &quot;http:\\/\\/www.w3.org\\/TR\\/xhtml1\\/DTD\\/xhtml1-transitional.dtd&quot;&gt;\\r\\n&lt;html xmlns=&quot;http:\\/\\/www.w3.org\\/1999\\/xhtml&quot;&gt;\\r\\n&lt;head&gt;\\r\\n&lt;meta name=&quot;viewport&quot; content=&quot;width=device-width&quot; \\/&gt;\\r\\n&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text\\/html; charset=utf-8&quot;&gt;\\r\\n&lt;meta name=&quot;robots&quot; content=&quot;noindex, nofollow&quot;&gt;\\r\\n&lt;title&gt;Preview&lt;\\/title&gt;&lt;link rel=&quot;stylesheet&quot; href=&quot;http:\\/\\/localhost\\/local\\/app_data\\/css\\/mail-inline.css&quot;&gt;&lt;style&gt;body, .body-wrap {background-color:#e0e0e0}h1, h2, h3, h4, h5, h6{color:#3F3F3F}.main{background-color: #FFFFFF}.content-block-grid,.content-block{color:#2e2e2e}.mailer-info, .mailer-info p, .mailer-info div, .mailer-info span, .mailer-info .unsubscribelink{color:#2e2e2e}.mailer-info h1, .mailer-info h2, .mailer-info h3, .mailer-info h4, .mailer-info h5, .mailer-info h6{color:#2e2e2e}.btn-primary{color: #FFFFFF; background-color: #62A30C; }.btn-primary-td{color: #FFFFFF; background-color: #62A30C; }.social-icon{background: #FFFFFF}&lt;\\/style&gt;&lt;!--fgmgMediaReplacePlaceholder--&gt;\\r\\n&lt;\\/head&gt;&lt;body align=&quot;center&quot;&gt;&lt;table align=&quot;center&quot; class=&quot;body-wrap&quot;&gt;&lt;tr&gt;&lt;td align=&quot;center&quot;&gt;&lt;table&gt;&lt;tr&gt;&lt;td class=&quot;container&quot; width=&quot;600&quot;&gt;&lt;div class=&quot;content&quot;&gt;&lt;table class=&quot;main&quot; width=&quot;100%&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;margin-top:35px&quot;&gt;&lt;tr&gt;&lt;td class=&quot;aligncenter&quot;&gt;&lt;div align=&quot;center&quot;&gt;&lt;img width=&quot;600&quot; src=&quot;http:\\/\\/s3-us-west-2.amazonaws.com\\/mailget\\/builder_images\\/app_data\\/images\\/header_image.png&quot; alt=&quot;&quot; \\/&gt;&lt;\\/div&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;tr&gt;&lt;td class=&quot;content-wrap&quot;&gt;&lt;table width=&quot;100%&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;&lt;tr&gt;&lt;td class=&quot;content-block&quot;&gt;&lt;h1 class=&quot;wysiwyg-text-align-center&quot; style=&quot;color: rgb(63, 63, 63);&quot;&gt;The stunning email builder is here.&lt;\\/h1&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;tr&gt;&lt;td width=&quot;600&quot;&gt;&lt;table width=&quot;100%&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;&lt;tr&gt;&lt;td width=&quot;50%&quot; class=&quot;content-block-grid grid-left&quot;&gt;Include a mixed block with text on left and image on right. You can also display image on left.&lt;br&gt;See how awesome the image looks on the right. You can click the image on the right to open the link.&lt;\\/td&gt;&lt;td width=&quot;50%&quot; class=&quot;content-block-grid grid-right aligncenter&quot;&gt;&lt;div align=&quot;center&quot;&gt;&lt;img width=&quot;270&quot; src=&quot;http:\\/\\/s3-us-west-2.amazonaws.com\\/mailget\\/builder_images\\/app_data\\/images\\/default_side_img.png&quot; alt=&quot;&quot; style=&quot;min-width:270px;&quot; \\/&gt;&lt;\\/div&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;\\/table&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;\\/table&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;tr&gt;&lt;td class=&quot;aligncenter mailer-info&quot;&gt;\\n                                            &lt;h2 class=&quot;wysiwyg-text-align-center&quot; style=&quot;color: rgb(46, 46, 46);&quot;&gt;Magnet Brains&lt;\\/h2&gt;\\n                                            &lt;div class=&quot;wysiwyg-text-align-center&quot;&gt;Bhopal&lt;\\/div&gt;\\n                                        &lt;\\/td&gt;&lt;\\/tr&gt; &lt;\\/table&gt; &lt;div class=&quot;footer ta-center dark&quot;&gt;&lt;table width=&quot;100%&quot;&gt;&lt;tr&gt;&lt;td class=&quot;aligncenter footer-td&quot;&gt;&lt;p class=&quot;unsubscribe&quot;&gt;If you are no longer interested, you can &lt;a href=&quot;http:\\/\\/fgmail_replace_link\\/email_tracker\\/unsubscribe_track?temp_id=Ijg5Ig_3D_3D&amp;email_id=mailget_email_id_replace&amp;s_id=mailget_s_id_replace&amp;server=replace_smtp_server&amp;type=replace_drip_type&quot; class=&quot;unsubscribelink&quot;&gt; unsubscribe instantly&lt;\\/a&gt;&lt;img src=&quot;http:\\/\\/fgmail_replace_link\\/email_tracker\\/open_track?temp_id=Ijg5Ig_3D_3D&amp;email_id=mailget_email_id_replace&amp;s_id=mailget_s_id_replace&amp;server=replace_smtp_server&amp;type=replace_drip_type&quot; width=&quot;1&quot; height=&quot;1&quot; border=&quot;0&quot; style=&quot;opacity:0;&quot; alt=&quot;&quot; \\/&gt;&lt;\\/p&gt;&lt;p class=&quot;unsubscribe browser_link&quot; &gt;Email not displaying correctly? &lt;a href=&quot;http:\\/\\/fgmail_replace_link\\/email_tracker\\/browser_link\\/Ijg5Ig_3D_3D&quot; style=&quot;&quot; target=&quot;_blank&quot; class=&quot;unsubscribelink&quot; &gt;View in browser&lt;\\/a&gt;&lt;\\/p&gt;&lt;p class=&quot;powered&quot; style=&quot;text-transform: none;&quot;&gt;&lt;img width=&quot;15&quot; src=&quot;http:\\/\\/s3-us-west-2.amazonaws.com\\/mailget\\/builder_images\\/app_data\\/images\\/mg-footer-icon.png&quot; style=&quot;display:inline-block;vertical-align:middle;&quot; alt=&quot;&quot; \\/&gt; &lt;a href=&quot;http:\\/\\/fgmail_replace_link\\/email_tracker\\/goto_website&quot; style=&quot;text-transform: none;&quot; &gt;Sent with MailGet&lt;\\/a&gt;&lt;\\/p&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;\\/table&gt;&lt;\\/div&gt;&lt;\\/div&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;\\/table&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;\\/table&gt;&lt;\\/body&gt;&lt;\\/html&gt;\"', '2019-01-08 00:36:20'),
(90, 90, '\"&lt;!DOCTYPE html PUBLIC &quot;-\\/\\/W3C\\/\\/DTD XHTML 1.0 Transitional\\/\\/EN&quot; &quot;http:\\/\\/www.w3.org\\/TR\\/xhtml1\\/DTD\\/xhtml1-transitional.dtd&quot;&gt;\\r\\n&lt;html xmlns=&quot;http:\\/\\/www.w3.org\\/1999\\/xhtml&quot;&gt;\\r\\n&lt;head&gt;\\r\\n&lt;meta name=&quot;viewport&quot; content=&quot;width=device-width&quot; \\/&gt;\\r\\n&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text\\/html; charset=utf-8&quot;&gt;\\r\\n&lt;meta name=&quot;robots&quot; content=&quot;noindex, nofollow&quot;&gt;\\r\\n&lt;title&gt;Preview&lt;\\/title&gt;&lt;link rel=&quot;stylesheet&quot; href=&quot;http:\\/\\/localhost\\/local\\/app_data\\/css\\/mail-inline.css&quot;&gt;&lt;style&gt;body, .body-wrap {background-color:#e0e0e0}h1, h2, h3, h4, h5, h6{color:#3F3F3F}.main{background-color: #FFFFFF}.content-block-grid,.content-block{color:#2e2e2e}.mailer-info, .mailer-info p, .mailer-info div, .mailer-info span, .mailer-info .unsubscribelink{color:#2e2e2e}.mailer-info h1, .mailer-info h2, .mailer-info h3, .mailer-info h4, .mailer-info h5, .mailer-info h6{color:#2e2e2e}.btn-primary{color: #FFFFFF; background-color: #62A30C; }.btn-primary-td{color: #FFFFFF; background-color: #62A30C; }.social-icon{background: #FFFFFF}&lt;\\/style&gt;&lt;!--fgmgMediaReplacePlaceholder--&gt;\\r\\n&lt;\\/head&gt;&lt;body align=&quot;center&quot;&gt;&lt;table align=&quot;center&quot; class=&quot;body-wrap&quot;&gt;&lt;tr&gt;&lt;td align=&quot;center&quot;&gt;&lt;table&gt;&lt;tr&gt;&lt;td class=&quot;container&quot; width=&quot;600&quot;&gt;&lt;div class=&quot;content&quot;&gt;&lt;table class=&quot;main&quot; width=&quot;100%&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;margin-top:35px&quot;&gt;&lt;tr&gt;&lt;td class=&quot;aligncenter&quot;&gt;&lt;div align=&quot;center&quot;&gt;&lt;img width=&quot;600&quot; src=&quot;http:\\/\\/s3-us-west-2.amazonaws.com\\/mailget\\/builder_images\\/app_data\\/images\\/header_image.png&quot; alt=&quot;&quot; \\/&gt;&lt;\\/div&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;tr&gt;&lt;td class=&quot;content-wrap&quot;&gt;&lt;table width=&quot;100%&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;&lt;tr&gt;&lt;td class=&quot;content-block&quot;&gt;&lt;h1 class=&quot;wysiwyg-text-align-center&quot; style=&quot;color: rgb(63, 63, 63);&quot;&gt;The stunning email builder is here.&lt;\\/h1&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;tr&gt;&lt;td width=&quot;600&quot;&gt;&lt;table width=&quot;100%&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;&lt;tr&gt;&lt;td width=&quot;50%&quot; class=&quot;content-block-grid grid-left&quot;&gt;Include a mixed block with text on left and image on right. You can also display image on left.&lt;br&gt;See how awesome the image looks on the right. You can click the image on the right to open the link.&lt;\\/td&gt;&lt;td width=&quot;50%&quot; class=&quot;content-block-grid grid-right aligncenter&quot;&gt;&lt;div align=&quot;center&quot;&gt;&lt;img width=&quot;270&quot; src=&quot;http:\\/\\/s3-us-west-2.amazonaws.com\\/mailget\\/builder_images\\/app_data\\/images\\/default_side_img.png&quot; alt=&quot;&quot; style=&quot;min-width:270px;&quot; \\/&gt;&lt;\\/div&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;\\/table&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;tr&gt;&lt;td class=&quot;content-block&quot;&gt;&lt;h2 style=&quot;color: rgb(63, 63, 63);&quot;&gt;Why this email builder is awesome.&lt;\\/h2&gt;&lt;ul style=&quot;color: rgb(46, 46, 46);&quot;&gt;&lt;li&gt;Super Easy Email Builder&lt;\\/li&gt;&lt;li&gt;Robust and Simple to Use&lt;\\/li&gt;&lt;li&gt;Full Drag Drop Editor&lt;\\/li&gt;&lt;li&gt;Looks great across all the email clients&lt;\\/li&gt;&lt;\\/ul&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;\\/table&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;tr&gt;&lt;td class=&quot;aligncenter mailer-info&quot;&gt;\\n                                            &lt;h2 class=&quot;wysiwyg-text-align-center&quot; style=&quot;color: rgb(46, 46, 46);&quot;&gt;Magnet Brains&lt;\\/h2&gt;\\n                                            &lt;div class=&quot;wysiwyg-text-align-center&quot;&gt;Bhopal&lt;\\/div&gt;\\n                                        &lt;\\/td&gt;&lt;\\/tr&gt; &lt;\\/table&gt; &lt;div class=&quot;footer ta-center dark&quot;&gt;&lt;table width=&quot;100%&quot;&gt;&lt;tr&gt;&lt;td class=&quot;aligncenter footer-td&quot;&gt;&lt;p class=&quot;unsubscribe&quot;&gt;If you are no longer interested, you can &lt;a href=&quot;http:\\/\\/fgmail_replace_link\\/email_tracker\\/unsubscribe_track?temp_id=IjkwIg_3D_3D&amp;email_id=mailget_email_id_replace&amp;s_id=mailget_s_id_replace&amp;server=replace_smtp_server&amp;type=replace_drip_type&quot; class=&quot;unsubscribelink&quot;&gt; unsubscribe instantly&lt;\\/a&gt;&lt;img src=&quot;http:\\/\\/fgmail_replace_link\\/email_tracker\\/open_track?temp_id=IjkwIg_3D_3D&amp;email_id=mailget_email_id_replace&amp;s_id=mailget_s_id_replace&amp;server=replace_smtp_server&amp;type=replace_drip_type&quot; width=&quot;1&quot; height=&quot;1&quot; border=&quot;0&quot; style=&quot;opacity:0;&quot; alt=&quot;&quot; \\/&gt;&lt;\\/p&gt;&lt;p class=&quot;unsubscribe browser_link&quot; &gt;Email not displaying correctly? &lt;a href=&quot;http:\\/\\/fgmail_replace_link\\/email_tracker\\/browser_link\\/IjkwIg_3D_3D&quot; style=&quot;&quot; target=&quot;_blank&quot; class=&quot;unsubscribelink&quot; &gt;View in browser&lt;\\/a&gt;&lt;\\/p&gt;&lt;p class=&quot;powered&quot; style=&quot;text-transform: none;&quot;&gt;&lt;img width=&quot;15&quot; src=&quot;http:\\/\\/s3-us-west-2.amazonaws.com\\/mailget\\/builder_images\\/app_data\\/images\\/mg-footer-icon.png&quot; style=&quot;display:inline-block;vertical-align:middle;&quot; alt=&quot;&quot; \\/&gt; &lt;a href=&quot;http:\\/\\/fgmail_replace_link\\/email_tracker\\/goto_website&quot; style=&quot;text-transform: none;&quot; &gt;Sent with MailGet&lt;\\/a&gt;&lt;\\/p&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;\\/table&gt;&lt;\\/div&gt;&lt;\\/div&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;\\/table&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;\\/table&gt;&lt;\\/body&gt;&lt;\\/html&gt;\"', '2019-01-08 00:37:49'),
(91, 91, '\"&lt;!DOCTYPE html PUBLIC &quot;-\\/\\/W3C\\/\\/DTD XHTML 1.0 Transitional\\/\\/EN&quot; &quot;http:\\/\\/www.w3.org\\/TR\\/xhtml1\\/DTD\\/xhtml1-transitional.dtd&quot;&gt;\\r\\n&lt;html xmlns=&quot;http:\\/\\/www.w3.org\\/1999\\/xhtml&quot;&gt;\\r\\n&lt;head&gt;\\r\\n&lt;meta name=&quot;viewport&quot; content=&quot;width=device-width&quot; \\/&gt;\\r\\n&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text\\/html; charset=utf-8&quot;&gt;\\r\\n&lt;meta name=&quot;robots&quot; content=&quot;noindex, nofollow&quot;&gt;\\r\\n&lt;title&gt;Preview&lt;\\/title&gt;&lt;link rel=&quot;stylesheet&quot; href=&quot;http:\\/\\/localhost\\/local\\/app_data\\/css\\/mail-inline.css&quot;&gt;&lt;style&gt;body, .body-wrap {background-color:#e0e0e0}h1, h2, h3, h4, h5, h6{color:#3F3F3F}.main{background-color: #FFFFFF}.content-block-grid,.content-block{color:#2e2e2e}.mailer-info, .mailer-info p, .mailer-info div, .mailer-info span, .mailer-info .unsubscribelink{color:#2e2e2e}.mailer-info h1, .mailer-info h2, .mailer-info h3, .mailer-info h4, .mailer-info h5, .mailer-info h6{color:#2e2e2e}.btn-primary{color: #FFFFFF; background-color: #62A30C; }.btn-primary-td{color: #FFFFFF; background-color: #62A30C; }.social-icon{background: #FFFFFF}&lt;\\/style&gt;&lt;!--fgmgMediaReplacePlaceholder--&gt;\\r\\n&lt;\\/head&gt;&lt;body align=&quot;center&quot;&gt;&lt;table align=&quot;center&quot; class=&quot;body-wrap&quot;&gt;&lt;tr&gt;&lt;td align=&quot;center&quot;&gt;&lt;table&gt;&lt;tr&gt;&lt;td class=&quot;container&quot; width=&quot;600&quot;&gt;&lt;div class=&quot;content&quot;&gt;&lt;table class=&quot;main&quot; width=&quot;100%&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;margin-top:35px&quot;&gt;&lt;tr&gt;&lt;td class=&quot;aligncenter&quot;&gt;&lt;div align=&quot;center&quot;&gt;&lt;img width=&quot;600&quot; src=&quot;http:\\/\\/s3-us-west-2.amazonaws.com\\/mailget\\/builder_images\\/app_data\\/images\\/header_image.png&quot; alt=&quot;&quot; \\/&gt;&lt;\\/div&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;tr&gt;&lt;td class=&quot;content-wrap&quot;&gt;&lt;table width=&quot;100%&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;&lt;tr&gt;&lt;td class=&quot;content-block&quot;&gt;&lt;h1 class=&quot;wysiwyg-text-align-center&quot; style=&quot;color: rgb(63, 63, 63);&quot;&gt;The stunning email builder is here.&lt;\\/h1&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;tr&gt;&lt;td width=&quot;600&quot;&gt;&lt;table width=&quot;100%&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;&lt;tr&gt;&lt;td width=&quot;50%&quot; class=&quot;content-block-grid grid-left&quot;&gt;Include a mixed block with text on left and image on right. You can also display image on left.&lt;br&gt;See how awesome the image looks on the right. You can click the image on the right to open the link.&lt;\\/td&gt;&lt;td width=&quot;50%&quot; class=&quot;content-block-grid grid-right aligncenter&quot;&gt;&lt;div align=&quot;center&quot;&gt;&lt;img width=&quot;270&quot; src=&quot;http:\\/\\/s3-us-west-2.amazonaws.com\\/mailget\\/builder_images\\/app_data\\/images\\/default_side_img.png&quot; alt=&quot;&quot; style=&quot;min-width:270px;&quot; \\/&gt;&lt;\\/div&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;\\/table&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;tr&gt;&lt;td class=&quot;content-block&quot;&gt;&lt;center&gt;&lt;table width=&quot;300&quot; style=&quot;margin:0 auto; border-top: 2px solid #e6e6e6;&quot; &gt;&lt;tr&gt;&lt;td class=&quot;divider&quot; &gt;&lt;span&gt;&lt;\\/span&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;\\/table&gt;&lt;\\/center&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;tr&gt;&lt;td class=&quot;content-block&quot;&gt;&lt;h2 style=&quot;color: rgb(63, 63, 63);&quot;&gt;Why this email builder is awesome.&lt;\\/h2&gt;&lt;ul style=&quot;color: rgb(46, 46, 46);&quot;&gt;&lt;li&gt;Super Easy Email Builder&lt;\\/li&gt;&lt;li&gt;Robust and Simple to Use&lt;\\/li&gt;&lt;li&gt;Full Drag Drop Editor&lt;\\/li&gt;&lt;li&gt;Looks great across all the email clients&lt;\\/li&gt;&lt;\\/ul&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;\\/table&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;tr&gt;&lt;td class=&quot;aligncenter mailer-info&quot;&gt;\\n                                            &lt;h2 class=&quot;wysiwyg-text-align-center&quot; style=&quot;color: rgb(46, 46, 46);&quot;&gt;Magnet Brains&lt;\\/h2&gt;\\n                                            &lt;div class=&quot;wysiwyg-text-align-center&quot;&gt;Bhopal&lt;\\/div&gt;\\n                                        &lt;\\/td&gt;&lt;\\/tr&gt; &lt;\\/table&gt; &lt;div class=&quot;footer ta-center dark&quot;&gt;&lt;table width=&quot;100%&quot;&gt;&lt;tr&gt;&lt;td class=&quot;aligncenter footer-td&quot;&gt;&lt;p class=&quot;unsubscribe&quot;&gt;If you are no longer interested, you can &lt;a href=&quot;http:\\/\\/fgmail_replace_link\\/email_tracker\\/unsubscribe_track?temp_id=IjkxIg_3D_3D&amp;email_id=mailget_email_id_replace&amp;s_id=mailget_s_id_replace&amp;server=replace_smtp_server&amp;type=replace_drip_type&quot; class=&quot;unsubscribelink&quot;&gt; unsubscribe instantly&lt;\\/a&gt;&lt;img src=&quot;http:\\/\\/fgmail_replace_link\\/email_tracker\\/open_track?temp_id=IjkxIg_3D_3D&amp;email_id=mailget_email_id_replace&amp;s_id=mailget_s_id_replace&amp;server=replace_smtp_server&amp;type=replace_drip_type&quot; width=&quot;1&quot; height=&quot;1&quot; border=&quot;0&quot; style=&quot;opacity:0;&quot; alt=&quot;&quot; \\/&gt;&lt;\\/p&gt;&lt;p class=&quot;unsubscribe browser_link&quot; &gt;Email not displaying correctly? &lt;a href=&quot;http:\\/\\/fgmail_replace_link\\/email_tracker\\/browser_link\\/IjkxIg_3D_3D&quot; style=&quot;&quot; target=&quot;_blank&quot; class=&quot;unsubscribelink&quot; &gt;View in browser&lt;\\/a&gt;&lt;\\/p&gt;&lt;p class=&quot;powered&quot; style=&quot;text-transform: none;&quot;&gt;&lt;img width=&quot;15&quot; src=&quot;http:\\/\\/s3-us-west-2.amazonaws.com\\/mailget\\/builder_images\\/app_data\\/images\\/mg-footer-icon.png&quot; style=&quot;display:inline-block;vertical-align:middle;&quot; alt=&quot;&quot; \\/&gt; &lt;a href=&quot;http:\\/\\/fgmail_replace_link\\/email_tracker\\/goto_website&quot; style=&quot;text-transform: none;&quot; &gt;Sent with MailGet&lt;\\/a&gt;&lt;\\/p&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;\\/table&gt;&lt;\\/div&gt;&lt;\\/div&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;\\/table&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;\\/table&gt;&lt;\\/body&gt;&lt;\\/html&gt;\"', '2019-01-08 00:38:38'),
(92, 92, '\"\"', '2019-01-09 22:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `template_links`
--

CREATE TABLE `template_links` (
  `track_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `links_arr` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `template_links_track`
--

CREATE TABLE `template_links_track` (
  `track_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `link_id` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `emails_arr` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `template_sent_by_detail`
--

CREATE TABLE `template_sent_by_detail` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `template_id` varchar(255) NOT NULL,
  `send_by` varchar(255) NOT NULL,
  `send_value` int(11) NOT NULL,
  `c_type` varchar(255) NOT NULL,
  `send_id` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `tracking_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `template_setting`
--

CREATE TABLE `template_setting` (
  `sett_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `setting_type` varchar(255) NOT NULL,
  `setting_value` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `template_setting`
--

INSERT INTO `template_setting` (`sett_id`, `template_id`, `setting_type`, `setting_value`, `date`) VALUES
(84, 84, 'subject', '\"123\"', '2019-01-08 00:05:29'),
(85, 85, 'subject', '\"123\"', '2019-01-08 00:07:34'),
(86, 86, 'subject', '\"1\"', '2019-01-08 00:12:03'),
(87, 0, 'from_name', '', '2019-01-08 00:18:29'),
(88, 0, 'compose_from_email', '', '2019-01-08 00:18:29'),
(89, 0, 'subject', '\"\"', '2019-01-08 00:18:29'),
(90, 87, 'subject', '\"test\"', '2019-01-08 00:20:04'),
(91, 88, 'subject', '\"test\"', '2019-01-08 00:20:52'),
(92, 89, 'subject', '\"test\"', '2019-01-08 00:36:20'),
(93, 90, 'subject', '\"123\"', '2019-01-08 00:37:49'),
(94, 91, 'subject', '\"check\"', '2019-01-08 00:38:38'),
(95, 92, 'subject', '\"subject\"', '2019-01-09 22:55:14'),
(96, 93, 'subject', '\"subject\"', '2019-01-09 22:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `template_track_alltime`
--

CREATE TABLE `template_track_alltime` (
  `track_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `total_sent` int(11) NOT NULL,
  `total_click` int(11) NOT NULL,
  `total_unsubscribe` int(11) NOT NULL,
  `total_spam` int(11) NOT NULL,
  `total_opened` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `template_track_alltime`
--

INSERT INTO `template_track_alltime` (`track_id`, `template_id`, `total_sent`, `total_click`, `total_unsubscribe`, `total_spam`, `total_opened`) VALUES
(1, 101, 500, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `temp_unsubscribe`
--

CREATE TABLE `temp_unsubscribe` (
  `un_track_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `emails` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `temp_unsubscribe`
--

INSERT INTO `temp_unsubscribe` (`un_track_id`, `template_id`, `sender_id`, `emails`, `date`) VALUES
(1, 0, 'iXkw9A', 's:2:\"[]\";', '2019-01-08 00:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `track_email_id_open_template`
--

CREATE TABLE `track_email_id_open_template` (
  `track_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `sending_id` varchar(255) NOT NULL,
  `open_email_list` longtext NOT NULL,
  `sending_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_email_id_open_template`
--

INSERT INTO `track_email_id_open_template` (`track_id`, `template_id`, `sending_id`, `open_email_list`, `sending_date`) VALUES
(1, 0, 'iXkw9A', 's:2:\"[]\";', '2019-01-08 00:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `track_test`
--

CREATE TABLE `track_test` (
  `s_no` int(11) NOT NULL,
  `temp_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rand_str` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `track_type` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `unique_emails`
--

CREATE TABLE `unique_emails` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `emails` longtext NOT NULL,
  `slot` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unique_emails`
--

INSERT INTO `unique_emails` (`id`, `user_id`, `emails`, `slot`, `count`, `date`) VALUES
(2, 2850, '{\"testuser@gmail.com\":1}', 1, 1, '2018-12-28 12:30:16'),
(3, 2851, '{\"test@gmail.com\":1,\"malsonsatis@outlook.com\":1}', 1, 2, '2019-01-05 08:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `users_additional_settings`
--

CREATE TABLE `users_additional_settings` (
  `add_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `yearly_plan_bar` varchar(255) NOT NULL,
  `setting_option` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `default_language` varchar(255) NOT NULL,
  `webform_recaptcha` varchar(255) NOT NULL DEFAULT 'yes',
  `add_domain_bar` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_email_verification`
--

CREATE TABLE `users_email_verification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `enc_code` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_contact_list`
--

CREATE TABLE `user_contact_list` (
  `id` int(11) NOT NULL,
  `temp_id` int(11) NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `sent_list` text NOT NULL,
  `exclude_list` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_contact_list`
--

INSERT INTO `user_contact_list` (`id`, `temp_id`, `sender_id`, `sent_list`, `exclude_list`, `date`) VALUES
(1, 0, 'iXkw9A', 's:2:\"[]\";', 's:2:\"[]\";', '2019-01-08 00:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_email_segmentation`
--

CREATE TABLE `user_email_segmentation` (
  `segment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `segment_name` varchar(255) NOT NULL,
  `segment_logic` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_gmt_time`
--

CREATE TABLE `user_gmt_time` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `meta_key` varchar(100) NOT NULL,
  `meta_value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_gmt_time`
--

INSERT INTO `user_gmt_time` (`id`, `uid`, `meta_key`, `meta_value`) VALUES
(17, 2850, 'gmt_time', '+5:30'),
(18, 2850, 'gmt_string', '+5 hours 30 minutes'),
(19, 2851, 'gmt_time', '+5:30'),
(20, 2851, 'gmt_string', '+5 hours 30 minutes');

-- --------------------------------------------------------

--
-- Table structure for table `user_reply_to_email_verify`
--

CREATE TABLE `user_reply_to_email_verify` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply_to_email` varchar(255) NOT NULL,
  `enc_key` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_reply_to_email_verify`
--

INSERT INTO `user_reply_to_email_verify` (`id`, `user_id`, `reply_to_email`, `enc_key`, `status`) VALUES
(13, 2851, 'unverified@gmail.com', 'ZMkNHAG8o6x8', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_web_forms`
--

CREATE TABLE `user_web_forms` (
  `form_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `form_name` varchar(255) NOT NULL,
  `contact_list` int(11) NOT NULL,
  `redirect_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `verified_email`
--

CREATE TABLE `verified_email` (
  `v_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `enc_key` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `email_sending` varchar(255) NOT NULL DEFAULT 'approve',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wufoo_mapping`
--

CREATE TABLE `wufoo_mapping` (
  `map_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash_key` varchar(255) NOT NULL,
  `mapping` text NOT NULL,
  `entry_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wufoo_setting`
--

CREATE TABLE `wufoo_setting` (
  `wu_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sub_domain` varchar(255) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zoho_customer`
--

CREATE TABLE `zoho_customer` (
  `userid` int(11) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `pabbly_customer_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zoho_customer`
--

INSERT INTO `zoho_customer` (`userid`, `customer_id`, `date`, `pabbly_customer_id`) VALUES
(2851, '', '2019-01-04 12:41:11', '5c2f4656170090727ebd904a');

-- --------------------------------------------------------

--
-- Table structure for table `zoho_payment`
--

CREATE TABLE `zoho_payment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cus_id` varchar(255) NOT NULL,
  `sub_id` varchar(255) NOT NULL,
  `plan_id` varchar(255) NOT NULL,
  `plan_limit` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `exp_date` datetime NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_data`
--
ALTER TABLE `add_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autoresponder`
--
ALTER TABLE `autoresponder`
  ADD PRIMARY KEY (`auto_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `list_id` (`list_id`);

--
-- Indexes for table `autoresponder_links_track`
--
ALTER TABLE `autoresponder_links_track`
  ADD PRIMARY KEY (`track_id`);

--
-- Indexes for table `autoresponder_open_track`
--
ALTER TABLE `autoresponder_open_track`
  ADD PRIMARY KEY (`track_id`),
  ADD KEY `template_id` (`template_id`),
  ADD KEY `sending_id` (`sending_id`);

--
-- Indexes for table `autoresponder_sending_email`
--
ALTER TABLE `autoresponder_sending_email`
  ADD PRIMARY KEY (`send_id`),
  ADD KEY `template_id` (`template_id`);

--
-- Indexes for table `autoresponder_unsubscribe_track`
--
ALTER TABLE `autoresponder_unsubscribe_track`
  ADD PRIMARY KEY (`un_track_id`),
  ADD KEY `template_id` (`template_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `bolt_approvel_request_mail`
--
ALTER TABLE `bolt_approvel_request_mail`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `bolt_paid_member`
--
ALTER TABLE `bolt_paid_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `bounce_emails`
--
ALTER TABLE `bounce_emails`
  ADD PRIMARY KEY (`list_id`);

--
-- Indexes for table `bounce_emails_extra`
--
ALTER TABLE `bounce_emails_extra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `slot` (`slot`);

--
-- Indexes for table `builder_email_list`
--
ALTER TABLE `builder_email_list`
  ADD PRIMARY KEY (`list_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `list_name` (`list_name`);

--
-- Indexes for table `builder_email_list_extra`
--
ALTER TABLE `builder_email_list_extra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list_id` (`list_id`),
  ADD KEY `slot` (`slot`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `builder_subscribe`
--
ALTER TABLE `builder_subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `builder_users`
--
ALTER TABLE `builder_users`
  ADD PRIMARY KEY (`builder_userid`),
  ADD UNIQUE KEY `builder_useremail_2` (`builder_useremail`),
  ADD KEY `builder_username` (`builder_username`),
  ADD KEY `builder_useremail` (`builder_useremail`),
  ADD KEY `password` (`password`);

--
-- Indexes for table `build_template`
--
ALTER TABLE `build_template`
  ADD PRIMARY KEY (`visiter_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `clean_removed_emails`
--
ALTER TABLE `clean_removed_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `api_name` (`api_name`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `delete_email_count`
--
ALTER TABLE `delete_email_count`
  ADD PRIMARY KEY (`del_id`);

--
-- Indexes for table `dkim_key`
--
ALTER TABLE `dkim_key`
  ADD PRIMARY KEY (`dkim_id`);

--
-- Indexes for table `domain_info`
--
ALTER TABLE `domain_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drip`
--
ALTER TABLE `drip`
  ADD PRIMARY KEY (`drip_id`);

--
-- Indexes for table `drip_links_track`
--
ALTER TABLE `drip_links_track`
  ADD PRIMARY KEY (`track_id`);

--
-- Indexes for table `drip_open_track`
--
ALTER TABLE `drip_open_track`
  ADD PRIMARY KEY (`track_id`);

--
-- Indexes for table `drip_report`
--
ALTER TABLE `drip_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_date` (`send_date`);

--
-- Indexes for table `drip_sending_email`
--
ALTER TABLE `drip_sending_email`
  ADD PRIMARY KEY (`send_id`);

--
-- Indexes for table `drip_sending_email_extra`
--
ALTER TABLE `drip_sending_email_extra`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `drip_sending_setting`
--
ALTER TABLE `drip_sending_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drip_setting`
--
ALTER TABLE `drip_setting`
  ADD PRIMARY KEY (`row_no`),
  ADD KEY `drip_id` (`drip_id`),
  ADD KEY `list_id` (`list_id`),
  ADD KEY `time` (`time`),
  ADD KEY `status` (`status`),
  ADD KEY `days` (`days`);

--
-- Indexes for table `drip_temp_emails_slot`
--
ALTER TABLE `drip_temp_emails_slot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drip_unsubscribe_track`
--
ALTER TABLE `drip_unsubscribe_track`
  ADD PRIMARY KEY (`un_track_id`);

--
-- Indexes for table `dyn_blocked_users`
--
ALTER TABLE `dyn_blocked_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dyn_smtp_apikey`
--
ALTER TABLE `dyn_smtp_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_draft`
--
ALTER TABLE `email_draft`
  ADD PRIMARY KEY (`draft_no`);

--
-- Indexes for table `email_list_filter`
--
ALTER TABLE `email_list_filter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `email_list_filter_backup`
--
ALTER TABLE `email_list_filter_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_list_filter_backup_extra`
--
ALTER TABLE `email_list_filter_backup_extra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_queue_type`
--
ALTER TABLE `email_queue_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_scheduling`
--
ALTER TABLE `email_scheduling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_sqs_queue`
--
ALTER TABLE `email_sqs_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`template_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fetch_sqs_tracked_data`
--
ALTER TABLE `fetch_sqs_tracked_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `fg_ref_fri`
--
ALTER TABLE `fg_ref_fri`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `fg_ref_stats`
--
ALTER TABLE `fg_ref_stats`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `footer_setting`
--
ALTER TABLE `footer_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_list_management`
--
ALTER TABLE `global_list_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_sending_suspended`
--
ALTER TABLE `global_sending_suspended`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `global_test`
--
ALTER TABLE `global_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_track_report`
--
ALTER TABLE `ip_track_report`
  ADD PRIMARY KEY (`ip_id`);

--
-- Indexes for table `mailget_admin_setting`
--
ALTER TABLE `mailget_admin_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mailget_apikey`
--
ALTER TABLE `mailget_apikey`
  ADD PRIMARY KEY (`key_id`),
  ADD UNIQUE KEY `api_key` (`api_key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `mailget_events`
--
ALTER TABLE `mailget_events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `mailget_events_notification`
--
ALTER TABLE `mailget_events_notification`
  ADD PRIMARY KEY (`n_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status` (`status`),
  ADD KEY `step` (`step`),
  ADD KEY `days` (`days`),
  ADD KEY `repeat_total` (`repeat_total`),
  ADD KEY `repeat_limit` (`repeat_limit`);

--
-- Indexes for table `mailget_events_open`
--
ALTER TABLE `mailget_events_open`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mailget_events_sending_setting`
--
ALTER TABLE `mailget_events_sending_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mailget_smtp`
--
ALTER TABLE `mailget_smtp`
  ADD PRIMARY KEY (`smtp_id`);

--
-- Indexes for table `mailget_smtp_template_limit`
--
ALTER TABLE `mailget_smtp_template_limit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mta_test`
--
ALTER TABLE `mta_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new1`
--
ALTER TABLE `new1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paid_member`
--
ALTER TABLE `paid_member`
  ADD PRIMARY KEY (`MID`);

--
-- Indexes for table `payment_detail`
--
ALTER TABLE `payment_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_list`
--
ALTER TABLE `plan_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmta_and_tracking_ip_domain_detail`
--
ALTER TABLE `pmta_and_tracking_ip_domain_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmta_pool`
--
ALTER TABLE `pmta_pool`
  ADD PRIMARY KEY (`pool_id`);

--
-- Indexes for table `pmta_smtp_detail`
--
ALTER TABLE `pmta_smtp_detail`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `routing_tracking`
--
ALTER TABLE `routing_tracking`
  ADD PRIMARY KEY (`track_id`),
  ADD KEY `temp_id` (`temp_id`),
  ADD KEY `send_id` (`send_id`);

--
-- Indexes for table `sending_email`
--
ALTER TABLE `sending_email`
  ADD PRIMARY KEY (`send_id`),
  ADD KEY `template_id` (`template_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `sending_email_extra`
--
ALTER TABLE `sending_email_extra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sending_email_slots`
--
ALTER TABLE `sending_email_slots`
  ADD PRIMARY KEY (`slot_id`),
  ADD KEY `send_id` (`send_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `template_id` (`template_id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `slot_index` (`slot_index`);

--
-- Indexes for table `sending_setting`
--
ALTER TABLE `sending_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_limit_check`
--
ALTER TABLE `send_limit_check`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ses_smtp_status_auto_update`
--
ALTER TABLE `ses_smtp_status_auto_update`
  ADD PRIMARY KEY (`up_id`);

--
-- Indexes for table `smtp_credential`
--
ALTER TABLE `smtp_credential`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_routing`
--
ALTER TABLE `smtp_routing`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `temp_id` (`temp_id`),
  ADD KEY `send_id` (`send_id`),
  ADD KEY `smtp_ses` (`smtp_ses`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `smtp_ses_status`
--
ALTER TABLE `smtp_ses_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spam_emails`
--
ALTER TABLE `spam_emails`
  ADD PRIMARY KEY (`list_id`);

--
-- Indexes for table `spam_emails_extra`
--
ALTER TABLE `spam_emails_extra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `slot` (`slot`);

--
-- Indexes for table `subdomain_tracking`
--
ALTER TABLE `subdomain_tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suspended_list`
--
ALTER TABLE `suspended_list`
  ADD PRIMARY KEY (`sus_list_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `suspended_list_extra`
--
ALTER TABLE `suspended_list_extra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template_html`
--
ALTER TABLE `template_html`
  ADD PRIMARY KEY (`html_id`);

--
-- Indexes for table `template_links`
--
ALTER TABLE `template_links`
  ADD PRIMARY KEY (`track_id`);

--
-- Indexes for table `template_links_track`
--
ALTER TABLE `template_links_track`
  ADD PRIMARY KEY (`track_id`);

--
-- Indexes for table `template_sent_by_detail`
--
ALTER TABLE `template_sent_by_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template_setting`
--
ALTER TABLE `template_setting`
  ADD PRIMARY KEY (`sett_id`),
  ADD KEY `template_id` (`template_id`);

--
-- Indexes for table `template_track_alltime`
--
ALTER TABLE `template_track_alltime`
  ADD PRIMARY KEY (`track_id`),
  ADD KEY `template_id` (`template_id`);

--
-- Indexes for table `temp_unsubscribe`
--
ALTER TABLE `temp_unsubscribe`
  ADD PRIMARY KEY (`un_track_id`),
  ADD KEY `template_id` (`template_id`),
  ADD KEY `template_id_2` (`template_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `track_email_id_open_template`
--
ALTER TABLE `track_email_id_open_template`
  ADD PRIMARY KEY (`track_id`),
  ADD KEY `template_id` (`template_id`),
  ADD KEY `sending_id` (`sending_id`);

--
-- Indexes for table `track_test`
--
ALTER TABLE `track_test`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `unique_emails`
--
ALTER TABLE `unique_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `slot` (`slot`),
  ADD KEY `count` (`count`);

--
-- Indexes for table `users_additional_settings`
--
ALTER TABLE `users_additional_settings`
  ADD PRIMARY KEY (`add_id`);

--
-- Indexes for table `users_email_verification`
--
ALTER TABLE `users_email_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_contact_list`
--
ALTER TABLE `user_contact_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_email_segmentation`
--
ALTER TABLE `user_email_segmentation`
  ADD PRIMARY KEY (`segment_id`);

--
-- Indexes for table `user_gmt_time`
--
ALTER TABLE `user_gmt_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_reply_to_email_verify`
--
ALTER TABLE `user_reply_to_email_verify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_web_forms`
--
ALTER TABLE `user_web_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `verified_email`
--
ALTER TABLE `verified_email`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `wufoo_mapping`
--
ALTER TABLE `wufoo_mapping`
  ADD PRIMARY KEY (`map_id`);

--
-- Indexes for table `wufoo_setting`
--
ALTER TABLE `wufoo_setting`
  ADD PRIMARY KEY (`wu_id`);

--
-- Indexes for table `zoho_customer`
--
ALTER TABLE `zoho_customer`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `zoho_payment`
--
ALTER TABLE `zoho_payment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_data`
--
ALTER TABLE `add_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autoresponder`
--
ALTER TABLE `autoresponder`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autoresponder_links_track`
--
ALTER TABLE `autoresponder_links_track`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autoresponder_open_track`
--
ALTER TABLE `autoresponder_open_track`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autoresponder_sending_email`
--
ALTER TABLE `autoresponder_sending_email`
  MODIFY `send_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autoresponder_unsubscribe_track`
--
ALTER TABLE `autoresponder_unsubscribe_track`
  MODIFY `un_track_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bolt_paid_member`
--
ALTER TABLE `bolt_paid_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bounce_emails`
--
ALTER TABLE `bounce_emails`
  MODIFY `list_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bounce_emails_extra`
--
ALTER TABLE `bounce_emails_extra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `builder_email_list`
--
ALTER TABLE `builder_email_list`
  MODIFY `list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=767117;

--
-- AUTO_INCREMENT for table `builder_email_list_extra`
--
ALTER TABLE `builder_email_list_extra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `builder_subscribe`
--
ALTER TABLE `builder_subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `builder_users`
--
ALTER TABLE `builder_users`
  MODIFY `builder_userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2852;

--
-- AUTO_INCREMENT for table `build_template`
--
ALTER TABLE `build_template`
  MODIFY `visiter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clean_removed_emails`
--
ALTER TABLE `clean_removed_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delete_email_count`
--
ALTER TABLE `delete_email_count`
  MODIFY `del_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dkim_key`
--
ALTER TABLE `dkim_key`
  MODIFY `dkim_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domain_info`
--
ALTER TABLE `domain_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drip`
--
ALTER TABLE `drip`
  MODIFY `drip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `drip_links_track`
--
ALTER TABLE `drip_links_track`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drip_open_track`
--
ALTER TABLE `drip_open_track`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drip_report`
--
ALTER TABLE `drip_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drip_sending_email`
--
ALTER TABLE `drip_sending_email`
  MODIFY `send_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drip_sending_email_extra`
--
ALTER TABLE `drip_sending_email_extra`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drip_sending_setting`
--
ALTER TABLE `drip_sending_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `drip_setting`
--
ALTER TABLE `drip_setting`
  MODIFY `row_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drip_temp_emails_slot`
--
ALTER TABLE `drip_temp_emails_slot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drip_unsubscribe_track`
--
ALTER TABLE `drip_unsubscribe_track`
  MODIFY `un_track_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dyn_blocked_users`
--
ALTER TABLE `dyn_blocked_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dyn_smtp_apikey`
--
ALTER TABLE `dyn_smtp_apikey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_draft`
--
ALTER TABLE `email_draft`
  MODIFY `draft_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_list_filter`
--
ALTER TABLE `email_list_filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_list_filter_backup`
--
ALTER TABLE `email_list_filter_backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_list_filter_backup_extra`
--
ALTER TABLE `email_list_filter_backup_extra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_queue_type`
--
ALTER TABLE `email_queue_type`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_scheduling`
--
ALTER TABLE `email_scheduling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_sqs_queue`
--
ALTER TABLE `email_sqs_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fetch_sqs_tracked_data`
--
ALTER TABLE `fetch_sqs_tracked_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fg_ref_fri`
--
ALTER TABLE `fg_ref_fri`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fg_ref_stats`
--
ALTER TABLE `fg_ref_stats`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footer_setting`
--
ALTER TABLE `footer_setting`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `global_list_management`
--
ALTER TABLE `global_list_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `global_sending_suspended`
--
ALTER TABLE `global_sending_suspended`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `global_test`
--
ALTER TABLE `global_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_track_report`
--
ALTER TABLE `ip_track_report`
  MODIFY `ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mailget_admin_setting`
--
ALTER TABLE `mailget_admin_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mailget_apikey`
--
ALTER TABLE `mailget_apikey`
  MODIFY `key_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mailget_events`
--
ALTER TABLE `mailget_events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mailget_events_notification`
--
ALTER TABLE `mailget_events_notification`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mailget_events_open`
--
ALTER TABLE `mailget_events_open`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mailget_events_sending_setting`
--
ALTER TABLE `mailget_events_sending_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mailget_smtp`
--
ALTER TABLE `mailget_smtp`
  MODIFY `smtp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mailget_smtp_template_limit`
--
ALTER TABLE `mailget_smtp_template_limit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mta_test`
--
ALTER TABLE `mta_test`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new1`
--
ALTER TABLE `new1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paid_member`
--
ALTER TABLE `paid_member`
  MODIFY `MID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_detail`
--
ALTER TABLE `payment_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan_list`
--
ALTER TABLE `plan_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pmta_and_tracking_ip_domain_detail`
--
ALTER TABLE `pmta_and_tracking_ip_domain_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pmta_pool`
--
ALTER TABLE `pmta_pool`
  MODIFY `pool_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routing_tracking`
--
ALTER TABLE `routing_tracking`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sending_email`
--
ALTER TABLE `sending_email`
  MODIFY `send_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sending_email_extra`
--
ALTER TABLE `sending_email_extra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sending_email_slots`
--
ALTER TABLE `sending_email_slots`
  MODIFY `slot_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sending_setting`
--
ALTER TABLE `sending_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `send_limit_check`
--
ALTER TABLE `send_limit_check`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ses_smtp_status_auto_update`
--
ALTER TABLE `ses_smtp_status_auto_update`
  MODIFY `up_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `smtp_credential`
--
ALTER TABLE `smtp_credential`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `smtp_routing`
--
ALTER TABLE `smtp_routing`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smtp_ses_status`
--
ALTER TABLE `smtp_ses_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spam_emails`
--
ALTER TABLE `spam_emails`
  MODIFY `list_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spam_emails_extra`
--
ALTER TABLE `spam_emails_extra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subdomain_tracking`
--
ALTER TABLE `subdomain_tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suspended_list`
--
ALTER TABLE `suspended_list`
  MODIFY `sus_list_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suspended_list_extra`
--
ALTER TABLE `suspended_list_extra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `template_html`
--
ALTER TABLE `template_html`
  MODIFY `html_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `template_links`
--
ALTER TABLE `template_links`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `template_links_track`
--
ALTER TABLE `template_links_track`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `template_sent_by_detail`
--
ALTER TABLE `template_sent_by_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `template_setting`
--
ALTER TABLE `template_setting`
  MODIFY `sett_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `template_track_alltime`
--
ALTER TABLE `template_track_alltime`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_unsubscribe`
--
ALTER TABLE `temp_unsubscribe`
  MODIFY `un_track_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `track_email_id_open_template`
--
ALTER TABLE `track_email_id_open_template`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `track_test`
--
ALTER TABLE `track_test`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unique_emails`
--
ALTER TABLE `unique_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_additional_settings`
--
ALTER TABLE `users_additional_settings`
  MODIFY `add_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_email_verification`
--
ALTER TABLE `users_email_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_contact_list`
--
ALTER TABLE `user_contact_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_email_segmentation`
--
ALTER TABLE `user_email_segmentation`
  MODIFY `segment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_gmt_time`
--
ALTER TABLE `user_gmt_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_reply_to_email_verify`
--
ALTER TABLE `user_reply_to_email_verify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_web_forms`
--
ALTER TABLE `user_web_forms`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verified_email`
--
ALTER TABLE `verified_email`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wufoo_mapping`
--
ALTER TABLE `wufoo_mapping`
  MODIFY `map_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wufoo_setting`
--
ALTER TABLE `wufoo_setting`
  MODIFY `wu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zoho_payment`
--
ALTER TABLE `zoho_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
