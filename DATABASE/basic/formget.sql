-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2019 at 03:08 AM
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
-- Database: `formget`
--

-- --------------------------------------------------------

--
-- Table structure for table `abuse_form`
--

CREATE TABLE `abuse_form` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `a_name` varchar(255) NOT NULL,
  `a_email` varchar(255) NOT NULL,
  `a_link` text NOT NULL,
  `a_clue_from` varchar(255) NOT NULL,
  `a_addition_clue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `active_embeds`
--

CREATE TABLE `active_embeds` (
  `a_e_id` int(11) NOT NULL,
  `form_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `web_site_url` varchar(255) NOT NULL,
  `active_status` varchar(10) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `active_login`
--

CREATE TABLE `active_login` (
  `a_l_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `is_active` char(5) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `app123`
--

CREATE TABLE `app123` (
  `app1` int(11) NOT NULL,
  `app2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `field_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `field_value` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_options`
--

CREATE TABLE `ci_options` (
  `user_id` int(11) NOT NULL,
  `options` varchar(255) CHARACTER SET utf8 NOT NULL,
  `value` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_order_info`
--

CREATE TABLE `ci_order_info` (
  `id` mediumint(9) NOT NULL,
  `uid` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `payer_email` varchar(100) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(100) NOT NULL DEFAULT '',
  `residence_country` varchar(255) NOT NULL DEFAULT '',
  `transaction_subject` varchar(255) NOT NULL DEFAULT '',
  `memo` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `quantity` char(10) DEFAULT NULL,
  `payment_type` varchar(50) NOT NULL DEFAULT '',
  `payer_status` varchar(50) NOT NULL DEFAULT '',
  `payer_id` varchar(50) NOT NULL DEFAULT '',
  `receiver_id` varchar(50) NOT NULL DEFAULT '',
  `parent_txn_id` varchar(30) NOT NULL DEFAULT '',
  `txn_id` varchar(30) NOT NULL DEFAULT '',
  `txn_type` varchar(10) NOT NULL DEFAULT '',
  `payment_status` varchar(50) NOT NULL DEFAULT '',
  `pending_reason` varchar(50) DEFAULT NULL,
  `mc_gross` varchar(10) NOT NULL DEFAULT '',
  `mc_fee` varchar(10) NOT NULL DEFAULT '',
  `tax` varchar(10) DEFAULT NULL,
  `exchange_rate` varchar(25) DEFAULT NULL,
  `mc_currency` varchar(20) NOT NULL DEFAULT '',
  `reason_code` varchar(20) NOT NULL DEFAULT '',
  `custom` varchar(255) NOT NULL DEFAULT '',
  `test_ipn` varchar(20) NOT NULL DEFAULT '',
  `payment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `custom_form_css`
--

CREATE TABLE `custom_form_css` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `custom_css` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_store`
--

CREATE TABLE `email_store` (
  `es_id` int(11) NOT NULL,
  `usr_email` varchar(255) NOT NULL,
  `user_fname` varchar(255) NOT NULL,
  `admin_uid` varchar(255) NOT NULL,
  `n_send_mail` varchar(11) NOT NULL,
  `current_date` datetime NOT NULL,
  `prev_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `entry`
--

CREATE TABLE `entry` (
  `entry_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(20) NOT NULL,
  `is_active` int(1) NOT NULL,
  `ticket_status` varchar(255) NOT NULL,
  `user_agent` varchar(200) CHARACTER SET utf8 NOT NULL,
  `submit_link` varchar(200) CHARACTER SET utf8 NOT NULL,
  `tags` varchar(255) CHARACTER SET utf8 NOT NULL,
  `reply_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entry_detail`
--

CREATE TABLE `entry_detail` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `entry_id` varchar(11) NOT NULL,
  `field_number` varchar(255) NOT NULL,
  `field_value` text CHARACTER SET utf8 NOT NULL,
  `field_label` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `extension_license`
--

CREATE TABLE `extension_license` (
  `lid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `plan_type` varchar(255) CHARACTER SET latin1 NOT NULL,
  `plan_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ext_id` int(11) NOT NULL,
  `stats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `extension_plan`
--

CREATE TABLE `extension_plan` (
  `epid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `ext_name` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `exp_date` datetime NOT NULL,
  `PlanId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feature_plan`
--

CREATE TABLE `feature_plan` (
  `F_PID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `n_form` int(11) NOT NULL,
  `n_entry` int(11) NOT NULL,
  `n_agent` int(11) NOT NULL,
  `plans` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fg_block_email`
--

CREATE TABLE `fg_block_email` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fg_extension`
--

CREATE TABLE `fg_extension` (
  `ext_id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `sub_heading` varchar(255) NOT NULL,
  `extension_img` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `html_text` text NOT NULL,
  `single_planid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fg_file_uploads`
--

CREATE TABLE `fg_file_uploads` (
  `id` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_per_upload` varchar(11) NOT NULL,
  `total_capacity` varchar(11) NOT NULL,
  `file_total_upload` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fg_friend_referral`
--

CREATE TABLE `fg_friend_referral` (
  `fg_uid` int(11) NOT NULL,
  `entry_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fg_payment_api`
--

CREATE TABLE `fg_payment_api` (
  `pid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `payment_option` varchar(100) NOT NULL,
  `payment_api` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for table `fg_user_payment_setting`
--

CREATE TABLE `fg_user_payment_setting` (
  `fid` int(11) NOT NULL,
  `payment_heading` varchar(255) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `totalamount` float NOT NULL,
  `currency` varchar(40) NOT NULL,
  `f_period` int(10) NOT NULL,
  `f_cycle` char(20) NOT NULL,
  `f_price` float NOT NULL,
  `payment_option` varchar(50) NOT NULL,
  `logic` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `form_id` int(11) NOT NULL,
  `form_data` longtext CHARACTER SET utf8 NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `html_form` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `formget_api`
--

CREATE TABLE `formget_api` (
  `user_id` int(11) NOT NULL,
  `aweber` text NOT NULL,
  `mailchimp` text NOT NULL,
  `madmimi` text NOT NULL,
  `icontact` varchar(255) NOT NULL,
  `getresponse` varchar(255) NOT NULL,
  `constant_contact` varchar(255) NOT NULL,
  `active_campaign` varchar(255) NOT NULL,
  `campaign_monitor` varchar(255) NOT NULL,
  `dropbox` longtext NOT NULL,
  `google_drive` longtext NOT NULL,
  `mailget` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `form_mapping`
--

CREATE TABLE `form_mapping` (
  `form_id` int(11) NOT NULL,
  `active_api` text NOT NULL,
  `aweber_mapping` text NOT NULL,
  `mailchimp_mapping` text NOT NULL,
  `madmimi_mapping` text NOT NULL,
  `icontact_mapping` text NOT NULL,
  `getresponse_mapping` text NOT NULL,
  `constant_mapping` text NOT NULL,
  `active_campaign_mapping` text NOT NULL,
  `campaign_monitor_mapping` text NOT NULL,
  `dropbox_mapping` text NOT NULL,
  `google_drive_mapping` longtext NOT NULL,
  `mailget_mapping` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `form_open_close`
--

CREATE TABLE `form_open_close` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `open_date` datetime NOT NULL,
  `open_msg` text NOT NULL,
  `close_date` datetime NOT NULL,
  `close_msg` text NOT NULL,
  `entry_limit` int(11) NOT NULL,
  `entry_msg` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `form_url`
--

CREATE TABLE `form_url` (
  `url_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `encrypted_id` varchar(255) NOT NULL,
  `mark_as` int(5) NOT NULL DEFAULT '1',
  `url` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `form_heading` varchar(255) CHARACTER SET utf8 NOT NULL,
  `height` int(11) NOT NULL,
  `form_color` text CHARACTER SET utf8 NOT NULL COMMENT 'form color and form design ',
  `view_form_setting` text CHARACTER SET utf8 NOT NULL,
  `form_desc` varchar(255) CHARACTER SET utf8 NOT NULL,
  `form_setting` text CHARACTER SET utf8 NOT NULL,
  `tab` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group_plan_product`
--

CREATE TABLE `group_plan_product` (
  `product_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `plan_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ifttt-data`
--

CREATE TABLE `ifttt-data` (
  `id` int(11) NOT NULL,
  `actual` text NOT NULL,
  `test` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `macro`
--

CREATE TABLE `macro` (
  `macro_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `macro_title` varchar(255) NOT NULL,
  `macro_detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `new_entry`
--

CREATE TABLE `new_entry` (
  `id` int(9) NOT NULL,
  `form_id` varchar(255) NOT NULL,
  `t_entry` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `other user ticket`
-- (See below for the actual view)
--
CREATE TABLE `other user ticket` (
`id` int(11)
,`form_id` int(11)
,`entry_id` int(11)
,`user_id` int(11)
,`ticket_reply_time` datetime
,`ticket_message` longtext
,`reply_check` int(5)
);

-- --------------------------------------------------------

--
-- Table structure for table `paymentcancel`
--

CREATE TABLE `paymentcancel` (
  `CID` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `paymentOption` varchar(100) NOT NULL,
  `paymentAmount` varchar(50) NOT NULL,
  `paymentType` varchar(150) NOT NULL,
  `paymentCusId` varchar(100) NOT NULL,
  `paymentUserId` varchar(100) NOT NULL,
  `subscriptionStart` datetime NOT NULL,
  `subscriptionEnd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `paypal_form`
--

CREATE TABLE `paypal_form` (
  `PID` int(8) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `paypal_email` varchar(100) NOT NULL,
  `billing_option` varchar(50) NOT NULL,
  `paypal_sendbox` varchar(10) NOT NULL COMMENT 'payment button image',
  `j_button_img` varchar(1000) NOT NULL COMMENT 'free join button image',
  `currency` varchar(10) NOT NULL,
  `product_price` float NOT NULL,
  `payment_period` varchar(10) NOT NULL,
  `payment_period_cycle` varchar(10) NOT NULL,
  `no_of_payment` int(10) NOT NULL,
  `trial_select` int(10) NOT NULL,
  `trial_price` float NOT NULL,
  `trial_period` varchar(10) NOT NULL,
  `trial_period_cycle` varchar(10) NOT NULL,
  `subs_period` int(100) NOT NULL,
  `subs_period_cycle` varchar(10) NOT NULL,
  `plan_type` varchar(150) CHARACTER SET utf8 NOT NULL,
  `subs_email` varchar(100) NOT NULL,
  `member_key` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `point`
--

CREATE TABLE `point` (
  `user_id` int(11) NOT NULL,
  `fast_reply` int(11) NOT NULL,
  `ontime_reply` int(11) NOT NULL,
  `late_reply` int(11) NOT NULL,
  `first_call_resolution` int(11) NOT NULL,
  `happy_customer` int(11) NOT NULL,
  `unhappy_customer` int(11) NOT NULL,
  `beginner` int(11) NOT NULL,
  `intermediate` int(11) NOT NULL,
  `professional` int(11) NOT NULL,
  `expert` int(11) NOT NULL,
  `master` int(11) NOT NULL,
  `guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quick_note`
--

CREATE TABLE `quick_note` (
  `q_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `q_note` varchar(255) CHARACTER SET utf8 NOT NULL,
  `note_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recurringpayment`
--

CREATE TABLE `recurringpayment` (
  `SID` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `ptype` varchar(100) NOT NULL,
  `txn_id` varchar(100) NOT NULL,
  `cus_id` varchar(100) NOT NULL,
  `pstatus` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `send_mail`
--

CREATE TABLE `send_mail` (
  `s_mail_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `euser_entry` text CHARACTER SET utf8 NOT NULL COMMENT 'Email to User after Entry is Submitted',
  `admin_reply_entry` text CHARACTER SET utf8 NOT NULL COMMENT 'Email to User when admin replies to user entry',
  `user_payment` text CHARACTER SET utf8 NOT NULL COMMENT 'Email to User when payment is sent by user',
  `admin_payment` text CHARACTER SET utf8 NOT NULL COMMENT 'Email to Admin when Payment is received by him',
  `admin_receive_entry` text CHARACTER SET utf8 NOT NULL COMMENT 'Email to Admin when entry is received',
  `success_message` text CHARACTER SET utf8 NOT NULL COMMENT 'tabbed footer link , iframe logo link and iframe sucessfully text',
  `tabb_page_logo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tabbed_footer_logo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `main_form_logo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email_status` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'a:7:{s:11:"euser_entry";s:2:"on";s:17:"admin_reply_entry";s:2:"on";s:12:"user_payment";s:2:"on";s:13:"admin_payment";s:2:"on";s:19:"admin_receive_entry";s:2:"on";s:15:"admin_agent_add";s:2:"on";s:15:"success_message";s:2:"on";}',
  `thanks_message` text CHARACTER SET utf8 NOT NULL,
  `send_mail22` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setup_extension`
--

CREATE TABLE `setup_extension` (
  `setup_id` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `epid` int(11) NOT NULL,
  `ext_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE `stats` (
  `stats_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `visited` int(6) NOT NULL,
  `entry` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stats_email_send_date`
--

CREATE TABLE `stats_email_send_date` (
  `email_send_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `send_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stripe_paid_users`
--

CREATE TABLE `stripe_paid_users` (
  `s_id` int(11) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_create_date` datetime NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `subs_id` varchar(255) NOT NULL,
  `plan_id` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `subs_interval` varchar(25) NOT NULL,
  `currency` varchar(25) NOT NULL,
  `subs_start` datetime NOT NULL,
  `cus_country` varchar(100) NOT NULL,
  `card_exp_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stripe_refund_cancel`
--

CREATE TABLE `stripe_refund_cancel` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `cancel_id` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stripe_subscription`
--

CREATE TABLE `stripe_subscription` (
  `s_id` int(11) NOT NULL,
  `subs_id` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `subs_interval` varchar(50) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `current_period_start` datetime NOT NULL,
  `current_period_end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_reply`
--

CREATE TABLE `ticket_reply` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ticket_reply_time` datetime NOT NULL,
  `ticket_message` longtext CHARACTER SET utf8 NOT NULL,
  `reply_check` int(5) NOT NULL COMMENT 'one time by user  check ',
  `visible` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'public'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `total_stats`
--

CREATE TABLE `total_stats` (
  `t_stats_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `t_visited` int(5) NOT NULL,
  `t_entry` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `total_stats_old`
--

CREATE TABLE `total_stats_old` (
  `t_stats_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `t_visited` int(5) NOT NULL,
  `t_entry` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trace_full_url`
--

CREATE TABLE `trace_full_url` (
  `url_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `url` varchar(225) NOT NULL,
  `status` varchar(10) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trace_url`
--

CREATE TABLE `trace_url` (
  `trace_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `url_link` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `user_email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ip_address` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'no_ip',
  `user_password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `contact_no` varchar(25) CHARACTER SET utf8 NOT NULL DEFAULT 'no number',
  `signup_link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `user_register_time` datetime NOT NULL,
  `user_verification` varchar(255) CHARACTER SET utf8 NOT NULL,
  `mark_as` int(5) NOT NULL DEFAULT '1',
  `is_active` int(11) NOT NULL,
  `secure_login_info` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_meta`
--

CREATE TABLE `users_meta` (
  `meta_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_agent_rel`
--

CREATE TABLE `user_agent_rel` (
  `rel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `field_number` varchar(50) NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_email_checking`
--

CREATE TABLE `user_email_checking` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_lap`
--

CREATE TABLE `user_lap` (
  `uid` int(11) NOT NULL,
  `total_form` int(11) NOT NULL,
  `total_entry` int(11) NOT NULL,
  `total_agent` int(11) NOT NULL,
  `total_site_embed` int(11) NOT NULL,
  `total_reply` int(11) NOT NULL,
  `total_email` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `login_date` datetime NOT NULL,
  `logout_date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_paypal_info`
--

CREATE TABLE `user_paypal_info` (
  `id` mediumint(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `payer_email` varchar(100) NOT NULL DEFAULT '',
  `receiver_email` varchar(255) NOT NULL,
  `card_last4` varchar(10) NOT NULL DEFAULT '',
  `card_type` varchar(50) NOT NULL DEFAULT '',
  `exp_month` varchar(10) NOT NULL DEFAULT '',
  `exp_year` varchar(10) NOT NULL DEFAULT '',
  `residence_country` varchar(255) NOT NULL DEFAULT '',
  `plan_name` varchar(255) NOT NULL DEFAULT '',
  `plan_id` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `quantity` char(10) DEFAULT NULL,
  `payment_type` varchar(50) NOT NULL DEFAULT '',
  `payer_status` varchar(50) NOT NULL DEFAULT '',
  `payer_id` varchar(50) NOT NULL DEFAULT '',
  `receiver_id` varchar(50) NOT NULL DEFAULT '',
  `parent_txn_id` varchar(30) NOT NULL DEFAULT '',
  `txn_id` varchar(30) NOT NULL DEFAULT '',
  `txn_type` varchar(10) NOT NULL DEFAULT '',
  `payment_status` varchar(50) NOT NULL DEFAULT '',
  `pending_reason` varchar(50) DEFAULT NULL,
  `mc_gross` varchar(10) NOT NULL DEFAULT '',
  `mc_fee` varchar(10) NOT NULL DEFAULT '',
  `tax` varchar(10) DEFAULT NULL,
  `exchange_rate` varchar(25) DEFAULT NULL,
  `mc_currency` varchar(20) NOT NULL DEFAULT '',
  `interval` varchar(50) NOT NULL DEFAULT '',
  `custom` varchar(255) NOT NULL DEFAULT '',
  `test_ipn` varchar(20) NOT NULL DEFAULT '',
  `payment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_plan`
--

CREATE TABLE `user_plan` (
  `UF_PID` int(11) NOT NULL,
  `F_PID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `u_form` int(11) NOT NULL,
  `u_entry` int(11) NOT NULL,
  `u_agent` int(11) NOT NULL,
  `plan_type` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `exp_date` datetime NOT NULL,
  `entry_id_max` int(11) NOT NULL,
  `monthly_date` datetime NOT NULL,
  `change_freq` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT 'D'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `other user ticket`
--
DROP TABLE IF EXISTS `other user ticket`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `other user ticket`  AS  select `ticket_reply`.`id` AS `id`,`ticket_reply`.`form_id` AS `form_id`,`ticket_reply`.`entry_id` AS `entry_id`,`ticket_reply`.`user_id` AS `user_id`,`ticket_reply`.`ticket_reply_time` AS `ticket_reply_time`,`ticket_reply`.`ticket_message` AS `ticket_message`,`ticket_reply`.`reply_check` AS `reply_check` from `ticket_reply` where ((`ticket_reply`.`form_id` <> '1') and (`ticket_reply`.`form_id` <> '57') and (`ticket_reply`.`form_id` <> '70') and (`ticket_reply`.`form_id` <> '639') and (`ticket_reply`.`form_id` <> '8802') and (`ticket_reply`.`form_id` <> '11632') and (`ticket_reply`.`form_id` <> '12914')) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abuse_form`
--
ALTER TABLE `abuse_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `active_embeds`
--
ALTER TABLE `active_embeds`
  ADD PRIMARY KEY (`a_e_id`),
  ADD KEY `date` (`date`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `active_login`
--
ALTER TABLE `active_login`
  ADD PRIMARY KEY (`a_l_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `app123`
--
ALTER TABLE `app123`
  ADD PRIMARY KEY (`app1`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `field_name` (`field_name`);

--
-- Indexes for table `ci_options`
--
ALTER TABLE `ci_options`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `ci_order_info`
--
ALTER TABLE `ci_order_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `create_date` (`create_date`),
  ADD KEY `payment_date` (`payment_date`),
  ADD KEY `txn_id` (`txn_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `custom_form_css`
--
ALTER TABLE `custom_form_css`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_store`
--
ALTER TABLE `email_store`
  ADD PRIMARY KEY (`es_id`);

--
-- Indexes for table `entry`
--
ALTER TABLE `entry`
  ADD PRIMARY KEY (`entry_id`),
  ADD KEY `ticket_status` (`ticket_status`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `reply_date` (`reply_date`);

--
-- Indexes for table `entry_detail`
--
ALTER TABLE `entry_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `index1` (`entry_id`);

--
-- Indexes for table `extension_license`
--
ALTER TABLE `extension_license`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `extension_plan`
--
ALTER TABLE `extension_plan`
  ADD PRIMARY KEY (`epid`);

--
-- Indexes for table `feature_plan`
--
ALTER TABLE `feature_plan`
  ADD PRIMARY KEY (`F_PID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `fg_block_email`
--
ALTER TABLE `fg_block_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fg_extension`
--
ALTER TABLE `fg_extension`
  ADD PRIMARY KEY (`ext_id`);

--
-- Indexes for table `fg_file_uploads`
--
ALTER TABLE `fg_file_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fg_friend_referral`
--
ALTER TABLE `fg_friend_referral`
  ADD PRIMARY KEY (`fg_uid`);

--
-- Indexes for table `fg_payment_api`
--
ALTER TABLE `fg_payment_api`
  ADD PRIMARY KEY (`pid`);

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
-- Indexes for table `fg_user_payment_setting`
--
ALTER TABLE `fg_user_payment_setting`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`form_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `formget_api`
--
ALTER TABLE `formget_api`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `form_mapping`
--
ALTER TABLE `form_mapping`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `form_open_close`
--
ALTER TABLE `form_open_close`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_url`
--
ALTER TABLE `form_url`
  ADD PRIMARY KEY (`url_id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `encrypted_id` (`encrypted_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `group_plan_product`
--
ALTER TABLE `group_plan_product`
  ADD PRIMARY KEY (`product_id`,`plan_id`);

--
-- Indexes for table `ifttt-data`
--
ALTER TABLE `ifttt-data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `macro`
--
ALTER TABLE `macro`
  ADD PRIMARY KEY (`macro_id`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `new_entry`
--
ALTER TABLE `new_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentcancel`
--
ALTER TABLE `paymentcancel`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `paypal_form`
--
ALTER TABLE `paypal_form`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `quick_note`
--
ALTER TABLE `quick_note`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `recurringpayment`
--
ALTER TABLE `recurringpayment`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `send_mail`
--
ALTER TABLE `send_mail`
  ADD PRIMARY KEY (`s_mail_id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Indexes for table `setup_extension`
--
ALTER TABLE `setup_extension`
  ADD PRIMARY KEY (`setup_id`);

--
-- Indexes for table `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`stats_id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `stats_email_send_date`
--
ALTER TABLE `stats_email_send_date`
  ADD PRIMARY KEY (`email_send_id`),
  ADD KEY `send_date` (`send_date`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `stripe_paid_users`
--
ALTER TABLE `stripe_paid_users`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `customer_create_date` (`customer_create_date`),
  ADD KEY `subs_id` (`subs_id`);

--
-- Indexes for table `stripe_refund_cancel`
--
ALTER TABLE `stripe_refund_cancel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `stripe_subscription`
--
ALTER TABLE `stripe_subscription`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `current_period_start` (`current_period_start`),
  ADD KEY `current_period_end` (`current_period_end`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `subs_id` (`subs_id`);

--
-- Indexes for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ticket_reply_time` (`ticket_reply_time`);

--
-- Indexes for table `total_stats`
--
ALTER TABLE `total_stats`
  ADD PRIMARY KEY (`t_stats_id`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `total_stats_old`
--
ALTER TABLE `total_stats_old`
  ADD PRIMARY KEY (`t_stats_id`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `trace_full_url`
--
ALTER TABLE `trace_full_url`
  ADD PRIMARY KEY (`url_id`),
  ADD KEY `date` (`date`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `trace_url`
--
ALTER TABLE `trace_url`
  ADD PRIMARY KEY (`trace_id`),
  ADD KEY `date` (`date`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `user_password` (`user_password`),
  ADD KEY `user_register_time` (`user_register_time`);

--
-- Indexes for table `users_meta`
--
ALTER TABLE `users_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `user_agent_rel`
--
ALTER TABLE `user_agent_rel`
  ADD PRIMARY KEY (`rel_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `agent_id` (`agent_id`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `user_email_checking`
--
ALTER TABLE `user_email_checking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_lap`
--
ALTER TABLE `user_lap`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_paypal_info`
--
ALTER TABLE `user_paypal_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `fid` (`fid`),
  ADD KEY `eid` (`eid`),
  ADD KEY `payment_date` (`payment_date`),
  ADD KEY `create_date` (`create_date`),
  ADD KEY `txn_id` (`txn_id`);

--
-- Indexes for table `user_plan`
--
ALTER TABLE `user_plan`
  ADD PRIMARY KEY (`UF_PID`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `F_PID` (`F_PID`),
  ADD KEY `date` (`date`),
  ADD KEY `exp_date` (`exp_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abuse_form`
--
ALTER TABLE `abuse_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `active_embeds`
--
ALTER TABLE `active_embeds`
  MODIFY `a_e_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `active_login`
--
ALTER TABLE `active_login`
  MODIFY `a_l_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app123`
--
ALTER TABLE `app123`
  MODIFY `app1` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_order_info`
--
ALTER TABLE `ci_order_info`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_form_css`
--
ALTER TABLE `custom_form_css`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_store`
--
ALTER TABLE `email_store`
  MODIFY `es_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entry`
--
ALTER TABLE `entry`
  MODIFY `entry_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entry_detail`
--
ALTER TABLE `entry_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `extension_license`
--
ALTER TABLE `extension_license`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `extension_plan`
--
ALTER TABLE `extension_plan`
  MODIFY `epid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feature_plan`
--
ALTER TABLE `feature_plan`
  MODIFY `F_PID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fg_block_email`
--
ALTER TABLE `fg_block_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fg_extension`
--
ALTER TABLE `fg_extension`
  MODIFY `ext_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fg_file_uploads`
--
ALTER TABLE `fg_file_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fg_payment_api`
--
ALTER TABLE `fg_payment_api`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_open_close`
--
ALTER TABLE `form_open_close`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_url`
--
ALTER TABLE `form_url`
  MODIFY `url_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ifttt-data`
--
ALTER TABLE `ifttt-data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `macro`
--
ALTER TABLE `macro`
  MODIFY `macro_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_entry`
--
ALTER TABLE `new_entry`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymentcancel`
--
ALTER TABLE `paymentcancel`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paypal_form`
--
ALTER TABLE `paypal_form`
  MODIFY `PID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quick_note`
--
ALTER TABLE `quick_note`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recurringpayment`
--
ALTER TABLE `recurringpayment`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `send_mail`
--
ALTER TABLE `send_mail`
  MODIFY `s_mail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setup_extension`
--
ALTER TABLE `setup_extension`
  MODIFY `setup_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stats`
--
ALTER TABLE `stats`
  MODIFY `stats_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stats_email_send_date`
--
ALTER TABLE `stats_email_send_date`
  MODIFY `email_send_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stripe_paid_users`
--
ALTER TABLE `stripe_paid_users`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stripe_refund_cancel`
--
ALTER TABLE `stripe_refund_cancel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stripe_subscription`
--
ALTER TABLE `stripe_subscription`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `total_stats`
--
ALTER TABLE `total_stats`
  MODIFY `t_stats_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `total_stats_old`
--
ALTER TABLE `total_stats_old`
  MODIFY `t_stats_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trace_full_url`
--
ALTER TABLE `trace_full_url`
  MODIFY `url_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trace_url`
--
ALTER TABLE `trace_url`
  MODIFY `trace_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_meta`
--
ALTER TABLE `users_meta`
  MODIFY `meta_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_agent_rel`
--
ALTER TABLE `user_agent_rel`
  MODIFY `rel_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_email_checking`
--
ALTER TABLE `user_email_checking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_paypal_info`
--
ALTER TABLE `user_paypal_info`
  MODIFY `id` mediumint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_plan`
--
ALTER TABLE `user_plan`
  MODIFY `UF_PID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
