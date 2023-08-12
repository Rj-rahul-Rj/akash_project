

CREATE TABLE `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO accounts VALUES("1","11111","Sales Account","1000","1000","this is first account","0","0","2018-12-18 20:28:02","2022-07-16 13:23:55");
INSERT INTO accounts VALUES("3","21211","Sa","0","0","","0","0","2018-12-18 20:28:56","2022-07-16 13:24:06");
INSERT INTO accounts VALUES("5","67665677","Ventas","1000","1000","","0","1","2022-07-16 13:23:28","2023-05-08 18:17:40");
INSERT INTO accounts VALUES("6","76344547","Compras","1000","1000","","1","1","2022-07-16 13:24:36","2023-05-08 18:17:40");
INSERT INTO accounts VALUES("7","696577665","Gastos","1000","1000","","","1","2022-07-16 13:24:55","2022-07-16 13:24:55");



CREATE TABLE `adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `billers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO billers VALUES("1","Bùi Đức Toàn","","AnToanHome","Toàn","hero70411@gmail.com","0904422959","58 Tố Hữu","Quận Nam Từ Liêm","Hà Nội","12015","Vietnam","1","2022-07-31 18:09:20","2022-07-31 18:09:20");



CREATE TABLE `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO brands VALUES("1","Apple","20221013045017.jpg","1","2022-07-31 17:44:43","2022-10-13 20:20:21");
INSERT INTO brands VALUES("2","Timken","","1","2023-01-06 17:00:25","2023-01-06 17:00:25");
INSERT INTO brands VALUES("3","Lotto","","1","2023-04-11 23:06:49","2023-04-11 23:06:49");



CREATE TABLE `cash_registers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cash_in_hand` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO cash_registers VALUES("1","200","1","1","0","2022-09-21 03:21:06","2023-02-19 15:00:49");



CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO categories VALUES("1","Mobile","20220731114240.jpg","","1","2022-07-31 17:45:28","2022-07-31 22:12:40");
INSERT INTO categories VALUES("2","Dell Laptop","","2","1","2022-09-21 03:51:53","2022-09-21 03:52:25");
INSERT INTO categories VALUES("3","Bearing","","","1","2023-01-06 16:55:21","2023-01-06 16:55:21");
INSERT INTO categories VALUES("4","Automobile","","","1","2023-01-23 15:10:28","2023-01-23 15:10:28");
INSERT INTO categories VALUES("5","Boiler Spares","","","1","2023-01-23 15:10:45","2023-01-23 15:10:45");
INSERT INTO categories VALUES("6","Cable Accessories","","","1","2023-01-23 15:10:58","2023-01-23 15:10:58");
INSERT INTO categories VALUES("7","CCM Spares","","","1","2023-01-23 15:11:11","2023-01-23 15:11:11");
INSERT INTO categories VALUES("8","Coal Impactor","","","1","2023-01-23 15:11:22","2023-01-23 15:11:22");
INSERT INTO categories VALUES("9","Cooling Tower","","","1","2023-01-23 15:11:32","2023-01-23 15:11:32");
INSERT INTO categories VALUES("10","Crane Spares","","","1","2023-01-23 15:11:43","2023-01-23 15:11:43");
INSERT INTO categories VALUES("11","Cutting Tools","","","1","2023-01-23 15:11:56","2023-01-23 15:11:56");
INSERT INTO categories VALUES("12","Fan & Blowers","","","1","2023-01-23 15:12:07","2023-01-23 15:12:07");
INSERT INTO categories VALUES("13","Fasteners","","","1","2023-01-23 15:12:22","2023-01-23 15:12:22");
INSERT INTO categories VALUES("14","Furnace Spares","","","1","2023-01-23 15:12:37","2023-01-23 15:12:37");
INSERT INTO categories VALUES("15","Gasifire & Spares","","","1","2023-01-23 15:12:47","2023-01-23 15:12:47");
INSERT INTO categories VALUES("16","General Stores","","","1","2023-01-23 15:13:01","2023-01-23 15:13:01");
INSERT INTO categories VALUES("17","Hand Tools","","","1","2023-01-23 15:13:10","2023-01-23 15:13:10");
INSERT INTO categories VALUES("18","Hydraulics","","","1","2023-01-23 15:13:22","2023-01-23 15:13:22");
INSERT INTO categories VALUES("19","Iron Ore Crusher","","","1","2023-01-23 15:13:32","2023-01-23 15:13:32");
INSERT INTO categories VALUES("20","Kiln Spares","","","1","2023-01-23 15:13:44","2023-01-23 15:13:44");
INSERT INTO categories VALUES("21","Lab Supplies","","","1","2023-01-23 15:14:00","2023-01-23 15:14:00");
INSERT INTO categories VALUES("22","Laddle & Spares","","","1","2023-01-23 15:14:18","2023-01-23 15:14:18");
INSERT INTO categories VALUES("23","Light & Fittings","","","1","2023-01-23 15:14:28","2023-01-23 15:14:28");
INSERT INTO categories VALUES("24","Lubricants & Oils","","","1","2023-01-23 15:14:41","2023-01-23 15:14:41");
INSERT INTO categories VALUES("25","Material Handling","","","1","2023-01-23 15:14:54","2023-01-23 15:14:54");
INSERT INTO categories VALUES("26","Measuring & Testing","","","1","2023-01-23 15:15:04","2023-01-23 15:15:04");
INSERT INTO categories VALUES("27","Mill Stand & Rolls","","","1","2023-01-23 15:15:18","2023-01-23 15:15:18");
INSERT INTO categories VALUES("28","Motor & Accessories","","","1","2023-01-23 15:15:34","2023-01-23 15:15:34");
INSERT INTO categories VALUES("29","bearing & block","","","0","2023-04-11 23:05:53","2023-04-11 23:16:52");
INSERT INTO categories VALUES("30","accessories","","","1","2023-04-11 23:06:50","2023-04-11 23:06:50");
INSERT INTO categories VALUES("31","food","","","1","2023-04-11 23:10:55","2023-04-11 23:10:55");
INSERT INTO categories VALUES("32","BEARING & BLOCK","","","1","2023-04-11 23:16:59","2023-04-11 23:16:59");
INSERT INTO categories VALUES("33","ACID & CHEMICALS","20230412020534.jpg","","1","2023-04-12 14:05:34","2023-04-12 14:05:34");
INSERT INTO categories VALUES("34","","","","0","2023-04-12 14:08:28","2023-04-14 00:15:32");
INSERT INTO categories VALUES("35","DIA, PUNCH & CUTTER","","","1","2023-04-13 23:30:12","2023-04-13 23:30:12");
INSERT INTO categories VALUES("36","ERC CLIP PROJECT","","","1","2023-04-14 00:04:49","2023-04-14 00:04:49");
INSERT INTO categories VALUES("37","V PULLY","","","1","2023-04-14 00:14:06","2023-04-14 00:14:06");
INSERT INTO categories VALUES("38","TUBE MILL","","","1","2023-04-14 00:15:03","2023-04-14 00:15:03");
INSERT INTO categories VALUES("39","REFRACTORY","","","1","2023-04-14 00:15:55","2023-04-14 00:15:55");
INSERT INTO categories VALUES("40","OFFICE EQUIPMENT","","","1","2023-04-14 00:16:08","2023-04-14 00:16:08");
INSERT INTO categories VALUES("41","WIRE ROPE","","","1","2023-04-27 14:55:08","2023-04-27 14:55:08");
INSERT INTO categories VALUES("42","SPARES OF KPT & BOSCH","","","1","2023-04-27 14:59:03","2023-04-27 14:59:03");
INSERT INTO categories VALUES("43","SPARES OF WELDING MACHINE","","","1","2023-04-27 15:25:30","2023-04-27 15:25:30");
INSERT INTO categories VALUES("44","DRILL BIT","","","1","2023-04-27 15:29:46","2023-04-27 15:29:46");
INSERT INTO categories VALUES("45","CABLES & GLAND","","","1","2023-04-27 15:38:22","2023-04-27 15:38:22");
INSERT INTO categories VALUES("46","CAPACITOR","","","1","2023-04-27 15:40:50","2023-04-27 15:40:50");
INSERT INTO categories VALUES("47","CONTACT BLOCK & PUSH BUTTON","","","1","2023-04-27 15:43:39","2023-04-27 15:43:39");
INSERT INTO categories VALUES("48","CONTACTOR, KIT & COILS","","","1","2023-04-28 23:37:13","2023-04-28 23:37:13");
INSERT INTO categories VALUES("49","LUGS","","","1","2023-04-28 23:44:22","2023-04-28 23:44:22");
INSERT INTO categories VALUES("50","MCB & MCCB","","","1","2023-04-28 23:49:22","2023-04-28 23:49:22");
INSERT INTO categories VALUES("51","METER & INSTRUMENT","","","1","2023-04-28 23:50:03","2023-04-28 23:50:03");
INSERT INTO categories VALUES("52","PUMP & MOTOR","","","1","2023-04-28 23:53:19","2023-04-28 23:53:19");
INSERT INTO categories VALUES("53","","","","1","2023-04-28 23:54:43","2023-04-28 23:54:43");
INSERT INTO categories VALUES("54","RELAY","","","1","2023-04-28 23:56:17","2023-04-28 23:56:17");
INSERT INTO categories VALUES("55","demo category","","","1","2023-05-08 00:21:57","2023-05-08 00:21:57");
INSERT INTO categories VALUES("56","ALLEN","","","1","2023-05-08 18:11:04","2023-05-08 18:11:04");



CREATE TABLE `coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO currencies VALUES("1","Indian Rupees","₹","1","2020-11-01 17:52:58","2022-10-02 01:53:45");
INSERT INTO currencies VALUES("3","Euro","Euro","0.85","2022-07-16 12:42:27","2022-07-31 14:48:25");



CREATE TABLE `customer_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO customer_groups VALUES("1","Vip","-10","1","2022-07-31 17:46:54","2022-07-31 18:11:05");



CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` double DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO customers VALUES("1","1","","Bùi Đức Toàn","AnToanHome","hero70411@gmail.com","0904422959","","58 Tố Hữu","Quận Nam Từ Liêm","Hà Nội","12015","Vietnam","25","","","1","2022-07-31 17:47:35","2022-07-31 21:04:32");
INSERT INTO customers VALUES("2","1","40","Inventory","Inventory","subham21sci@gmail.com","9898787677","sddd","noida","nopida","up","201301","iondia","","","","1","2022-12-05 16:52:22","2022-12-05 16:53:05");



CREATE TABLE `deliveries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO deliveries VALUES("1","dr-20220731-115653","1","1","58 Tố Hữu Quận Nam Từ Liêm Vietnam","","","","","3","2022-07-31 22:27:00","2022-07-31 22:27:00");



CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO departments VALUES("1","Accounting","1","2022-10-02 01:58:17","2022-10-02 01:58:17");



CREATE TABLE `deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `discount_plan_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discount_plan_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO discount_plan_customers VALUES("1","1","1","2022-07-31 21:38:54","2022-07-31 21:38:54");
INSERT INTO discount_plan_customers VALUES("2","2","1","2022-12-18 17:49:42","2022-12-18 17:49:42");



CREATE TABLE `discount_plan_discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discount_id` int(11) NOT NULL,
  `discount_plan_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO discount_plan_discounts VALUES("1","1","1","2022-07-31 21:41:21","2022-07-31 21:41:21");



CREATE TABLE `discount_plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO discount_plans VALUES("1","FlashSale","1","2022-07-31 21:38:54","2022-07-31 21:38:54");
INSERT INTO discount_plans VALUES("2","adarsh","1","2022-12-18 17:49:42","2022-12-18 17:49:42");



CREATE TABLE `discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicable_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_list` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_till` date NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `minimum_qty` double NOT NULL,
  `maximum_qty` double NOT NULL,
  `days` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO discounts VALUES("1","FlashSale1","All","","2022-08-01","2022-08-03","percentage","1","1","10","Mon,Tue,Wed,Thu,Fri,Sat,Sun","1","2022-07-31 21:41:21","2022-07-31 21:41:21");



CREATE TABLE `dso_alerts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_info` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO employees VALUES("1","Test","test@gmail.com","9898982525","1","38","","","","","1","2022-10-02 01:59:08","2022-10-02 01:59:08");



CREATE TABLE `expense_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO expense_categories VALUES("1","23020428","Lắp đặt","1","2022-07-31 18:20:34","2022-07-31 18:20:34");
INSERT INTO expense_categories VALUES("2","12025","example","1","2022-12-18 17:41:17","2022-12-18 17:41:17");



CREATE TABLE `expenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO expenses VALUES("1","er-20220731-075050","1","1","5","1","","100","","2022-07-31 18:20:50","2022-07-31 18:20:50");



CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `general_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_rtl` tinyint(1) DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_access` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `developed_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO general_settings VALUES("1","Nandan Steels","20230127023243.png","0","1","all","d-m-Y","Akash","standard","1","default.css","2018-07-06 23:43:11","2023-01-27 14:32:43","prefix");



CREATE TABLE `gift_card_recharges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `gift_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO gift_cards VALUES("1","0721283464761931","1000","0","1","","2022-09-10","1","1","2022-07-31 22:15:13","2022-07-31 22:15:13");



CREATE TABLE `holidays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `hrm_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO hrm_settings VALUES("1","9:00am","6:00pm","2019-01-02 19:50:08","2022-07-16 12:43:14");



CREATE TABLE `indents` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pname` varchar(200) DEFAULT NULL,
  `qty` varchar(200) DEFAULT NULL,
  `l_qty_order` varchar(200) DEFAULT NULL,
  `exp_date` varchar(100) DEFAULT NULL,
  `serial_no` varchar(200) DEFAULT NULL,
  `l_income_date` varchar(200) DEFAULT NULL,
  `l_price` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `warehouse` varchar(100) DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO indents VALUES("1","1","100","105","2023-04-05","99265514","","1000","31-03-23","2023-03-31 14:01:41","2023-03-31 15:17:10","1","1","","");
INSERT INTO indents VALUES("2","2","100","5","2023-04-15","05928605","","600","31-03-23","2023-03-31 15:12:23","2023-04-01 21:49:43","1","1","","");
INSERT INTO indents VALUES("3","4","123","123","2023-04-16","91214605","","200","01-04-23","2023-04-01 22:17:44","2023-04-01 22:17:44","1","1","","");
INSERT INTO indents VALUES("4","2629","5","5","2023-05-10","9999","","15","08-05-23","2023-05-08 18:27:29","2023-05-08 18:27:29","1","1","","");



CREATE TABLE `inwards` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(50) NOT NULL,
  `warehouse_id` varchar(50) NOT NULL,
  `truck_no` varchar(100) NOT NULL,
  `qty` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `user_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

INSERT INTO inwards VALUES("1","1","2","br065425","100","1","1","1","2023-03-28 11:15:42","2023-03-28 11:15:42");
INSERT INTO inwards VALUES("2","4","2","CG-16-5486","200","1","1","1","2023-03-29 17:53:10","2023-03-29 17:53:10");
INSERT INTO inwards VALUES("3","4","2","rrfx345678","1233","1","1","1","2023-04-01 22:20:11","2023-04-01 22:20:11");



CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO languages VALUES("1","en","2018-07-08 16:29:17","2019-12-25 11:04:20");



CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO migrations VALUES("1","2014_10_12_000000_create_users_table","1");
INSERT INTO migrations VALUES("2","2014_10_12_100000_create_password_resets_table","1");
INSERT INTO migrations VALUES("3","2018_02_17_060412_create_categories_table","1");
INSERT INTO migrations VALUES("4","2018_02_20_035727_create_brands_table","1");
INSERT INTO migrations VALUES("5","2018_02_25_100635_create_suppliers_table","1");
INSERT INTO migrations VALUES("6","2018_02_27_101619_create_warehouse_table","1");
INSERT INTO migrations VALUES("7","2018_03_03_040448_create_units_table","1");
INSERT INTO migrations VALUES("8","2018_03_04_041317_create_taxes_table","1");
INSERT INTO migrations VALUES("9","2018_03_10_061915_create_customer_groups_table","1");
INSERT INTO migrations VALUES("10","2018_03_10_090534_create_customers_table","1");
INSERT INTO migrations VALUES("11","2018_03_11_095547_create_billers_table","1");
INSERT INTO migrations VALUES("12","2018_04_05_054401_create_products_table","1");
INSERT INTO migrations VALUES("13","2018_04_06_133606_create_purchases_table","1");
INSERT INTO migrations VALUES("14","2018_04_06_154600_create_product_purchases_table","1");
INSERT INTO migrations VALUES("15","2018_04_06_154915_create_product_warhouse_table","1");
INSERT INTO migrations VALUES("16","2018_04_10_085927_create_sales_table","1");
INSERT INTO migrations VALUES("17","2018_04_10_090133_create_product_sales_table","1");
INSERT INTO migrations VALUES("18","2018_04_10_090254_create_payments_table","1");
INSERT INTO migrations VALUES("19","2018_04_10_090341_create_payment_with_cheque_table","1");
INSERT INTO migrations VALUES("20","2018_04_10_090509_create_payment_with_credit_card_table","1");
INSERT INTO migrations VALUES("21","2018_04_13_121436_create_quotation_table","1");
INSERT INTO migrations VALUES("22","2018_04_13_122324_create_product_quotation_table","1");
INSERT INTO migrations VALUES("23","2018_04_14_121802_create_transfers_table","1");
INSERT INTO migrations VALUES("24","2018_04_14_121913_create_product_transfer_table","1");
INSERT INTO migrations VALUES("25","2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table","2");
INSERT INTO migrations VALUES("26","2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table","3");
INSERT INTO migrations VALUES("27","2018_05_20_054532_create_adjustments_table","4");
INSERT INTO migrations VALUES("28","2018_05_20_054859_create_product_adjustments_table","4");
INSERT INTO migrations VALUES("29","2018_05_21_163419_create_returns_table","5");
INSERT INTO migrations VALUES("30","2018_05_21_163443_create_product_returns_table","5");
INSERT INTO migrations VALUES("31","2018_06_02_050905_create_roles_table","6");
INSERT INTO migrations VALUES("32","2018_06_02_073430_add_columns_to_users_table","7");
INSERT INTO migrations VALUES("33","2018_06_03_053738_create_permission_tables","8");
INSERT INTO migrations VALUES("36","2018_06_21_063736_create_pos_setting_table","9");
INSERT INTO migrations VALUES("37","2018_06_21_094155_add_user_id_to_sales_table","10");
INSERT INTO migrations VALUES("38","2018_06_21_101529_add_user_id_to_purchases_table","11");
INSERT INTO migrations VALUES("39","2018_06_21_103512_add_user_id_to_transfers_table","12");
INSERT INTO migrations VALUES("40","2018_06_23_061058_add_user_id_to_quotations_table","13");
INSERT INTO migrations VALUES("41","2018_06_23_082427_add_is_deleted_to_users_table","14");
INSERT INTO migrations VALUES("42","2018_06_25_043308_change_email_to_users_table","15");
INSERT INTO migrations VALUES("43","2018_07_06_115449_create_general_settings_table","16");
INSERT INTO migrations VALUES("44","2018_07_08_043944_create_languages_table","17");
INSERT INTO migrations VALUES("45","2018_07_11_102144_add_user_id_to_returns_table","18");
INSERT INTO migrations VALUES("46","2018_07_11_102334_add_user_id_to_payments_table","18");
INSERT INTO migrations VALUES("47","2018_07_22_130541_add_digital_to_products_table","19");
INSERT INTO migrations VALUES("49","2018_07_24_154250_create_deliveries_table","20");
INSERT INTO migrations VALUES("50","2018_08_16_053336_create_expense_categories_table","21");
INSERT INTO migrations VALUES("51","2018_08_17_115415_create_expenses_table","22");
INSERT INTO migrations VALUES("55","2018_08_18_050418_create_gift_cards_table","23");
INSERT INTO migrations VALUES("56","2018_08_19_063119_create_payment_with_gift_card_table","24");
INSERT INTO migrations VALUES("57","2018_08_25_042333_create_gift_card_recharges_table","25");
INSERT INTO migrations VALUES("58","2018_08_25_101354_add_deposit_expense_to_customers_table","26");
INSERT INTO migrations VALUES("59","2018_08_26_043801_create_deposits_table","27");
INSERT INTO migrations VALUES("60","2018_09_02_044042_add_keybord_active_to_pos_setting_table","28");
INSERT INTO migrations VALUES("61","2018_09_09_092713_create_payment_with_paypal_table","29");
INSERT INTO migrations VALUES("62","2018_09_10_051254_add_currency_to_general_settings_table","30");
INSERT INTO migrations VALUES("63","2018_10_22_084118_add_biller_and_store_id_to_users_table","31");
INSERT INTO migrations VALUES("65","2018_10_26_034927_create_coupons_table","32");
INSERT INTO migrations VALUES("66","2018_10_27_090857_add_coupon_to_sales_table","33");
INSERT INTO migrations VALUES("67","2018_11_07_070155_add_currency_position_to_general_settings_table","34");
INSERT INTO migrations VALUES("68","2018_11_19_094650_add_combo_to_products_table","35");
INSERT INTO migrations VALUES("69","2018_12_09_043712_create_accounts_table","36");
INSERT INTO migrations VALUES("70","2018_12_17_112253_add_is_default_to_accounts_table","37");
INSERT INTO migrations VALUES("71","2018_12_19_103941_add_account_id_to_payments_table","38");
INSERT INTO migrations VALUES("72","2018_12_20_065900_add_account_id_to_expenses_table","39");
INSERT INTO migrations VALUES("73","2018_12_20_082753_add_account_id_to_returns_table","40");
INSERT INTO migrations VALUES("74","2018_12_26_064330_create_return_purchases_table","41");
INSERT INTO migrations VALUES("75","2018_12_26_144210_create_purchase_product_return_table","42");
INSERT INTO migrations VALUES("76","2018_12_26_144708_create_purchase_product_return_table","43");
INSERT INTO migrations VALUES("77","2018_12_27_110018_create_departments_table","44");
INSERT INTO migrations VALUES("78","2018_12_30_054844_create_employees_table","45");
INSERT INTO migrations VALUES("79","2018_12_31_125210_create_payrolls_table","46");
INSERT INTO migrations VALUES("80","2018_12_31_150446_add_department_id_to_employees_table","47");
INSERT INTO migrations VALUES("81","2019_01_01_062708_add_user_id_to_expenses_table","48");
INSERT INTO migrations VALUES("82","2019_01_02_075644_create_hrm_settings_table","49");
INSERT INTO migrations VALUES("83","2019_01_02_090334_create_attendances_table","50");
INSERT INTO migrations VALUES("84","2019_01_27_160956_add_three_columns_to_general_settings_table","51");
INSERT INTO migrations VALUES("85","2019_02_15_183303_create_stock_counts_table","52");
INSERT INTO migrations VALUES("86","2019_02_17_101604_add_is_adjusted_to_stock_counts_table","53");
INSERT INTO migrations VALUES("87","2019_04_13_101707_add_tax_no_to_customers_table","54");
INSERT INTO migrations VALUES("89","2019_10_14_111455_create_holidays_table","55");
INSERT INTO migrations VALUES("90","2019_11_13_145619_add_is_variant_to_products_table","56");
INSERT INTO migrations VALUES("91","2019_11_13_150206_create_product_variants_table","57");
INSERT INTO migrations VALUES("92","2019_11_13_153828_create_variants_table","57");
INSERT INTO migrations VALUES("93","2019_11_25_134041_add_qty_to_product_variants_table","58");
INSERT INTO migrations VALUES("94","2019_11_25_134922_add_variant_id_to_product_purchases_table","58");
INSERT INTO migrations VALUES("95","2019_11_25_145341_add_variant_id_to_product_warehouse_table","58");
INSERT INTO migrations VALUES("96","2019_11_29_182201_add_variant_id_to_product_sales_table","59");
INSERT INTO migrations VALUES("97","2019_12_04_121311_add_variant_id_to_product_quotation_table","60");
INSERT INTO migrations VALUES("98","2019_12_05_123802_add_variant_id_to_product_transfer_table","61");
INSERT INTO migrations VALUES("100","2019_12_08_114954_add_variant_id_to_product_returns_table","62");
INSERT INTO migrations VALUES("101","2019_12_08_203146_add_variant_id_to_purchase_product_return_table","63");
INSERT INTO migrations VALUES("102","2020_02_28_103340_create_money_transfers_table","64");
INSERT INTO migrations VALUES("103","2020_07_01_193151_add_image_to_categories_table","65");
INSERT INTO migrations VALUES("105","2020_09_26_130426_add_user_id_to_deliveries_table","66");
INSERT INTO migrations VALUES("107","2020_10_11_125457_create_cash_registers_table","67");
INSERT INTO migrations VALUES("108","2020_10_13_155019_add_cash_register_id_to_sales_table","68");
INSERT INTO migrations VALUES("109","2020_10_13_172624_add_cash_register_id_to_returns_table","69");
INSERT INTO migrations VALUES("110","2020_10_17_212338_add_cash_register_id_to_payments_table","70");
INSERT INTO migrations VALUES("111","2020_10_18_124200_add_cash_register_id_to_expenses_table","71");
INSERT INTO migrations VALUES("112","2020_10_21_121632_add_developed_by_to_general_settings_table","72");
INSERT INTO migrations VALUES("113","2019_08_19_000000_create_failed_jobs_table","73");
INSERT INTO migrations VALUES("114","2020_10_30_135557_create_notifications_table","73");
INSERT INTO migrations VALUES("115","2020_11_01_044954_create_currencies_table","74");
INSERT INTO migrations VALUES("116","2020_11_01_140736_add_price_to_product_warehouse_table","75");
INSERT INTO migrations VALUES("117","2020_11_02_050633_add_is_diff_price_to_products_table","76");
INSERT INTO migrations VALUES("118","2020_11_09_055222_add_user_id_to_customers_table","77");
INSERT INTO migrations VALUES("119","2020_11_17_054806_add_invoice_format_to_general_settings_table","78");
INSERT INTO migrations VALUES("120","2021_02_10_074859_add_variant_id_to_product_adjustments_table","79");
INSERT INTO migrations VALUES("121","2021_03_07_093606_create_product_batches_table","80");
INSERT INTO migrations VALUES("122","2021_03_07_093759_add_product_batch_id_to_product_warehouse_table","80");
INSERT INTO migrations VALUES("123","2021_03_07_093900_add_product_batch_id_to_product_purchases_table","80");
INSERT INTO migrations VALUES("124","2021_03_11_132603_add_product_batch_id_to_product_sales_table","81");
INSERT INTO migrations VALUES("127","2021_03_25_125421_add_is_batch_to_products_table","82");
INSERT INTO migrations VALUES("128","2021_05_19_120127_add_product_batch_id_to_product_returns_table","82");
INSERT INTO migrations VALUES("130","2021_05_22_105611_add_product_batch_id_to_purchase_product_return_table","83");
INSERT INTO migrations VALUES("131","2021_05_23_124848_add_product_batch_id_to_product_transfer_table","84");
INSERT INTO migrations VALUES("132","2021_05_26_153106_add_product_batch_id_to_product_quotation_table","85");
INSERT INTO migrations VALUES("133","2021_06_08_213007_create_reward_point_settings_table","86");
INSERT INTO migrations VALUES("134","2021_06_16_104155_add_points_to_customers_table","87");
INSERT INTO migrations VALUES("135","2021_06_17_101057_add_used_points_to_payments_table","88");
INSERT INTO migrations VALUES("136","2021_07_06_132716_add_variant_list_to_products_table","89");
INSERT INTO migrations VALUES("137","2021_09_27_161141_add_is_imei_to_products_table","90");
INSERT INTO migrations VALUES("138","2021_09_28_170052_add_imei_number_to_product_warehouse_table","91");
INSERT INTO migrations VALUES("139","2021_09_28_170126_add_imei_number_to_product_purchases_table","91");
INSERT INTO migrations VALUES("140","2021_10_03_170652_add_imei_number_to_product_sales_table","92");
INSERT INTO migrations VALUES("141","2021_10_10_145214_add_imei_number_to_product_returns_table","93");
INSERT INTO migrations VALUES("142","2021_10_11_104504_add_imei_number_to_product_transfer_table","94");
INSERT INTO migrations VALUES("143","2021_10_12_160107_add_imei_number_to_purchase_product_return_table","95");
INSERT INTO migrations VALUES("144","2021_10_12_205146_add_is_rtl_to_general_settings_table","96");
INSERT INTO migrations VALUES("145","2021_10_23_142451_add_is_approve_to_payments_table","97");
INSERT INTO migrations VALUES("146","2022_01_13_191242_create_discount_plans_table","97");
INSERT INTO migrations VALUES("147","2022_01_14_174318_create_discount_plan_customers_table","97");
INSERT INTO migrations VALUES("148","2022_01_14_202439_create_discounts_table","98");
INSERT INTO migrations VALUES("149","2022_01_16_153506_create_discount_plan_discounts_table","98");
INSERT INTO migrations VALUES("150","2022_02_05_174210_add_order_discount_type_and_value_to_sales_table","99");
INSERT INTO migrations VALUES("154","2022_05_26_195506_add_daily_sale_objective_to_products_table","100");
INSERT INTO migrations VALUES("155","2022_05_28_104209_create_dso_alerts_table","101");
INSERT INTO migrations VALUES("156","2022_06_01_112100_add_is_embeded_to_products_table","102");



CREATE TABLE `money_transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO money_transfers VALUES("1","mtr-20220922-084520","5","6","500","2022-09-23 00:15:20","2022-09-23 00:15:20");



CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO password_resets VALUES("subham@kumar.com","$2y$10$bg1ApWApBW8frDmU/rQoGu/fxwJmISoOlZBRTG7RmTt7aNeNCSQt.","2023-04-28 00:18:13");



CREATE TABLE `payment_with_cheque` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payment_with_credit_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payment_with_gift_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payment_with_paypal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `used_points` double DEFAULT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payments VALUES("1","ppr-20220731-073645","1","1","","","5","8300","","0","Cash","","2022-07-31 18:06:45","2022-07-31 18:06:45");
INSERT INTO payments VALUES("2","spr-20220731-074532","1","","1","","5","1773","","1000","Cash","","2022-07-31 18:15:32","2022-07-31 20:51:29");
INSERT INTO payments VALUES("3","spr-20220731-103409","1","","2","","5","1800","","0","Gift Card","","2022-07-31 21:04:09","2022-07-31 21:04:09");
INSERT INTO payments VALUES("4","spr-20220731-103413","1","","3","","5","1800","","0","Gift Card","","2022-07-31 21:04:13","2022-07-31 21:04:13");
INSERT INTO payments VALUES("5","ppr-20230219-030306","1","3","","","6","872","","0","Cash","","2023-02-19 15:03:06","2023-02-19 15:03:06");



CREATE TABLE `payrolls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO permissions VALUES("4","products-edit","web","2018-06-03 18:30:09","2018-06-03 18:30:09");
INSERT INTO permissions VALUES("5","products-delete","web","2018-06-04 16:24:22","2018-06-04 16:24:22");
INSERT INTO permissions VALUES("6","products-add","web","2018-06-04 18:04:14","2018-06-04 18:04:14");
INSERT INTO permissions VALUES("7","products-index","web","2018-06-04 21:04:27","2018-06-04 21:04:27");
INSERT INTO permissions VALUES("8","purchases-index","web","2018-06-05 01:33:19","2018-06-05 01:33:19");
INSERT INTO permissions VALUES("9","purchases-add","web","2018-06-05 01:42:25","2018-06-05 01:42:25");
INSERT INTO permissions VALUES("10","purchases-edit","web","2018-06-05 03:17:36","2018-06-05 03:17:36");
INSERT INTO permissions VALUES("11","purchases-delete","web","2018-06-05 03:17:36","2018-06-05 03:17:36");
INSERT INTO permissions VALUES("12","sales-index","web","2018-06-05 04:19:08","2018-06-05 04:19:08");
INSERT INTO permissions VALUES("13","sales-add","web","2018-06-05 04:19:52","2018-06-05 04:19:52");
INSERT INTO permissions VALUES("14","sales-edit","web","2018-06-05 04:19:52","2018-06-05 04:19:52");
INSERT INTO permissions VALUES("15","sales-delete","web","2018-06-05 04:19:53","2018-06-05 04:19:53");
INSERT INTO permissions VALUES("16","quotes-index","web","2018-06-05 15:35:10","2018-06-05 15:35:10");
INSERT INTO permissions VALUES("17","quotes-add","web","2018-06-05 15:35:10","2018-06-05 15:35:10");
INSERT INTO permissions VALUES("18","quotes-edit","web","2018-06-05 15:35:10","2018-06-05 15:35:10");
INSERT INTO permissions VALUES("19","quotes-delete","web","2018-06-05 15:35:10","2018-06-05 15:35:10");
INSERT INTO permissions VALUES("20","transfers-index","web","2018-06-05 16:00:03","2018-06-05 16:00:03");
INSERT INTO permissions VALUES("21","transfers-add","web","2018-06-05 16:00:03","2018-06-05 16:00:03");
INSERT INTO permissions VALUES("22","transfers-edit","web","2018-06-05 16:00:03","2018-06-05 16:00:03");
INSERT INTO permissions VALUES("23","transfers-delete","web","2018-06-05 16:00:03","2018-06-05 16:00:03");
INSERT INTO permissions VALUES("24","returns-index","web","2018-06-05 16:20:24","2018-06-05 16:20:24");
INSERT INTO permissions VALUES("25","returns-add","web","2018-06-05 16:20:24","2018-06-05 16:20:24");
INSERT INTO permissions VALUES("26","returns-edit","web","2018-06-05 16:20:25","2018-06-05 16:20:25");
INSERT INTO permissions VALUES("27","returns-delete","web","2018-06-05 16:20:25","2018-06-05 16:20:25");
INSERT INTO permissions VALUES("28","customers-index","web","2018-06-05 16:45:54","2018-06-05 16:45:54");
INSERT INTO permissions VALUES("29","customers-add","web","2018-06-05 16:45:55","2018-06-05 16:45:55");
INSERT INTO permissions VALUES("30","customers-edit","web","2018-06-05 16:45:55","2018-06-05 16:45:55");
INSERT INTO permissions VALUES("31","customers-delete","web","2018-06-05 16:45:55","2018-06-05 16:45:55");
INSERT INTO permissions VALUES("32","suppliers-index","web","2018-06-05 17:10:12","2018-06-05 17:10:12");
INSERT INTO permissions VALUES("33","suppliers-add","web","2018-06-05 17:10:12","2018-06-05 17:10:12");
INSERT INTO permissions VALUES("34","suppliers-edit","web","2018-06-05 17:10:12","2018-06-05 17:10:12");
INSERT INTO permissions VALUES("35","suppliers-delete","web","2018-06-05 17:10:12","2018-06-05 17:10:12");
INSERT INTO permissions VALUES("36","product-report","web","2018-06-25 16:35:33","2018-06-25 16:35:33");
INSERT INTO permissions VALUES("37","purchase-report","web","2018-06-25 16:54:56","2018-06-25 16:54:56");
INSERT INTO permissions VALUES("38","sale-report","web","2018-06-25 17:03:13","2018-06-25 17:03:13");
INSERT INTO permissions VALUES("39","customer-report","web","2018-06-25 17:06:51","2018-06-25 17:06:51");
INSERT INTO permissions VALUES("40","due-report","web","2018-06-25 17:09:52","2018-06-25 17:09:52");
INSERT INTO permissions VALUES("41","users-index","web","2018-06-25 17:30:10","2018-06-25 17:30:10");
INSERT INTO permissions VALUES("42","users-add","web","2018-06-25 17:30:10","2018-06-25 17:30:10");
INSERT INTO permissions VALUES("43","users-edit","web","2018-06-25 17:31:30","2018-06-25 17:31:30");
INSERT INTO permissions VALUES("44","users-delete","web","2018-06-25 17:31:30","2018-06-25 17:31:30");
INSERT INTO permissions VALUES("45","profit-loss","web","2018-07-15 15:20:05","2018-07-15 15:20:05");
INSERT INTO permissions VALUES("46","best-seller","web","2018-07-15 15:31:38","2018-07-15 15:31:38");
INSERT INTO permissions VALUES("47","daily-sale","web","2018-07-15 15:54:21","2018-07-15 15:54:21");
INSERT INTO permissions VALUES("48","monthly-sale","web","2018-07-15 16:00:41","2018-07-15 16:00:41");
INSERT INTO permissions VALUES("49","daily-purchase","web","2018-07-15 16:06:46","2018-07-15 16:06:46");
INSERT INTO permissions VALUES("50","monthly-purchase","web","2018-07-15 16:18:17","2018-07-15 16:18:17");
INSERT INTO permissions VALUES("51","payment-report","web","2018-07-15 16:40:41","2018-07-15 16:40:41");
INSERT INTO permissions VALUES("52","warehouse-stock-report","web","2018-07-15 16:46:55","2018-07-15 16:46:55");
INSERT INTO permissions VALUES("53","product-qty-alert","web","2018-07-15 17:03:21","2018-07-15 17:03:21");
INSERT INTO permissions VALUES("54","supplier-report","web","2018-07-30 20:30:01","2018-07-30 20:30:01");
INSERT INTO permissions VALUES("55","expenses-index","web","2018-09-05 18:37:10","2018-09-05 18:37:10");
INSERT INTO permissions VALUES("56","expenses-add","web","2018-09-05 18:37:10","2018-09-05 18:37:10");
INSERT INTO permissions VALUES("57","expenses-edit","web","2018-09-05 18:37:10","2018-09-05 18:37:10");
INSERT INTO permissions VALUES("58","expenses-delete","web","2018-09-05 18:37:11","2018-09-05 18:37:11");
INSERT INTO permissions VALUES("59","general_setting","web","2018-10-20 16:40:04","2018-10-20 16:40:04");
INSERT INTO permissions VALUES("60","mail_setting","web","2018-10-20 16:40:04","2018-10-20 16:40:04");
INSERT INTO permissions VALUES("61","pos_setting","web","2018-10-20 16:40:04","2018-10-20 16:40:04");
INSERT INTO permissions VALUES("62","hrm_setting","web","2019-01-03 04:00:23","2019-01-03 04:00:23");
INSERT INTO permissions VALUES("63","purchase-return-index","web","2019-01-03 15:15:14","2019-01-03 15:15:14");
INSERT INTO permissions VALUES("64","purchase-return-add","web","2019-01-03 15:15:14","2019-01-03 15:15:14");
INSERT INTO permissions VALUES("65","purchase-return-edit","web","2019-01-03 15:15:14","2019-01-03 15:15:14");
INSERT INTO permissions VALUES("66","purchase-return-delete","web","2019-01-03 15:15:14","2019-01-03 15:15:14");
INSERT INTO permissions VALUES("67","account-index","web","2019-01-03 15:36:13","2019-01-03 15:36:13");
INSERT INTO permissions VALUES("68","balance-sheet","web","2019-01-03 15:36:14","2019-01-03 15:36:14");
INSERT INTO permissions VALUES("69","account-statement","web","2019-01-03 15:36:14","2019-01-03 15:36:14");
INSERT INTO permissions VALUES("70","department","web","2019-01-03 16:00:01","2019-01-03 16:00:01");
INSERT INTO permissions VALUES("71","attendance","web","2019-01-03 16:00:01","2019-01-03 16:00:01");
INSERT INTO permissions VALUES("72","payroll","web","2019-01-03 16:00:01","2019-01-03 16:00:01");
INSERT INTO permissions VALUES("73","employees-index","web","2019-01-03 16:22:19","2019-01-03 16:22:19");
INSERT INTO permissions VALUES("74","employees-add","web","2019-01-03 16:22:19","2019-01-03 16:22:19");
INSERT INTO permissions VALUES("75","employees-edit","web","2019-01-03 16:22:19","2019-01-03 16:22:19");
INSERT INTO permissions VALUES("76","employees-delete","web","2019-01-03 16:22:19","2019-01-03 16:22:19");
INSERT INTO permissions VALUES("77","user-report","web","2019-01-17 00:18:18","2019-01-17 00:18:18");
INSERT INTO permissions VALUES("78","stock_count","web","2019-02-18 04:02:01","2019-02-18 04:02:01");
INSERT INTO permissions VALUES("79","adjustment","web","2019-02-18 04:02:02","2019-02-18 04:02:02");
INSERT INTO permissions VALUES("80","sms_setting","web","2019-02-22 22:48:03","2019-02-22 22:48:03");
INSERT INTO permissions VALUES("81","create_sms","web","2019-02-22 22:48:03","2019-02-22 22:48:03");
INSERT INTO permissions VALUES("82","print_barcode","web","2019-03-07 22:32:19","2019-03-07 22:32:19");
INSERT INTO permissions VALUES("83","empty_database","web","2019-03-07 22:32:19","2019-03-07 22:32:19");
INSERT INTO permissions VALUES("84","customer_group","web","2019-03-07 23:07:15","2019-03-07 23:07:15");
INSERT INTO permissions VALUES("85","unit","web","2019-03-07 23:07:15","2019-03-07 23:07:15");
INSERT INTO permissions VALUES("86","tax","web","2019-03-07 23:07:15","2019-03-07 23:07:15");
INSERT INTO permissions VALUES("87","gift_card","web","2019-03-07 23:59:38","2019-03-07 23:59:38");
INSERT INTO permissions VALUES("88","coupon","web","2019-03-07 23:59:38","2019-03-07 23:59:38");
INSERT INTO permissions VALUES("89","holiday","web","2019-10-20 02:27:15","2019-10-20 02:27:15");
INSERT INTO permissions VALUES("90","warehouse-report","web","2019-10-22 23:30:23","2019-10-22 23:30:23");
INSERT INTO permissions VALUES("91","warehouse","web","2020-02-27 00:17:32","2020-02-27 00:17:32");
INSERT INTO permissions VALUES("92","brand","web","2020-02-27 00:29:59","2020-02-27 00:29:59");
INSERT INTO permissions VALUES("93","billers-index","web","2020-02-27 00:41:15","2020-02-27 00:41:15");
INSERT INTO permissions VALUES("94","billers-add","web","2020-02-27 00:41:15","2020-02-27 00:41:15");
INSERT INTO permissions VALUES("95","billers-edit","web","2020-02-27 00:41:15","2020-02-27 00:41:15");
INSERT INTO permissions VALUES("96","billers-delete","web","2020-02-27 00:41:15","2020-02-27 00:41:15");
INSERT INTO permissions VALUES("97","money-transfer","web","2020-03-02 23:11:48","2020-03-02 23:11:48");
INSERT INTO permissions VALUES("98","category","web","2020-07-14 05:43:16","2020-07-14 05:43:16");
INSERT INTO permissions VALUES("99","delivery","web","2020-07-14 05:43:16","2020-07-14 05:43:16");
INSERT INTO permissions VALUES("100","send_notification","web","2020-10-31 23:51:31","2020-10-31 23:51:31");
INSERT INTO permissions VALUES("101","today_sale","web","2020-11-01 00:27:04","2020-11-01 00:27:04");
INSERT INTO permissions VALUES("102","today_profit","web","2020-11-01 00:27:04","2020-11-01 00:27:04");
INSERT INTO permissions VALUES("103","currency","web","2020-11-09 17:53:11","2020-11-09 17:53:11");
INSERT INTO permissions VALUES("104","backup_database","web","2020-11-15 17:46:55","2020-11-15 17:46:55");
INSERT INTO permissions VALUES("105","reward_point_setting","web","2021-06-27 22:04:42","2021-06-27 22:04:42");
INSERT INTO permissions VALUES("106","revenue_profit_summary","web","2022-02-09 07:27:21","2022-02-09 07:27:21");
INSERT INTO permissions VALUES("107","cash_flow","web","2022-02-09 07:27:22","2022-02-09 07:27:22");
INSERT INTO permissions VALUES("108","monthly_summary","web","2022-02-09 07:27:22","2022-02-09 07:27:22");
INSERT INTO permissions VALUES("109","yearly_report","web","2022-02-09 07:27:22","2022-02-09 07:27:22");
INSERT INTO permissions VALUES("110","discount_plan","web","2022-02-17 02:42:26","2022-02-17 02:42:26");
INSERT INTO permissions VALUES("111","discount","web","2022-02-17 02:42:38","2022-02-17 02:42:38");
INSERT INTO permissions VALUES("112","product-expiry-report","web","2022-03-30 23:09:20","2022-03-30 23:09:20");
INSERT INTO permissions VALUES("113","purchase-payment-index","web","2022-06-06 07:42:27","2022-06-06 07:42:27");
INSERT INTO permissions VALUES("114","purchase-payment-add","web","2022-06-06 07:42:28","2022-06-06 07:42:28");
INSERT INTO permissions VALUES("115","purchase-payment-edit","web","2022-06-06 07:42:28","2022-06-06 07:42:28");
INSERT INTO permissions VALUES("116","purchase-payment-delete","web","2022-06-06 07:42:28","2022-06-06 07:42:28");
INSERT INTO permissions VALUES("117","sale-payment-index","web","2022-06-06 07:42:28","2022-06-06 07:42:28");
INSERT INTO permissions VALUES("118","sale-payment-add","web","2022-06-06 07:42:28","2022-06-06 07:42:28");
INSERT INTO permissions VALUES("119","sale-payment-edit","web","2022-06-06 07:42:28","2022-06-06 07:42:28");
INSERT INTO permissions VALUES("120","sale-payment-delete","web","2022-06-06 07:42:28","2022-06-06 07:42:28");
INSERT INTO permissions VALUES("121","all_notification","web","2022-06-06 07:42:29","2022-06-06 07:42:29");
INSERT INTO permissions VALUES("122","sale-report-chart","web","2022-06-06 07:42:29","2022-06-06 07:42:29");
INSERT INTO permissions VALUES("123","dso-report","web","2022-06-06 07:42:29","2022-06-06 07:42:29");
INSERT INTO permissions VALUES("124","supplier-due-report","web","2023-01-03 12:25:32","2023-01-03 12:25:32");
INSERT INTO permissions VALUES("125","product_history","web","2023-01-03 12:25:45","2023-01-03 12:25:45");



CREATE TABLE `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `pos_setting_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO pos_setting VALUES("1","1","1","1","4","0","pk_test_ITN7KOYiIsHSCQ0UMRcgaYUB","sk_test_TtQQaawhEYRwa3mU9CzttrEy","2018-09-02 20:47:04","2022-07-16 14:18:25");



CREATE TABLE `product_adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `product_batches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `batch_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_date` date NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `product_departments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO product_departments VALUES("1","testing","1","2023-03-25 12:26:30","2023-03-25 12:26:43");
INSERT INTO product_departments VALUES("2","Demo dep. 01","0","2023-03-25 12:28:52","2023-03-29 18:16:03");
INSERT INTO product_departments VALUES("3","Demo dep. 02","1","2023-03-25 12:29:09","2023-03-25 12:29:09");
INSERT INTO product_departments VALUES("4","live dept","1","2023-03-29 18:16:15","2023-03-29 18:16:15");



CREATE TABLE `product_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_purchases VALUES("1","1","1","","","","10","10","1","800","0","0","0","8000","2022-07-31 17:51:45","2022-07-31 17:51:45");
INSERT INTO product_purchases VALUES("2","2","1","","","","5","5","1","800","0","0","0","4000","2023-02-10 21:24:33","2023-02-10 21:24:33");
INSERT INTO product_purchases VALUES("3","3","1","","","","1","1","1","800","0","0","0","800","2023-02-19 15:02:48","2023-02-19 15:02:48");



CREATE TABLE `product_quotation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_quotation VALUES("1","1","1","","","2","1","900","0","0","0","1800","2023-04-06 23:01:24","2023-04-06 23:01:24");
INSERT INTO product_quotation VALUES("2","2","1","","","1","1","900","0","0","0","900","2023-04-30 00:16:17","2023-04-30 00:16:17");
INSERT INTO product_quotation VALUES("3","3","1","","","5","1","900","0","0","0","4500","2023-04-30 13:55:10","2023-04-30 13:55:10");
INSERT INTO product_quotation VALUES("4","4","1","","","1","1","900","0","0","0","900","2023-04-30 13:57:44","2023-04-30 13:57:44");



CREATE TABLE `product_returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_returns VALUES("1","1","1","","","","1","1","900","0","0","0","900","2022-07-31 18:18:30","2022-07-31 18:18:30");



CREATE TABLE `product_sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_sales VALUES("1","1","1","","","","3","1","900","0","0","0","2700","2022-07-31 18:13:39","2022-07-31 18:13:39");



CREATE TABLE `product_transfer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_transfer VALUES("1","1","1","","","","2","1","800","0","0","1600","2023-05-08 18:18:53","2023-05-08 18:18:53");
INSERT INTO product_transfer VALUES("2","2","1","","","","6","1","800","0","0","4800","2023-05-08 18:19:39","2023-05-08 18:19:39");



CREATE TABLE `product_variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_cost` double DEFAULT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_variants VALUES("1","7","1","1","S-9999","","0","0","2023-04-11 23:10:53","2023-04-11 23:10:53");
INSERT INTO product_variants VALUES("2","7","2","2","M-9999","","0","0","2023-04-11 23:10:54","2023-04-11 23:10:54");
INSERT INTO product_variants VALUES("3","7","3","3","L-9999","","10","0","2023-04-11 23:10:54","2023-04-11 23:10:54");
INSERT INTO product_variants VALUES("4","9","1","1","S-9999","","0","0","2023-04-11 23:22:14","2023-04-11 23:22:14");
INSERT INTO product_variants VALUES("5","9","2","2","M-9999","","0","0","2023-04-11 23:22:14","2023-04-11 23:22:14");
INSERT INTO product_variants VALUES("6","9","3","3","L-9999","","10","0","2023-04-11 23:22:15","2023-04-11 23:22:15");
INSERT INTO product_variants VALUES("7","9","1","1","S-9999","","0","0","2023-04-11 23:22:51","2023-04-11 23:22:51");
INSERT INTO product_variants VALUES("8","9","2","2","M-9999","","0","0","2023-04-11 23:22:51","2023-04-11 23:22:51");
INSERT INTO product_variants VALUES("9","9","3","3","L-9999","","10","0","2023-04-11 23:22:51","2023-04-11 23:22:51");
INSERT INTO product_variants VALUES("10","102","1","1","S-9999","","0","0","2023-04-12 14:08:25","2023-04-12 14:08:25");
INSERT INTO product_variants VALUES("11","102","2","2","M-9999","","0","0","2023-04-12 14:08:26","2023-04-12 14:08:26");
INSERT INTO product_variants VALUES("12","102","3","3","L-9999","","10","0","2023-04-12 14:08:26","2023-04-12 14:08:26");
INSERT INTO product_variants VALUES("13","134","1","1","S-9999","","0","0","2023-04-13 23:34:29","2023-04-13 23:34:29");
INSERT INTO product_variants VALUES("14","134","2","2","M-9999","","0","0","2023-04-13 23:34:30","2023-04-13 23:34:30");
INSERT INTO product_variants VALUES("15","134","3","3","L-9999","","10","0","2023-04-13 23:34:30","2023-04-13 23:34:30");
INSERT INTO product_variants VALUES("16","470","1","1","S-9999","","0","0","2023-04-14 00:05:06","2023-04-14 00:05:06");
INSERT INTO product_variants VALUES("17","470","2","2","M-9999","","0","0","2023-04-14 00:05:08","2023-04-14 00:05:08");
INSERT INTO product_variants VALUES("18","470","3","3","L-9999","","10","0","2023-04-14 00:05:08","2023-04-14 00:05:08");
INSERT INTO product_variants VALUES("19","701","1","1","S-9999","","0","0","2023-04-14 00:05:51","2023-04-14 00:05:51");
INSERT INTO product_variants VALUES("20","701","2","2","M-9999","","0","0","2023-04-14 00:05:52","2023-04-14 00:05:52");
INSERT INTO product_variants VALUES("21","701","3","3","L-9999","","10","0","2023-04-14 00:05:52","2023-04-14 00:05:52");
INSERT INTO product_variants VALUES("22","758","1","1","S-9999","","0","0","2023-04-14 00:17:41","2023-04-14 00:17:41");
INSERT INTO product_variants VALUES("23","758","2","2","M-9999","","0","0","2023-04-14 00:17:42","2023-04-14 00:17:42");
INSERT INTO product_variants VALUES("24","758","3","3","L-9999","","10","0","2023-04-14 00:17:42","2023-04-14 00:17:42");
INSERT INTO product_variants VALUES("25","758","1","1","S-9999","","0","0","2023-04-14 00:20:53","2023-04-14 00:20:53");
INSERT INTO product_variants VALUES("26","758","2","2","M-9999","","0","0","2023-04-14 00:20:53","2023-04-14 00:20:53");
INSERT INTO product_variants VALUES("27","758","3","3","L-9999","","10","0","2023-04-14 00:20:54","2023-04-14 00:20:54");
INSERT INTO product_variants VALUES("28","758","1","1","S-9999","","0","0","2023-04-14 00:21:09","2023-04-14 00:21:09");
INSERT INTO product_variants VALUES("29","758","2","2","M-9999","","0","0","2023-04-14 00:21:09","2023-04-14 00:21:09");
INSERT INTO product_variants VALUES("30","758","3","3","L-9999","","10","0","2023-04-14 00:21:09","2023-04-14 00:21:09");
INSERT INTO product_variants VALUES("31","573","1","1","S-9999","","0","0","2023-04-27 14:55:31","2023-04-27 14:55:31");
INSERT INTO product_variants VALUES("32","573","2","2","M-9999","","0","0","2023-04-27 14:55:32","2023-04-27 14:55:32");
INSERT INTO product_variants VALUES("33","573","3","3","L-9999","","10","0","2023-04-27 14:55:32","2023-04-27 14:55:32");
INSERT INTO product_variants VALUES("34","1187","1","1","S-9999","","0","0","2023-04-27 14:59:18","2023-04-27 14:59:18");
INSERT INTO product_variants VALUES("35","1187","2","2","M-9999","","0","0","2023-04-27 14:59:18","2023-04-27 14:59:18");
INSERT INTO product_variants VALUES("36","1187","3","3","L-9999","","10","0","2023-04-27 14:59:18","2023-04-27 14:59:18");
INSERT INTO product_variants VALUES("37","1468","1","1","S-9999","","0","0","2023-04-27 15:25:50","2023-04-27 15:25:50");
INSERT INTO product_variants VALUES("38","1468","2","2","M-9999","","0","0","2023-04-27 15:25:51","2023-04-27 15:25:51");
INSERT INTO product_variants VALUES("39","1468","3","3","L-9999","","10","0","2023-04-27 15:25:51","2023-04-27 15:25:51");
INSERT INTO product_variants VALUES("40","1541","1","1","S-9999","","0","0","2023-04-27 15:34:42","2023-04-27 15:34:42");
INSERT INTO product_variants VALUES("41","1541","2","2","M-9999","","0","0","2023-04-27 15:34:42","2023-04-27 15:34:42");
INSERT INTO product_variants VALUES("42","1541","3","3","L-9999","","10","0","2023-04-27 15:34:42","2023-04-27 15:34:42");
INSERT INTO product_variants VALUES("43","1541","1","1","S-9999","","0","0","2023-04-27 15:38:38","2023-04-27 15:38:38");
INSERT INTO product_variants VALUES("44","1541","2","2","M-9999","","0","0","2023-04-27 15:38:38","2023-04-27 15:38:38");
INSERT INTO product_variants VALUES("45","1541","3","3","L-9999","","10","0","2023-04-27 15:38:38","2023-04-27 15:38:38");
INSERT INTO product_variants VALUES("46","1541","1","1","S-9999","","0","0","2023-04-27 15:38:48","2023-04-27 15:38:48");
INSERT INTO product_variants VALUES("47","1541","2","2","M-9999","","0","0","2023-04-27 15:38:48","2023-04-27 15:38:48");
INSERT INTO product_variants VALUES("48","1541","3","3","L-9999","","10","0","2023-04-27 15:38:48","2023-04-27 15:38:48");
INSERT INTO product_variants VALUES("49","2661","1","1","S-9999","","0","0","2023-04-30 03:50:17","2023-04-30 03:50:17");
INSERT INTO product_variants VALUES("50","2661","2","2","M-9999","","0","0","2023-04-30 03:50:17","2023-04-30 03:50:17");
INSERT INTO product_variants VALUES("51","2661","3","3","L-9999","","10","0","2023-04-30 03:50:17","2023-04-30 03:50:17");



CREATE TABLE `product_warehouse` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_warehouse VALUES("1","1","","","","1","6","","2022-07-31 17:51:45","2023-05-08 18:19:38");
INSERT INTO product_warehouse VALUES("2","1","","","","2","8","","2023-05-08 18:18:53","2023-05-08 18:19:38");



CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbology` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` double NOT NULL,
  `price` double NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `daily_sale_objective` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_embeded` tinyint(1) DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `is_batch` tinyint(1) DEFAULT NULL,
  `is_diffPrice` tinyint(1) DEFAULT NULL,
  `is_imei` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_option` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `whouse_id` tinyint(4) DEFAULT NULL,
  `product_dept_id` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2662 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO products VALUES("1","iPhoneX","99265514","standard","C128","1","1","1","1","1","800","1000","14","","","","","","","","2","","","0","","","0","","1","","","","","","","","1","2022-07-31 17:48:28","2023-02-19 15:02:48","","0");
INSERT INTO products VALUES("2","iPhone11","05928605","standard","C128","1","1","1","1","1","400","600","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2022-07-31 22:08:57","2022-07-31 22:08:57","","0");
INSERT INTO products VALUES("3","test product","12445532","standard","C128","1","1","1","1","1","12000","124445","0","","","","","","","1","1","1672811943778icon-512x512.png","","","","","","","","","","","","","","","1","2023-01-04 11:29:06","2023-01-04 11:29:06","","0");
INSERT INTO products VALUES("4","bearing 6201","91214605","standard","C128","2","3","1","1","1","200","200","0","100","10","","","","","","1","202301080704222.jpeg","","1","","","0","","0","","","","","<p>Quantity: 80</p>","","","1","2023-01-06 17:21:15","2023-01-08 19:04:22","","0");
INSERT INTO products VALUES("5","Random","10439418","standard","C128","1","2","4","4","4","122","123","0","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-02-19 15:25:07","2023-02-19 15:25:07","","0");
INSERT INTO products VALUES("6","testing warehouse pd","84205313","standard","C128","","2","17","17","17","100","1000","0","","","","","","","","1","zummXD2dvAtI.png","","0","","","0","","0","","","","","","","","1","2023-03-29 18:35:42","2023-03-29 18:38:10","2","1");
INSERT INTO products VALUES("7","tinko","9999","standard","C128","3","30","1","1","1","15","20","0","","","","","","","","1","zummXD2dvAtI.png","","","1","","","","","","","","","this is test product with variant","","","1","2023-04-11 23:10:53","2023-04-11 23:10:54","","");
INSERT INTO products VALUES("8","test","1111","standard","C128","","31","15","15","15","10","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","this is test product without variant","","","1","2023-04-11 23:10:55","2023-04-30 03:50:17","","");
INSERT INTO products VALUES("9","BALL BEARING 6209 ZZ","9999","standard","C128","3","32","1","1","1","15","20","0","","","","","","","","1","zummXD2dvAtI.png","","","1","","","","","","","","","this is test product with variant","","","1","2023-04-11 23:22:13","2023-04-11 23:22:51","","");
INSERT INTO products VALUES("10","BEAREING NO 51206","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","this is test product without variant","","","1","2023-04-11 23:22:15","2023-04-11 23:22:51","","");
INSERT INTO products VALUES("11","BEARING 1215K","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:52","2023-04-11 23:22:52","","");
INSERT INTO products VALUES("12","BEARING 22218-C3","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:52","2023-04-11 23:22:52","","");
INSERT INTO products VALUES("13","BEARING 6000","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:53","2023-04-11 23:22:53","","");
INSERT INTO products VALUES("14","BEARING 6008ZZ","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:53","2023-04-11 23:22:53","","");
INSERT INTO products VALUES("15","BEARING 607","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:53","2023-04-11 23:22:53","","");
INSERT INTO products VALUES("16","BEARING 6209K","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:54","2023-04-11 23:22:54","","");
INSERT INTO products VALUES("17","BEARING 626","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:55","2023-04-11 23:22:55","","");
INSERT INTO products VALUES("18","BEARING 6901","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:55","2023-04-11 23:22:55","","");
INSERT INTO products VALUES("19","BEARING BLOCK (COVER)","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:55","2023-04-11 23:22:55","","");
INSERT INTO products VALUES("20","BEARING BLOCK IMPELLER COVER","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:55","2023-04-11 23:22:55","","");
INSERT INTO products VALUES("21","BEARING BLOCK NO. SN 310","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:55","2023-04-11 23:22:55","","");
INSERT INTO products VALUES("22","BEARING BLOCK P210","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:56","2023-04-11 23:22:56","","");
INSERT INTO products VALUES("23","BEARING BLOCK SN 509","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:56","2023-04-11 23:22:56","","");
INSERT INTO products VALUES("24","BEARING BLOCK SN 513","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:56","2023-04-11 23:22:56","","");
INSERT INTO products VALUES("25","BEARING BLOCK SN515","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:56","2023-04-11 23:22:56","","");
INSERT INTO products VALUES("26","BEARING BLOCK SN-608","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:57","2023-04-11 23:22:57","","");
INSERT INTO products VALUES("27","BEARING BLOCK UCP 210","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:57","2023-04-11 23:22:57","","");
INSERT INTO products VALUES("28","BEARING BLOCK UCP 212","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:57","2023-04-11 23:22:57","","");
INSERT INTO products VALUES("29","BEARING BLOCK UCP 214 NTN","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:57","2023-04-11 23:22:57","","");
INSERT INTO products VALUES("30","BEARING HM 0193224","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:57","2023-04-11 23:22:57","","");
INSERT INTO products VALUES("31","BEARING HM 019324","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:58","2023-04-11 23:22:58","","");
INSERT INTO products VALUES("32","BEARING NO. 22207","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:58","2023-04-11 23:22:58","","");
INSERT INTO products VALUES("33","BEARING NO. 22209 K FAG","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:58","2023-04-11 23:22:58","","");
INSERT INTO products VALUES("34","BEARING NO. 22212 (ROLLER BEARING 22212 KCJW 33C3)","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:58","2023-04-11 23:22:58","","");
INSERT INTO products VALUES("35","BEARING NO. 22213","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:59","2023-04-11 23:22:59","","");
INSERT INTO products VALUES("36","BEARING NO.22214","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:59","2023-04-11 23:22:59","","");
INSERT INTO products VALUES("37","BEARING NO. 22216","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:59","2023-04-11 23:22:59","","");
INSERT INTO products VALUES("38","BEARING NO. 22219","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:59","2023-04-11 23:22:59","","");
INSERT INTO products VALUES("39","BEARING NO. 22310","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:22:59","2023-04-11 23:22:59","","");
INSERT INTO products VALUES("40","BEARING NO. 22311","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:00","2023-04-11 23:23:00","","");
INSERT INTO products VALUES("41","BEARING NO. 22312","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:00","2023-04-11 23:23:00","","");
INSERT INTO products VALUES("42","BEARING NO.22314","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:00","2023-04-11 23:23:00","","");
INSERT INTO products VALUES("43","BEARING NO. 2308 K","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:01","2023-04-11 23:23:01","","");
INSERT INTO products VALUES("44","BEARING NO. 30205","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:01","2023-04-11 23:23:01","","");
INSERT INTO products VALUES("45","BEARING NO. 32210","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:02","2023-04-11 23:23:02","","");
INSERT INTO products VALUES("46","BEARING NO. 32213","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:02","2023-04-11 23:23:02","","");
INSERT INTO products VALUES("47","BEARING NO 32214","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:02","2023-04-11 23:23:02","","");
INSERT INTO products VALUES("48","BEARING  NO. 32220","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:03","2023-04-11 23:23:03","","");
INSERT INTO products VALUES("49","BEARING NO. 3306","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:04","2023-04-11 23:23:04","","");
INSERT INTO products VALUES("50","BEARING NO. 3516","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:04","2023-04-11 23:23:04","","");
INSERT INTO products VALUES("51","BEARING NO. 51208","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:05","2023-04-11 23:23:05","","");
INSERT INTO products VALUES("52","BEARING  NO. 51307","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:05","2023-04-11 23:23:05","","");
INSERT INTO products VALUES("53","BEARING NO. 51318","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:05","2023-04-11 23:23:05","","");
INSERT INTO products VALUES("54","BEARING NO. 6003ZZ","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:06","2023-04-11 23:23:06","","");
INSERT INTO products VALUES("55","BEARING NO. 6004ZZ","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:06","2023-04-11 23:23:06","","");
INSERT INTO products VALUES("56","BEARING NO 6006","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:06","2023-04-11 23:23:06","","");
INSERT INTO products VALUES("57","BEARING NO. 6010ZZ","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:07","2023-04-11 23:23:07","","");
INSERT INTO products VALUES("58","BEARING  NO. 6012 SKF","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:07","2023-04-11 23:23:07","","");
INSERT INTO products VALUES("59","BEARING NO. 6012 ZZ","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:07","2023-04-11 23:23:07","","");
INSERT INTO products VALUES("60","BEARING NO . 6020","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:07","2023-04-11 23:23:07","","");
INSERT INTO products VALUES("61","BEARING NO. 6032","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:07","2023-04-11 23:23:07","","");
INSERT INTO products VALUES("62","BEARING NO 608","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:08","2023-04-11 23:23:08","","");
INSERT INTO products VALUES("63","BEARING NO 6203","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:08","2023-04-11 23:23:08","","");
INSERT INTO products VALUES("64","BEARING NO 6204","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:08","2023-04-11 23:23:08","","");
INSERT INTO products VALUES("65","BEARING NO 6205ZZ","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:08","2023-04-11 23:23:08","","");
INSERT INTO products VALUES("66","BEARING NO 6206 ZZ","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:08","2023-04-11 23:23:08","","");
INSERT INTO products VALUES("67","BEARING NO 6207 ZZ","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:09","2023-04-11 23:23:09","","");
INSERT INTO products VALUES("68","BEARING NO. 6208 ZZ","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:09","2023-04-11 23:23:09","","");
INSERT INTO products VALUES("69","BEARING NO . 6216","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:09","2023-04-11 23:23:09","","");
INSERT INTO products VALUES("70","BEARING NO 6300","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:09","2023-04-11 23:23:09","","");
INSERT INTO products VALUES("71","BEARING NO 6301","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:10","2023-04-11 23:23:10","","");
INSERT INTO products VALUES("72","BEARING NO. 6301 ZZ","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:10","2023-04-11 23:23:10","","");
INSERT INTO products VALUES("73","BEARING NO. 6302 ZZ","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:11","2023-04-11 23:23:11","","");
INSERT INTO products VALUES("74","BEARING NO 6305 ZZ","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:11","2023-04-11 23:23:11","","");
INSERT INTO products VALUES("75","BEARING  NO. 6306 ZZ","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:12","2023-04-11 23:23:12","","");
INSERT INTO products VALUES("76","BEARING NO.6308 ZZ","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:12","2023-04-11 23:23:12","","");
INSERT INTO products VALUES("77","BEARING NO 6309 ZZ","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:12","2023-04-11 23:23:12","","");
INSERT INTO products VALUES("78","BEARING NO.6312","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:13","2023-04-11 23:23:13","","");
INSERT INTO products VALUES("79","BEARING NO. 6314","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:13","2023-04-11 23:23:13","","");
INSERT INTO products VALUES("80","BEARING NO. 6408","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:13","2023-04-11 23:23:13","","");
INSERT INTO products VALUES("81","BEARING NO. LM30UU","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:13","2023-04-11 23:23:13","","");
INSERT INTO products VALUES("82","BEARING  NO. NU 215","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:13","2023-04-11 23:23:13","","");
INSERT INTO products VALUES("83","BEARING NO NU 310","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:14","2023-04-11 23:23:14","","");
INSERT INTO products VALUES("84","BEARING NO. T24","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:14","2023-04-11 23:23:14","","");
INSERT INTO products VALUES("85","BEARING NO. UCP 207","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:16","2023-04-11 23:23:16","","");
INSERT INTO products VALUES("86","BEARING NO UCP 208 NTN","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:16","2023-04-11 23:23:16","","");
INSERT INTO products VALUES("87","BEARING NO UCP 213","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:17","2023-04-11 23:23:17","","");
INSERT INTO products VALUES("88","BEARING NU 213 M","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:17","2023-04-11 23:23:17","","");
INSERT INTO products VALUES("89","BEARING NU 309","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:17","2023-04-11 23:23:17","","");
INSERT INTO products VALUES("90","BEARING PARE 7209","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:17","2023-04-11 23:23:17","","");
INSERT INTO products VALUES("91","BEARING PULLER 8''","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:17","2023-04-11 23:23:17","","");
INSERT INTO products VALUES("92","BRARING BLOCK NO. SN 312","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:18","2023-04-11 23:23:18","","");
INSERT INTO products VALUES("93","FLANGE BEARING 39874","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:18","2023-04-11 23:23:18","","");
INSERT INTO products VALUES("94","INNER BEARING COVER","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:18","2023-04-11 23:23:18","","");
INSERT INTO products VALUES("95","KM8 LOCK NUT &amp; WASHER","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:18","2023-04-11 23:23:18","","");
INSERT INTO products VALUES("96","LINER BEARING LBB M-2SL","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:19","2023-04-11 23:23:19","","");
INSERT INTO products VALUES("97","NEEDLE BEARING AG-7","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:19","2023-04-11 23:23:19","","");
INSERT INTO products VALUES("98","SLEEVE H215","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:19","2023-04-11 23:23:19","","");
INSERT INTO products VALUES("99","SLEEVE H309V","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:19","2023-04-11 23:23:19","","");
INSERT INTO products VALUES("100","SOCKET NO H 2308","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:20","2023-04-11 23:23:20","","");
INSERT INTO products VALUES("101","SOCKET NO HE-309","9999","standard","C128","3","32","1","1","1","15","15","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-11 23:23:20","2023-04-11 23:23:20","","");
INSERT INTO products VALUES("102","ACDAS CHEMICAL FLUX-100","9999","standard","C128","3","33","1","1","1","15","20","0","","","","","","","","1","image","","","1","","","","","","","","","this is test product with variant","","","1","2023-04-12 14:08:25","2023-04-12 14:08:26","","");
INSERT INTO products VALUES("103","ACID PROOF BRICKS 230x115X38MM","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","this is test product without variant","","","1","2023-04-12 14:08:26","2023-04-12 14:08:26","","");
INSERT INTO products VALUES("104","ACID PUMP 2 HP 2900 RPM","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:26","2023-04-12 14:08:26","","");
INSERT INTO products VALUES("105","ACTIVATED CARBON IV 1000","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:26","2023-04-12 14:08:26","","");
INSERT INTO products VALUES("106","AMMONIA LIQUOR","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:26","2023-04-12 14:08:26","","");
INSERT INTO products VALUES("107","AMMONIUM CHLORIDE [ FREE FLOW ]","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("108","BURETTE 50ML","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("109","CEMENT PRODOR 'K' SOLUTION","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("110","CEMENT PRODOR 'S' POWDER","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("111","COROMASTIC","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("112","COROPHEN POWDER","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("113","COROPHEN SYRUP (CNSL SOLUTION)","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("114","CROMIC ACID","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("115","CROMIC COMPUND","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("116","DEGRESANT [ DEGREASER ]","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("117","FLUX","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("118","FLUX ADDITIVE X100","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("119","GINTHOX POWDER Q560","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("120","GLYCERINE ( WETTING AGENT )","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("121","GOLDEN CHEMICAL","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("122","HYDRATED LIME","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("123","HYDROCHLORIC ACID 30% TO 32% (HCL)","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("124","HYDROGEN PEROXIDE","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("125","HYDROGEN PEROXIDE 500ML","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("126","INHIBITOR [ PICKLER ]","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("127","PAINT REMOVER","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:27","2023-04-12 14:08:27","","");
INSERT INTO products VALUES("128","PASSIVATE-Y","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:28","2023-04-12 14:08:28","","");
INSERT INTO products VALUES("129","PRE-FLUX P-III [ NICKEL BASED ]","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:28","2023-04-12 14:08:28","","");
INSERT INTO products VALUES("130","PRODORLAC SPL (PRIMER)","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:28","2023-04-12 14:08:28","","");
INSERT INTO products VALUES("131","SYNTH ECO SETTLE","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:28","2023-04-12 14:08:28","","");
INSERT INTO products VALUES("132","SYNTH TREAT","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:28","2023-04-12 14:08:28","","");
INSERT INTO products VALUES("133","ZINC ALLUMINIUM ALLOY","9999","standard","C128","3","33","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-12 14:08:28","2023-04-12 14:08:28","","");
INSERT INTO products VALUES("134","ALLUMINIUM PUNCH ASSEMBLY 4MM DOUBLE HOLE","9999","standard","C128","3","35","1","1","1","15","20","0","","","","","","","","1","image","","","1","","","","","","","","","this is test product with variant","","","1","2023-04-13 23:34:29","2023-04-13 23:34:30","","");
INSERT INTO products VALUES("135","ANGLE CUTTING BLOCK  350X350X40MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","this is test product without variant","","","1","2023-04-13 23:34:30","2023-04-13 23:34:30","","");
INSERT INTO products VALUES("136","ANGLE NOTHING DIE &amp; PUNCH FOR (ANGLE 2513)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:30","2023-04-13 23:34:30","","");
INSERT INTO products VALUES("137","BUSH 30X20MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:31","2023-04-13 23:34:31","","");
INSERT INTO products VALUES("138","CHANEL CUTTING 100 X 50","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:31","2023-04-13 23:34:31","","");
INSERT INTO products VALUES("139","CHANNEL CUTTER ASSEMBLY","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:31","2023-04-13 23:34:31","","");
INSERT INTO products VALUES("140","CHANNEL CUTTING BLOCK 100 X 50 BASEPLAT","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:32","2023-04-13 23:34:32","","");
INSERT INTO products VALUES("141","CHANNEL CUTTING BLOCK 125 X 65MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:32","2023-04-13 23:34:32","","");
INSERT INTO products VALUES("142","CHANNEL CUTTING BLOCK 75 X 40MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:33","2023-04-13 23:34:33","","");
INSERT INTO products VALUES("143","CHARACTER PUNCH (19X18X12) (LETTER &amp; PUNCH 19X18X12)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:33","2023-04-13 23:34:33","","");
INSERT INTO products VALUES("144","CHECK NUT (45X38)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:33","2023-04-13 23:34:33","","");
INSERT INTO products VALUES("145","CNC CHECK NUT","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:33","2023-04-13 23:34:33","","");
INSERT INTO products VALUES("146","CNC DIE 13X25X50MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:33","2023-04-13 23:34:33","","");
INSERT INTO products VALUES("147","CNC DIE 15.2/15.5X25X50MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:33","2023-04-13 23:34:33","","");
INSERT INTO products VALUES("148","CNC DIE 17X25X50MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:33","2023-04-13 23:34:33","","");
INSERT INTO products VALUES("149","CNC  DIE 18.8X25X50 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:34","2023-04-13 23:34:34","","");
INSERT INTO products VALUES("150","CNC  DIE 27.9X25X50 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:34","2023-04-13 23:34:34","","");
INSERT INTO products VALUES("151","CNC DIE BL-2020","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:35","2023-04-13 23:34:35","","");
INSERT INTO products VALUES("152","CNC PUNCH 13.5X25X50 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:35","2023-04-13 23:34:35","","");
INSERT INTO products VALUES("153","CNC PUNCH 13.8X87X34 (CNC PUNCH 13.8)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:35","2023-04-13 23:34:35","","");
INSERT INTO products VALUES("154","CNC PUNCH 16X87X34MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:40","2023-04-13 23:34:40","","");
INSERT INTO products VALUES("155","CNC PUNCH 26.7X87X34 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:41","2023-04-13 23:34:41","","");
INSERT INTO products VALUES("156","CNC SLOTTING DIE 14X28(OD50X25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:41","2023-04-13 23:34:41","","");
INSERT INTO products VALUES("157","CNC SLOTTING DIE 16X28(OD50X25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:42","2023-04-13 23:34:42","","");
INSERT INTO products VALUES("158","CNC SLOTTING DIE 18X28 (OD50X25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:42","2023-04-13 23:34:42","","");
INSERT INTO products VALUES("159","COMPOSITE DIE BLOCK 4 SLOT PUNCHING (13x38)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:42","2023-04-13 23:34:42","","");
INSERT INTO products VALUES("160","CROPPING CUTTER SET","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:43","2023-04-13 23:34:43","","");
INSERT INTO products VALUES("161","CUTTING TOURCH REPARING KIT","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:43","2023-04-13 23:34:43","","");
INSERT INTO products VALUES("162","DIA 17.75MM [ 34 X 68MM ]","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:43","2023-04-13 23:34:43","","");
INSERT INTO products VALUES("163","DIA 22 MM [ 35X27 MM ]","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:43","2023-04-13 23:34:43","","");
INSERT INTO products VALUES("164","DIE 10x35x27","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:44","2023-04-13 23:34:44","","");
INSERT INTO products VALUES("165","DIE 11.5X27X6\35 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:44","2023-04-13 23:34:44","","");
INSERT INTO products VALUES("166","DIE 12.2X35X27MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:44","2023-04-13 23:34:44","","");
INSERT INTO products VALUES("167","DIE 12.2X40X25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:44","2023-04-13 23:34:44","","");
INSERT INTO products VALUES("168","DIE 12X35X27","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:45","2023-04-13 23:34:45","","");
INSERT INTO products VALUES("169","DIE 12X40X25","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:45","2023-04-13 23:34:45","","");
INSERT INTO products VALUES("170","DIE 13.75x35x27","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:45","2023-04-13 23:34:45","","");
INSERT INTO products VALUES("171","DIE 13.75X40X25","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:45","2023-04-13 23:34:45","","");
INSERT INTO products VALUES("172","DIE 15X40X25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:45","2023-04-13 23:34:45","","");
INSERT INTO products VALUES("173","DIE 16.2X35X27MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:46","2023-04-13 23:34:46","","");
INSERT INTO products VALUES("174","DIE 16.2X40X25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:47","2023-04-13 23:34:47","","");
INSERT INTO products VALUES("175","DIE 16X35X25","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:48","2023-04-13 23:34:48","","");
INSERT INTO products VALUES("176","DIE 16x40x25","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:48","2023-04-13 23:34:48","","");
INSERT INTO products VALUES("177","DIE 17.5x35","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:48","2023-04-13 23:34:48","","");
INSERT INTO products VALUES("178","DIE 17.75X35X27 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:49","2023-04-13 23:34:49","","");
INSERT INTO products VALUES("179","DIE 17.75x45","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:49","2023-04-13 23:34:49","","");
INSERT INTO products VALUES("180","DIE 18.55X25X40","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:49","2023-04-13 23:34:49","","");
INSERT INTO products VALUES("181","DIE 19.2/19.8 [ 50 X 25MM ] (CNC DIA 19.2 / 19.8)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:49","2023-04-13 23:34:49","","");
INSERT INTO products VALUES("182","DIE 19.3X25X40 (17.75X40)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:50","2023-04-13 23:34:50","","");
INSERT INTO products VALUES("183","DIE 19X25X40( 17.75X40)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:50","2023-04-13 23:34:50","","");
INSERT INTO products VALUES("184","DIE 20X40X25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:50","2023-04-13 23:34:50","","");
INSERT INTO products VALUES("185","DIE 22.8X25X40 (22X40)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:50","2023-04-13 23:34:50","","");
INSERT INTO products VALUES("186","DIE 22X27X45","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:50","2023-04-13 23:34:50","","");
INSERT INTO products VALUES("187","DIE 23.2/23.8 [ 50 X 25MM ] (CNC DIE 23.2 / 23.8)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:50","2023-04-13 23:34:50","","");
INSERT INTO products VALUES("188","DIE 23.25X25X40 (22X40)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:50","2023-04-13 23:34:50","","");
INSERT INTO products VALUES("189","DIE 23.55X25X40 (22X40)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:51","2023-04-13 23:34:51","","");
INSERT INTO products VALUES("190","DIE 25X27X45","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:51","2023-04-13 23:34:51","","");
INSERT INTO products VALUES("191","DIE 26X27X45","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:51","2023-04-13 23:34:51","","");
INSERT INTO products VALUES("192","DIE 26x40","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:51","2023-04-13 23:34:51","","");
INSERT INTO products VALUES("193","DIE 27.2/27.8 [ 50 X 25MM ] (CNC DIE 27.2/27.8)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:51","2023-04-13 23:34:51","","");
INSERT INTO products VALUES("194","DIE 27.2X25X50","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:51","2023-04-13 23:34:51","","");
INSERT INTO products VALUES("195","DIE 27X40X25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:51","2023-04-13 23:34:51","","");
INSERT INTO products VALUES("196","DIE 27X45X27MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:52","2023-04-13 23:34:52","","");
INSERT INTO products VALUES("197","DIE 28X40X25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:52","2023-04-13 23:34:52","","");
INSERT INTO products VALUES("198","DIE BLOCK","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:52","2023-04-13 23:34:52","","");
INSERT INTO products VALUES("199","DIE FOR 12 PUNCH (40X25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:52","2023-04-13 23:34:52","","");
INSERT INTO products VALUES("200","DIE FOR 25X18 MM (60X25MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:53","2023-04-13 23:34:53","","");
INSERT INTO products VALUES("201","DIE FOR CNC APM 2020 (18.8 MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:53","2023-04-13 23:34:53","","");
INSERT INTO products VALUES("202","DIE FOR CNC APM 2020 (23.2 MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:53","2023-04-13 23:34:53","","");
INSERT INTO products VALUES("203","DIE FOR CNC APM 2020 (27.2 MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:54","2023-04-13 23:34:54","","");
INSERT INTO products VALUES("204","DIE FOR PUNCH 16.5X32 MM (DIA 16.5 X 32MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:54","2023-04-13 23:34:54","","");
INSERT INTO products VALUES("205","DIE FOR PUNCH 16X32 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:54","2023-04-13 23:34:54","","");
INSERT INTO products VALUES("206","DIE FOR PUNCH 17.75(35X25MM) (DIE 17.75 X 35 X 25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:54","2023-04-13 23:34:54","","");
INSERT INTO products VALUES("207","DIE FOR PUNCH 17.75X35 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:55","2023-04-13 23:34:55","","");
INSERT INTO products VALUES("208","DIE FOR PUNCH 17.75X40 MMX25 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:55","2023-04-13 23:34:55","","");
INSERT INTO products VALUES("209","DIE FOR PUNCH 17.75X45 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:55","2023-04-13 23:34:55","","");
INSERT INTO products VALUES("210","DIE FOR PUNCH 18.5X32MM (DIE 18.5 X 32MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:55","2023-04-13 23:34:55","","");
INSERT INTO products VALUES("211","DIE FOR PUNCH 22X35MM (DIE 22 X 35MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:55","2023-04-13 23:34:55","","");
INSERT INTO products VALUES("212","DIE FOR PUNCH 22X40MM (DIE 22X40MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:55","2023-04-13 23:34:55","","");
INSERT INTO products VALUES("213","DIE FOR PUNCH 22X45MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:55","2023-04-13 23:34:55","","");
INSERT INTO products VALUES("214","DIE FOR PUNCH 26X45X27","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:55","2023-04-13 23:34:55","","");
INSERT INTO products VALUES("215","DIE FOR PUNCH 27X45 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:55","2023-04-13 23:34:55","","");
INSERT INTO products VALUES("216","DIE FRAME WITH OPTIONAL PUNCHING  POLE &amp; NUT (CNC2020)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:55","2023-04-13 23:34:55","","");
INSERT INTO products VALUES("217","DIE FRAME WITH STANDRED PUNCH POLE AND NUT","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:55","2023-04-13 23:34:55","","");
INSERT INTO products VALUES("218","DIE LOWER 250X115X25 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:56","2023-04-13 23:34:56","","");
INSERT INTO products VALUES("219","DIE UPPER 260X150X25 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:56","2023-04-13 23:34:56","","");
INSERT INTO products VALUES("220","EN-9 ROUND SHAFT 55X1000MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:56","2023-04-13 23:34:56","","");
INSERT INTO products VALUES("221","EN-9 ROUND SHAFT 55X1300MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:56","2023-04-13 23:34:56","","");
INSERT INTO products VALUES("222","ERC ROUND DIE","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:56","2023-04-13 23:34:56","","");
INSERT INTO products VALUES("223","FLAT CUTTING 210 x 210 COMPLETE SET 6MM PLAT","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:57","2023-04-13 23:34:57","","");
INSERT INTO products VALUES("224","HAND STAMPING LETTER PUNCH 1/4'' (6MM)ATO Z","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:57","2023-04-13 23:34:57","","");
INSERT INTO products VALUES("225","HAND STAMPING LETTER PUNCH 1/8''(ATO Z)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:57","2023-04-13 23:34:57","","");
INSERT INTO products VALUES("226","HAND STAMPING LETTER  PUNCH 3/4 (A TO Z)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:58","2023-04-13 23:34:58","","");
INSERT INTO products VALUES("227","HAND STAMPING LETTER PUNCH 3/8(A TO Z)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:58","2023-04-13 23:34:58","","");
INSERT INTO products VALUES("228","HAND STAMPING LETTER PUNCH -B-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:58","2023-04-13 23:34:58","","");
INSERT INTO products VALUES("229","HAND STAMPING LETTER PUNCH -D -3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:59","2023-04-13 23:34:59","","");
INSERT INTO products VALUES("230","HAND STAMPING LETTER PUNCH -I-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:59","2023-04-13 23:34:59","","");
INSERT INTO products VALUES("231","HAND STAMPING LETTER PUNCH -L-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:59","2023-04-13 23:34:59","","");
INSERT INTO products VALUES("232","HAND STAMPING LETTER PUNCH -N-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:59","2023-04-13 23:34:59","","");
INSERT INTO products VALUES("233","HAND STAMPING LETTER PUNCH -O-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:59","2023-04-13 23:34:59","","");
INSERT INTO products VALUES("234","HAND STAMPING LETTER PUNCH-P-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:59","2023-04-13 23:34:59","","");
INSERT INTO products VALUES("235","HAND STAMPING LETTER PUNCH -R-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:59","2023-04-13 23:34:59","","");
INSERT INTO products VALUES("236","HAND STAMPING LETTER PUNCH -T-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:34:59","2023-04-13 23:34:59","","");
INSERT INTO products VALUES("237","HAND STAMPING LETTER PUNCH-U-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:00","2023-04-13 23:35:00","","");
INSERT INTO products VALUES("238","HAND STAMPING LETTTER PUNCH -M-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:00","2023-04-13 23:35:00","","");
INSERT INTO products VALUES("239","HAND STAMPING LETTTER PUNCH -S-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:00","2023-04-13 23:35:00","","");
INSERT INTO products VALUES("240","HAND STAMPING NUMBER PUNCH -0-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:00","2023-04-13 23:35:00","","");
INSERT INTO products VALUES("241","HAND STAMPING NUMBER PUNCH -1-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:01","2023-04-13 23:35:01","","");
INSERT INTO products VALUES("242","HANDSTAMPING NUMBER PUNCH 1/4'' (6MM)0TO 9","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:01","2023-04-13 23:35:01","","");
INSERT INTO products VALUES("243","HAND STAMPING NUMBER PUNCH 1/8''(0TO 9)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:01","2023-04-13 23:35:01","","");
INSERT INTO products VALUES("244","HAND STAMPING NUMBER PUNCH -2-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:02","2023-04-13 23:35:02","","");
INSERT INTO products VALUES("245","HAND STAMPING NUMBER PUNCH -3-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:02","2023-04-13 23:35:02","","");
INSERT INTO products VALUES("246","HAND STAMPING NUMBER PUNCH 3/4&quot; (0 TO 9)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:02","2023-04-13 23:35:02","","");
INSERT INTO products VALUES("247","HAND STAMPING NUMBER PUNCH 3/8 (0 TO 9)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:02","2023-04-13 23:35:02","","");
INSERT INTO products VALUES("248","HAND STAMPING NUMBER PUNCH -4-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:03","2023-04-13 23:35:03","","");
INSERT INTO products VALUES("249","HAND STAMPING NUMBER PUNCH -5-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:03","2023-04-13 23:35:03","","");
INSERT INTO products VALUES("250","HAND STAMPING NUMBER PUNCH -6-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:03","2023-04-13 23:35:03","","");
INSERT INTO products VALUES("251","HAND STAMPING NUMBER PUNCH -7-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:04","2023-04-13 23:35:04","","");
INSERT INTO products VALUES("252","HAND STAMPING NUMBER PUNCH -8-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:06","2023-04-13 23:35:06","","");
INSERT INTO products VALUES("253","HAND STAMPING NUMBER PUNCH-9-3/8''","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:07","2023-04-13 23:35:07","","");
INSERT INTO products VALUES("254","H BEAM PUNCHING COMBINATION UNIT 39x14","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:07","2023-04-13 23:35:07","","");
INSERT INTO products VALUES("255","H BEAM PUNCHING COMBINATION UNIT 77x14","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:07","2023-04-13 23:35:07","","");
INSERT INTO products VALUES("256","IMPELLER 250X250","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:07","2023-04-13 23:35:07","","");
INSERT INTO products VALUES("257","LETTER (A,B,C,D,N,S ) (18X12X19 MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:08","2023-04-13 23:35:08","","");
INSERT INTO products VALUES("258","LETTER PUNCH 5/8 (MANUAL)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:08","2023-04-13 23:35:08","","");
INSERT INTO products VALUES("259","LETTER PUNCH BLOCK 270X70X70 ( DOUBLE PASS )","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:08","2023-04-13 23:35:08","","");
INSERT INTO products VALUES("260","LETTER PUNCH BLOCK 270X70X70 ( SINGLE PASS )","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:08","2023-04-13 23:35:08","","");
INSERT INTO products VALUES("261","LETTER PUNCH BLOCK BL-2020","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:09","2023-04-13 23:35:09","","");
INSERT INTO products VALUES("262","LONG LOWER CUTTER OF APM2020 (CNC LONG LOWER CUTTER APM2020)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:09","2023-04-13 23:35:09","","");
INSERT INTO products VALUES("263","LOWER  BLADE  BL 1412 (30X80X200 MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:09","2023-04-13 23:35:09","","");
INSERT INTO products VALUES("264","L -SHAPE POWER PRESS KEY","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:09","2023-04-13 23:35:09","","");
INSERT INTO products VALUES("265","METAL LINER PUNCH 01/21","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:09","2023-04-13 23:35:09","","");
INSERT INTO products VALUES("266","METAL LINER PUNCH 01/21 52Kg GS","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:10","2023-04-13 23:35:10","","");
INSERT INTO products VALUES("267","METAL LINER PUNCH 01/21 52Kg NGS","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:10","2023-04-13 23:35:10","","");
INSERT INTO products VALUES("268","METAL LINER PUNCH 01/21 60Kg","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:10","2023-04-13 23:35:10","","");
INSERT INTO products VALUES("269","METAL LINER PUNCH 01/21 60Kg GS","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:11","2023-04-13 23:35:11","","");
INSERT INTO products VALUES("270","METAL LINER PUNCH 01/21 60Kg NGS","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:11","2023-04-13 23:35:11","","");
INSERT INTO products VALUES("271","METAL LINER PUNCH NSP","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:11","2023-04-13 23:35:11","","");
INSERT INTO products VALUES("272","METAL LINER PUNCH RT 3738","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:12","2023-04-13 23:35:12","","");
INSERT INTO products VALUES("273","METAL LINER PUNCH RT 3740","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:12","2023-04-13 23:35:12","","");
INSERT INTO products VALUES("274","METAL LINER PUNCH RT 3741","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:12","2023-04-13 23:35:12","","");
INSERT INTO products VALUES("275","METAL LINER PUNCH RT 3742","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:12","2023-04-13 23:35:12","","");
INSERT INTO products VALUES("276","METAL LINER PUNCH RT 8616","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:12","2023-04-13 23:35:12","","");
INSERT INTO products VALUES("277","METAL LINER PUNCH RT 8617","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:12","2023-04-13 23:35:12","","");
INSERT INTO products VALUES("278","NOACHING DIA UPPER","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:13","2023-04-13 23:35:13","","");
INSERT INTO products VALUES("279","NOACHING DIE SET UPPER+LOWER","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:13","2023-04-13 23:35:13","","");
INSERT INTO products VALUES("280","NOACHING DIE SET UPPER PLATE 200X200X32 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:13","2023-04-13 23:35:13","","");
INSERT INTO products VALUES("281","NOTCHING TOP BLADE 206x24x48","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:13","2023-04-13 23:35:13","","");
INSERT INTO products VALUES("282","NOTCHING TOP BLADE 230x24x48","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:13","2023-04-13 23:35:13","","");
INSERT INTO products VALUES("283","NOTCHING TOP CUTTER 327X165X46X25","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:13","2023-04-13 23:35:13","","");
INSERT INTO products VALUES("284","NOTCHING TOP CUTTER  BLADE 329X165X46X26","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:13","2023-04-13 23:35:13","","");
INSERT INTO products VALUES("285","NUMBER (O TO 9 ) (18X12X19 MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:13","2023-04-13 23:35:13","","");
INSERT INTO products VALUES("286","NUMBER PUNCH 5/8 (MANUAL)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:13","2023-04-13 23:35:13","","");
INSERT INTO products VALUES("287","OPTINAL SLOTTING PUNCH 14X28X178X34","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:13","2023-04-13 23:35:13","","");
INSERT INTO products VALUES("288","OPTIONAL PUNCH 14X140X38MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:13","2023-04-13 23:35:13","","");
INSERT INTO products VALUES("289","OPTIONAL PUNCH 17.8 ( 18x140x34)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:13","2023-04-13 23:35:13","","");
INSERT INTO products VALUES("290","OPTIONAL PUNCH 17.8 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:14","2023-04-13 23:35:14","","");
INSERT INTO products VALUES("291","OPTIONAL PUNCH 21.8 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:14","2023-04-13 23:35:14","","");
INSERT INTO products VALUES("292","OPTIONAL PUNCH 25.8 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:14","2023-04-13 23:35:14","","");
INSERT INTO products VALUES("293","OPTIONAL PUNCHING  POLE &amp; NUT CNC APM 2020","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:14","2023-04-13 23:35:14","","");
INSERT INTO products VALUES("294","OPTIONAL PUNCH LOW COST 17.8 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:14","2023-04-13 23:35:14","","");
INSERT INTO products VALUES("295","OPTIONAL PUNCH LOW COST 21.8 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:14","2023-04-13 23:35:14","","");
INSERT INTO products VALUES("296","OPTIONAL PUNCH LOW COST 25.8 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:14","2023-04-13 23:35:14","","");
INSERT INTO products VALUES("297","OPTIONAL PUNCH (SIDE CUT) 17.8 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:14","2023-04-13 23:35:14","","");
INSERT INTO products VALUES("298","OPTIONAL SLOTTING PUNCH 16X28X178X34","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:14","2023-04-13 23:35:14","","");
INSERT INTO products VALUES("299","OPTIONAL SLOTTING PUNCH 18X28X178X34","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:14","2023-04-13 23:35:14","","");
INSERT INTO products VALUES("300","OUTER RING FOR GEAR COUPLING 36 TEETH","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:15","2023-04-13 23:35:15","","");
INSERT INTO products VALUES("301","PINCHER JAW (LOWER) JX-1412/2020","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:15","2023-04-13 23:35:15","","");
INSERT INTO products VALUES("302","PINCHER JAW (UPPER) JX-1412/2020","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:15","2023-04-13 23:35:15","","");
INSERT INTO products VALUES("303","PIPE PUNCHING 48 MM BM 73 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:15","2023-04-13 23:35:15","","");
INSERT INTO products VALUES("304","PIPE PUNCHING BM 70 MM 48 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:15","2023-04-13 23:35:15","","");
INSERT INTO products VALUES("305","PIPE PUNCHING DIE 38X12MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:15","2023-04-13 23:35:15","","");
INSERT INTO products VALUES("306","PIPE PUNCHING HOLE 12 MM BM HOLE 76-53-60 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:15","2023-04-13 23:35:15","","");
INSERT INTO products VALUES("307","PLATE CNC SIDE CUT DIE 14.5x25x50 / 15x25x50","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:15","2023-04-13 23:35:15","","");
INSERT INTO products VALUES("308","PLATE CNC SIDE CUT DIE 19x25x50 / 19.5x25x50","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:16","2023-04-13 23:35:16","","");
INSERT INTO products VALUES("309","PLATE HOLDING JAW (CNC PPD-103) (PLATE HOLDING JAW)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:16","2023-04-13 23:35:16","","");
INSERT INTO products VALUES("310","POWER PRESS KEY","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:16","2023-04-13 23:35:16","","");
INSERT INTO products VALUES("311","POWER PRESS KEY 57X203","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:16","2023-04-13 23:35:16","","");
INSERT INTO products VALUES("312","PUNCH 10x68x25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:16","2023-04-13 23:35:16","","");
INSERT INTO products VALUES("313","PUNCH 10x78 X25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:16","2023-04-13 23:35:16","","");
INSERT INTO products VALUES("314","PUNCH12.2X68X25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:16","2023-04-13 23:35:16","","");
INSERT INTO products VALUES("315","PUNCH12.2X78X25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:17","2023-04-13 23:35:17","","");
INSERT INTO products VALUES("316","PUNCH 12X68X25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:17","2023-04-13 23:35:17","","");
INSERT INTO products VALUES("317","PUNCH 12X78 X25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:17","2023-04-13 23:35:17","","");
INSERT INTO products VALUES("318","PUNCH 12X87X34MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:18","2023-04-13 23:35:18","","");
INSERT INTO products VALUES("319","PUNCH 13.75X68X25","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:18","2023-04-13 23:35:18","","");
INSERT INTO products VALUES("320","PUNCH 13.75X78X25","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:18","2023-04-13 23:35:18","","");
INSERT INTO products VALUES("321","PUNCH 15X68X25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:18","2023-04-13 23:35:18","","");
INSERT INTO products VALUES("322","PUNCH16.2X68X25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:18","2023-04-13 23:35:18","","");
INSERT INTO products VALUES("323","PUNCH 16.2X78X25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:18","2023-04-13 23:35:18","","");
INSERT INTO products VALUES("324","PUNCH 16X68X25","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:18","2023-04-13 23:35:18","","");
INSERT INTO products VALUES("325","PUNCH 17.5x87x34MM [ 18 x 87 x 34 ]","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:18","2023-04-13 23:35:18","","");
INSERT INTO products VALUES("326","PUNCH 17.75MM [ 25 X 68MM ]","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:18","2023-04-13 23:35:18","","");
INSERT INTO products VALUES("327","PUNCH 17.75X63 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:18","2023-04-13 23:35:18","","");
INSERT INTO products VALUES("328","PUNCH 17.75X68 MM (OD 25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:18","2023-04-13 23:35:18","","");
INSERT INTO products VALUES("329","PUNCH 17.75X68x34 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:18","2023-04-13 23:35:18","","");
INSERT INTO products VALUES("330","PUNCH 17.75X75 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:18","2023-04-13 23:35:18","","");
INSERT INTO products VALUES("331","PUNCH 17.75X78 MM (COLLER 25MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:18","2023-04-13 23:35:18","","");
INSERT INTO products VALUES("332","PUNCH 18X68X25","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:18","2023-04-13 23:35:18","","");
INSERT INTO products VALUES("333","PUNCH 20X68X25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:18","2023-04-13 23:35:18","","");
INSERT INTO products VALUES("334","PUNCH 21.5X75 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:19","2023-04-13 23:35:19","","");
INSERT INTO products VALUES("335","PUNCH 21.5x87x34MM [ 22x87x34] (CNC PUNCH 21.5x87x34MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:19","2023-04-13 23:35:19","","");
INSERT INTO products VALUES("336","PUNCH21.74X87 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:19","2023-04-13 23:35:19","","");
INSERT INTO products VALUES("337","PUNCH 22.5X75 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:19","2023-04-13 23:35:19","","");
INSERT INTO products VALUES("338","PUNCH 22MM [ 25 X 78MM ]","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:19","2023-04-13 23:35:19","","");
INSERT INTO products VALUES("339","PUNCH 22X67.5MM(COLLER 34 MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:19","2023-04-13 23:35:19","","");
INSERT INTO products VALUES("340","PUNCH 22X68X25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:19","2023-04-13 23:35:19","","");
INSERT INTO products VALUES("341","PUNCH 22X68X34","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:20","2023-04-13 23:35:20","","");
INSERT INTO products VALUES("342","PUNCH 22X78 MM (COLLER 25 MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:20","2023-04-13 23:35:20","","");
INSERT INTO products VALUES("343","PUNCH 25.5x87x34MM (CNC PUNCH 25.5x87x34MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:20","2023-04-13 23:35:20","","");
INSERT INTO products VALUES("344","PUNCH 25X67.5 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:20","2023-04-13 23:35:20","","");
INSERT INTO products VALUES("345","PUNCH 25X71X35","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:20","2023-04-13 23:35:20","","");
INSERT INTO products VALUES("346","PUNCH 26X67.5 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:20","2023-04-13 23:35:20","","");
INSERT INTO products VALUES("347","PUNCH 26X68X34 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:20","2023-04-13 23:35:20","","");
INSERT INTO products VALUES("348","PUNCH 26x71x35","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:20","2023-04-13 23:35:20","","");
INSERT INTO products VALUES("349","PUNCH 27X68MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:20","2023-04-13 23:35:20","","");
INSERT INTO products VALUES("350","PUNCH27X68X34MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:20","2023-04-13 23:35:20","","");
INSERT INTO products VALUES("351","PUNCH 28X68X34MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:20","2023-04-13 23:35:20","","");
INSERT INTO products VALUES("352","PUNCH 39 x 14 x 100","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:20","2023-04-13 23:35:20","","");
INSERT INTO products VALUES("353","PUNCH 77.1 x 14.1 x 100","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:20","2023-04-13 23:35:20","","");
INSERT INTO products VALUES("354","PUNCH ADAPTER 65x175","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:20","2023-04-13 23:35:20","","");
INSERT INTO products VALUES("355","PUNCH ADAPTOR 55x165","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:20","2023-04-13 23:35:20","","");
INSERT INTO products VALUES("356","PUNCH HOLDER","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:21","2023-04-13 23:35:21","","");
INSERT INTO products VALUES("357","PUNCHING DIE,HOLDER PUNCH 17.5MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:21","2023-04-13 23:35:21","","");
INSERT INTO products VALUES("358","PUNCH NUT BL 1412 (PUNCH NUT CNC 1412)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:21","2023-04-13 23:35:21","","");
INSERT INTO products VALUES("359","PUNCH POLE MODIFIED WITH NUT GOR BL -2020","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:21","2023-04-13 23:35:21","","");
INSERT INTO products VALUES("360","PUNCH POLE  NUT FOR JX-1412","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:21","2023-04-13 23:35:21","","");
INSERT INTO products VALUES("361","PUNCH POLE OF BL 1412 (PUNCH POLE CNC 1412)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:21","2023-04-13 23:35:21","","");
INSERT INTO products VALUES("362","PUNCH POLE WITH NUT BL-2020","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:21","2023-04-13 23:35:21","","");
INSERT INTO products VALUES("363","PUNCH POLE WITH NUT FOR JX-1412","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:21","2023-04-13 23:35:21","","");
INSERT INTO products VALUES("364","RECTANGLE DIE 60x15MM SLOT","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:21","2023-04-13 23:35:21","","");
INSERT INTO products VALUES("365","RECTANGULAR DIE 13.5X19(40X25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:22","2023-04-13 23:35:22","","");
INSERT INTO products VALUES("366","RECTANGULAR  PUNCH 12.5X18X25X78","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:22","2023-04-13 23:35:22","","");
INSERT INTO products VALUES("367","ROD CUTTING DIE BLOCK COMPLETE SET 10 MM .20MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:22","2023-04-13 23:35:22","","");
INSERT INTO products VALUES("368","ROD FORGING 20 MM DIE BLOCK","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:22","2023-04-13 23:35:22","","");
INSERT INTO products VALUES("369","ROLLER FOR BUSH 50X90MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:22","2023-04-13 23:35:22","","");
INSERT INTO products VALUES("370","ROUND 10x12x130x14 MM OD","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:22","2023-04-13 23:35:22","","");
INSERT INTO products VALUES("371","ROUND DIE PLATE 130X75X40MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:22","2023-04-13 23:35:22","","");
INSERT INTO products VALUES("372","ROUND PUNCH 12X125MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:22","2023-04-13 23:35:22","","");
INSERT INTO products VALUES("373","ROUND PUNCH PLATE 160X75X46MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:22","2023-04-13 23:35:22","","");
INSERT INTO products VALUES("374","SHEARING BLADE 1025 x 100 x 25","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:22","2023-04-13 23:35:22","","");
INSERT INTO products VALUES("375","SHEARING BLADE 350x170x25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:22","2023-04-13 23:35:22","","");
INSERT INTO products VALUES("376","SHEARING BLADE 350x90x25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:22","2023-04-13 23:35:22","","");
INSERT INTO products VALUES("377","SHEARING BLADE 460X100X25MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:23","2023-04-13 23:35:23","","");
INSERT INTO products VALUES("378","SHEARING BLADE 480X100X25","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:23","2023-04-13 23:35:23","","");
INSERT INTO products VALUES("379","SHEARING BLADE 480X110X25","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:23","2023-04-13 23:35:23","","");
INSERT INTO products VALUES("380","SHORT  LOWER CUTTER OF APM2020 (CNC SHORT LOWER CUTTER APM2020)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:23","2023-04-13 23:35:23","","");
INSERT INTO products VALUES("381","SIDE CUTTER 148X48X48","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:23","2023-04-13 23:35:23","","");
INSERT INTO products VALUES("382","SIDE CUTTER  155 X 48 X 23MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:23","2023-04-13 23:35:23","","");
INSERT INTO products VALUES("383","SIDE CUTTER 174X48X24","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:23","2023-04-13 23:35:23","","");
INSERT INTO products VALUES("384","SIDE CUTTER 180X48X48","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:23","2023-04-13 23:35:23","","");
INSERT INTO products VALUES("385","SIDE CUTTER 220X48X24","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:23","2023-04-13 23:35:23","","");
INSERT INTO products VALUES("386","SIDE CUTTER 46X45X213MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:23","2023-04-13 23:35:23","","");
INSERT INTO products VALUES("387","SIDE CUTTER NOTCHING 230X28X24 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:23","2023-04-13 23:35:23","","");
INSERT INTO products VALUES("388","SIDE CUTTER NOTCHING 255X38X24","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:23","2023-04-13 23:35:23","","");
INSERT INTO products VALUES("389","SLOT DIE 12X32 (60X40X25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:23","2023-04-13 23:35:23","","");
INSERT INTO products VALUES("390","SLOT DIE 12X36 (60X40X25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:24","2023-04-13 23:35:24","","");
INSERT INTO products VALUES("391","SLOT DIE 14X21 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:24","2023-04-13 23:35:24","","");
INSERT INTO products VALUES("392","SLOT DIE 14X28MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:24","2023-04-13 23:35:24","","");
INSERT INTO products VALUES("393","SLOT DIE 14X32 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:24","2023-04-13 23:35:24","","");
INSERT INTO products VALUES("394","SLOT DIE 14x38 (OD 60x40x25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:24","2023-04-13 23:35:24","","");
INSERT INTO products VALUES("395","SLOT DIE 18X25 (OD60X40X25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:24","2023-04-13 23:35:24","","");
INSERT INTO products VALUES("396","SLOT DIE 18x25x100","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:24","2023-04-13 23:35:24","","");
INSERT INTO products VALUES("397","SLOT DIE 18X28 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:24","2023-04-13 23:35:24","","");
INSERT INTO products VALUES("398","SLOT DIE 18X30(OD 60X40X25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:25","2023-04-13 23:35:25","","");
INSERT INTO products VALUES("399","SLOT DIE 18X36 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:25","2023-04-13 23:35:25","","");
INSERT INTO products VALUES("400","SLOT DIE 18X38 (60X40X25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:25","2023-04-13 23:35:25","","");
INSERT INTO products VALUES("401","SLOT DIE 18X40 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:25","2023-04-13 23:35:25","","");
INSERT INTO products VALUES("402","SLOT DIE 18X48 (60X40X25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:25","2023-04-13 23:35:25","","");
INSERT INTO products VALUES("403","SLOT DIE  18x60MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:25","2023-04-13 23:35:25","","");
INSERT INTO products VALUES("404","SLOT DIE 22X32","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:25","2023-04-13 23:35:25","","");
INSERT INTO products VALUES("405","SLOT DIE 22X33 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:25","2023-04-13 23:35:25","","");
INSERT INTO products VALUES("406","SLOT  DIE 22X42 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:26","2023-04-13 23:35:26","","");
INSERT INTO products VALUES("407","SLOT DIE 22X44 (OD 60X40X25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:26","2023-04-13 23:35:26","","");
INSERT INTO products VALUES("408","SLOT DIE 22X48 (OD 60X40X25MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:26","2023-04-13 23:35:26","","");
INSERT INTO products VALUES("409","SLOT DIE (40.4x15.4)x150x40x30","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:26","2023-04-13 23:35:26","","");
INSERT INTO products VALUES("410","SLOT DIE  45X30 (OD 80X25MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:26","2023-04-13 23:35:26","","");
INSERT INTO products VALUES("411","SLOT DIE (78.4x15.4)x150x40x30","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:26","2023-04-13 23:35:26","","");
INSERT INTO products VALUES("412","SLOT DIE 9X20(OD 60X50X25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:26","2023-04-13 23:35:26","","");
INSERT INTO products VALUES("413","SLOT DIE 9X30(OD 60X50X25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:26","2023-04-13 23:35:26","","");
INSERT INTO products VALUES("414","SLOT DIE BLOCK 14X77(DOUBLE PUNCH","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:26","2023-04-13 23:35:26","","");
INSERT INTO products VALUES("415","SLOT DIE BLOCK 14X77(SINGLE PUNCH)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:26","2023-04-13 23:35:26","","");
INSERT INTO products VALUES("416","SLOT DIE FOR BLOCK (14X77)X(47X130X23)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:26","2023-04-13 23:35:26","","");
INSERT INTO products VALUES("417","SLOT DIE [ ALL SIZE ]","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:26","2023-04-13 23:35:26","","");
INSERT INTO products VALUES("418","SLOT PUNCH 12X32X100","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:26","2023-04-13 23:35:26","","");
INSERT INTO products VALUES("419","SLOT PUNCH 12X36X100","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:26","2023-04-13 23:35:26","","");
INSERT INTO products VALUES("420","SLOT PUNCH 14X21 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:26","2023-04-13 23:35:26","","");
INSERT INTO products VALUES("421","SLOT PUNCH 14x28x100MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:26","2023-04-13 23:35:26","","");
INSERT INTO products VALUES("422","SLOT PUNCH 14X30 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:26","2023-04-13 23:35:26","","");
INSERT INTO products VALUES("423","SLOT PUNCH 14X32X100","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:27","2023-04-13 23:35:27","","");
INSERT INTO products VALUES("424","SLOT PUNCH 14x38x100","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:27","2023-04-13 23:35:27","","");
INSERT INTO products VALUES("425","SLOT PUNCH 18X24X100","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:27","2023-04-13 23:35:27","","");
INSERT INTO products VALUES("426","SLOT PUNCH 18x25x100","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:27","2023-04-13 23:35:27","","");
INSERT INTO products VALUES("427","SLOT PUNCH 18X28 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:27","2023-04-13 23:35:27","","");
INSERT INTO products VALUES("428","SLOT PUNCH 18X30X100","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:27","2023-04-13 23:35:27","","");
INSERT INTO products VALUES("429","SLOT PUNCH 18X36 (60X25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:27","2023-04-13 23:35:27","","");
INSERT INTO products VALUES("430","SLOT PUNCH 18X36X100","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:27","2023-04-13 23:35:27","","");
INSERT INTO products VALUES("431","SLOT PUNCH 18X38 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:27","2023-04-13 23:35:27","","");
INSERT INTO products VALUES("432","SLOT PUNCH 18X40 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:27","2023-04-13 23:35:27","","");
INSERT INTO products VALUES("433","SLOT PUNCH 18X48X100","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:27","2023-04-13 23:35:27","","");
INSERT INTO products VALUES("434","SLOT PUNCH 18x60x100MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:27","2023-04-13 23:35:27","","");
INSERT INTO products VALUES("435","SLOT PUNCH 21X14 MM (50X100)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:28","2023-04-13 23:35:28","","");
INSERT INTO products VALUES("436","SLOT PUNCH 21X14 MM (60x25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:28","2023-04-13 23:35:28","","");
INSERT INTO products VALUES("437","SLOT PUNCH 22X32X100","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:28","2023-04-13 23:35:28","","");
INSERT INTO products VALUES("438","SLOT PUNCH 22X33 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:28","2023-04-13 23:35:28","","");
INSERT INTO products VALUES("439","SLOT PUNCH 22X42X100 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:29","2023-04-13 23:35:29","","");
INSERT INTO products VALUES("440","SLOT PUNCH 22X44X100","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:29","2023-04-13 23:35:29","","");
INSERT INTO products VALUES("441","SLOT PUNCH 22X48X100MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:29","2023-04-13 23:35:29","","");
INSERT INTO products VALUES("442","SLOT PUNCH 25X18 MM (COLLER 50 LENTH  100)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:29","2023-04-13 23:35:29","","");
INSERT INTO products VALUES("443","SLOT PUNCH 45X30X100 MM COLLER 50 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:29","2023-04-13 23:35:29","","");
INSERT INTO products VALUES("444","SLOT PUNCH 76X16 MM (COLLER 82 LENTH 80","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:29","2023-04-13 23:35:29","","");
INSERT INTO products VALUES("445","SLOT PUNCH 76X16 MM (OD 100X25)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:29","2023-04-13 23:35:29","","");
INSERT INTO products VALUES("446","SLOT PUNCH 9X20X100MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:29","2023-04-13 23:35:29","","");
INSERT INTO products VALUES("447","SLOT PUNCH 9X30X100MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:29","2023-04-13 23:35:29","","");
INSERT INTO products VALUES("448","SLOT PUNCH [ ALL SIZE ]","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:29","2023-04-13 23:35:29","","");
INSERT INTO products VALUES("449","SOLID PUNCH 18X36X100 MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:29","2023-04-13 23:35:29","","");
INSERT INTO products VALUES("450","STAMP HOLDER 68 X H 54","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:30","2023-04-13 23:35:30","","");
INSERT INTO products VALUES("451","STAMP HOLDER 96X54X42","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:30","2023-04-13 23:35:30","","");
INSERT INTO products VALUES("452","STAMPING NUMBER &amp; LETTER PUNCH (19X18X12)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:30","2023-04-13 23:35:30","","");
INSERT INTO products VALUES("453","STAMPING PUNCH 0 TO 9","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:30","2023-04-13 23:35:30","","");
INSERT INTO products VALUES("454","STAMPING PUNCH (14x12x19) (14x12X19)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:30","2023-04-13 23:35:30","","");
INSERT INTO products VALUES("455","STAMPING PUNCH 26X10X28MM NSP","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:30","2023-04-13 23:35:30","","");
INSERT INTO products VALUES("456","STAMPING PUNCH 26X10X28MM  RT","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:30","2023-04-13 23:35:30","","");
INSERT INTO products VALUES("457","STAMPING PUNCH 52X10X28MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:30","2023-04-13 23:35:30","","");
INSERT INTO products VALUES("458","STAMPING PUNCH A TO Z","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:30","2023-04-13 23:35:30","","");
INSERT INTO products VALUES("459","STAMPING PUNCH HAND LETTER 5/8","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:30","2023-04-13 23:35:30","","");
INSERT INTO products VALUES("460","STAMPING PUNCH HAND NUMBER 5/8 (HAND STAMPING PUNCH 5/8)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:30","2023-04-13 23:35:30","","");
INSERT INTO products VALUES("461","STAMPING PUNCH,NUMBER &amp; LETTER (30X20X12)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:30","2023-04-13 23:35:30","","");
INSERT INTO products VALUES("462","STAMPING PUNCH NUMBER&amp;LETTER (30X20X20)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:30","2023-04-13 23:35:30","","");
INSERT INTO products VALUES("463","TOP BLADE OF APM 2020 (220X220X30 MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:31","2023-04-13 23:35:31","","");
INSERT INTO products VALUES("464","TOP CUTTER 111X111X23","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:31","2023-04-13 23:35:31","","");
INSERT INTO products VALUES("465","TOP CUTTER 130X130X23","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:31","2023-04-13 23:35:31","","");
INSERT INTO products VALUES("466","TOP CUTTER 200X200X38","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:31","2023-04-13 23:35:31","","");
INSERT INTO products VALUES("467","TOP CUTTER 200X255X32MM","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:31","2023-04-13 23:35:31","","");
INSERT INTO products VALUES("468","UPPER BLADE  BL 1412 (30X190X190 MM)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:31","2023-04-13 23:35:31","","");
INSERT INTO products VALUES("469","UPPER / TOP CUTTER OF APM2020 (CNC TOP CUTTER APM2020)","9999","standard","C128","3","35","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-13 23:35:31","2023-04-13 23:35:31","","");
INSERT INTO products VALUES("470","ADOPTER 1/4x1/16&quot;","9999","standard","C128","3","36","1","1","1","15","20","0","","","","","","","","1","image","","","1","","","","","","","","","this is test product with variant","","","1","2023-04-14 00:05:06","2023-04-14 00:05:08","","");
INSERT INTO products VALUES("471","ADOPTER 1/4x1/4&quot;","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","this is test product without variant","","","1","2023-04-14 00:05:08","2023-04-14 00:05:08","","");
INSERT INTO products VALUES("472","AIR COMPRESSOR 3HP, CAPACITY 160LTR","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:09","2023-04-14 00:05:52","","");
INSERT INTO products VALUES("473","APPLICATION DEFLATION FIXTURE FOR ERC","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:09","2023-04-14 00:05:52","","");
INSERT INTO products VALUES("474","ASI CAMERA WITH METALLURGICAL SOFTWARE WITH LOCK,CD","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:10","2023-04-14 00:05:53","","");
INSERT INTO products VALUES("475","BLOWER 10HP,MODEL  HPT 44/10","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:10","2023-04-14 00:05:53","","");
INSERT INTO products VALUES("476","BURNER","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:10","2023-04-14 00:05:53","","");
INSERT INTO products VALUES("477","BURNER 62-3 with MOUNTING PLATE","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:11","2023-04-14 00:05:54","","");
INSERT INTO products VALUES("478","BURNER 6562-4 with MOUNTING PLATE","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:11","2023-04-14 00:05:54","","");
INSERT INTO products VALUES("479","BUTTER FLY VALVE 1&quot; [ SCREW TYPE ]","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:11","2023-04-14 00:05:11","","");
INSERT INTO products VALUES("480","BUTTER FLY VALVE 1.1/2&quot; [ SCREW TYPE ]","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:12","2023-04-14 00:05:12","","");
INSERT INTO products VALUES("481","BUTTER FLY VALVE 2&quot; [ SCREW TYPE ]","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:12","2023-04-14 00:05:12","","");
INSERT INTO products VALUES("482","CARBIDE INSERT TOOLS TNMG160408-MMT1 (DIAMOND TOOL 1/2&quot;)","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:12","2023-04-14 00:05:12","","");
INSERT INTO products VALUES("483","CARRIER OIL","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:12","2023-04-14 00:05:55","","");
INSERT INTO products VALUES("484","CAST IRON SURFACE PLAT 450X450MM","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:12","2023-04-14 00:05:55","","");
INSERT INTO products VALUES("485","CHAIN 10&quot; x 3/4 &quot;","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:12","2023-04-14 00:05:12","","");
INSERT INTO products VALUES("486","CHAIN SPROCKET 3/4''X20TEETH DUPLEX GEAR","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:13","2023-04-14 00:05:55","","");
INSERT INTO products VALUES("487","CHAIN SPROCKET 3/4''X60TEETH DUPLEX","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:13","2023-04-14 00:05:55","","");
INSERT INTO products VALUES("488","CHIMNEY DIA 320 MM OD 320 MM THICK 7MM","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:14","2023-04-14 00:05:56","","");
INSERT INTO products VALUES("489","CI COUPLING NEW WITH MATERIAL OD338,L 140","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:14","2023-04-14 00:05:56","","");
INSERT INTO products VALUES("490","COLLET EXTENSION ROD FOR AHCTM ERC","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:14","2023-04-14 00:05:56","","");
INSERT INTO products VALUES("491","COLLET PIPE (AHCTM)","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:14","2023-04-14 00:05:56","","");
INSERT INTO products VALUES("492","COLLETS 23 MM","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:14","2023-04-14 00:05:56","","");
INSERT INTO products VALUES("493","COMPLETE'' O ''RING SET FOR AHCTM","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:15","2023-04-14 00:05:57","","");
INSERT INTO products VALUES("494","COMPLETE COMPOUND DIE SET ERC MK-V","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:15","2023-04-14 00:05:57","","");
INSERT INTO products VALUES("495","COMPLETE COPYING VALVE WITH COIL","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:15","2023-04-14 00:05:57","","");
INSERT INTO products VALUES("496","COMPLETE INSPECTION GAUGE SET","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:15","2023-04-14 00:05:57","","");
INSERT INTO products VALUES("497","COMPUTERIZED BRINELL HARDNESS TESTING MACHINE","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:15","2023-04-14 00:05:58","","");
INSERT INTO products VALUES("498","COOLING TOWER with HEAT EXCHANGER PHE","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:15","2023-04-14 00:05:58","","");
INSERT INTO products VALUES("499","DECARB EYE PIECE","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:16","2023-04-14 00:05:58","","");
INSERT INTO products VALUES("500","DEGREE GAUGE SET FOR ERC MK-V","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:16","2023-04-14 00:05:58","","");
INSERT INTO products VALUES("501","DIAMOND PASTE COMPOUND","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:16","2023-04-14 00:05:59","","");
INSERT INTO products VALUES("502","DIAMOND SPRAY","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:16","2023-04-14 00:05:59","","");
INSERT INTO products VALUES("503","DIE FOR ERC CLIP","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:16","2023-04-14 00:05:59","","");
INSERT INTO products VALUES("504","DIE SET FOR METAL LINER","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:16","2023-04-14 00:05:59","","");
INSERT INTO products VALUES("505","DIRECTION VALVE Pin COMPLETE with COIL for AHCTM","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:16","2023-04-14 00:06:00","","");
INSERT INTO products VALUES("506","DUPLEX HEATING &amp; PUMPING UNIT 6KW","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:17","2023-04-14 00:05:17","","");
INSERT INTO products VALUES("507","EMERY PAPER NO. 1/0","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:17","2023-04-14 00:06:00","","");
INSERT INTO products VALUES("508","EMERY PAPER NO. 2/0","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:17","2023-04-14 00:06:00","","");
INSERT INTO products VALUES("509","EMERY PAPER NO. 220","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:17","2023-04-14 00:06:01","","");
INSERT INTO products VALUES("510","EMERY PAPER NO. 3/0","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:17","2023-04-14 00:06:01","","");
INSERT INTO products VALUES("511","EMERY PAPER NO. 320","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:17","2023-04-14 00:06:01","","");
INSERT INTO products VALUES("512","EMERY PAPER NO. 4/0","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:18","2023-04-14 00:06:01","","");
INSERT INTO products VALUES("513","EMERY PAPER NO. 400","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:18","2023-04-14 00:06:01","","");
INSERT INTO products VALUES("514","EMERY PAPER NO. 600","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:18","2023-04-14 00:06:02","","");
INSERT INTO products VALUES("515","EMERY PAPER NO. 800","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:18","2023-04-14 00:05:18","","");
INSERT INTO products VALUES("516","GAUGE FOR CHECKING LENGTH FOR CUT BARS","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:18","2023-04-14 00:05:18","","");
INSERT INTO products VALUES("517","GEAR BOX 10 &quot; RATIO 40:1","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:19","2023-04-14 00:05:19","","");
INSERT INTO products VALUES("518","GEAR BOX 10 &quot; RATIO 60:1","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:20","2023-04-14 00:05:20","","");
INSERT INTO products VALUES("519","GEAR BOX 2 &quot; CENTRE 40/1","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:21","2023-04-14 00:05:21","","");
INSERT INTO products VALUES("520","GEAR BOX 3&quot; CENTRE 40/1","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:21","2023-04-14 00:05:21","","");
INSERT INTO products VALUES("521","GEAR BOX 4&quot; CENTRE 50/1","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:21","2023-04-14 00:05:21","","");
INSERT INTO products VALUES("522","GEAR BOX 4&quot; CENTRE 60/1","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:21","2023-04-14 00:05:21","","");
INSERT INTO products VALUES("523","GO/NO INSPECTION GAUGE","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:22","2023-04-14 00:05:22","","");
INSERT INTO products VALUES("524","GRAIN SIZE EYE PIECE","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:22","2023-04-14 00:05:22","","");
INSERT INTO products VALUES("525","HDPE BAG CAPACITY 50KG L- 29&quot; [ WHITE ]","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:22","2023-04-14 00:05:22","","");
INSERT INTO products VALUES("526","HYDRAULIC VALVE DOUBLE COIL , 4DE06ESA220-11","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:23","2023-04-14 00:05:23","","");
INSERT INTO products VALUES("527","HYDRAULIC VALVE SINGLE COIL , 4DE06DSA220-11","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:23","2023-04-14 00:05:23","","");
INSERT INTO products VALUES("528","KEY PIN WITH MATERIAL","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:23","2023-04-14 00:05:23","","");
INSERT INTO products VALUES("529","LENGTH CHECKING GAUGE FOR CUT BARS","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:23","2023-04-14 00:05:23","","");
INSERT INTO products VALUES("530","MANUAL SURFACE GRINDER MACHINE 9&quot;x18&quot;","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:23","2023-04-14 00:05:23","","");
INSERT INTO products VALUES("531","MASTER PIECE FOR AHCTM ERC","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:23","2023-04-14 00:05:23","","");
INSERT INTO products VALUES("532","METAL LINER DIE &amp;PUNCH RT-3740","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:23","2023-04-14 00:05:23","","");
INSERT INTO products VALUES("533","METAL LINER DIE&amp;PUNCH RT-8616","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:23","2023-04-14 00:05:23","","");
INSERT INTO products VALUES("534","METAL LINER DIE &amp; PUNCH RT -8617","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:23","2023-04-14 00:05:23","","");
INSERT INTO products VALUES("535","METALLOGRAPHY SPECIMEN GRINDING &amp; POLISHING MACHINE","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:23","2023-04-14 00:05:23","","");
INSERT INTO products VALUES("536","METALLURGICAL MICROSCOPE 100X MAGNIFICATION","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:24","2023-04-14 00:05:24","","");
INSERT INTO products VALUES("537","MOTOR 10 HP/1440 RPM,STARTER,V BELT ETC","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:24","2023-04-14 00:05:24","","");
INSERT INTO products VALUES("538","MOTOR 15 HP/1440 RPM,STARTER,V BELT ETC","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:24","2023-04-14 00:05:24","","");
INSERT INTO products VALUES("539","MOTOR 7.5HP/1440 RPM,STARTER,V BELT ETC","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:24","2023-04-14 00:05:24","","");
INSERT INTO products VALUES("540","MS CHAIN 1&quot;","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:24","2023-04-14 00:05:24","","");
INSERT INTO products VALUES("541","NYLON GEAR COUPLING 28NO.  ( 34 TEETH  )","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:24","2023-04-14 00:05:24","","");
INSERT INTO products VALUES("542","OIL BASED MPI POWDER","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:24","2023-04-14 00:05:24","","");
INSERT INTO products VALUES("543","OIL NOZZLE 62-3 (1.8MM)","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:24","2023-04-14 00:05:24","","");
INSERT INTO products VALUES("544","OIL NOZZLE 62-4 (3MM)","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:24","2023-04-14 00:05:24","","");
INSERT INTO products VALUES("545","OIL PUMP 3HP/2.2KW RPM 2900","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:24","2023-04-14 00:05:24","","");
INSERT INTO products VALUES("546","OIL TUBE 62-3","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:25","2023-04-14 00:05:25","","");
INSERT INTO products VALUES("547","OIL TUBE 62-4","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:25","2023-04-14 00:05:25","","");
INSERT INTO products VALUES("548","PRO-V-RING","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:25","2023-04-14 00:05:25","","");
INSERT INTO products VALUES("549","ROTARY FLANGE (CI)","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:25","2023-04-14 00:05:25","","");
INSERT INTO products VALUES("550","SHEARING DIE FOR ERC MK-V","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:25","2023-04-14 00:05:25","","");
INSERT INTO products VALUES("551","SPEED CONTROL VALVE","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:25","2023-04-14 00:05:25","","");
INSERT INTO products VALUES("552","SPRING","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:25","2023-04-14 00:05:25","","");
INSERT INTO products VALUES("553","SPRING FOR ATCM","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:25","2023-04-14 00:05:25","","");
INSERT INTO products VALUES("554","SPROCKET DUPLEX 10&quot;","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:25","2023-04-14 00:05:25","","");
INSERT INTO products VALUES("555","SPROCKET DUPLEX 18&quot;x3/4&quot;","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:26","2023-04-14 00:05:26","","");
INSERT INTO products VALUES("556","SPROCKET DUPLEX 4&quot;x3/4&quot;","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:26","2023-04-14 00:05:26","","");
INSERT INTO products VALUES("557","SPROCKET OD 14&quot;","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:26","2023-04-14 00:05:26","","");
INSERT INTO products VALUES("558","SPROCKET OD 27","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:26","2023-04-14 00:05:26","","");
INSERT INTO products VALUES("559","SS ROLLER CHAIN SIZE 32 MM","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:26","2023-04-14 00:05:26","","");
INSERT INTO products VALUES("560","TANK PLATE 190MM X 110MM X 62MM","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:26","2023-04-14 00:05:26","","");
INSERT INTO products VALUES("561","TANK PLATE 210MM X 160MM X 80MM","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:26","2023-04-14 00:05:26","","");
INSERT INTO products VALUES("562","TEST BLOCK","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:26","2023-04-14 00:05:26","","");
INSERT INTO products VALUES("563","TOE LOAD TESTING CLAMP FOR ERC","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:26","2023-04-14 00:05:26","","");
INSERT INTO products VALUES("564","TOE LOAD TESTING MACHINE with PRO-V-RING 5MT","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:26","2023-04-14 00:05:26","","");
INSERT INTO products VALUES("565","TOOL BIT","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:26","2023-04-14 00:05:26","","");
INSERT INTO products VALUES("566","TOOL HOLDER  FOR AHCTM","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:27","2023-04-14 00:05:27","","");
INSERT INTO products VALUES("567","TOOL HOLDER PIN FOR ERC","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:27","2023-04-14 00:05:27","","");
INSERT INTO products VALUES("568","V PULLEY 2''X2B SOLID","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:27","2023-04-14 00:05:27","","");
INSERT INTO products VALUES("569","WIRE ROPE","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:27","2023-04-14 00:05:27","","");
INSERT INTO products VALUES("570","WORM WHEEL (PB) RING T 40 x W 25 MM x OD 130 MM","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:27","2023-04-14 00:05:27","","");
INSERT INTO products VALUES("571","WORM WHEEL (PB) WITH HUB T 40 x W 25 MM x OD 130 MM","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:27","2023-04-14 00:05:27","","");
INSERT INTO products VALUES("572","GENERAL CONSUMABLES","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:27","2023-04-14 00:05:27","","");
INSERT INTO products VALUES("573","GRAPHITE ROPE 6 MM","9999","standard","C128","3","41","1","1","1","15","20","0","","","","","","","","1","image","","","1","","","","","","","","","this is test product with variant","","","1","2023-04-14 00:05:27","2023-04-27 14:55:32","","");
INSERT INTO products VALUES("574","PVC INSULATION WIRE ROPE 3MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","this is test product without variant","","","1","2023-04-14 00:05:28","2023-04-27 14:55:32","","");
INSERT INTO products VALUES("575","STEEL WIRE ROPE 10 MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:28","2023-04-27 14:55:32","","");
INSERT INTO products VALUES("576","STEEL WIRE ROPE 12 MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:28","2023-04-27 14:55:32","","");
INSERT INTO products VALUES("577","STEEL WIRE ROPE 6MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:28","2023-04-27 14:55:32","","");
INSERT INTO products VALUES("578","STEEL WIRE ROPE 8 MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:28","2023-04-27 14:55:32","","");
INSERT INTO products VALUES("579","WIRE ROPE PULLEY 5TON  HOIST PULLEY","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:28","2023-04-27 14:55:32","","");
INSERT INTO products VALUES("580","2MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:28","2023-04-27 14:55:32","","");
INSERT INTO products VALUES("581","ALLOY STEEL BARS 25MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:28","2023-04-27 14:55:33","","");
INSERT INTO products VALUES("582","ALLOY STEEL BARS 36MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:28","2023-04-27 14:55:33","","");
INSERT INTO products VALUES("583","ALLOY STEEL CHAIN 10 MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:28","2023-04-27 14:55:33","","");
INSERT INTO products VALUES("584","ALLOY STEEL CHAIN 12 MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:29","2023-04-27 14:55:33","","");
INSERT INTO products VALUES("585","ALLOY STEEL CHAIN 6 MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:29","2023-04-27 14:55:33","","");
INSERT INTO products VALUES("586","ALLOY STEEL CHAIN 8 MM (8 MM CHAIN ALLOY)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:29","2023-04-27 14:55:33","","");
INSERT INTO products VALUES("587","ALLOY STEEL ROUND 40MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:29","2023-04-27 14:55:33","","");
INSERT INTO products VALUES("588","ALUMINIUM SHEET 2.0MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:29","2023-04-27 14:55:35","","");
INSERT INTO products VALUES("589","BANDSAW BLADE 3760X34X1.1-3/4 TPI","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:29","2023-04-27 14:55:35","","");
INSERT INTO products VALUES("590","BANDSAW BLADE 3760X34X1.1MM4/6TPI","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:29","2023-04-27 14:55:35","","");
INSERT INTO products VALUES("591","BAND SAW BLADE 4860x41x1.3MM-3/4TPI","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:29","2023-04-27 14:55:35","","");
INSERT INTO products VALUES("592","BLADE OF PLATE SHEARING MACHINE 750x100x30MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:29","2023-04-27 14:55:35","","");
INSERT INTO products VALUES("593","BLOWER HPTN-48/15, LBH","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:29","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("594","BLOWER HPTN-48/15, RBH","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:29","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("595","BODY FOR BURNER MODEL 6562-4","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:30","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("596","BRAKE ASSEMBLY WITHOUT THRUSTOR 160/18KG","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:30","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("597","BRAKE LINER 200 X 12 MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:30","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("598","BRAKE SHOE 100 MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:30","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("599","BRAKE SHOE 160 MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:30","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("600","BURNER MODEL 6562-4","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:30","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("601","CASTABLE NORMAL","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:30","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("602","CHAIN 3MM [ NON WELD ] (MS CHAIN 3 MM)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:30","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("603","CHAIN 4MM [ NON WELD ]","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:30","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("604","CHAIN SPOCKET 1''X 24 TEETH","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:30","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("605","C I PLATE 70 X 390 X 2050MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:30","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("606","COAL","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:31","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("607","COMPANSATING CABLE 1.5 Sqmm x 2 Core (THERMOCOUPLE WIRE)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:31","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("608","COTTON HAND GLOVES","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:31","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("609","DUAL FUEL BURNER 6562-5","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:31","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("610","EN-31 ROUND 45MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:31","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("611","EN-8 ROUND 16MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:31","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("612","EN-8 ROUND 50MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:31","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("613","EN-8 ROUND 70MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:31","2023-04-27 14:55:36","","");
INSERT INTO products VALUES("614","EN-8 ROUND 80MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:32","2023-04-27 14:55:37","","");
INSERT INTO products VALUES("615","EQUAL LIP SEAL 125X145X15.5MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:32","2023-04-27 14:55:37","","");
INSERT INTO products VALUES("616","EQUAL LIP SEAL 180x205x20.5MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:32","2023-04-27 14:55:37","","");
INSERT INTO products VALUES("617","FILTER CLOTH OF ETP","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:32","2023-04-27 14:55:37","","");
INSERT INTO products VALUES("618","FIRE BRICKS 230X115X3&quot; [ IS 8 ]","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:32","2023-04-14 00:05:32","","");
INSERT INTO products VALUES("619","FIRE BRICKS STD ( 9x4.5x3)70%","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:32","2023-04-27 14:55:37","","");
INSERT INTO products VALUES("620","FIRE TILES IS-8 [ 24 X 12 X3 ]","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:32","2023-04-27 14:55:37","","");
INSERT INTO products VALUES("621","FLANGE 16&quot;","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:32","2023-04-14 00:05:32","","");
INSERT INTO products VALUES("622","GALV. STRIP 19 MM (C.R.STRIPS [GALV] 19MM)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:32","2023-04-27 14:55:37","","");
INSERT INTO products VALUES("623","GALV. STRIP 32MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:33","2023-04-27 14:55:37","","");
INSERT INTO products VALUES("624","GALV. STRIPS 31.75MM, Thik-0.79mm","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:33","2023-04-27 14:55:37","","");
INSERT INTO products VALUES("625","GI CHAIN  LINK 5MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:33","2023-04-27 14:55:37","","");
INSERT INTO products VALUES("626","G.I.WIRE 10 SWG","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:33","2023-04-27 14:55:37","","");
INSERT INTO products VALUES("627","G.I WIRE 12 SWG","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:33","2023-04-27 14:55:37","","");
INSERT INTO products VALUES("628","G.I. WIRE 14 GAUGE","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:33","2023-04-27 14:55:37","","");
INSERT INTO products VALUES("629","GLAND SEAL 145x165x14MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:33","2023-04-27 14:55:37","","");
INSERT INTO products VALUES("630","GLAND SEAL 80X100X12MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:34","2023-04-27 14:55:37","","");
INSERT INTO products VALUES("631","GRINDING STONE WHEEL BLACK 12''","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:34","2023-04-27 14:55:37","","");
INSERT INTO products VALUES("632","GRINDING STONE WHEEL  GREEN 10''","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:34","2023-04-27 14:55:38","","");
INSERT INTO products VALUES("633","GUIDE STRIP 15x2.5x456MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:34","2023-04-27 14:55:38","","");
INSERT INTO products VALUES("634","GUIDE STRIP 25x2.5x644MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:35","2023-04-27 14:55:38","","");
INSERT INTO products VALUES("635","HDPE JAMBO BAG (1 Ton Capacity)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:35","2023-04-27 14:55:38","","");
INSERT INTO products VALUES("636","HEATER FOR FLUX TANK 12kw","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:35","2023-04-27 14:55:38","","");
INSERT INTO products VALUES("637","HEATING ELEMENT COIL of FLUX HEATER","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:35","2023-04-27 14:55:38","","");
INSERT INTO products VALUES("638","HELICAL GEAR (EN-24) 20T,55MM W,90MM OD","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:35","2023-04-27 14:55:38","","");
INSERT INTO products VALUES("639","HELICAL GEAR (EN-9) 14T,122M W,145MM OD","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:36","2023-04-27 14:55:38","","");
INSERT INTO products VALUES("640","HR COIL 2.3 MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:36","2023-04-27 14:55:38","","");
INSERT INTO products VALUES("641","HR COIL 2.50 MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:37","2023-04-27 14:55:38","","");
INSERT INTO products VALUES("642","HR COIL 2.80 MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:37","2023-04-27 14:55:38","","");
INSERT INTO products VALUES("643","ID FAN COVEL IMPELLER (IMPELLER (COVER) OF BLOWER)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:37","2023-04-27 14:55:38","","");
INSERT INTO products VALUES("644","IMPELLER 400 x 240","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:37","2023-04-27 14:55:38","","");
INSERT INTO products VALUES("645","IMPELLER FOR BLOWER  44/10 DD [LBH]","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:37","2023-04-27 14:55:38","","");
INSERT INTO products VALUES("646","IMPELLER FOR BLOWER  44/10 DD [RBH]","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:37","2023-04-27 14:55:48","","");
INSERT INTO products VALUES("647","IMPELLER / ID FAN  OF BLOWER","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:37","2023-04-27 14:55:48","","");
INSERT INTO products VALUES("648","IMPELLER SIZE 700 DIA X 150 DIA X 50 X30","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:37","2023-04-27 14:55:48","","");
INSERT INTO products VALUES("649","INSULATER HEATER 32 MM 36&quot;","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:38","2023-04-14 00:05:38","","");
INSERT INTO products VALUES("650","LEATHER HAND GLOVES 14''","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:38","2023-04-27 14:55:48","","");
INSERT INTO products VALUES("651","LIME (CHUNA)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:38","2023-04-27 14:55:48","","");
INSERT INTO products VALUES("652","MEASURING TAPE 15 MTR (FIBER)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:38","2023-04-27 14:55:49","","");
INSERT INTO products VALUES("653","MEASURING TAPE 15 MTR [STEEL]","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:38","2023-04-27 14:55:49","","");
INSERT INTO products VALUES("654","MEASURING TAPE 30 MTR (STEEL)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:38","2023-04-27 14:55:49","","");
INSERT INTO products VALUES("655","MEASURING TAPE 3MTR","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:38","2023-04-27 14:55:49","","");
INSERT INTO products VALUES("656","MEASURING TAPE 5MTR","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:39","2023-04-27 14:55:49","","");
INSERT INTO products VALUES("657","MEASURING TAPE 5 MTR [ STEEL ]","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:39","2023-04-27 14:55:49","","");
INSERT INTO products VALUES("658","MIG WELDING MACHINE 600 AMP","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:39","2023-04-27 14:55:49","","");
INSERT INTO products VALUES("659","MIG WIRE 70S 6 1.00&quot;MM","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:39","2023-04-14 00:05:39","","");
INSERT INTO products VALUES("660","MIG WIRE 70S 6 1.80&quot;MM","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:39","2023-04-14 00:05:39","","");
INSERT INTO products VALUES("661","MIG WIRE [ AUTOMIG 1.2]","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:39","2023-04-27 14:55:49","","");
INSERT INTO products VALUES("662","MOTOR COVER C.I. CASTING &amp; MACHINING WORKS","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:39","2023-04-14 00:05:39","","");
INSERT INTO products VALUES("663","MOUNTING FOR BURNER MODEL 6562-4","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:39","2023-04-27 14:55:49","","");
INSERT INTO products VALUES("664","MOUNTING PLATE FOR BURNER 6562-5","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:40","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("665","MS PIPE 32NB THIK 3.6 / 4MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:40","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("666","MS PLATE 12MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:40","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("667","MS PLATE 16MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:40","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("668","MS PLATE 1MM X 2 MTR X 2MTR","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:40","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("669","MS PLATE 20MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:40","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("670","MS PLATE 250mm x 3140mm x 65mm ( EN-8 )","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:40","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("671","MS PLATE 25MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:40","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("672","MS PLATE 2MM X 2 MTR X 2MTR","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:41","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("673","MS PLATE 40MM [ EN-8 ]","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:41","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("674","MS PLATE 50MM [ EN-8 ]","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:41","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("675","MS ROUND","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:41","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("676","M S SQUARE 50 MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:41","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("677","MS SQUARE PIPE 150X150MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:45","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("678","M.S. WIRE 14 GAUGE","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:45","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("679","OIL / GEAR PUMP 225 LPM/ 10KG/CM2","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:45","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("680","OIL NOZZLE FOR BURNER 6562-5","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:46","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("681","OIL TUBE FOR BURNER 6562-5","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:46","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("682","P.B. BUSH","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:46","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("683","PILOT OPERATED CHECK VALVE CI-20-T-A","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:46","2023-04-27 14:55:50","","");
INSERT INTO products VALUES("684","Pilot Optd. Pressure Reducing Valve - PPMS-20-S-315-02","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:46","2023-04-27 14:55:51","","");
INSERT INTO products VALUES("685","PISTON O RING 130X140X15","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:46","2023-04-27 14:55:51","","");
INSERT INTO products VALUES("686","PISTON O RING 150X175X35","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:47","2023-04-27 14:55:51","","");
INSERT INTO products VALUES("687","PISTON O RING 90x100x5","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:47","2023-04-27 14:55:51","","");
INSERT INTO products VALUES("688","PISTON SEAL 125x145x15.5MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:47","2023-04-27 14:55:51","","");
INSERT INTO products VALUES("689","PISTON SEAL 180x205x18.5MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:47","2023-04-27 14:55:51","","");
INSERT INTO products VALUES("690","PLATE 16 X 80 X 350MM [ HC/HC/D3 ]","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:47","2023-04-27 14:55:51","","");
INSERT INTO products VALUES("691","PLATE 7 X 65 X 310MM [ HC/HC/D3 ]","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:47","2023-04-27 14:55:51","","");
INSERT INTO products VALUES("692","P.P ROPE 4MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:47","2023-04-27 14:55:51","","");
INSERT INTO products VALUES("693","P.P ROPE 6MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:48","2023-04-27 14:55:52","","");
INSERT INTO products VALUES("694","PRESSURE RELIEF VALVE with PRESSURE GAUGE (DPRH20T200)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:48","2023-04-27 14:55:52","","");
INSERT INTO products VALUES("695","PROTECTION BELLOW of BARE PUMP EH-375","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:48","2023-04-27 14:55:52","","");
INSERT INTO products VALUES("696","PSW ASSY PS15 1C WITH (TS-10120HN)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:48","2023-04-27 14:55:52","","");
INSERT INTO products VALUES("697","PUMP FOR BENDING CUTTING MACHINE (BENDING CUTTING MACHINE)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:51","2023-04-27 14:55:52","","");
INSERT INTO products VALUES("698","PVC WIRE ROPE","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:51","2023-04-27 14:55:52","","");
INSERT INTO products VALUES("699","QUATER PIN ALLN BOLT 12 X 190","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:51","2023-04-27 14:55:52","","");
INSERT INTO products VALUES("700","QUATER PIN ALLN BOLT 12 X 90","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:51","2023-04-27 14:55:52","","");
INSERT INTO products VALUES("701","ADOPTER 1/4x1/16&quot;","9999","standard","C128","3","36","1","1","1","15","20","0","","","","","","","","1","image","","","1","","","","","","","","","this is test product with variant","","","1","2023-04-14 00:05:51","2023-04-14 00:05:52","","");
INSERT INTO products VALUES("702","ROAD SEAL 50x70x28","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:51","2023-04-27 14:55:52","","");
INSERT INTO products VALUES("703","ROUND 25MM [ HC / HC /D3 ]","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:52","2023-04-27 14:55:52","","");
INSERT INTO products VALUES("704","ROUND 32MM EN -24","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:52","2023-04-27 14:55:52","","");
INSERT INTO products VALUES("705","ROUND 35MM EN-9","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:52","2023-04-27 14:55:53","","");
INSERT INTO products VALUES("706","ROUND 35MM [ HC / HC /D3 ]","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:52","2023-04-27 14:55:53","","");
INSERT INTO products VALUES("707","ADOPTER 1/4x1/4&quot;","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","this is test product without variant","","","1","2023-04-14 00:05:52","2023-04-14 00:05:52","","");
INSERT INTO products VALUES("708","ROUND 60MM EN -9","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:52","2023-04-27 14:55:53","","");
INSERT INTO products VALUES("709","SALT","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:52","2023-04-27 14:55:53","","");
INSERT INTO products VALUES("710","SAND MEDIA &amp; PABBLES","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:53","2023-04-14 00:05:53","","");
INSERT INTO products VALUES("711","SEALERS MACHINE ( CRIPMPING TOOLS) 19MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:53","2023-04-27 14:55:53","","");
INSERT INTO products VALUES("712","SEAL OF STRIPS  (19MM &amp; 32 MM)","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:53","2023-04-14 00:05:53","","");
INSERT INTO products VALUES("713","SEALS -114 P for 32MM STRIPS","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:53","2023-04-27 14:55:53","","");
INSERT INTO products VALUES("714","SEALS OF STRIPS [ 19MM &amp; 32MM ]","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:54","2023-04-14 00:05:54","","");
INSERT INTO products VALUES("715","SEAMLESS PIPE 16&quot; X 6 MTR","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:54","2023-04-14 00:05:54","","");
INSERT INTO products VALUES("716","BUTTER FLY VALVE 1&quot; [ SCREW TYPE ]","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:54","2023-04-14 00:05:54","","");
INSERT INTO products VALUES("717","SHEARING BLADE HVR-1620 [ 2050x100x25 ]","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:54","2023-04-27 14:55:53","","");
INSERT INTO products VALUES("718","BUTTER FLY VALVE 1.1/2&quot; [ SCREW TYPE ]","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:54","2023-04-14 00:05:54","","");
INSERT INTO products VALUES("719","BUTTER FLY VALVE 2&quot; [ SCREW TYPE ]","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:55","2023-04-14 00:05:55","","");
INSERT INTO products VALUES("720","SILICON CO2 SPRAY","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:55","2023-04-27 14:55:53","","");
INSERT INTO products VALUES("721","CARBIDE INSERT TOOLS TNMG160408-MMT1 (DIAMOND TOOL 1/2&quot;)","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:55","2023-04-14 00:05:55","","");
INSERT INTO products VALUES("722","SLIPRING OD-102MM,ID-63MM,L-72MM,THRU-13MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:55","2023-04-27 14:55:53","","");
INSERT INTO products VALUES("723","SLIPRING OD33MMXID33MMXLENTH90MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:55","2023-04-27 14:55:53","","");
INSERT INTO products VALUES("724","SOLENOIED COIL OF CNC [COE 24DC/10,30W]","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:55","2023-04-27 14:55:53","","");
INSERT INTO products VALUES("725","CHAIN 10&quot; x 3/4 &quot;","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:55","2023-04-14 00:05:55","","");
INSERT INTO products VALUES("726","SOLONOID COIL OF BAND SAW","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:55","2023-04-27 14:55:54","","");
INSERT INTO products VALUES("727","SQUARE BAR 250MMX1700MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:55","2023-04-27 14:55:54","","");
INSERT INTO products VALUES("728","SQUARE BAR 50 MM (EN-8)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:56","2023-04-27 14:55:54","","");
INSERT INTO products VALUES("729","SQUIRE RING 86x78x4mm","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:56","2023-04-27 14:55:54","","");
INSERT INTO products VALUES("730","SS IMPELLER BUS SET FITTING NEW","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:56","2023-04-27 14:55:54","","");
INSERT INTO products VALUES("731","STATOR for BARE PUMP MODEL EH-375","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:56","2023-04-27 14:55:54","","");
INSERT INTO products VALUES("732","SUPER CASTABLE (25KG)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:56","2023-04-27 14:55:54","","");
INSERT INTO products VALUES("733","SV ASSY 3/4 BSP 18KSC 17BAR (TS-10120 HN)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:56","2023-04-27 14:55:55","","");
INSERT INTO products VALUES("734","TEM. INDICATOR DIGITAL 96X96 230 VAC (0-1200'X 96X96 MM TEM INDICATOR)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:57","2023-04-27 14:55:55","","");
INSERT INTO products VALUES("735","TEMP.INDICATOR 3&quot;, 4.5&quot; DISPLAY","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:57","2023-04-14 00:05:57","","");
INSERT INTO products VALUES("736","THERMOCOUPLE 'K' TYPE 'L' SHAPE 1200 DEGREE (THERMOCOUPLE 600 X 600 MM , K TYPE)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:57","2023-04-27 14:55:55","","");
INSERT INTO products VALUES("737","THERMO COUPLE HAND HELD","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:58","2023-04-27 14:55:55","","");
INSERT INTO products VALUES("738","THRUSTER 18 KG","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:58","2023-04-27 14:55:55","","");
INSERT INTO products VALUES("739","WARM GEAR &amp; SHAFT (ATLAS)","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:58","2023-04-14 00:05:58","","");
INSERT INTO products VALUES("740","WEB CILING PATTA 3 MT X 8 MTR","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:58","2023-04-27 14:55:55","","");
INSERT INTO products VALUES("741","WEB CILING PATTA 3 TON X 3 MTR","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:58","2023-04-27 14:55:55","","");
INSERT INTO products VALUES("742","WEB CILING PATTA 3 TON X 4 MTR","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:59","2023-04-27 14:55:55","","");
INSERT INTO products VALUES("743","WEB CILLING PATTA 3TON X8 TON","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:59","2023-04-27 14:55:55","","");
INSERT INTO products VALUES("744","WELDING POSITIONER","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:59","2023-04-27 14:55:55","","");
INSERT INTO products VALUES("745","WHYT HEAT-'A'","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:05:59","2023-04-27 14:55:55","","");
INSERT INTO products VALUES("746","WIPER SEAL WS 6036","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:06:00","2023-04-27 14:55:55","","");
INSERT INTO products VALUES("747","WIPER SEAL WS 6045","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:06:00","2023-04-27 14:55:56","","");
INSERT INTO products VALUES("748","DUPLEX HEATING &amp; PUMPING UNIT 6KW","9999","standard","C128","3","36","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:06:00","2023-04-14 00:06:00","","");
INSERT INTO products VALUES("749","WIPER SEAL WS 6099","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:06:00","2023-04-27 14:55:56","","");
INSERT INTO products VALUES("750","WIRE ROPE 16 MMX6 MTR","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:06:00","2023-04-27 14:55:56","","");
INSERT INTO products VALUES("751","WIRE ROPE PVC COATED","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:06:01","2023-04-27 14:55:56","","");
INSERT INTO products VALUES("752","WIRE ROPE STEEL 3 MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:06:01","2023-04-27 14:55:56","","");
INSERT INTO products VALUES("753","WODDEN BAR 6X4X4","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:06:01","2023-04-27 14:55:56","","");
INSERT INTO products VALUES("754","YELLOW TAG","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:06:01","2023-04-27 14:55:56","","");
INSERT INTO products VALUES("755","ZINC MOLTEN PUMP 10HP,1440 RPM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:06:01","2023-04-27 14:55:56","","");
INSERT INTO products VALUES("756","ZINC SPRAY","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:06:02","2023-04-27 14:55:56","","");
INSERT INTO products VALUES("757","ZINK ALLUMINIUM ALLOY","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:06:02","2023-04-27 14:55:56","","");
INSERT INTO products VALUES("758","EOT CRANE 5TON CAPACITY","9999","standard","C128","3","38","1","1","1","15","20","0","","","","","","","","1","image","","","1","","","","","","","","","this is test product with variant","","","1","2023-04-14 00:17:41","2023-04-14 00:21:09","","");
INSERT INTO products VALUES("759","HF WELDER 200KW","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","this is test product without variant","","","1","2023-04-14 00:17:43","2023-04-14 00:21:09","","");
INSERT INTO products VALUES("760","HF WELDER 250KW","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:43","2023-04-14 00:21:09","","");
INSERT INTO products VALUES("761","ROLLS SET ROOT DIA 160MM SHAFT DIA 70MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:43","2023-04-14 00:21:10","","");
INSERT INTO products VALUES("762","ROLLS SET ROOT DIA 170MM SHAFT DIA 80MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:43","2023-04-14 00:21:10","","");
INSERT INTO products VALUES("763","TUBE MILL 1&quot; - 3&quot; [GMT 95MM]","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:44","2023-04-14 00:17:44","","");
INSERT INTO products VALUES("764","TUBE MILL 1/2&quot; - 1.1/2&quot; (GMT 2M)","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:44","2023-04-14 00:17:44","","");
INSERT INTO products VALUES("765","2 POSITION DRYER PARTS PART-1(GALVA PIPE)","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:44","2023-04-14 00:21:10","","");
INSERT INTO products VALUES("766","2 POSITION DRYER PARTS ,PART-2(GALVA PIPE)","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:45","2023-04-14 00:21:11","","");
INSERT INTO products VALUES("767","5 TON BOTTOM HOOK WITH TRALLEY","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:45","2023-04-14 00:21:11","","");
INSERT INTO products VALUES("768","6mm","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:45","2023-04-14 00:21:11","","");
INSERT INTO products VALUES("769","A.C. 1 TON","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:46","2023-04-14 00:21:11","","");
INSERT INTO products VALUES("770","ACID STORAGE TANK 15KL","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:46","2023-04-14 00:21:11","","");
INSERT INTO products VALUES("771","ACID STORAGE TANK 16 KL","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:47","2023-04-14 00:21:11","","");
INSERT INTO products VALUES("772","AIR POLLUTION CONTROL SYSTEM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:47","2023-04-14 00:21:11","","");
INSERT INTO products VALUES("773","AIR VENTILATOR","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:47","2023-04-14 00:21:12","","");
INSERT INTO products VALUES("774","ALUMINIUM SHEET 20 GAUGE","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:48","2023-04-14 00:21:12","","");
INSERT INTO products VALUES("775","ANGLE 45x30x5","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:48","2023-04-14 00:21:12","","");
INSERT INTO products VALUES("776","ANGLE CROPING MACHINE 75TON C-16","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:48","2023-04-14 00:21:12","","");
INSERT INTO products VALUES("777","ASBESTOS SHEET 2.5 Mtr x 1 Mtr","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:49","2023-04-14 00:21:12","","");
INSERT INTO products VALUES("778","ASBESTOS SHEET 2MTR X 1MTR","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:49","2023-04-14 00:21:12","","");
INSERT INTO products VALUES("779","ASBESTOS SHEET 3 Mtr x 1 Mtr","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:49","2023-04-14 00:21:12","","");
INSERT INTO products VALUES("780","AUTO HYDRO COPYING TURNING MACHINE","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:50","2023-04-14 00:21:12","","");
INSERT INTO products VALUES("781","BAND SAW M/C 210LMGTV","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:50","2023-04-14 00:21:12","","");
INSERT INTO products VALUES("782","BURNER BLOCK H/A 70% (9`X9`)","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:53","2023-04-14 00:21:13","","");
INSERT INTO products VALUES("783","C.C.PROFILE SHEET 0.5MM X 2 MTR","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:55","2023-04-14 00:21:13","","");
INSERT INTO products VALUES("784","C.C.PROFILE SHEET 0.5MM X 3 MTR","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:55","2023-04-14 00:21:13","","");
INSERT INTO products VALUES("785","C.C.PROFILE SHEET 0.5MM X 5 MTR","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:57","2023-04-14 00:21:13","","");
INSERT INTO products VALUES("786","C.C.PROFILE SHEET 0.5MM X 6 MTR","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:57","2023-04-14 00:21:13","","");
INSERT INTO products VALUES("787","CHIMANI 600MM DIA 108' LENGTH","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:58","2023-04-14 00:21:13","","");
INSERT INTO products VALUES("788","CHIMNEY WITH MATERIAL (COMPLETE SET )","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:59","2023-04-14 00:21:13","","");
INSERT INTO products VALUES("789","CNC  MACHINE APM 1412","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:59","2023-04-14 00:21:13","","");
INSERT INTO products VALUES("790","CNC MACHINE PPD 103","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:17:59","2023-04-14 00:21:14","","");
INSERT INTO products VALUES("791","CNC PROFILE CUTTING MACHINE (KING CUT SMARTY)","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:00","2023-04-14 00:21:14","","");
INSERT INTO products VALUES("792","CNC PROFILE CUTTING MACHINE L-6MTR (KING CUT MACHINE 6MTR LENGTH)","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:00","2023-04-14 00:21:14","","");
INSERT INTO products VALUES("793","COLD SHEAR MACHINE 36-42MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:00","2023-04-14 00:21:14","","");
INSERT INTO products VALUES("794","CONE 8 MM THICK. MS PLATE","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:00","2023-04-14 00:21:14","","");
INSERT INTO products VALUES("795","COOLING TOWER MODEL AC-20","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:01","2023-04-14 00:21:14","","");
INSERT INTO products VALUES("796","CPU-F3SP22-05 , YOKOGAWA PLC","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:01","2023-04-14 00:21:14","","");
INSERT INTO products VALUES("797","CRANE PANEL","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:01","2023-04-14 00:21:14","","");
INSERT INTO products VALUES("798","CYLINDERS HANDLING EQUIPMENTS","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:01","2023-04-14 00:21:14","","");
INSERT INTO products VALUES("799","DISTRIBUTION PANEL OF GP[ 16 SET ]","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:02","2023-04-14 00:21:14","","");
INSERT INTO products VALUES("800","DISTRIBUTION TRANSFORMER 1000KVA, 33 / 0.433KV","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:02","2023-04-14 00:21:14","","");
INSERT INTO products VALUES("801","DOSING PUMP HYDRAULICALLY ACTUATED DIAPHRAGM TYPE","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:03","2023-04-14 00:21:15","","");
INSERT INTO products VALUES("802","DUCTING SYSTEM FOR PICKLING TANK","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:03","2023-04-14 00:21:15","","");
INSERT INTO products VALUES("803","DUST DEPARATOR PIPE LINE","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:04","2023-04-14 00:21:15","","");
INSERT INTO products VALUES("804","EN-8 ROUND BAR 22MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:04","2023-04-14 00:21:15","","");
INSERT INTO products VALUES("805","E.O.T CRANE 3+3 MT(2 Hoist) 17565 Mtr SPAM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:05","2023-04-14 00:21:16","","");
INSERT INTO products VALUES("806","EOT CRANE 5 TON SPAN 14 MTR APX","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:05","2023-04-14 00:21:16","","");
INSERT INTO products VALUES("807","E.O.T. CRANE 6M(WITHOUT TROLLY)SPAM 21500 MTR","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:05","2023-04-14 00:21:16","","");
INSERT INTO products VALUES("808","EOT CRANE  7.5 TON CAPACITY","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:06","2023-04-14 00:21:16","","");
INSERT INTO products VALUES("809","E.O.T. CRANT 10 MT","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:06","2023-04-14 00:21:16","","");
INSERT INTO products VALUES("810","ETP 10 KLD","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:07","2023-04-14 00:21:16","","");
INSERT INTO products VALUES("811","ETP 11KLD (for PIPE GI Plant)","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:07","2023-04-14 00:21:17","","");
INSERT INTO products VALUES("812","ETP 30KLD","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:07","2023-04-14 00:21:17","","");
INSERT INTO products VALUES("813","ETP 50KLD","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:08","2023-04-14 00:21:17","","");
INSERT INTO products VALUES("814","ETP SECTION MCC PANEL 1300 X 1800 X 400MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:08","2023-04-14 00:21:17","","");
INSERT INTO products VALUES("815","FIBER LASER MARKING MACHINE","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:08","2023-04-14 00:21:17","","");
INSERT INTO products VALUES("816","FIBRE SHEET / TRANSPARRANT SHEET","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:08","2023-04-14 00:21:17","","");
INSERT INTO products VALUES("817","FLAT 100 X 10MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:08","2023-04-14 00:21:17","","");
INSERT INTO products VALUES("818","FLAT 40 X 6MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:09","2023-04-14 00:21:17","","");
INSERT INTO products VALUES("819","FLAT 50 X 8MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:09","2023-04-14 00:21:17","","");
INSERT INTO products VALUES("820","FLAT 60 X 6MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:09","2023-04-14 00:21:17","","");
INSERT INTO products VALUES("821","FLAT 65 X 10MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:09","2023-04-14 00:21:17","","");
INSERT INTO products VALUES("822","FLAT 65 X 6MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:09","2023-04-14 00:21:17","","");
INSERT INTO products VALUES("823","FLAT 65 X 8MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:10","2023-04-14 00:21:18","","");
INSERT INTO products VALUES("824","FLAT 75 X 10MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:10","2023-04-14 00:21:18","","");
INSERT INTO products VALUES("825","FLAT 75 X 8MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:11","2023-04-14 00:21:18","","");
INSERT INTO products VALUES("826","FLUX TANK L-8Mtr,W-1.5Mtr,H-1.5Mtr","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:11","2023-04-14 00:21:18","","");
INSERT INTO products VALUES("827","FRP WORK / COATING","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:11","2023-04-14 00:21:19","","");
INSERT INTO products VALUES("828","FUME SCRABER SYSTEM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:12","2023-04-14 00:21:19","","");
INSERT INTO products VALUES("829","G-800 GEAR BOX (40:/)","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:14","2023-04-14 00:21:19","","");
INSERT INTO products VALUES("830","GAL.KETTLE 13050MM(L)X1000MM(W)X1400MM(Dep.)X50MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:14","2023-04-14 00:21:19","","");
INSERT INTO products VALUES("831","GAL.KETTLE 13100(L)x 1000(W)x 1600(H)x 50MM THIK.","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:14","2023-04-14 00:21:19","","");
INSERT INTO products VALUES("832","GALVANAIZING FURNACE -II","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:15","2023-04-14 00:21:19","","");
INSERT INTO products VALUES("833","GALVANIZING KETTLE 13Mtr X 1.2Mtr x 1Mtr x 50MM Th","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:15","2023-04-14 00:21:19","","");
INSERT INTO products VALUES("834","GALVANIZING KETTLE [ 6.8mtr x 1.6mtr x 50mm x 2 ]","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:15","2023-04-14 00:21:19","","");
INSERT INTO products VALUES("835","GALVANIZING KETTLE [ 8.0 x 1.6 x 1.0 Mtr ]","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:15","2023-04-14 00:21:19","","");
INSERT INTO products VALUES("836","GP DIV NEW MCC PANEL 2250 X 3350 X 500MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:15","2023-04-14 00:21:19","","");
INSERT INTO products VALUES("837","GP DIV NEW PCC PANEL 2250 X 2700 X 500MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:16","2023-04-14 00:21:20","","");
INSERT INTO products VALUES("838","H.A. BRICKS","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:16","2023-04-14 00:21:20","","");
INSERT INTO products VALUES("839","H.A. MORTAR","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:17","2023-04-14 00:21:20","","");
INSERT INTO products VALUES("840","HANGER 20MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:17","2023-04-14 00:21:20","","");
INSERT INTO products VALUES("841","HANGER 25MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:17","2023-04-14 00:21:20","","");
INSERT INTO products VALUES("842","HDG BOLTS WITH NUTS (GRADE -5.6)M-12","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:17","2023-04-14 00:21:20","","");
INSERT INTO products VALUES("843","HDG BOLT WITH  NUTS (GRADE 5.6 ) M -16","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:17","2023-04-14 00:21:21","","");
INSERT INTO products VALUES("844","HOIST 5MT OF EOT CRANE (CRANE HOIST 5MT)","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:17","2023-04-14 00:21:23","","");
INSERT INTO products VALUES("845","HOT DIP PIPE GALVANIZING PLANT","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:17","2023-04-14 00:21:24","","");
INSERT INTO products VALUES("846","HYD PRESS 150TON 'C' TYPE","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:18","2023-04-14 00:21:24","","");
INSERT INTO products VALUES("847","HYDRA 8 Without Jack 9.5 Ton","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:18","2023-04-14 00:21:24","","");
INSERT INTO products VALUES("848","HYDRAULIC NOTCHING MACHINE 110 TON","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:18","2023-04-14 00:21:25","","");
INSERT INTO products VALUES("849","HYDRAULIC PLATE SHEARING MACHINE 16X1500 MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:18","2023-04-14 00:21:25","","");
INSERT INTO products VALUES("850","HYDRAULIC PLATE SHEARING MACHINE MODEL HVR-1620","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:18","2023-04-14 00:21:25","","");
INSERT INTO products VALUES("851","HYDRAULIC STAMPING MACHINE 110TON","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:18","2023-04-14 00:21:25","","");
INSERT INTO products VALUES("852","HYDRAULIC STRAIGHTEN MACHINE 300MT","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:18","2023-04-14 00:21:26","","");
INSERT INTO products VALUES("853","ID FAN BLOWER 900 MM DIA","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:18","2023-04-14 00:21:26","","");
INSERT INTO products VALUES("854","INC3 CUTTER","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:19","2023-04-14 00:21:26","","");
INSERT INTO products VALUES("855","LEAD INGOTS","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:19","2023-04-14 00:21:27","","");
INSERT INTO products VALUES("856","LPG LOT INSTALLATION","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:19","2023-04-14 00:21:27","","");
INSERT INTO products VALUES("857","MCC PANEL (GP-I)","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:20","2023-04-14 00:21:27","","");
INSERT INTO products VALUES("858","MS CONICAL CHIMNEY","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:20","2023-04-14 00:21:28","","");
INSERT INTO products VALUES("859","M.S. FILTER PRESS 915MM with POWER HYDRAULIC","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:20","2023-04-14 00:21:28","","");
INSERT INTO products VALUES("860","MS PLATE 10MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:20","2023-04-14 00:21:28","","");
INSERT INTO products VALUES("861","MS PLATE 14MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:21","2023-04-14 00:21:28","","");
INSERT INTO products VALUES("862","MS PLATE 1.60MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:21","2023-04-14 00:21:28","","");
INSERT INTO products VALUES("863","MS PLATE 18MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:21","2023-04-14 00:21:29","","");
INSERT INTO products VALUES("864","MS PLATE 24MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:21","2023-04-14 00:21:29","","");
INSERT INTO products VALUES("865","MS PLATE 2MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:22","2023-04-14 00:21:29","","");
INSERT INTO products VALUES("866","MS PLATE 35MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:22","2023-04-14 00:21:30","","");
INSERT INTO products VALUES("867","MS PLATE 40MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:22","2023-04-14 00:21:30","","");
INSERT INTO products VALUES("868","MS PLATE 50MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:22","2023-04-14 00:21:30","","");
INSERT INTO products VALUES("869","MS PLATE 5MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:23","2023-04-14 00:21:31","","");
INSERT INTO products VALUES("870","MS PLATE 6MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:23","2023-04-14 00:21:31","","");
INSERT INTO products VALUES("871","MS PLATE 8MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:23","2023-04-14 00:21:31","","");
INSERT INTO products VALUES("872","MS PLATE [ GRADE E250 ]","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:24","2023-04-14 00:21:31","","");
INSERT INTO products VALUES("873","MS QUENCHING TANK","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:24","2023-04-14 00:21:31","","");
INSERT INTO products VALUES("874","M.S. RAIL","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:24","2023-04-14 00:21:31","","");
INSERT INTO products VALUES("875","MS ROUND 10MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:25","2023-04-14 00:21:32","","");
INSERT INTO products VALUES("876","MS ROUND 12MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:25","2023-04-14 00:21:32","","");
INSERT INTO products VALUES("877","MS ROUND 16MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:25","2023-04-14 00:21:32","","");
INSERT INTO products VALUES("878","MS ROUND 18MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:25","2023-04-14 00:21:32","","");
INSERT INTO products VALUES("879","MS ROUND 20MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:26","2023-04-14 00:21:33","","");
INSERT INTO products VALUES("880","MS ROUND 22MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:26","2023-04-14 00:21:33","","");
INSERT INTO products VALUES("881","MS ROUND 25 MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:31","2023-04-14 00:21:33","","");
INSERT INTO products VALUES("882","MS ROUND 5.5MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:32","2023-04-14 00:21:33","","");
INSERT INTO products VALUES("883","MS ROUND 80MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:32","2023-04-14 00:21:34","","");
INSERT INTO products VALUES("884","MS ROUND 8MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:32","2023-04-14 00:21:34","","");
INSERT INTO products VALUES("885","MS ROUND BAR 36 MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:32","2023-04-14 00:21:34","","");
INSERT INTO products VALUES("886","OFFICE BUILDING PANEL","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:33","2023-04-14 00:21:34","","");
INSERT INTO products VALUES("887","OTHER SAFETY EQUIPMENTS OF LPG","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:33","2023-04-14 00:21:35","","");
INSERT INTO products VALUES("888","OUTDOOR DISTRIBUTION PANEL","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:33","2023-04-14 00:21:35","","");
INSERT INTO products VALUES("889","PACK WASHER M -12","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:33","2023-04-14 00:21:36","","");
INSERT INTO products VALUES("890","PCC PANEL","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:33","2023-04-14 00:21:37","","");
INSERT INTO products VALUES("891","PDB PANEL 1300 X 1800 X 400 MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:34","2023-04-14 00:21:38","","");
INSERT INTO products VALUES("892","PICKLING TANK L-14000,W-1200MM, H-1600MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:34","2023-04-14 00:21:38","","");
INSERT INTO products VALUES("893","PICKLING TANK L-14000,W-1200MM, H-1600MM [ 110'C ]","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:34","2023-04-14 00:21:39","","");
INSERT INTO products VALUES("894","PICKLING TANK L-8Mtr,W-1.5Mtr, H-1.5Mtr","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:34","2023-04-14 00:21:39","","");
INSERT INTO products VALUES("895","PIPE HANDLING SYSTEM FOR GALVANIZING PART -1","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:34","2023-04-14 00:21:39","","");
INSERT INTO products VALUES("896","PIPE HANDLING SYSTEM FOR GALVANIZING PART -2","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:34","2023-04-14 00:21:39","","");
INSERT INTO products VALUES("897","PLC PROGRAM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:34","2023-04-14 00:21:39","","");
INSERT INTO products VALUES("898","POWER PRESS 'C' TYPE 75 MT","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:34","2023-04-14 00:21:39","","");
INSERT INTO products VALUES("899","POWER PRESS 100TON","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:35","2023-04-14 00:21:40","","");
INSERT INTO products VALUES("900","POWER PRESS 150TON","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:35","2023-04-14 00:21:40","","");
INSERT INTO products VALUES("901","POWER PRESS 200TON","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:35","2023-04-14 00:21:40","","");
INSERT INTO products VALUES("902","PULSE FIRED HIGH VELOCITY GALVANIZING FURNACE","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:35","2023-04-14 00:21:40","","");
INSERT INTO products VALUES("903","PUNCHING PRESS 75 MT","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:36","2023-04-14 00:21:40","","");
INSERT INTO products VALUES("904","RIDGE","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:36","2023-04-14 00:21:40","","");
INSERT INTO products VALUES("905","RINSING TANK L-8Mtr,W-1.5Mtr,H-1.5Mtr","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:36","2023-04-14 00:21:40","","");
INSERT INTO products VALUES("906","ROCKWELL HARDNESS TESTING MACHINE MODEL :RAS","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:36","2023-04-14 00:21:40","","");
INSERT INTO products VALUES("907","ROOM HEATER 1000W","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:37","2023-04-14 00:21:41","","");
INSERT INTO products VALUES("908","R.O. PLANT 1000 LPH","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:37","2023-04-14 00:21:41","","");
INSERT INTO products VALUES("909","RO PLANT 2000 LPH COMPLETE SET","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:37","2023-04-14 00:21:41","","");
INSERT INTO products VALUES("910","ROUND BAR 25 MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:37","2023-04-14 00:21:41","","");
INSERT INTO products VALUES("911","SEWAGE TREATMENT PLANT 10KLD","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:37","2023-04-14 00:21:41","","");
INSERT INTO products VALUES("912","SPARE KIT FOR 3TF30/31 (3TXx4091-1A MECHNICAL INTERLOCK)","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:38","2023-04-14 00:21:41","","");
INSERT INTO products VALUES("913","SQUARE BAR 12MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:38","2023-04-14 00:21:42","","");
INSERT INTO products VALUES("914","SQUIRE BAR 100X50MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:39","2023-04-14 00:21:43","","");
INSERT INTO products VALUES("915","SQUIRE BAR 20MM","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:39","2023-04-14 00:21:43","","");
INSERT INTO products VALUES("916","SS BLOWER FOR HOT PLATE(LBH)","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:40","2023-04-14 00:21:43","","");
INSERT INTO products VALUES("917","SS BLOWER FOR HOT PLATE(RBH)","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:40","2023-04-14 00:21:44","","");
INSERT INTO products VALUES("918","S.S. IMPELLER FAN FOR GP","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:40","2023-04-14 00:21:44","","");
INSERT INTO products VALUES("919","S.S. IMPERLAR SET ID FAN (4500x2900x100)","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:41","2023-04-14 00:21:44","","");
INSERT INTO products VALUES("920","SS STEEL BLOWER ,IMPERLLER &amp; BEARING BLOCK SET","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:41","2023-04-14 00:18:41","","");
INSERT INTO products VALUES("921","STATIONARY MAGNETIC CRACK DETECTOR","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:41","2023-04-14 00:21:45","","");
INSERT INTO products VALUES("922","STEP BOLT M16x150M","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:41","2023-04-14 00:21:45","","");
INSERT INTO products VALUES("923","THREADING MACHINE 114MM TUBE","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:41","2023-04-14 00:21:45","","");
INSERT INTO products VALUES("924","UTM MACHINE 100MT with HYDRAULIC GRIP","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:41","2023-04-14 00:21:45","","");
INSERT INTO products VALUES("925","WATER CHILLER 1000 LTR CAPACITY","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:42","2023-04-14 00:21:45","","");
INSERT INTO products VALUES("926","WATER COOLER 150/150 [ FULL SS BODY ]","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:43","2023-04-14 00:21:45","","");
INSERT INTO products VALUES("927","WATER PURIFICATION 120 LTR","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:44","2023-04-14 00:21:46","","");
INSERT INTO products VALUES("928","WATER SOFTENER MODEL: EBVPL175","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:44","2023-04-14 00:21:46","","");
INSERT INTO products VALUES("929","WATER TREATMENT PLANT WITH U.V. STERILIZER","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:44","2023-04-14 00:21:46","","");
INSERT INTO products VALUES("930","WEIGHING SCLAE 5TON CAPACITY , 10 FT LENGTH x 4 FT","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:44","2023-04-14 00:21:46","","");
INSERT INTO products VALUES("931","WELDING DISTRIBUTION PANEL","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:44","2023-04-14 00:21:46","","");
INSERT INTO products VALUES("932","ZINC KETTLE 7.5mtr L x 0.8mtr W x 1.5mtr D X50mm Th","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:45","2023-04-14 00:21:46","","");
INSERT INTO products VALUES("933","ZINK TANK","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:45","2023-04-14 00:21:47","","");
INSERT INTO products VALUES("934","ACCOSET 50","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:45","2023-04-14 00:21:47","","");
INSERT INTO products VALUES("935","ACCOSET -50 NORMAL 25KG BAG","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:45","2023-04-14 00:21:47","","");
INSERT INTO products VALUES("936","ACID PROOF RUBBER SHEET 12MM Thikness (RUBBER SHEET 4' X 5 MTR X 12MM)","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:45","2023-04-14 00:21:47","","");
INSERT INTO products VALUES("937","BURNER BLOCK 12&quot;X12&quot;X12&quot;","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:45","2023-04-14 00:18:45","","");
INSERT INTO products VALUES("938","BURNER BLOCK 12''X12''X12'' (40%)","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:46","2023-04-14 00:21:48","","");
INSERT INTO products VALUES("939","BURNER BLOCK 12x12x12 (70 %)","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:46","2023-04-14 00:21:48","","");
INSERT INTO products VALUES("940","BURNER BLOCK  9&quot;X9&quot;X9&quot;","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:46","2023-04-14 00:18:46","","");
INSERT INTO products VALUES("941","CAPPOLA BRICKS (HAF ROUND BRICKS 230X120X75M)","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:46","2023-04-14 00:21:48","","");
INSERT INTO products VALUES("942","FIRE BRICKS 230X115X75/65 [E/A] 70%","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:46","2023-04-14 00:21:49","","");
INSERT INTO products VALUES("943","FIRE BRICKS 230X115X75 [ 40% ]","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:46","2023-04-14 00:21:49","","");
INSERT INTO products VALUES("944","FIRE BRICKS 230X115X75 [ 70% ]","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:46","2023-04-14 00:21:49","","");
INSERT INTO products VALUES("945","FIRE BRICKS 230X115X75 [ 70% ] GRADE 70 NSTD","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:47","2023-04-14 00:21:49","","");
INSERT INTO products VALUES("946","FIRE BRICKS STD 65-70%","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:47","2023-04-14 00:21:49","","");
INSERT INTO products VALUES("947","FIRE CET FINE CEMENT(FIRE CLAY FINE)","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:47","2023-04-14 00:21:49","","");
INSERT INTO products VALUES("948","FIRE CLAY MORTAR","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:48","2023-04-14 00:21:49","","");
INSERT INTO products VALUES("949","FLY ASH BRICKS","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:49","2023-04-14 00:21:49","","");
INSERT INTO products VALUES("950","G.T. BLOCK (18X12X6&quot;) 70%","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:50","2023-04-14 00:18:50","","");
INSERT INTO products VALUES("951","G.T. BLOCK 24X12X3 (70%)","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:50","2023-04-14 00:21:49","","");
INSERT INTO products VALUES("952","G.T. BLOCK 24X12X6&quot; (70%)","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:51","2023-04-14 00:18:51","","");
INSERT INTO products VALUES("953","G .T. BLOCK  24x12x6'","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:51","2023-04-14 00:21:49","","");
INSERT INTO products VALUES("954","G.T.BLOCK 24X9X6 70%","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:51","2023-04-14 00:21:50","","");
INSERT INTO products VALUES("955","G.T. BLOCK 60% (24X12X3)","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:52","2023-04-14 00:21:50","","");
INSERT INTO products VALUES("956","G.T.BLOCK  70% 18&quot;X12&quot;X3&quot;","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:52","2023-04-14 00:18:52","","");
INSERT INTO products VALUES("957","INSULATION BRICKS (230X115X75) C/F","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:52","2023-04-14 00:21:50","","");
INSERT INTO products VALUES("958","INSULITE CASTABLE-11","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:52","2023-04-14 00:21:51","","");
INSERT INTO products VALUES("959","SKEW BLOCK 9x9x4.5 , 40%","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:52","2023-04-14 00:21:51","","");
INSERT INTO products VALUES("960","SKEW BLOCK 9x9x6x4.5 , 40%","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:53","2023-04-14 00:21:51","","");
INSERT INTO products VALUES("961","SUPER CASTABLE  50KG","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:53","2023-04-14 00:21:51","","");
INSERT INTO products VALUES("962","T- BRICKS  (70%)","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:53","2023-04-14 00:21:51","","");
INSERT INTO products VALUES("963","ALMIRAH (78&quot;X36&quot;X19&quot;)","9999","standard","C128","3","40","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:53","2023-04-14 00:18:53","","");
INSERT INTO products VALUES("964","EHITE BOARD MARKER PEN BLACK","9999","standard","C128","3","40","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:53","2023-04-14 00:21:51","","");
INSERT INTO products VALUES("965","FAB .SIFT HANDLING OVER REPORT BOOK","9999","standard","C128","3","40","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:53","2023-04-14 00:21:52","","");
INSERT INTO products VALUES("966","FINAL INSPECTION REPORT (FABRICATION) BOOK","9999","standard","C128","3","40","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:53","2023-04-14 00:21:52","","");
INSERT INTO products VALUES("967","LED TV TCL 65''","9999","standard","C128","3","40","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:54","2023-04-14 00:21:52","","");
INSERT INTO products VALUES("968","L FOLDER","9999","standard","C128","3","40","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:54","2023-04-14 00:21:52","","");
INSERT INTO products VALUES("969","MATERIAL ISSUE REQUISITIC","9999","standard","C128","3","40","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:54","2023-04-14 00:21:52","","");
INSERT INTO products VALUES("970","OFFICE CHAIR FIX","9999","standard","C128","3","40","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:54","2023-04-14 00:21:52","","");
INSERT INTO products VALUES("971","OFFICE TABLE","9999","standard","C128","3","40","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:55","2023-04-14 00:21:52","","");
INSERT INTO products VALUES("972","PC SYSTEM COMPLET SET","9999","standard","C128","3","40","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:55","2023-04-14 00:21:52","","");
INSERT INTO products VALUES("973","PLAIN POLYTHINE (CARRY BAG )","9999","standard","C128","3","40","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:55","2023-04-14 00:21:52","","");
INSERT INTO products VALUES("974","WINDOW COOLER 18&quot; EX. FAN","9999","standard","C128","3","40","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:56","2023-04-14 00:18:56","","");
INSERT INTO products VALUES("975","7X2B SOLID V PUULY","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:56","2023-04-14 00:21:53","","");
INSERT INTO products VALUES("976","TAPER LOCK PULLEY SPA 95/2G","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:56","2023-04-14 00:21:53","","");
INSERT INTO products VALUES("977","V BELT A 60","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:56","2023-04-14 00:21:53","","");
INSERT INTO products VALUES("978","V PULLEY 12''X2C SOLID","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:56","2023-04-14 00:21:53","","");
INSERT INTO products VALUES("979","V PULLEY 18''X2C SOLID","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:56","2023-04-14 00:21:53","","");
INSERT INTO products VALUES("980","V PULLEY 18X2xC PLATE","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:56","2023-04-14 00:21:53","","");
INSERT INTO products VALUES("981","V PULLEY 4''X2B SOLID","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:57","2023-04-14 00:21:54","","");
INSERT INTO products VALUES("982","V PULLEY 4''X2C SOLID","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:57","2023-04-14 00:21:54","","");
INSERT INTO products VALUES("983","V PULLEY 6X2C SOLID","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:57","2023-04-14 00:21:54","","");
INSERT INTO products VALUES("984","V PULLEY 8''X2B","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:57","2023-04-14 00:21:54","","");
INSERT INTO products VALUES("985","V PULLEY 8X2C SOLID","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:57","2023-04-14 00:21:54","","");
INSERT INTO products VALUES("986","V PULLY 12&quot;3XC","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:58","2023-04-14 00:18:58","","");
INSERT INTO products VALUES("987","V PULLY 12&quot;x3C","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:58","2023-04-14 00:18:58","","");
INSERT INTO products VALUES("988","V PULLY 12x2xB","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:58","2023-04-14 00:21:54","","");
INSERT INTO products VALUES("989","V PULLY 14X2B","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:58","2023-04-14 00:21:54","","");
INSERT INTO products VALUES("990","V PULLY 18X3XC","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:59","2023-04-14 00:21:54","","");
INSERT INTO products VALUES("991","V PULLY 3x2B","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:59","2023-04-14 00:21:54","","");
INSERT INTO products VALUES("992","V PULLY 3 x 3 B","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:59","2023-04-14 00:21:54","","");
INSERT INTO products VALUES("993","V PULLY 3X3XC","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:59","2023-04-14 00:21:54","","");
INSERT INTO products VALUES("994","V PULLY 6&quot;X1B","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:18:59","2023-04-14 00:18:59","","");
INSERT INTO products VALUES("995","V PULLY 6&quot;x1xB","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:00","2023-04-14 00:19:00","","");
INSERT INTO products VALUES("996","V PULLY  6&quot;X2B","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:00","2023-04-14 00:19:00","","");
INSERT INTO products VALUES("997","V PULLY  6&quot;X3XC","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:00","2023-04-14 00:19:00","","");
INSERT INTO products VALUES("998","V PULLY 6 X3 B","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:00","2023-04-14 00:21:55","","");
INSERT INTO products VALUES("999","V PULLY 8X3XC","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:00","2023-04-14 00:21:55","","");
INSERT INTO products VALUES("1000","1/2'' DR.72T RATCHET HANDLE","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:01","2023-04-14 00:21:56","","");
INSERT INTO products VALUES("1001","1/2'' RATCHET HANDLE","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:01","2023-04-14 00:21:56","","");
INSERT INTO products VALUES("1002","1X24 TEETH SINGLE DOUBLE ROW SPOCKET","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:01","2023-04-14 00:19:01","","");
INSERT INTO products VALUES("1003","22212 L BLOCK FOR DEGOT CRANE SPARE PARTS","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:02","2023-04-14 00:19:02","","");
INSERT INTO products VALUES("1004","3/8''X18 TEETH  SPOCKET","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:02","2023-04-14 00:19:02","","");
INSERT INTO products VALUES("1005","3TON PULLY HOOK  J TYPE","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:02","2023-04-14 00:19:02","","");
INSERT INTO products VALUES("1006","4MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:03","2023-04-14 00:19:03","","");
INSERT INTO products VALUES("1007","5MM ALLOY STEEL CHAIN","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:07","2023-04-14 00:19:07","","");
INSERT INTO products VALUES("1008","5TON PULLY HOOK J TYPE","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:08","2023-04-14 00:19:08","","");
INSERT INTO products VALUES("1009","728226 SCREW","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:08","2023-04-14 00:19:08","","");
INSERT INTO products VALUES("1010","7-PIN CONNECTOR -M-0304","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:08","2023-04-14 00:19:08","","");
INSERT INTO products VALUES("1011","7-PIN RECEPTACLE -FM-0303","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:08","2023-04-14 00:19:08","","");
INSERT INTO products VALUES("1012","ACCESSORIES-18(GUN METAL BUSH PASSI 25x32x76","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:09","2023-04-14 00:19:09","","");
INSERT INTO products VALUES("1013","ACCMULATORS BLADER  15Ltr for CNC","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:09","2023-04-14 00:19:09","","");
INSERT INTO products VALUES("1014","ACCMULATORS BLADER  25Ltr for CNC (NXQL)","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:09","2023-04-14 00:19:09","","");
INSERT INTO products VALUES("1015","ACCUMULATOR BLADDER ASSEMBLY MODEL : S-15-P-","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:09","2023-04-14 00:19:09","","");
INSERT INTO products VALUES("1016","ACETYLENE SOFT HOSE -0209","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:09","2023-04-14 00:19:09","","");
INSERT INTO products VALUES("1017","ACID PROOF BRICKS 230X114X38 MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:10","2023-04-14 00:19:10","","");
INSERT INTO products VALUES("1018","ACRELID SHEET 4' X 3' ,Thik 2.5MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:10","2023-04-14 00:19:10","","");
INSERT INTO products VALUES("1019","ADJUSTING SPRING HM 019327","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:10","2023-04-14 00:19:10","","");
INSERT INTO products VALUES("1020","AIR CYLINDER 100x50","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:10","2023-04-14 00:19:10","","");
INSERT INTO products VALUES("1021","AIR FILTER FOR EVEREST BLOWER","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:11","2023-04-14 00:19:11","","");
INSERT INTO products VALUES("1022","AIRTAC SENSOR","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:11","2023-04-14 00:19:11","","");
INSERT INTO products VALUES("1023","AIR TUBE FINS 6562-5","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:11","2023-04-14 00:19:11","","");
INSERT INTO products VALUES("1024","AIR VENT - TURBINE AIR 32&quot;","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:11","2023-04-14 00:19:11","","");
INSERT INTO products VALUES("1025","ALLENKEY 1/2''","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:11","2023-04-14 00:19:11","","");
INSERT INTO products VALUES("1026","ALLENKEY 3/16''","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:11","2023-04-14 00:19:11","","");
INSERT INTO products VALUES("1027","ALLENKEY 3/8''","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:12","2023-04-14 00:19:12","","");
INSERT INTO products VALUES("1028","ALLENKEY 5/16","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:12","2023-04-14 00:19:12","","");
INSERT INTO products VALUES("1029","ALLENKEY 5/32''","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:12","2023-04-14 00:19:12","","");
INSERT INTO products VALUES("1030","ALLENKEY 5/8''","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:13","2023-04-14 00:19:13","","");
INSERT INTO products VALUES("1031","ALLOY STEEL CHAIN 5MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:13","2023-04-14 00:19:13","","");
INSERT INTO products VALUES("1032","ALLOY STEEL ROUNDS 45 MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:14","2023-04-14 00:19:14","","");
INSERT INTO products VALUES("1033","ALLOY STEEL ROUNDS 50 MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:14","2023-04-14 00:19:14","","");
INSERT INTO products VALUES("1034","ALUM ( FITKARI)","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:15","2023-04-14 00:19:15","","");
INSERT INTO products VALUES("1035","ALUMINIUM DISC (KMS-95RT)730310","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:15","2023-04-14 00:19:15","","");
INSERT INTO products VALUES("1036","ALUMINIUM RIVIT (POP RIVIT)","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:16","2023-04-14 00:19:16","","");
INSERT INTO products VALUES("1037","ANABOND  202 (20 GM)","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:16","2023-04-14 00:19:16","","");
INSERT INTO products VALUES("1038","ANABOND 666","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:16","2023-04-14 00:19:16","","");
INSERT INTO products VALUES("1039","ANGLE GRINDER MACHINE 125MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:16","2023-04-14 00:19:16","","");
INSERT INTO products VALUES("1040","ARALDITE 180 GM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:16","2023-04-14 00:19:16","","");
INSERT INTO products VALUES("1041","ARALDITE 450 GM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:16","2023-04-14 00:19:16","","");
INSERT INTO products VALUES("1042","ARALDITE HARDNER 0/800KGS","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:16","2023-04-14 00:19:16","","");
INSERT INTO products VALUES("1043","ARALDITE RESIN1KG","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:16","2023-04-14 00:19:16","","");
INSERT INTO products VALUES("1044","ARMATURE FOR RDG-600","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:17","2023-04-14 00:19:17","","");
INSERT INTO products VALUES("1045","ASBESTOS HAND GLOVES 18&quot;","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:17","2023-04-14 00:19:17","","");
INSERT INTO products VALUES("1046","ASBESTOS LEG GUARD","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:17","2023-04-14 00:19:17","","");
INSERT INTO products VALUES("1047","ASBESTOS ROPE 10MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:17","2023-04-14 00:19:17","","");
INSERT INTO products VALUES("1048","ASBESTOS ROPE 12 MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:17","2023-04-14 00:19:17","","");
INSERT INTO products VALUES("1049","ASBESTOS ROPE 3MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:17","2023-04-14 00:19:17","","");
INSERT INTO products VALUES("1050","ASBESTOS ROPE 6 MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:17","2023-04-14 00:19:17","","");
INSERT INTO products VALUES("1051","ASSEMBLY SET FOR AUTO HYDRO COPYING TURNING M/C","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:17","2023-04-14 00:19:17","","");
INSERT INTO products VALUES("1052","AUTO HEIGHT PATA [ ITL360BVT]","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:18","2023-04-14 00:19:18","","");
INSERT INTO products VALUES("1053","BARBED WIRE","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:18","2023-04-14 00:19:18","","");
INSERT INTO products VALUES("1054","BARELL PUMP (DIESEL HAND PUMP)","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:18","2023-04-14 00:19:18","","");
INSERT INTO products VALUES("1055","BARREL ( DO SPARES )","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:18","2023-04-14 00:19:18","","");
INSERT INTO products VALUES("1056","BATTLE PLATE SCREW 728401","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:18","2023-04-14 00:19:18","","");
INSERT INTO products VALUES("1057","BEARING COVER FOR RDG-600","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:18","2023-04-14 00:19:18","","");
INSERT INTO products VALUES("1058","BELCHA","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:18","2023-04-14 00:19:18","","");
INSERT INTO products VALUES("1059","BELL HOUSING WITH GEAR COUPLING,BHAK-1RE-1P","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:18","2023-04-14 00:19:18","","");
INSERT INTO products VALUES("1060","BENCH VICE 3 NO","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:18","2023-04-14 00:19:18","","");
INSERT INTO products VALUES("1061","BENDING LINK MS 3228","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:19","2023-04-14 00:19:19","","");
INSERT INTO products VALUES("1062","BFT STRIP 10X2.5MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:19","2023-04-14 00:19:19","","");
INSERT INTO products VALUES("1063","BIRD GUARD NOCHING DIE BESSPLATE COMPLETE SET","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:19","2023-04-14 00:19:19","","");
INSERT INTO products VALUES("1064","BLACK POLYTHENE","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:19","2023-04-14 00:19:19","","");
INSERT INTO products VALUES("1065","BLOWER AIR HEADER LINE","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:19","2023-04-14 00:19:19","","");
INSERT INTO products VALUES("1066","BONDED SEAL 3/4&quot; BSP","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:20","2023-04-14 00:19:20","","");
INSERT INTO products VALUES("1067","BORING BAR 3/8","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:20","2023-04-14 00:19:20","","");
INSERT INTO products VALUES("1068","BOUR COUPLING NYLON 36TEETHXOD98MMX28MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:20","2023-04-14 00:19:20","","");
INSERT INTO products VALUES("1069","BOX PACKING STRIP KG","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:20","2023-04-14 00:19:20","","");
INSERT INTO products VALUES("1070","BRACK SHOE 150 MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:20","2023-04-14 00:19:20","","");
INSERT INTO products VALUES("1071","BRAKE ASSEMBLY WITHOUT THRUSTOR 100/18KG","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:20","2023-04-14 00:19:20","","");
INSERT INTO products VALUES("1072","BRAKE ASSEMBLY WITHOUT THRUSTOR 200/18 KG","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:21","2023-04-14 00:19:21","","");
INSERT INTO products VALUES("1073","BRAKE DRUM COUPLING 100MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:21","2023-04-14 00:19:21","","");
INSERT INTO products VALUES("1074","BRAKE DRUM COUPLING 150MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:21","2023-04-14 00:19:21","","");
INSERT INTO products VALUES("1075","BRAKE DRUM COUPLING 160MM Without Gear","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:21","2023-04-14 00:19:21","","");
INSERT INTO products VALUES("1076","BRAKE DRUM COUPLING 200MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:21","2023-04-14 00:19:21","","");
INSERT INTO products VALUES("1077","BRAKE LINER 8X100MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:22","2023-04-14 00:19:22","","");
INSERT INTO products VALUES("1078","BRAKE SHOE 200MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:22","2023-04-14 00:19:22","","");
INSERT INTO products VALUES("1079","BRASS BULL NOSE","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:22","2023-04-14 00:19:22","","");
INSERT INTO products VALUES("1080","BRAS SHIM 05MM&amp; 1 MM, 1.5 MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:22","2023-04-14 00:19:22","","");
INSERT INTO products VALUES("1081","BRASS HOSE CONNECTOR","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:22","2023-04-14 00:19:22","","");
INSERT INTO products VALUES("1082","BRASS NIPPLE (OXYGEN REGULATOR NIPPLE)","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:23","2023-04-14 00:19:23","","");
INSERT INTO products VALUES("1083","BREAK ASSEMBLY WITHOUT THRUSTER 150/18KG","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:23","2023-04-14 00:19:23","","");
INSERT INTO products VALUES("1084","BREAK ASSEMBLY WITH THRUSTER 100/18KG","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:23","2023-04-14 00:19:23","","");
INSERT INTO products VALUES("1085","BREAK ASSEMBLY WITH THRUSTER 150/18KG","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:23","2023-04-14 00:19:23","","");
INSERT INTO products VALUES("1086","BREAK ASSEMBLY WITH THRUSTER 160/18KG","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:23","2023-04-14 00:19:23","","");
INSERT INTO products VALUES("1087","BREAK DRUM COUPLING  100 MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:24","2023-04-14 00:19:24","","");
INSERT INTO products VALUES("1088","BREAK DRUM COUPLING 150 MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:24","2023-04-14 00:19:24","","");
INSERT INTO products VALUES("1089","BREAK LINER 4''X8MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:24","2023-04-14 00:19:24","","");
INSERT INTO products VALUES("1090","BREKE DRUM COUPLING","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:25","2023-04-14 00:19:25","","");
INSERT INTO products VALUES("1091","BURNER SIZE 4A(SCHILDROP)","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:25","2023-04-14 00:19:25","","");
INSERT INTO products VALUES("1092","BUSHES 16 MM  FOR PUMPING UNIT","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:25","2023-04-14 00:19:25","","");
INSERT INTO products VALUES("1093","BUSHING CRANK RIN","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:25","2023-04-14 00:19:25","","");
INSERT INTO products VALUES("1094","BUTYLE TAPE 3MM THICK x 10MM x 15MTR","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:25","2023-04-14 00:19:25","","");
INSERT INTO products VALUES("1095","CABLE TROLLY (SMALL)","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:26","2023-04-14 00:19:26","","");
INSERT INTO products VALUES("1096","CADIUM COATED SCREW 4MMX20MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:26","2023-04-14 00:19:26","","");
INSERT INTO products VALUES("1097","CADMIUM BRIGHTNER NO 1","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:26","2023-04-14 00:19:26","","");
INSERT INTO products VALUES("1098","CADMIUM BRIGHTNER NO 2","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:27","2023-04-14 00:19:27","","");
INSERT INTO products VALUES("1099","CADMIUM NOD","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:27","2023-04-14 00:19:27","","");
INSERT INTO products VALUES("1100","CADMIUN BRILLIANT SALT","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:27","2023-04-14 00:19:27","","");
INSERT INTO products VALUES("1101","CARBON BRUSH 25X18.5X9MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:27","2023-04-14 00:19:27","","");
INSERT INTO products VALUES("1102","CARBON BRUSH 32X20X9MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:27","2023-04-14 00:19:27","","");
INSERT INTO products VALUES("1103","CARBON BRUSH 8X7 (WL)","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:27","2023-04-14 00:19:27","","");
INSERT INTO products VALUES("1104","CARBON BRUSH HOLDER FOR RDG-600","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:27","2023-04-14 00:19:27","","");
INSERT INTO products VALUES("1105","CASHEW POWDER","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:27","2023-04-14 00:19:27","","");
INSERT INTO products VALUES("1106","CAT DOE C14 PAIL 3E9848","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:28","2023-04-14 00:19:28","","");
INSERT INTO products VALUES("1107","C CLAMP 8&quot;","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:28","2023-04-14 00:19:28","","");
INSERT INTO products VALUES("1108","CELLOW TAPE 1''","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:28","2023-04-14 00:19:28","","");
INSERT INTO products VALUES("1109","CERAMIC BLANKET128-D","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:29","2023-04-14 00:19:29","","");
INSERT INTO products VALUES("1110","CERAMIC BLANKET DEG.96","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:29","2023-04-14 00:19:29","","");
INSERT INTO products VALUES("1111","CHAIN LINK","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:29","2023-04-14 00:19:29","","");
INSERT INTO products VALUES("1112","CHAIN LINK 1'' FULL LOCK","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:29","2023-04-14 00:19:29","","");
INSERT INTO products VALUES("1113","CHAIN LINK 1'' HALF LOCK","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:30","2023-04-14 00:19:30","","");
INSERT INTO products VALUES("1114","CHAIN LINK 3MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:30","2023-04-14 00:19:30","","");
INSERT INTO products VALUES("1115","CHAIN LINK MESS","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:30","2023-04-14 00:19:30","","");
INSERT INTO products VALUES("1116","CHAIN LOCK SINGLE 3/8&quot;","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:30","2023-04-14 00:19:30","","");
INSERT INTO products VALUES("1117","CHAIN PULLEY BLOCK SPARES 5TON CAP.  LOCK","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:31","2023-04-14 00:19:31","","");
INSERT INTO products VALUES("1118","CHAIN SPROCKET 3/4''X15 TEETH DUPLEX GEAR","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:31","2023-04-14 00:19:31","","");
INSERT INTO products VALUES("1119","CHALK (WHITE CHALK)","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:32","2023-04-14 00:19:32","","");
INSERT INTO products VALUES("1120","CHAURAS PIPE","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:32","2023-04-14 00:19:32","","");
INSERT INTO products VALUES("1121","CHECKMATE DP TEST","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:33","2023-04-14 00:19:33","","");
INSERT INTO products VALUES("1122","CHECK VALVE--C20S1-03","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:33","2023-04-14 00:19:33","","");
INSERT INTO products VALUES("1123","CHEVRON PACKING 240X210X50","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:34","2023-04-14 00:19:34","","");
INSERT INTO products VALUES("1124","CHEVRON PACKING 30X40","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:35","2023-04-14 00:19:35","","");
INSERT INTO products VALUES("1125","CHEVRON PACKING 50X70","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:35","2023-04-14 00:19:35","","");
INSERT INTO products VALUES("1126","CHIESEL","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:35","2023-04-14 00:19:35","","");
INSERT INTO products VALUES("1127","CHIESEL 10''","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:35","2023-04-14 00:19:35","","");
INSERT INTO products VALUES("1128","CHIESEL 12''","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:35","2023-04-14 00:19:35","","");
INSERT INTO products VALUES("1129","CHIESEL 8''","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:35","2023-04-14 00:19:35","","");
INSERT INTO products VALUES("1130","C.I. CURRENT COLLECTOR","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:35","2023-04-14 00:19:35","","");
INSERT INTO products VALUES("1131","C I HOUSING","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:36","2023-04-14 00:19:36","","");
INSERT INTO products VALUES("1132","CIRCLIP 54.5X46.5X2 MM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:36","2023-04-14 00:19:36","","");
INSERT INTO products VALUES("1133","CIRCLIP ( AS PER SAMPLE)","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:36","2023-04-14 00:19:36","","");
INSERT INTO products VALUES("1134","CIRCLIP FOR ROLLER SHAFT ,HM 193220","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:36","2023-04-14 00:19:36","","");
INSERT INTO products VALUES("1135","CIRCLIP PLIER7'' EXTRNAL","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:37","2023-04-14 00:19:37","","");
INSERT INTO products VALUES("1136","CIRCLIP PLIER 7'' INTERNAL","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:37","2023-04-14 00:19:37","","");
INSERT INTO products VALUES("1137","CIRCUL","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:38","2023-04-14 00:19:38","","");
INSERT INTO products VALUES("1138","CLERANCE ROLLER","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:38","2023-04-14 00:19:38","","");
INSERT INTO products VALUES("1139","CLUSTER GEAR 43 T","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:38","2023-04-14 00:19:38","","");
INSERT INTO products VALUES("1140","CLUSTER GEAR ( EN-9) SPUR 36 T ,22W 97MM OD 50 YL","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:38","2023-04-14 00:19:38","","");
INSERT INTO products VALUES("1141","CLUTCH GEAR ( EN-9) SPUR 30 T 22W , 82M OD 64 TL","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:39","2023-04-14 00:19:39","","");
INSERT INTO products VALUES("1142","CO2 CHECK NUT","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:39","2023-04-14 00:19:39","","");
INSERT INTO products VALUES("1143","CO2 GEL 300 GM","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:39","2023-04-14 00:19:39","","");
INSERT INTO products VALUES("1144","CO2 KEY","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:39","2023-04-14 00:19:39","","");
INSERT INTO products VALUES("1145","COATING THICK. GAUGE M1-COATMEASURE ,0-1250 MICRON","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:39","2023-04-14 00:19:39","","");
INSERT INTO products VALUES("1146","COCONUT ROPE","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:19:39","2023-04-14 00:19:39","","");
INSERT INTO products VALUES("1147","TUBE MILL 1&quot; - 3&quot; [GMT 95MM]","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:20:55","2023-04-14 00:20:55","","");
INSERT INTO products VALUES("1148","TUBE MILL 1/2&quot; - 1.1/2&quot; (GMT 2M)","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:20:55","2023-04-14 00:20:55","","");
INSERT INTO products VALUES("1149","TUBE MILL 1&quot; - 3&quot; [GMT 95MM]","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:21:10","2023-04-14 00:21:10","","");
INSERT INTO products VALUES("1150","TUBE MILL 1/2&quot; - 1.1/2&quot; (GMT 2M)","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:21:10","2023-04-14 00:21:10","","");
INSERT INTO products VALUES("1151","SS STEEL BLOWER ,IMPERLLER &amp; BEARING BLOCK SET","9999","standard","C128","3","38","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:21:44","2023-04-14 00:21:44","","");
INSERT INTO products VALUES("1152","BURNER BLOCK 12&quot;X12&quot;X12&quot;","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:21:48","2023-04-14 00:21:48","","");
INSERT INTO products VALUES("1153","BURNER BLOCK  9&quot;X9&quot;X9&quot;","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:21:48","2023-04-14 00:21:48","","");
INSERT INTO products VALUES("1154","G.T. BLOCK (18X12X6&quot;) 70%","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:21:49","2023-04-14 00:21:49","","");
INSERT INTO products VALUES("1155","G.T. BLOCK 24X12X6&quot; (70%)","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:21:49","2023-04-14 00:21:49","","");
INSERT INTO products VALUES("1156","G.T.BLOCK  70% 18&quot;X12&quot;X3&quot;","9999","standard","C128","3","39","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:21:50","2023-04-14 00:21:50","","");
INSERT INTO products VALUES("1157","ALMIRAH (78&quot;X36&quot;X19&quot;)","9999","standard","C128","3","40","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:21:51","2023-04-14 00:21:51","","");
INSERT INTO products VALUES("1158","WINDOW COOLER 18&quot; EX. FAN","9999","standard","C128","3","40","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:21:53","2023-04-14 00:21:53","","");
INSERT INTO products VALUES("1159","V PULLY 12&quot;3XC","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:21:54","2023-04-14 00:21:54","","");
INSERT INTO products VALUES("1160","V PULLY 12&quot;x3C","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:21:54","2023-04-14 00:21:54","","");
INSERT INTO products VALUES("1161","V PULLY 6&quot;X1B","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:21:55","2023-04-14 00:21:55","","");
INSERT INTO products VALUES("1162","V PULLY 6&quot;x1xB","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:21:55","2023-04-14 00:21:55","","");
INSERT INTO products VALUES("1163","V PULLY  6&quot;X2B","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:21:55","2023-04-14 00:21:55","","");
INSERT INTO products VALUES("1164","V PULLY  6&quot;X3XC","9999","standard","C128","3","37","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-14 00:21:55","2023-04-14 00:21:55","","");
INSERT INTO products VALUES("1165","FIRE BRICKS 230X115X3&quot; [ IS 8 ]","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:37","2023-04-27 14:55:37","","");
INSERT INTO products VALUES("1166","FLANGE 16&quot;","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:37","2023-04-27 14:55:37","","");
INSERT INTO products VALUES("1167","INSULATER HEATER 32 MM 36&quot;","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:40","2023-04-27 14:55:40","","");
INSERT INTO products VALUES("1168","MIG WIRE 70S 6 1.00&quot;MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:41","2023-04-27 14:55:41","","");
INSERT INTO products VALUES("1169","MIG WIRE 70S 6 1.80&quot;MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:41","2023-04-27 14:55:41","","");
INSERT INTO products VALUES("1170","MOTOR COVER C.I. CASTING &amp; MACHINING WORKS","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:41","2023-04-27 14:55:41","","");
INSERT INTO products VALUES("1171","SAND MEDIA &amp; PABBLES","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:44","2023-04-27 14:55:44","","");
INSERT INTO products VALUES("1172","SEAL OF STRIPS  (19MM &amp; 32 MM)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:45","2023-04-27 14:55:45","","");
INSERT INTO products VALUES("1173","SEALS OF STRIPS [ 19MM &amp; 32MM ]","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:45","2023-04-27 14:55:45","","");
INSERT INTO products VALUES("1174","SEAMLESS PIPE 16&quot; X 6 MTR","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:45","2023-04-27 14:55:45","","");
INSERT INTO products VALUES("1175","TEMP.INDICATOR 3&quot;, 4.5&quot; DISPLAY","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:47","2023-04-27 14:55:47","","");
INSERT INTO products VALUES("1176","WARM GEAR &amp; SHAFT (ATLAS)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:47","2023-04-27 14:55:47","","");
INSERT INTO products VALUES("1177","INSULATER HEATER 32 MM 36&quot;","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:48","2023-04-27 14:55:48","","");
INSERT INTO products VALUES("1178","MIG WIRE 70S 6 1.00&quot;MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:49","2023-04-27 14:55:49","","");
INSERT INTO products VALUES("1179","MIG WIRE 70S 6 1.80&quot;MM","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:49","2023-04-27 14:55:49","","");
INSERT INTO products VALUES("1180","MOTOR COVER C.I. CASTING &amp; MACHINING WORKS","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:49","2023-04-27 14:55:49","","");
INSERT INTO products VALUES("1181","SAND MEDIA &amp; PABBLES","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:53","2023-04-27 14:55:53","","");
INSERT INTO products VALUES("1182","SEAL OF STRIPS  (19MM &amp; 32 MM)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:53","2023-04-27 14:55:53","","");
INSERT INTO products VALUES("1183","SEALS OF STRIPS [ 19MM &amp; 32MM ]","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:53","2023-04-27 14:55:53","","");
INSERT INTO products VALUES("1184","SEAMLESS PIPE 16&quot; X 6 MTR","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:53","2023-04-27 14:55:53","","");
INSERT INTO products VALUES("1185","TEMP.INDICATOR 3&quot;, 4.5&quot; DISPLAY","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:55","2023-04-27 14:55:55","","");
INSERT INTO products VALUES("1186","WARM GEAR &amp; SHAFT (ATLAS)","9999","standard","C128","3","41","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:55:55","2023-04-27 14:55:55","","");
INSERT INTO products VALUES("1187","1/2'' SQUARE DRIVE SOCKET 16MM","9999","standard","C128","3","42","1","1","1","15","20","0","","","","","","","","1","image","","","1","","","","","","","","","this is test product with variant","","","1","2023-04-27 14:59:18","2023-04-27 14:59:18","","");
INSERT INTO products VALUES("1188","1/2'' SQUARE DRIVE SOCKET 17MM","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","this is test product without variant","","","1","2023-04-27 14:59:18","2023-04-27 14:59:18","","");
INSERT INTO products VALUES("1189","1/2'' SQUARE DRIVE SOCKET 18MM","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:18","2023-04-27 14:59:18","","");
INSERT INTO products VALUES("1190","1/2'' SQUARE DRIVE SOCKET 19MM","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:19","2023-04-27 14:59:19","","");
INSERT INTO products VALUES("1191","1/2'' SQUARE DRIVE SOCKET 24MM","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:19","2023-04-27 14:59:19","","");
INSERT INTO products VALUES("1192","1/2'' SQUARE DRIVE SOCKET 27MM","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:19","2023-04-27 14:59:19","","");
INSERT INTO products VALUES("1193","22267 SPINDLE NUT P57-91","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:19","2023-04-27 14:59:19","","");
INSERT INTO products VALUES("1194","4 ROLL DRIVE 0032","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:19","2023-04-27 14:59:19","","");
INSERT INTO products VALUES("1195","900442- SPINDLE FOR KAG10-4","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:19","2023-04-27 14:59:19","","");
INSERT INTO products VALUES("1196","900443-SCREW FOR KAG10-4","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:19","2023-04-27 14:59:19","","");
INSERT INTO products VALUES("1197","900449-SPINDLE GEAR &amp;PINION FOR KAG10-4","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:19","2023-04-27 14:59:19","","");
INSERT INTO products VALUES("1198","900452-NEEDLE BEARING B1210FOR KAG10-4","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:19","2023-04-27 14:59:19","","");
INSERT INTO products VALUES("1199","900456-GEAR BOX WITH LOCK FOR KAG10-4","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:19","2023-04-27 14:59:19","","");
INSERT INTO products VALUES("1200","900459-PINION FOR KAG10-4","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:19","2023-04-27 14:59:19","","");
INSERT INTO products VALUES("1201","900462-ARMATURE FOR KAG10-4","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:19","2023-04-27 14:59:19","","");
INSERT INTO products VALUES("1202","900466-BEARING PLATE FOR KAG10-4","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:20","2023-04-27 14:59:20","","");
INSERT INTO products VALUES("1203","900468-FIELD COIL FOR KAG10-4","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:20","2023-04-27 14:59:20","","");
INSERT INTO products VALUES("1204","900469-SWITCH FOR KAG10-4","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:20","2023-04-27 14:59:20","","");
INSERT INTO products VALUES("1205","900470- LOCK BUTTON FOR KAG10-4","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:20","2023-04-27 14:59:20","","");
INSERT INTO products VALUES("1206","900471-BRUSH HOLDER SET FOR KAG10-4","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:20","2023-04-27 14:59:20","","");
INSERT INTO products VALUES("1207","900477-CARBON BRUSH FOR KAG10-4","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:20","2023-04-27 14:59:20","","");
INSERT INTO products VALUES("1208","900478-SLIDE BUTTON FOR KAG10-4","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:20","2023-04-27 14:59:20","","");
INSERT INTO products VALUES("1209","900479- MOTOR FRAME FOR KAG10-4","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1210","900482 SLIDING SWITCH FOR KAG10-4","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1211","900483 SPRING FOR KAG10-4","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1212","AC CONTACTOR 0493","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1213","ACETYLENE SOFT HOSE -0214","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1214","ADAPTOR &amp; CLAMP SA 742105","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1215","ALLU.INCASE RESISTOR 578","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1216","ALLUMINIUM DISC 730100","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1217","AMMETER 0179","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1218","ARBOUR FOR CORE CUTTING MACHINE ENOVA -40","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1219","ARMATURE 728429","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1220","ARMATURE 728432","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1221","ARMATURE 729072","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1222","ARMATURE 740027","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1223","ARMATURE AG-4 3830.3.19","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1224","ARMATURE AG-4 729528","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1225","ARMATURE ASSEMBLY 1609B03638","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1226","ARMATURE ENOVA-40","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1227","ARMATURE FOR AG-7 3830.3.15","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1228","ARMATURE FOR CORE CUTTING MACHINE","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1229","ARMATURE FOR GRINDER AG-7","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:21","2023-04-27 14:59:21","","");
INSERT INTO products VALUES("1230","ARMATURE FOR PUG MACHINE","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:22","2023-04-27 14:59:22","","");
INSERT INTO products VALUES("1231","ARMETURE 742507","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:22","2023-04-27 14:59:22","","");
INSERT INTO products VALUES("1232","BAFLE PLATE 727724 (P5991/5791)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:22","2023-04-27 14:59:22","","");
INSERT INTO products VALUES("1233","BALL BEARING 30204","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:22","2023-04-27 14:59:22","","");
INSERT INTO products VALUES("1234","BALL BEARING 728149 P34-01","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:22","2023-04-27 14:59:22","","");
INSERT INTO products VALUES("1235","BALL BEARING 728226","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:22","2023-04-27 14:59:22","","");
INSERT INTO products VALUES("1236","BALL BEARING 728227","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:22","2023-04-27 14:59:22","","");
INSERT INTO products VALUES("1237","BALL BEARING 728330","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:22","2023-04-27 14:59:22","","");
INSERT INTO products VALUES("1238","BALL BEARING 728390","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:22","2023-04-27 14:59:22","","");
INSERT INTO products VALUES("1239","BALL BEARING 728871","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:22","2023-04-27 14:59:22","","");
INSERT INTO products VALUES("1240","BALL BEARING 729558","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:22","2023-04-27 14:59:22","","");
INSERT INTO products VALUES("1241","BALL BEARING 743370","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:22","2023-04-27 14:59:22","","");
INSERT INTO products VALUES("1242","BALL BEARING 743371","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:23","2023-04-27 14:59:23","","");
INSERT INTO products VALUES("1243","BALL BEARING 930682","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:23","2023-04-27 14:59:23","","");
INSERT INTO products VALUES("1244","BALL BEARING 935029 (P-55-02)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:23","2023-04-27 14:59:23","","");
INSERT INTO products VALUES("1245","BALL BEARING 955806 P34-01","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:23","2023-04-27 14:59:23","","");
INSERT INTO products VALUES("1246","BALL BEARING HD 1290-100 MM (10042) (10042 BALL BEARING)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:23","2023-04-27 14:59:23","","");
INSERT INTO products VALUES("1247","BEARING COVER AG-7","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:23","2023-04-27 14:59:23","","");
INSERT INTO products VALUES("1248","BEARING PLATE 729387 (AG-4)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:23","2023-04-27 14:59:23","","");
INSERT INTO products VALUES("1249","BEARING PLATE SCREW  728665","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:23","2023-04-27 14:59:23","","");
INSERT INTO products VALUES("1250","BEARING PLUG 30612","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:23","2023-04-27 14:59:23","","");
INSERT INTO products VALUES("1251","BENCH GRINDER 8&quot;","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:23","2023-04-27 14:59:23","","");
INSERT INTO products VALUES("1252","BLOWER KB-500 KPT","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:23","2023-04-27 14:59:23","","");
INSERT INTO products VALUES("1253","BOTTLE AND BRACKET ASS.FOR DRILL MACHINE","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:23","2023-04-27 14:59:23","","");
INSERT INTO products VALUES("1254","BRASH HOLDER 729305","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:23","2023-04-27 14:59:23","","");
INSERT INTO products VALUES("1255","BRASS STRIP 730121/2/3","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:23","2023-04-27 14:59:23","","");
INSERT INTO products VALUES("1256","BRASS STRIP 730123","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:23","2023-04-27 14:59:23","","");
INSERT INTO products VALUES("1257","BRUSH CAP 729352 P-34-01","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:23","2023-04-27 14:59:23","","");
INSERT INTO products VALUES("1258","BRUSH COVER 222335","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:23","2023-04-27 14:59:23","","");
INSERT INTO products VALUES("1259","BRUSH COVER 728335","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:23","2023-04-27 14:59:23","","");
INSERT INTO products VALUES("1260","BRUSH COVER LOWER P57-91 (728337)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:23","2023-04-27 14:59:23","","");
INSERT INTO products VALUES("1261","BRUSH HOLDER 400771","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:24","2023-04-27 14:59:24","","");
INSERT INTO products VALUES("1262","BRUSH HOLDER 729351 (P-34-01)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:24","2023-04-27 14:59:24","","");
INSERT INTO products VALUES("1263","BRUSH HOLDER K-600 , 730417","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:24","2023-04-27 14:59:24","","");
INSERT INTO products VALUES("1264","BRUSH UPPER COVER 728336 P59-9","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:24","2023-04-27 14:59:24","","");
INSERT INTO products VALUES("1265","BUTTON 3510.1.80","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:24","2023-04-27 14:59:24","","");
INSERT INTO products VALUES("1266","CAPACITOR FILTER PCB 0066","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:24","2023-04-27 14:59:24","","");
INSERT INTO products VALUES("1267","CARBON BRUSH 131602","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:24","2023-04-27 14:59:24","","");
INSERT INTO products VALUES("1268","CARBON BRUSH 1607014171","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:24","2023-04-27 14:59:24","","");
INSERT INTO products VALUES("1269","CARBON BRUSH 32X16X8","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:24","2023-04-27 14:59:24","","");
INSERT INTO products VALUES("1270","CARBON BRUSH  32X19X12.5 MM ( GE224)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:24","2023-04-27 14:59:24","","");
INSERT INTO products VALUES("1271","CARBON BRUSH 32X20X10","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:24","2023-04-27 14:59:24","","");
INSERT INTO products VALUES("1272","CARBON BRUSH 32X20X12.5 MM","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:25","2023-04-27 14:59:25","","");
INSERT INTO products VALUES("1273","CARBON BRUSH  729206","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:25","2023-04-27 14:59:25","","");
INSERT INTO products VALUES("1274","CARBON BRUSH 990774","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:25","2023-04-27 14:59:25","","");
INSERT INTO products VALUES("1275","CARBON BRUSH AG-4 729306","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:25","2023-04-27 14:59:25","","");
INSERT INTO products VALUES("1276","CARBON BRUSH AG-4 (ROLLI WOLF ) P NO. 3251.1.16A)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:25","2023-04-27 14:59:25","","");
INSERT INTO products VALUES("1277","CARBON BRUSH  AG-7","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:25","2023-04-27 14:59:25","","");
INSERT INTO products VALUES("1278","CARBON BRUSH AG-7 (FIBRE P NO. 3251911)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:25","2023-04-27 14:59:25","","");
INSERT INTO products VALUES("1279","CARBON BRUSH AG-7 (Metal) P No. 3251915","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:25","2023-04-27 14:59:25","","");
INSERT INTO products VALUES("1280","CARBON BRUSH CAP","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:25","2023-04-27 14:59:25","","");
INSERT INTO products VALUES("1281","CARBON BRUSH FOR ENOVA-40(BROCH CUTTER DRILL M/C)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:25","2023-04-27 14:59:25","","");
INSERT INTO products VALUES("1282","CARBON BRUSH FOR RDG 25","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:25","2023-04-27 14:59:25","","");
INSERT INTO products VALUES("1283","CARBON BRUSH FOR RDG-600","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:25","2023-04-27 14:59:25","","");
INSERT INTO products VALUES("1284","CARBON BRUSH HOLDER (3KV)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:25","2023-04-27 14:59:25","","");
INSERT INTO products VALUES("1285","CARBON BRUSH  HOLDER AG-4 (45100)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:26","2023-04-27 14:59:26","","");
INSERT INTO products VALUES("1286","CARBON BRUSH HOLDER AG-7 (3252.1.15)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:26","2023-04-27 14:59:26","","");
INSERT INTO products VALUES("1287","CARBON BRUSH K-600 , 730090","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:28","2023-04-27 14:59:28","","");
INSERT INTO products VALUES("1288","CENTRE PUNCH 6&quot;","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:28","2023-04-27 14:59:28","","");
INSERT INTO products VALUES("1289","CIRCLIP AG-7 3231.1.32","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:28","2023-04-27 14:59:28","","");
INSERT INTO products VALUES("1290","CIRCLIP FOR RDG 600","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:28","2023-04-27 14:59:28","","");
INSERT INTO products VALUES("1291","COLLET FOR RDG 25","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:29","2023-04-27 14:59:29","","");
INSERT INTO products VALUES("1292","COLLET NUT FOR RDG 25","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:29","2023-04-27 14:59:29","","");
INSERT INTO products VALUES("1293","CONSUMER KIT 729408","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:29","2023-04-27 14:59:29","","");
INSERT INTO products VALUES("1294","CONSUMER KIT 729523","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:29","2023-04-27 14:59:29","","");
INSERT INTO products VALUES("1295","CONTACT TIP 1.2 MM (1082) (S12.06.002.1082)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:29","2023-04-27 14:59:29","","");
INSERT INTO products VALUES("1296","CONTACT TIP HOLDER (0729)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:29","2023-04-27 14:59:29","","");
INSERT INTO products VALUES("1297","CONTACT TIP HOLDER (1040)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:29","2023-04-27 14:59:29","","");
INSERT INTO products VALUES("1298","CONTACT TIP -MIG 0.8MM","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:29","2023-04-27 14:59:29","","");
INSERT INTO products VALUES("1299","CONTROLLER ASSEMBLY-0170 (CONTROLLER S17.01.002.0170)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:29","2023-04-27 14:59:29","","");
INSERT INTO products VALUES("1300","CONTROLLER ASSLY. (0170)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:29","2023-04-27 14:59:29","","");
INSERT INTO products VALUES("1301","CONTROL PCB (S17.01.002.0448)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:29","2023-04-27 14:59:29","","");
INSERT INTO products VALUES("1302","CONTROL PCB CARD 0153","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:29","2023-04-27 14:59:29","","");
INSERT INTO products VALUES("1303","COUPLING FOR RDG 600","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:29","2023-04-27 14:59:29","","");
INSERT INTO products VALUES("1304","COVER PLATE 3270.1.12 AG-7","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:29","2023-04-27 14:59:29","","");
INSERT INTO products VALUES("1305","COVER PLATE (AG 180 M)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:29","2023-04-27 14:59:29","","");
INSERT INTO products VALUES("1306","CURRENT CONTROL POTENTIOMERT 0023","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:29","2023-04-27 14:59:29","","");
INSERT INTO products VALUES("1307","CURRENT SENSOR (S 36.02.002.0461)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:29","2023-04-27 14:59:29","","");
INSERT INTO products VALUES("1308","CUTTING TORCH CHECK NUT","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:29","2023-04-27 14:59:29","","");
INSERT INTO products VALUES("1309","DIODE 742061","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:30","2023-04-27 14:59:30","","");
INSERT INTO products VALUES("1310","DRILL SLEEVE 728018","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:30","2023-04-27 14:59:30","","");
INSERT INTO products VALUES("1311","EURO PLUG SOCKET 0403","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:30","2023-04-27 14:59:30","","");
INSERT INTO products VALUES("1312","EX- DRIVEN GEAR 0861","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:30","2023-04-27 14:59:30","","");
INSERT INTO products VALUES("1313","EX- DRIVEN GEAR 0863","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:30","2023-04-27 14:59:30","","");
INSERT INTO products VALUES("1314","EX- PLASTIC PRESSURE HANDLE 0860","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:30","2023-04-27 14:59:30","","");
INSERT INTO products VALUES("1315","EX- UPPER GREARS -0859","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:30","2023-04-27 14:59:30","","");
INSERT INTO products VALUES("1316","EX- WIRE DRIVE ROLL-0399","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:30","2023-04-27 14:59:30","","");
INSERT INTO products VALUES("1317","FIELD 131491 / 742475","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:30","2023-04-27 14:59:30","","");
INSERT INTO products VALUES("1318","FIELD 741773","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:31","2023-04-27 14:59:31","","");
INSERT INTO products VALUES("1319","FIELD ASSEMBLY (COIL) ENOVA-40","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:31","2023-04-27 14:59:31","","");
INSERT INTO products VALUES("1320","FIELD CASE FOR AG-7","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:31","2023-04-27 14:59:31","","");
INSERT INTO products VALUES("1321","FIELD CASE P-34-01 (729339)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:31","2023-04-27 14:59:31","","");
INSERT INTO products VALUES("1322","FIELD CASE S-A 741770","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:31","2023-04-27 14:59:31","","");
INSERT INTO products VALUES("1323","FIELD CASE S.A. 741771/727729 AG-7","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:31","2023-04-27 14:59:31","","");
INSERT INTO products VALUES("1324","FIELD COIL 729530","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:31","2023-04-27 14:59:31","","");
INSERT INTO products VALUES("1325","FIELD COIL 740026 KB500","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:31","2023-04-27 14:59:31","","");
INSERT INTO products VALUES("1326","FIELD COIL AG-4 3820.3.19","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:31","2023-04-27 14:59:31","","");
INSERT INTO products VALUES("1327","FIELD COIL AG-7 742475","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:31","2023-04-27 14:59:31","","");
INSERT INTO products VALUES("1328","FIELD COIL FOR 3820.3.15 AG-7","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:31","2023-04-27 14:59:31","","");
INSERT INTO products VALUES("1329","FIELD COIL FOR RDG-600","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:31","2023-04-27 14:59:31","","");
INSERT INTO products VALUES("1330","FIELD LUG","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:32","2023-04-27 14:59:32","","");
INSERT INTO products VALUES("1331","FIXING CAP 0862","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:32","2023-04-27 14:59:32","","");
INSERT INTO products VALUES("1332","FLEXIBLE SHAFT 740922","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:32","2023-04-27 14:59:32","","");
INSERT INTO products VALUES("1333","FUSE HOLDER  WITH CAP","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:32","2023-04-27 14:59:32","","");
INSERT INTO products VALUES("1334","GAER CASE ASSY. 730017","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:32","2023-04-27 14:59:32","","");
INSERT INTO products VALUES("1335","GAS DEFUSER 1041 (S12.06.001.1041)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:32","2023-04-27 14:59:32","","");
INSERT INTO products VALUES("1336","GAS NOZZLE (S12.06.001.1053)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:32","2023-04-27 14:59:32","","");
INSERT INTO products VALUES("1337","GAS NOZZLE (S12.06.001.0883)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:32","2023-04-27 14:59:32","","");
INSERT INTO products VALUES("1338","GAS NOZZLE (SET OF 5 NOS ) 1013","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:32","2023-04-27 14:59:32","","");
INSERT INTO products VALUES("1339","GAS PRE HEATER (0124) (1 11.06.031.0124)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1340","GAS PREHEATER ASSEMBLY 230V  0559","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1341","GEAR BOX ASSEMBLY  AG-7","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1342","GEAR CASE 728002","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1343","GEAR CASE 729075","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1344","GEAR CASE COVER 727413","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1345","GEAR CASE COVER 728001","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1346","GEAR CASE COVER 728435","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1347","GEAR CASE COVER 729074","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1348","GEAR CASE COVER 730192","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1349","GEAR CASE COVER SA FOR KAG10-4","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1350","GEAR &amp; PINION (7&quot;) 727723","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1351","GEAR &amp; PINION 729323","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1352","GEAR &amp; PINION 742442","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1353","GLASS QUICK ACTING FUSE 0190","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1354","GRINDER DIE K 600","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1355","HAND DRILL MACHINE UP TO 10 MM","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1356","HSS TREADING TAP LEFT HAND SIZE M8X1.25","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1357","IGBT MODULE ((S17.01.001.2555))","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1358","IGBT POWER MOULE (S22.03.030.0618)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1359","INNER FLANGE 729924","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1360","INNER FLANGE 741908","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:33","2023-04-27 14:59:33","","");
INSERT INTO products VALUES("1361","INNER FLANGE AG-7","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:34","2023-04-27 14:59:34","","");
INSERT INTO products VALUES("1362","INSULATING BUSH 0060","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:34","2023-04-27 14:59:34","","");
INSERT INTO products VALUES("1363","INTER GEAR PINION 728012","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:34","2023-04-27 14:59:34","","");
INSERT INTO products VALUES("1364","INTER GEAR PINION 728013","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:34","2023-04-27 14:59:34","","");
INSERT INTO products VALUES("1365","INTER GEAR &amp; PINION  729080","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:34","2023-04-27 14:59:34","","");
INSERT INTO products VALUES("1366","INTER GEAR &amp; PINION  729083","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:34","2023-04-27 14:59:34","","");
INSERT INTO products VALUES("1367","LOCKING NUT FOR RDG 25","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:34","2023-04-27 14:59:34","","");
INSERT INTO products VALUES("1368","LOCKING SCREW P57-91 15782","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:34","2023-04-27 14:59:34","","");
INSERT INTO products VALUES("1369","MAGNET COIL S.A. 730311","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:34","2023-04-27 14:59:34","","");
INSERT INTO products VALUES("1370","MAGNETIC DRILL MACHINE 38MM","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:34","2023-04-27 14:59:34","","");
INSERT INTO products VALUES("1371","MARBLE CUTTER MACHINE 125MM","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:34","2023-04-27 14:59:34","","");
INSERT INTO products VALUES("1372","MIG MACHINE 600 AMP PCB CARD","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:34","2023-04-27 14:59:34","","");
INSERT INTO products VALUES("1373","MIG MACHINE PRECHEATER ASI 600 AMP","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:34","2023-04-27 14:59:34","","");
INSERT INTO products VALUES("1374","MOTOR FRAME  AG-7","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:34","2023-04-27 14:59:34","","");
INSERT INTO products VALUES("1375","MOTOR FRAME FOR ENOVA 40","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1376","MOULDED REEL HOLER 0011","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1377","NEEDLE BEARING 1010","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1378","NEEDLE BEARING 728200","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1379","NEEDLE ROLLER BEARING 22279","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1380","NUT 4562","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1381","ON OFF SWITCH 803","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1382","OUTER FLANGE 728958","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1383","OUTER FLANGE 741083","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1384","OUTPUT TERMINAL MOULDED -0204 (S11.09.010.204)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1385","POTENTIOMETER 0017","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1386","PRIMARY COIL SET 0082","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1387","PUG MACHINE GEAR","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1388","PUG MACHINE HOLDER","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1389","PUG MACHINE MOTOR","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1390","PUG MACHINE PATTI","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1391","PUG MACHINE SPARE PARTS (HOLDER)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1392","PUG MACHINE SPARE PARTS (RATE &amp; SLIDE)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1393","PUNCH 25X68X34","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1394","PWM CUM DRIVER (0096)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1395","PWN CONTRILLER PCB (S17.01.002.0103)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1396","REGULATOR SINGLE STAGE (FLOWMETER 0005 SINGLE STAGE)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1397","RIVETING MACHINE (ROD TYPE )","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1398","RIVET POP 1/8x1/2","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1399","RIVET POP 5/32x1/2","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1400","SCREW 728666","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:35","2023-04-27 14:59:35","","");
INSERT INTO products VALUES("1401","SCREW 728667","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:36","2023-04-27 14:59:36","","");
INSERT INTO products VALUES("1402","SCREW 740457","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:36","2023-04-27 14:59:36","","");
INSERT INTO products VALUES("1403","SCREW 930224","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:36","2023-04-27 14:59:36","","");
INSERT INTO products VALUES("1404","SCREW 990770 (KPT)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:36","2023-04-27 14:59:36","","");
INSERT INTO products VALUES("1405","SCREW  AG-7 3220.1.62","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:36","2023-04-27 14:59:36","","");
INSERT INTO products VALUES("1406","SCREWFOR AG-180(3220.1.63)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:36","2023-04-27 14:59:36","","");
INSERT INTO products VALUES("1407","SCREW FOR COVER PLATE","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:36","2023-04-27 14:59:36","","");
INSERT INTO products VALUES("1408","SCREW FOR ENOVA-40","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:36","2023-04-27 14:59:36","","");
INSERT INTO products VALUES("1409","SCREW FOR HANDLE(3220.1.32)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:36","2023-04-27 14:59:36","","");
INSERT INTO products VALUES("1410","SCREW FOR HANDLE (3220.1.33)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:36","2023-04-27 14:59:36","","");
INSERT INTO products VALUES("1411","SCREW HEAD SCREW FOR AG-180","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:36","2023-04-27 14:59:36","","");
INSERT INTO products VALUES("1412","SCREW KPT 728664","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:36","2023-04-27 14:59:36","","");
INSERT INTO products VALUES("1413","SCREW KPT 729402","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:37","2023-04-27 14:59:37","","");
INSERT INTO products VALUES("1414","SCREW &amp; WASHER P-3401 730608","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:37","2023-04-27 14:59:37","","");
INSERT INTO products VALUES("1415","SLIDING RACK KMS 95RT 741530 (741530 SLIDING)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:37","2023-04-27 14:59:37","","");
INSERT INTO products VALUES("1416","SPACER 728007 HD1115","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:37","2023-04-27 14:59:37","","");
INSERT INTO products VALUES("1417","SPENDLE PART 722220","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:37","2023-04-27 14:59:37","","");
INSERT INTO products VALUES("1418","SPINDLE 728331","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:37","2023-04-27 14:59:37","","");
INSERT INTO products VALUES("1419","SPINDLE  729079","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:38","2023-04-27 14:59:38","","");
INSERT INTO products VALUES("1420","SPINDLE 730116","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:38","2023-04-27 14:59:38","","");
INSERT INTO products VALUES("1421","SPINDLE 742220","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:38","2023-04-27 14:59:38","","");
INSERT INTO products VALUES("1422","SPINDLE AG-7 (AG180 M)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:38","2023-04-27 14:59:38","","");
INSERT INTO products VALUES("1423","SPINDLE FOR RDG 25","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:38","2023-04-27 14:59:38","","");
INSERT INTO products VALUES("1424","SPINDLE FOR RDG600","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:39","2023-04-27 14:59:39","","");
INSERT INTO products VALUES("1425","SPINDLE GEAR 728004","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:39","2023-04-27 14:59:39","","");
INSERT INTO products VALUES("1426","SPINDLE GEAR 729077","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:39","2023-04-27 14:59:39","","");
INSERT INTO products VALUES("1427","SPINDLE VALVE TOOL CUTTING TOURCH","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:39","2023-04-27 14:59:39","","");
INSERT INTO products VALUES("1428","SPRING WASHER","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:39","2023-04-27 14:59:39","","");
INSERT INTO products VALUES("1429","S SWITCH P-57-91 144456","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:39","2023-04-27 14:59:39","","");
INSERT INTO products VALUES("1430","SWITCH 3510.1.78","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:39","2023-04-27 14:59:39","","");
INSERT INTO products VALUES("1431","SWITCH 727966","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:39","2023-04-27 14:59:39","","");
INSERT INTO products VALUES("1432","SWITCH 728075","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:39","2023-04-27 14:59:39","","");
INSERT INTO products VALUES("1433","SWITCH 741623","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:39","2023-04-27 14:59:39","","");
INSERT INTO products VALUES("1434","SWITCH 742058","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:39","2023-04-27 14:59:39","","");
INSERT INTO products VALUES("1435","SWITCH 901700","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:39","2023-04-27 14:59:39","","");
INSERT INTO products VALUES("1436","SWITCH FOR AG-180  (3330.1.13)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1437","SWITCH FOR RDG 600","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1438","SWITCH HANDLE D 97005","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1439","SWITCH HANDLE SEAT 742469","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1440","SWITCH(POWER TOOLS)AG-180","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1441","SWITCH POWER TOOLS FOR DRILL","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1442","SWITCH POWER TOOLS FOR MAGNET","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1443","SWITCH STRIP 3500.3.07","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1444","TCT CUTTER 12X35MM","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1445","TCT CUTTER 14X35MM","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1446","TCT CUTTER 14X50MM","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1447","TCT CUTTER 18X35MM","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1448","TCT CUTTER 36X50MM","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1449","THRUST BEARING  728322","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1450","THYRISTOR MODULE 0010","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1451","THYRISTOR MOUDLE 0012","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1452","TOGGLE SWITCH 728330","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1453","TOGGLE SWITCH 729534","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1454","TOGGLE SWITCH P-3401 (728534)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1455","TRACK FOR KING CUT MACHINE (1500X6000)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1456","VOLTAGE CONTROL POTENTIOMETER 0024","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:40","2023-04-27 14:59:40","","");
INSERT INTO products VALUES("1457","VOLTMETER 0160","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:41","2023-04-27 14:59:41","","");
INSERT INTO products VALUES("1458","WASHER 22265","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:41","2023-04-27 14:59:41","","");
INSERT INTO products VALUES("1459","WASHER 22365 KPT","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:41","2023-04-27 14:59:41","","");
INSERT INTO products VALUES("1460","WASHER 741562","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:41","2023-04-27 14:59:41","","");
INSERT INTO products VALUES("1461","WASHER FOR RDG 600","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:41","2023-04-27 14:59:41","","");
INSERT INTO products VALUES("1462","WASHER HD1115 728823","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:41","2023-04-27 14:59:41","","");
INSERT INTO products VALUES("1463","WELDING O/P TERMINAL STRIP 0098","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:41","2023-04-27 14:59:41","","");
INSERT INTO products VALUES("1464","WHEEL NUT FOR GRINDER (LOCK WASHER)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:41","2023-04-27 14:59:41","","");
INSERT INTO products VALUES("1465","WIRE FEEDER MOTOR DRIVE UNIT 2 Roll (S15.01.002.0810)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:41","2023-04-27 14:59:41","","");
INSERT INTO products VALUES("1466","WIRE FEEDER MOTOR DRIVE UNIT 4 ROLL (S15.01.002.0819)","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:41","2023-04-27 14:59:41","","");
INSERT INTO products VALUES("1467","WIRE SPIRAK 1050","9999","standard","C128","3","42","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 14:59:41","2023-04-27 14:59:41","","");
INSERT INTO products VALUES("1468","ADAPTOR 4 ROLL ER40 (S15.01.002.0835)","9999","standard","C128","3","43","1","1","1","15","20","0","","","","","","","","1","image","","","1","","","","","","","","","this is test product with variant","","","1","2023-04-27 15:25:50","2023-04-27 15:25:51","","");
INSERT INTO products VALUES("1469","ADOPTOR EURO (SN15.01.002.0826)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","this is test product without variant","","","1","2023-04-27 15:25:51","2023-04-27 15:25:51","","");
INSERT INTO products VALUES("1470","AUX. RECTIFIER ASSEMBLY (S22.74.071.0805)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:51","2023-04-27 15:25:51","","");
INSERT INTO products VALUES("1471","CAP NUT (S15.01.002.0691)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:51","2023-04-27 15:25:51","","");
INSERT INTO products VALUES("1472","CHOKE ASSEMBLY -0627","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:51","2023-04-27 15:25:51","","");
INSERT INTO products VALUES("1473","CNC DRIVEN CONTROL 0201","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:51","2023-04-27 15:25:51","","");
INSERT INTO products VALUES("1474","CO2 REGULATOR","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:52","2023-04-27 15:25:52","","");
INSERT INTO products VALUES("1475","CO2 REGULATOR CHECHK NUT &amp; NIPPLE","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:52","2023-04-27 15:25:52","","");
INSERT INTO products VALUES("1476","CONNECTOR FOR AG-7(FIELD CONNECTOR)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:52","2023-04-27 15:25:52","","");
INSERT INTO products VALUES("1477","CONTACTOR WITH COVER BOX (S11.01.001.0523)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:52","2023-04-27 15:25:52","","");
INSERT INTO products VALUES("1478","CONTACT TIP 1.2 MM (0562)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:52","2023-04-27 15:25:52","","");
INSERT INTO products VALUES("1479","CONTACT TIP 1.2MM (0.734] (S 15.01.001.0734)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:52","2023-04-27 15:25:52","","");
INSERT INTO products VALUES("1480","CONTACT TIP HOLDER LONG (S 12.06.001.0862)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:52","2023-04-27 15:25:52","","");
INSERT INTO products VALUES("1481","CONTROLLER PCB ASEMBLY -0170","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:52","2023-04-27 15:25:52","","");
INSERT INTO products VALUES("1482","CONTROLLER PCB  PWM (S 17.01.002.0117)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:53","2023-04-27 15:25:53","","");
INSERT INTO products VALUES("1483","CONTROL PCB ASSEMBLY (S17.01.002.0450)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:54","2023-04-27 15:25:54","","");
INSERT INTO products VALUES("1484","CONTROL TRANSFARMER (898) (S 21.03.001.0898)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:54","2023-04-27 15:25:54","","");
INSERT INTO products VALUES("1485","CONTROL TRANSFORMER (S 21.0.3.001.0055)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:54","2023-04-27 15:25:54","","");
INSERT INTO products VALUES("1486","CONTROL TRANSFORMER (0449) (S17.01.002.0449)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:54","2023-04-27 15:25:54","","");
INSERT INTO products VALUES("1487","CONTROL TRANSFORMER 0725","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:54","2023-04-27 15:25:54","","");
INSERT INTO products VALUES("1488","CONTROL TRANSFORMER 300VA (440V/110V)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:54","2023-04-27 15:25:54","","");
INSERT INTO products VALUES("1489","CONTROL TRANSFORMER 500 VA","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:54","2023-04-27 15:25:54","","");
INSERT INTO products VALUES("1490","DC MOTOR 12V for PROFILE M/C","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:54","2023-04-27 15:25:54","","");
INSERT INTO products VALUES("1491","EX- PRESSURE ROLLER ASSEBLE -0857","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:54","2023-04-27 15:25:54","","");
INSERT INTO products VALUES("1492","EX- PRESSURE ROLLER ASSEBLE -0858","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:54","2023-04-27 15:25:54","","");
INSERT INTO products VALUES("1493","FEED PLATE ASSEMBLY (S 21.08.001.0192)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:54","2023-04-27 15:25:54","","");
INSERT INTO products VALUES("1494","FUSE 2A/250V (CO2) (S21.02.001.0190)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:54","2023-04-27 15:25:54","","");
INSERT INTO products VALUES("1495","GAS NOZZLE ASSEMBLY (S 15.01.001.0727)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:54","2023-04-27 15:25:54","","");
INSERT INTO products VALUES("1496","GAS PREHEATER 600A[ BANSAL]","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:54","2023-04-27 15:25:54","","");
INSERT INTO products VALUES("1497","GAS PRE HEATER ASSEMBLY (554) (S11.06.031.0554)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:54","2023-04-27 15:25:54","","");
INSERT INTO products VALUES("1498","GAS PREHEATER ASSLY (110V) [557 ] (S.11.06.031.557)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:54","2023-04-27 15:25:54","","");
INSERT INTO products VALUES("1499","GAS PREHEATER COIL 110V,150W (S21.03.004.0063)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:55","2023-04-27 15:25:55","","");
INSERT INTO products VALUES("1500","GAS PREHEATER COIL 230V,150W (S21.03.004.0026)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:55","2023-04-27 15:25:55","","");
INSERT INTO products VALUES("1501","GUIDE PLATE GOR AG -180","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:55","2023-04-27 15:25:55","","");
INSERT INTO products VALUES("1502","HALL SENSAR(S36.02.002.0764)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:55","2023-04-27 15:25:55","","");
INSERT INTO products VALUES("1503","IGBT G.S. PCB (S 21.01.007.946)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:55","2023-04-27 15:25:55","","");
INSERT INTO products VALUES("1504","IGBT POWER MOLULE (S 22.03.030.613)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:55","2023-04-27 15:25:55","","");
INSERT INTO products VALUES("1505","IGBT PULSE DRIVER PCB [ 0065 ] (S 17.01.002.0065)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:55","2023-04-27 15:25:55","","");
INSERT INTO products VALUES("1506","INSULATING SOCKET FOR 4-ROLL FEEDLITE 20PN (S15.01.002.0827)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:55","2023-04-27 15:25:55","","");
INSERT INTO products VALUES("1507","INSULATING SOCKET FOR 4-ROLL FEEDLITE 40PN (S15.01.002.0836)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:55","2023-04-27 15:25:55","","");
INSERT INTO products VALUES("1508","INTERCONNECTING CABLE (S17.01.001.1779)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:55","2023-04-27 15:25:55","","");
INSERT INTO products VALUES("1509","IPT ASSEMBLY -0805","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:55","2023-04-27 15:25:55","","");
INSERT INTO products VALUES("1510","MAGNETIC COIL ASSEMBLY FOR ENOVA 40","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:56","2023-04-27 15:25:56","","");
INSERT INTO products VALUES("1511","MIG TORCH 600 AMP","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:56","2023-04-27 15:25:56","","");
INSERT INTO products VALUES("1512","MIG TOURCH (ADOR TW 402E) (S15.01.002.0117)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:56","2023-04-27 15:25:56","","");
INSERT INTO products VALUES("1513","MIG TOURCH TW 400 E (015.01.002.0050)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:56","2023-04-27 15:25:56","","");
INSERT INTO products VALUES("1514","MIG TOURCH TW 502 E,015.01.002.0271","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:56","2023-04-27 15:25:56","","");
INSERT INTO products VALUES("1515","NOZZLE INSULATOR (S 15.01.001.0731)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:56","2023-04-27 15:25:56","","");
INSERT INTO products VALUES("1516","NOZZLE INSULATOR [ BANSAL ]","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:56","2023-04-27 15:25:56","","");
INSERT INTO products VALUES("1517","NOZZLE TAPERED 200620 (S12.06.001.1013)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:56","2023-04-27 15:25:56","","");
INSERT INTO products VALUES("1518","ON/OFF SWITCH FOR PUG MACHINE","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:56","2023-04-27 15:25:56","","");
INSERT INTO products VALUES("1519","OUT PUT TERMINALS [ 0301 ] (S 11.01.003.0301)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:57","2023-04-27 15:25:57","","");
INSERT INTO products VALUES("1520","PCB ASSEMBLY (HF BY PASS) (S21.01.007.0851)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:57","2023-04-27 15:25:57","","");
INSERT INTO products VALUES("1521","PRESSURE REGULATOR with FLOW METER CO2 (S21.08.001.0005)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:57","2023-04-27 15:25:57","","");
INSERT INTO products VALUES("1522","PROTECTION PCB (THREE PHASE PROTECTION PCB)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:57","2023-04-27 15:25:57","","");
INSERT INTO products VALUES("1523","REMOTE CONTROL (825) (S 15.01.002.0825)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:57","2023-04-27 15:25:57","","");
INSERT INTO products VALUES("1524","RESISTOR [ 0118 ] (S21.06.001.0118)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:57","2023-04-27 15:25:57","","");
INSERT INTO products VALUES("1525","SELECTOR SWITCH RANGE (S21.02.004.0198)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:57","2023-04-27 15:25:57","","");
INSERT INTO products VALUES("1526","SOLENOID VALVE (856) (S 15.01.002.0856)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:57","2023-04-27 15:25:57","","");
INSERT INTO products VALUES("1527","SOLEROID VALVE 25 VAC (S 21.04.001.0143)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:57","2023-04-27 15:25:57","","");
INSERT INTO products VALUES("1528","SWITCH FOR KING CUT SMARTY ( TOGGLE SWITCH 0128)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:58","2023-04-27 15:25:58","","");
INSERT INTO products VALUES("1529","THYRISTOR MODULE [ 0116 ] (S22.08.081.0116)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:58","2023-04-27 15:25:58","","");
INSERT INTO products VALUES("1530","TIP ADAPTOR (S 15.01.001.0737)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:58","2023-04-27 15:25:58","","");
INSERT INTO products VALUES("1531","TOURCH SWITCH (S 12.06.002.0157)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:58","2023-04-27 15:25:58","","");
INSERT INTO products VALUES("1532","TWO PHASE FAN (225MMX225M) (S21.08.005.0331)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:58","2023-04-27 15:25:58","","");
INSERT INTO products VALUES("1533","WELDING MACHINE COIL","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:58","2023-04-27 15:25:58","","");
INSERT INTO products VALUES("1534","WIRE BOOM ASSEMBLY 0810","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:58","2023-04-27 15:25:58","","");
INSERT INTO products VALUES("1535","WIRE FEEDER PCB (MC) (S17.01.002.0207)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:58","2023-04-27 15:25:58","","");
INSERT INTO products VALUES("1536","WIRE FEEDER RANGER 600 (15MTR HOSE CABLE)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:58","2023-04-27 15:25:58","","");
INSERT INTO products VALUES("1537","WIRE FEEDER ROLLER 0841 (WIRE FEERDE 0841)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:58","2023-04-27 15:25:58","","");
INSERT INTO products VALUES("1538","WIRE FEEDER ROLLER 1.0/1.2MM (S15.01.002.0831)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:58","2023-04-27 15:25:58","","");
INSERT INTO products VALUES("1539","WIRE SPIRAL (1.2 -1.6) (S15.01.002.0422)","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:58","2023-04-27 15:25:58","","");
INSERT INTO products VALUES("1540","WIRE SPIRAL [0.8-1.2DIA], S12.06.001.0878","9999","standard","C128","3","43","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:25:59","2023-04-27 15:25:59","","");
INSERT INTO products VALUES("1541","BROACH CUTTER DRILL MACHINE 23MM - 31 MM","9999","standard","C128","3","44","1","1","1","15","20","0","","","","","","","","1","image","","","1","","","","","","","","","this is test product with variant","","","1","2023-04-27 15:34:42","2023-04-27 15:38:48","","");
INSERT INTO products VALUES("1542","CONCARIT DRILL BIT 12X150","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","this is test product without variant","","","1","2023-04-27 15:34:42","2023-04-27 15:38:48","","");
INSERT INTO products VALUES("1543","CONCARIT DRILL BIT 16X160","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:42","2023-04-27 15:38:49","","");
INSERT INTO products VALUES("1544","CONC. DRILL BIT 20x200","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:43","2023-04-27 15:38:49","","");
INSERT INTO products VALUES("1545","CONCRETE DRILL BIT 16 MM (16X200 MM)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:43","2023-04-27 15:38:49","","");
INSERT INTO products VALUES("1546","CONCRETE DRILL BIT 16 MM (16X310 MM)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:43","2023-04-27 15:38:49","","");
INSERT INTO products VALUES("1547","CONCRIT DRILL BIT 10MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:43","2023-04-27 15:38:49","","");
INSERT INTO products VALUES("1548","CONCRIT DRILL BIT 12X260","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:43","2023-04-27 15:38:49","","");
INSERT INTO products VALUES("1549","CONCRIT DRILL BIT 14X160MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:43","2023-04-27 15:38:49","","");
INSERT INTO products VALUES("1550","CONCRIT DRILL BIT 16X300 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:43","2023-04-27 15:38:49","","");
INSERT INTO products VALUES("1551","CONCRIT DRILL BIT 18x210MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:43","2023-04-27 15:38:49","","");
INSERT INTO products VALUES("1552","CONCRIT DRILL BIT 18X450MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:43","2023-04-27 15:38:50","","");
INSERT INTO products VALUES("1553","CONCRIT DRILL BIT 3 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:44","2023-04-27 15:38:50","","");
INSERT INTO products VALUES("1554","CONCRIT DRILL BIT 4 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:44","2023-04-27 15:38:50","","");
INSERT INTO products VALUES("1555","CONCRIT DRILL BIT 5 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:44","2023-04-27 15:38:50","","");
INSERT INTO products VALUES("1556","CONCRIT DRILL BIT 6 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:44","2023-04-27 15:38:50","","");
INSERT INTO products VALUES("1557","CONCRIT DRILL BIT 8MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:44","2023-04-27 15:38:50","","");
INSERT INTO products VALUES("1558","CONCRITE DRILL BIT 20x310 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:44","2023-04-27 15:38:51","","");
INSERT INTO products VALUES("1559","DRILL BIT 10.5 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:44","2023-04-27 15:38:51","","");
INSERT INTO products VALUES("1560","DRILL BIT 10 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:44","2023-04-27 15:38:51","","");
INSERT INTO products VALUES("1561","DRILL BIT 11MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:44","2023-04-27 15:38:51","","");
INSERT INTO products VALUES("1562","DRILL BIT 12.5 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:44","2023-04-27 15:38:52","","");
INSERT INTO products VALUES("1563","DRILL BIT 12 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:44","2023-04-27 15:38:52","","");
INSERT INTO products VALUES("1564","DRILL BIT 13MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:44","2023-04-27 15:38:52","","");
INSERT INTO products VALUES("1565","DRILL BIT 16 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:44","2023-04-27 15:38:52","","");
INSERT INTO products VALUES("1566","DRILL BIT 18.5MM (TAPPER DRILL BIT 18.5MM)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:44","2023-04-27 15:38:52","","");
INSERT INTO products VALUES("1567","DRILL BIT 18 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:44","2023-04-27 15:38:52","","");
INSERT INTO products VALUES("1568","DRILL BIT 20 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:44","2023-04-27 15:38:52","","");
INSERT INTO products VALUES("1569","DRILL BIT 22MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:44","2023-04-27 15:38:52","","");
INSERT INTO products VALUES("1570","DRILL BIT 23 MM (HSS DRILL BIT 23 MM)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:44","2023-04-27 15:38:53","","");
INSERT INTO products VALUES("1571","DRILL BIT 24MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:44","2023-04-27 15:38:53","","");
INSERT INTO products VALUES("1572","DRILL BIT 26.5MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:45","2023-04-27 15:38:53","","");
INSERT INTO products VALUES("1573","DRILL BIT 26MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:45","2023-04-27 15:38:53","","");
INSERT INTO products VALUES("1574","DRILL BIT 27 MM (HSS TAPPER DRILL BIT 27 MM)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:45","2023-04-27 15:38:53","","");
INSERT INTO products VALUES("1575","DRILL BIT 28MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:45","2023-04-27 15:38:53","","");
INSERT INTO products VALUES("1576","DRILL BIT 32MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:45","2023-04-27 15:38:53","","");
INSERT INTO products VALUES("1577","DRILL BIT 34MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:45","2023-04-27 15:38:53","","");
INSERT INTO products VALUES("1578","DRILL BIT 36 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:45","2023-04-27 15:38:53","","");
INSERT INTO products VALUES("1579","DRILL BIT 38 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:45","2023-04-27 15:38:53","","");
INSERT INTO products VALUES("1580","DRILL BIT 3 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:45","2023-04-27 15:38:54","","");
INSERT INTO products VALUES("1581","DRILL BIT 42MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:45","2023-04-27 15:38:54","","");
INSERT INTO products VALUES("1582","DRILL BIT 45MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:46","2023-04-27 15:38:54","","");
INSERT INTO products VALUES("1583","DRILL BIT 50 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:46","2023-04-27 15:38:54","","");
INSERT INTO products VALUES("1584","DRILL BIT 5 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:46","2023-04-27 15:38:54","","");
INSERT INTO products VALUES("1585","DRILL BIT 60MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:46","2023-04-27 15:38:54","","");
INSERT INTO products VALUES("1586","DRILL BIT 6MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:46","2023-04-27 15:38:54","","");
INSERT INTO products VALUES("1587","DRILL BIT 8.5 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:46","2023-04-27 15:38:54","","");
INSERT INTO products VALUES("1588","DRILL BIT 8 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:46","2023-04-27 15:38:54","","");
INSERT INTO products VALUES("1589","DRILL CHUCK WITH KEY 10 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:46","2023-04-27 15:38:54","","");
INSERT INTO products VALUES("1590","DRILL SLEEVE 1-2","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:46","2023-04-27 15:38:54","","");
INSERT INTO products VALUES("1591","DRILL SLEEVE 2-3","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:46","2023-04-27 15:38:55","","");
INSERT INTO products VALUES("1592","DRILL SLEEVE 3-4","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:46","2023-04-27 15:38:55","","");
INSERT INTO products VALUES("1593","DRILL SOCKET 1-2","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:46","2023-04-27 15:38:55","","");
INSERT INTO products VALUES("1594","DRILL SOCKET 2-3","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:46","2023-04-27 15:38:55","","");
INSERT INTO products VALUES("1595","DRILL SOCKET 3-4","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:47","2023-04-27 15:38:55","","");
INSERT INTO products VALUES("1596","DRILL SOCKET 4-5","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:47","2023-04-27 15:38:55","","");
INSERT INTO products VALUES("1597","HSS DRILL BIT 12 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:47","2023-04-27 15:38:56","","");
INSERT INTO products VALUES("1598","HSS DRILL BIT 17.5 MM (DRILL BIT 17.5 MM)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:47","2023-04-27 15:38:56","","");
INSERT INTO products VALUES("1599","HSS DRILL BIT 27MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:47","2023-04-27 15:38:56","","");
INSERT INTO products VALUES("1600","HSS DRILL BIT 2 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:47","2023-04-27 15:38:56","","");
INSERT INTO products VALUES("1601","HSS DRILL BIT 30 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:47","2023-04-27 15:38:56","","");
INSERT INTO products VALUES("1602","HSS DRILL BIT 4 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:48","2023-04-27 15:38:56","","");
INSERT INTO products VALUES("1603","HSS DRILL BIT 7.5 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:48","2023-04-27 15:38:56","","");
INSERT INTO products VALUES("1604","HSS DRILL BIT 8 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:48","2023-04-27 15:38:56","","");
INSERT INTO products VALUES("1605","HSS STRAIGHT DRILL BIT 4.3MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:48","2023-04-27 15:38:57","","");
INSERT INTO products VALUES("1606","HSS STRAIGHT DRILL BIT 5.2MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:48","2023-04-27 15:38:57","","");
INSERT INTO products VALUES("1607","HSS STRAIGHT DRILL BIT  5 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:48","2023-04-27 15:38:57","","");
INSERT INTO products VALUES("1608","HSS STRAIGHT DRILL BIT 6.5 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:48","2023-04-27 15:38:57","","");
INSERT INTO products VALUES("1609","HSS STRAIGHT DRILL BIT 7MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:48","2023-04-27 15:38:57","","");
INSERT INTO products VALUES("1610","HSS STRAIGHT DRILL BIT 8 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:48","2023-04-27 15:38:58","","");
INSERT INTO products VALUES("1611","HSS STRAIGHT DRILL BIT 9.5 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:48","2023-04-27 15:38:58","","");
INSERT INTO products VALUES("1612","HSS STRAIGHT DRILL BIT 9MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:49","2023-04-27 15:38:58","","");
INSERT INTO products VALUES("1613","HSS TAPER DRILL BIT 18MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:49","2023-04-27 15:38:58","","");
INSERT INTO products VALUES("1614","HSS TAPER DRILL BIT 22 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:49","2023-04-27 15:38:58","","");
INSERT INTO products VALUES("1615","HSS TAPPER DRILL BIT 14 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:49","2023-04-27 15:38:58","","");
INSERT INTO products VALUES("1616","HSS TAPPER DRILL BIT 15MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:49","2023-04-27 15:38:58","","");
INSERT INTO products VALUES("1617","HSS TAPPER DRILL BIT 17MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:49","2023-04-27 15:38:58","","");
INSERT INTO products VALUES("1618","HSS TAPPER DRILL BIT 19 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:49","2023-04-27 15:38:59","","");
INSERT INTO products VALUES("1619","HSS TAPPER DRILL BIT 44 MM (DRILL BIT 44 MM)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:49","2023-04-27 15:38:59","","");
INSERT INTO products VALUES("1620","HSS TAPPER DRILL BIT 46MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:49","2023-04-27 15:38:59","","");
INSERT INTO products VALUES("1621","HSS TAPPER DRILL BIT 68MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:49","2023-04-27 15:38:59","","");
INSERT INTO products VALUES("1622","HSS THREADING TAP 3/4''","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:49","2023-04-27 15:38:59","","");
INSERT INTO products VALUES("1623","AIR BLOWER RB -500","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:49","2023-04-27 15:38:59","","");
INSERT INTO products VALUES("1624","ARC WELDING TRANSFORMER RED-503","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:49","2023-04-27 15:38:59","","");
INSERT INTO products VALUES("1625","BENCH GRINDER 12'' (CAP2HP) WHEEL SIZE 12''","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:49","2023-04-27 15:38:59","","");
INSERT INTO products VALUES("1626","BENCH GRINDER 6''","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:50","2023-04-27 15:38:59","","");
INSERT INTO products VALUES("1627","BOLT CUTTER 18&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:50","2023-04-27 15:34:50","","");
INSERT INTO products VALUES("1628","BRIDGE 3PH RECTIFER 0049 (S22.74..071.0049)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:50","2023-04-27 15:39:00","","");
INSERT INTO products VALUES("1629","BUFFING WHEEL 4&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:50","2023-04-27 15:34:50","","");
INSERT INTO products VALUES("1630","CARBON BRUSH CAP AG-7 (3253.1.15)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:50","2023-04-27 15:39:00","","");
INSERT INTO products VALUES("1631","CI WELDING ROD 3.15MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:50","2023-04-27 15:39:00","","");
INSERT INTO products VALUES("1632","CNC SYSTEM CONTROLLER 5.7&quot; FOR ZNC 1500","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:50","2023-04-27 15:34:50","","");
INSERT INTO products VALUES("1633","CO2 WELDING MACHINE 400A RANGER-403 (MIG WELDING MACHINE 400A)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:50","2023-04-27 15:39:00","","");
INSERT INTO products VALUES("1634","CO2 WELDING MACHINE 600A, RANGER-600","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:50","2023-04-27 15:39:01","","");
INSERT INTO products VALUES("1635","CONTROL PCB ASSEMBLY 0207","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:50","2023-04-27 15:39:01","","");
INSERT INTO products VALUES("1636","CONTROL TRANSFORMER -0722","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:50","2023-04-27 15:39:01","","");
INSERT INTO products VALUES("1637","CORDLESS DRILL MACHINE  GSR-120-LI","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:51","2023-04-27 15:39:02","","");
INSERT INTO products VALUES("1638","CUTTING HOSE PIPE (BLUE)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:51","2023-04-27 15:39:02","","");
INSERT INTO products VALUES("1639","CUTTING HOSE PIPE (RED)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:51","2023-04-27 15:39:02","","");
INSERT INTO products VALUES("1640","CUTTING NOZZEL 3/64","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:51","2023-04-27 15:39:03","","");
INSERT INTO products VALUES("1641","CUTTING NOZZLE 1/16","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:51","2023-04-27 15:39:03","","");
INSERT INTO products VALUES("1642","CUTTING NOZZLE 1/32","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:51","2023-04-27 15:39:03","","");
INSERT INTO products VALUES("1643","CUTTING NOZZLE OXY-LPG-PNM 1/16","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:51","2023-04-27 15:39:03","","");
INSERT INTO products VALUES("1644","CUTTING NOZZLE OXY-LPG-PNM 1/32","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:51","2023-04-27 15:39:04","","");
INSERT INTO products VALUES("1645","CUTTING NOZZLE OXY-LPG-PNM 3/64","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:52","2023-04-27 15:39:04","","");
INSERT INTO products VALUES("1646","CUTTING TOURCH 18&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:52","2023-04-27 15:34:52","","");
INSERT INTO products VALUES("1647","CUTTING TOURCH NUT &amp; NIPPLE","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:52","2023-04-27 15:34:52","","");
INSERT INTO products VALUES("1648","CUTTING WHEEL AG-4","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:52","2023-04-27 15:39:04","","");
INSERT INTO products VALUES("1649","CUTTING WHEEL AG-7","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:52","2023-04-27 15:39:04","","");
INSERT INTO products VALUES("1650","DIE GRINDER","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:52","2023-04-27 15:39:05","","");
INSERT INTO products VALUES("1651","DRILL CHUCK10MM WITH SOCKET","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:52","2023-04-27 15:39:05","","");
INSERT INTO products VALUES("1652","DRILL CHUCK 1/2&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:52","2023-04-27 15:34:52","","");
INSERT INTO products VALUES("1653","DRILL CHUCK WITH SOCKET 13MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:52","2023-04-27 15:39:05","","");
INSERT INTO products VALUES("1654","DRILL CHUCK WITH SOCKET 16MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:52","2023-04-27 15:39:05","","");
INSERT INTO products VALUES("1655","FLAP WHEEL AG-4","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:52","2023-04-27 15:39:05","","");
INSERT INTO products VALUES("1656","FLATE FILE (SMOOTH) 12&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:52","2023-04-27 15:34:52","","");
INSERT INTO products VALUES("1657","FLAT FILE ROUGH 12&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:52","2023-04-27 15:34:52","","");
INSERT INTO products VALUES("1658","FLEXIBLE GRINDING MACHINE KFT 2","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:53","2023-04-27 15:39:06","","");
INSERT INTO products VALUES("1659","FUSE CARRIER 0292","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:53","2023-04-27 15:39:06","","");
INSERT INTO products VALUES("1660","GAS CONTROL KNOB-BLUE-0605","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:53","2023-04-27 15:39:06","","");
INSERT INTO products VALUES("1661","GAS CONTROL KNOB-RED-0606","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:53","2023-04-27 15:39:06","","");
INSERT INTO products VALUES("1662","GAS NOZZLE 1081","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:53","2023-04-27 15:39:06","","");
INSERT INTO products VALUES("1663","GAS REGULATOR (SINGLE STAGE)0063","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:53","2023-04-27 15:39:06","","");
INSERT INTO products VALUES("1664","GEAR MAGNET COIL (RADIAL DRILL MACHINE (GEAR MAGNET))","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:53","2023-04-27 15:39:06","","");
INSERT INTO products VALUES("1665","GRINDER MACHINE AG-7","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:53","2023-04-27 15:39:06","","");
INSERT INTO products VALUES("1666","GRINDING MACHINE AG4","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:53","2023-04-27 15:39:06","","");
INSERT INTO products VALUES("1667","GRINDING STONE WHEEL WHITE 8''X1''","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:53","2023-04-27 15:39:07","","");
INSERT INTO products VALUES("1668","GRINDING WHEEL 4'' DISC FOR SS GRINDING","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:53","2023-04-27 15:39:07","","");
INSERT INTO products VALUES("1669","GRINDING WHEEL AG 4","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:53","2023-04-27 15:39:07","","");
INSERT INTO products VALUES("1670","GRINDING WHEEL AG 7","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:53","2023-04-27 15:39:07","","");
INSERT INTO products VALUES("1671","GRINDING WHEEL (BAFFING) AG-4","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:53","2023-04-27 15:39:07","","");
INSERT INTO products VALUES("1672","GRINDING WHEEL (BAFFING) AG-7","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:53","2023-04-27 15:39:08","","");
INSERT INTO products VALUES("1673","HALF ROUND FILE 12'' RUF","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:54","2023-04-27 15:39:08","","");
INSERT INTO products VALUES("1674","HAND DRILL MACHINE","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:54","2023-04-27 15:39:08","","");
INSERT INTO products VALUES("1675","HEXA BLADE 1/2&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:54","2023-04-27 15:34:54","","");
INSERT INTO products VALUES("1676","HEXA FRAME 12''","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:54","2023-04-27 15:39:08","","");
INSERT INTO products VALUES("1677","HIGH SPEED FAST RECOVERY DUAL DIODE (S22.06.060.0726)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:54","2023-04-27 15:39:08","","");
INSERT INTO products VALUES("1678","HOT AIR GUN GHG 180","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:54","2023-04-27 15:39:08","","");
INSERT INTO products VALUES("1679","HSS HEXABLADE  24''X38MMX2MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:54","2023-04-27 15:39:08","","");
INSERT INTO products VALUES("1680","HSS THREADING TAP 1''","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:54","2023-04-27 15:39:08","","");
INSERT INTO products VALUES("1681","HSS THREADING TAP 1/2&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:54","2023-04-27 15:34:54","","");
INSERT INTO products VALUES("1682","HSS THREADING TAP 12 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:54","2023-04-27 15:39:08","","");
INSERT INTO products VALUES("1683","HSS THREADING TAP 1/4''","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:54","2023-04-27 15:39:08","","");
INSERT INTO products VALUES("1684","HSS THREADING TAP 5/16''","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:54","2023-04-27 15:39:08","","");
INSERT INTO products VALUES("1685","HSS THREADING TAP 5/8''","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:54","2023-04-27 15:39:08","","");
INSERT INTO products VALUES("1686","HSS THREADING TAPE 3/8","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:54","2023-04-27 15:39:08","","");
INSERT INTO products VALUES("1687","IGBT MOUDLE UNIT ASSY 0545","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:54","2023-04-27 15:39:08","","");
INSERT INTO products VALUES("1688","LOW SILICON WELDING ROD 4 MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:54","2023-04-27 15:39:09","","");
INSERT INTO products VALUES("1689","L.P.G. REGULATOR","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:55","2023-04-27 15:39:09","","");
INSERT INTO products VALUES("1690","LPG RUBBER WASHER","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:55","2023-04-27 15:39:09","","");
INSERT INTO products VALUES("1691","MAGNETIC DRILL MACHINE 23MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:55","2023-04-27 15:39:09","","");
INSERT INTO products VALUES("1692","MAGNETIC DRILL MACHINE 31MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:55","2023-04-27 15:39:09","","");
INSERT INTO products VALUES("1693","MAGNETIC  DRILL STAND","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:55","2023-04-27 15:39:09","","");
INSERT INTO products VALUES("1694","MARBLE CUTTER WHEEL 4''","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:55","2023-04-27 15:39:09","","");
INSERT INTO products VALUES("1695","MIG TORCH , MODEL 36 HD , 3MTR LONG","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:55","2023-04-27 15:39:09","","");
INSERT INTO products VALUES("1696","NEEDLE FILE SET","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:55","2023-04-27 15:39:09","","");
INSERT INTO products VALUES("1697","NOTCHING BOTTOM BLADE (230X24X38MM)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:55","2023-04-27 15:39:10","","");
INSERT INTO products VALUES("1698","NOTCHING BOTTOM BLADE (254x24x38 MM) (254X24X38 MM)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:55","2023-04-27 15:39:10","","");
INSERT INTO products VALUES("1699","NOTCHING TOP TRINGLE BLADE (230X230X38 MM (230X230X38 MM)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:55","2023-04-27 15:39:10","","");
INSERT INTO products VALUES("1700","NOZZLE FIXING NUT (0188)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:55","2023-04-27 15:39:10","","");
INSERT INTO products VALUES("1701","NOZZLE HOLDER 1054","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:55","2023-04-27 15:39:10","","");
INSERT INTO products VALUES("1702","NUT &amp; NIPPLE FOR CUTTING TOURCH","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:55","2023-04-27 15:34:55","","");
INSERT INTO products VALUES("1703","OUTPUT TERMINAL 0270","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:55","2023-04-27 15:39:10","","");
INSERT INTO products VALUES("1704","OXYGEN CYLINDER NUT","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:55","2023-04-27 15:39:11","","");
INSERT INTO products VALUES("1705","OXYGEN KEY","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:56","2023-04-27 15:39:13","","");
INSERT INTO products VALUES("1706","OXYGEN REGULATOR NUT","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:56","2023-04-27 15:39:13","","");
INSERT INTO products VALUES("1707","OXYGEN WASHER","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:56","2023-04-27 15:39:13","","");
INSERT INTO products VALUES("1708","PILOT PIN 7.98 X 108MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:56","2023-04-27 15:39:13","","");
INSERT INTO products VALUES("1709","PILOT PIN FOR 12X35MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:56","2023-04-27 15:39:13","","");
INSERT INTO products VALUES("1710","PILOT PIN FOR 18X35MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:56","2023-04-27 15:39:14","","");
INSERT INTO products VALUES("1711","PIPE CUTTING MACHINE (EST355) 14&quot; CHOP SAW EIBEN","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:56","2023-04-27 15:34:56","","");
INSERT INTO products VALUES("1712","PIPE CUTTING WHEEL 14&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:56","2023-04-27 15:34:56","","");
INSERT INTO products VALUES("1713","PUG CUTTING MACHINE","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:56","2023-04-27 15:39:14","","");
INSERT INTO products VALUES("1714","RIGHT ANGLE 10'","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:56","2023-04-27 15:39:14","","");
INSERT INTO products VALUES("1715","RIGHT ANGLE 12&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:57","2023-04-27 15:34:57","","");
INSERT INTO products VALUES("1716","RIGHT ANGLE 6","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:57","2023-04-27 15:39:14","","");
INSERT INTO products VALUES("1717","RIGHT ANGLE 8","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:57","2023-04-27 15:39:14","","");
INSERT INTO products VALUES("1718","ROTARY HAMMER 22MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:57","2023-04-27 15:39:14","","");
INSERT INTO products VALUES("1719","RUBBER WASHER (O2 &amp; CO2)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:57","2023-04-27 15:34:57","","");
INSERT INTO products VALUES("1720","SAFETY GOGGALES BLACK (GOGGALES BLACK)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:57","2023-04-27 15:39:14","","");
INSERT INTO products VALUES("1721","SAFETY GOGGALES WHITE","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:57","2023-04-27 15:39:14","","");
INSERT INTO products VALUES("1722","SAFETY HELMET WITH COMPLETE SET (HELMET WITH FACE SHIELD WITH WHITE GOGGLE)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:57","2023-04-27 15:39:14","","");
INSERT INTO products VALUES("1723","SAFETY LEG GUARD","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:57","2023-04-27 15:39:14","","");
INSERT INTO products VALUES("1724","SANDER DISC  AG-4 120 NO","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:57","2023-04-27 15:39:14","","");
INSERT INTO products VALUES("1725","SHUNT 0339","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:57","2023-04-27 15:39:14","","");
INSERT INTO products VALUES("1726","SPARE PARTS KIT FOR REGULATOR 0901","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:57","2023-04-27 15:39:15","","");
INSERT INTO products VALUES("1727","SS WELDING ROD 3.15MMX350MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:57","2023-04-27 15:39:15","","");
INSERT INTO products VALUES("1728","SS WELDING ROD 4X350MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:57","2023-04-27 15:39:15","","");
INSERT INTO products VALUES("1729","TAP HANDLE 1/2''","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:57","2023-04-27 15:39:15","","");
INSERT INTO products VALUES("1730","TCT CUTTER 19 X 50MM (BROCH CUTTER 19X50)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:58","2023-04-27 15:39:15","","");
INSERT INTO products VALUES("1731","TCT CUTTER 23 X 50MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:58","2023-04-27 15:39:15","","");
INSERT INTO products VALUES("1732","TCT CUTTER 27 X 50MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:58","2023-04-27 15:39:15","","");
INSERT INTO products VALUES("1733","TCT CUTTER 34X50MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:58","2023-04-27 15:39:15","","");
INSERT INTO products VALUES("1734","TIN CUTTER 12''","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:58","2023-04-27 15:39:15","","");
INSERT INTO products VALUES("1735","TIN CUTTER WITH SPRING TCS 14","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:58","2023-04-27 15:39:15","","");
INSERT INTO products VALUES("1736","TORCH - 0171","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:58","2023-04-27 15:39:15","","");
INSERT INTO products VALUES("1737","TORCH NOZZLE NUT - 0192","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:58","2023-04-27 15:39:15","","");
INSERT INTO products VALUES("1738","WELDING CABLE 70 MM (600A)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:58","2023-04-27 15:39:16","","");
INSERT INTO products VALUES("1739","WELDING COPPER CABLE 50 SQMM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:58","2023-04-27 15:39:16","","");
INSERT INTO products VALUES("1740","WELDING GLASS [ BLACK ]","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:58","2023-04-27 15:39:16","","");
INSERT INTO products VALUES("1741","WELDING GLASS [ WHITE ]","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:58","2023-04-27 15:39:16","","");
INSERT INTO products VALUES("1742","WELDING GOGGLES","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:58","2023-04-27 15:39:16","","");
INSERT INTO products VALUES("1743","WELDING HEAD HELMET WITH FITTING","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:59","2023-04-27 15:39:16","","");
INSERT INTO products VALUES("1744","WELDING HELMET","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:59","2023-04-27 15:39:16","","");
INSERT INTO products VALUES("1745","WELDING HELMET HAND SCREEN","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:59","2023-04-27 15:39:16","","");
INSERT INTO products VALUES("1746","WELDING HOLDER 1000/600 AMP","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:59","2023-04-27 15:39:16","","");
INSERT INTO products VALUES("1747","WELDING MACHINCE ARC 400A/450A (ARC WELDING MACHINE 400A)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:59","2023-04-27 15:39:16","","");
INSERT INTO products VALUES("1748","WELDING MACHINE 200-250A SINGLE PHASE","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:59","2023-04-27 15:39:16","","");
INSERT INTO products VALUES("1749","WELDING MACHINE FAN BLADE","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:59","2023-04-27 15:39:16","","");
INSERT INTO products VALUES("1750","WELDING RECTIFIERS FAN MOTOR","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:59","2023-04-27 15:39:16","","");
INSERT INTO products VALUES("1751","WELDING ROD 2.5MM SUPABASE PLUS)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:59","2023-04-27 15:39:16","","");
INSERT INTO products VALUES("1752","WELDING ROD 3.15 MM [6013]","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:59","2023-04-27 15:39:16","","");
INSERT INTO products VALUES("1753","WELDING ROD 3.15 X 350MM [6013]","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:59","2023-04-27 15:39:17","","");
INSERT INTO products VALUES("1754","WELDING ROD 4 MM (CI)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:59","2023-04-27 15:39:17","","");
INSERT INTO products VALUES("1755","WELDING ROD 4 MM SUPABASE-X","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:59","2023-04-27 15:39:17","","");
INSERT INTO products VALUES("1756","WELDING ROD 4MM [ 6013 ]","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:59","2023-04-27 15:39:17","","");
INSERT INTO products VALUES("1757","WELDING ROD 5MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:59","2023-04-27 15:39:17","","");
INSERT INTO products VALUES("1758","WIRE CUTTER","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:59","2023-04-27 15:39:17","","");
INSERT INTO products VALUES("1759","WIRE CUTTER 12''","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:34:59","2023-04-27 15:39:17","","");
INSERT INTO products VALUES("1760","WIRE CUTTER 18&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:35:00","2023-04-27 15:35:00","","");
INSERT INTO products VALUES("1761","WIRE CUTTER 24&quot; (OTHER)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:35:00","2023-04-27 15:35:00","","");
INSERT INTO products VALUES("1762","WIRE FEEDER ROLLER -0871 (S15.01.002.0871)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:35:00","2023-04-27 15:39:17","","");
INSERT INTO products VALUES("1763","BITUMIN 90/15","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:35:00","2023-04-27 15:39:17","","");
INSERT INTO products VALUES("1764","EN-8 ROUND BAR 18MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:35:00","2023-04-27 15:39:18","","");
INSERT INTO products VALUES("1765","EN-8 ROUND BAR 20MM","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:35:00","2023-04-27 15:39:18","","");
INSERT INTO products VALUES("1766","BOLT CUTTER 18&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:38:45","2023-04-27 15:38:45","","");
INSERT INTO products VALUES("1767","BUFFING WHEEL 4&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:38:46","2023-04-27 15:38:46","","");
INSERT INTO products VALUES("1768","CNC SYSTEM CONTROLLER 5.7&quot; FOR ZNC 1500","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:38:46","2023-04-27 15:38:46","","");
INSERT INTO products VALUES("1769","CUTTING TOURCH 18&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:38:47","2023-04-27 15:38:47","","");
INSERT INTO products VALUES("1770","CUTTING TOURCH NUT &amp; NIPPLE","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:38:47","2023-04-27 15:38:47","","");
INSERT INTO products VALUES("1771","DRILL CHUCK 1/2&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:38:48","2023-04-27 15:38:48","","");
INSERT INTO products VALUES("1772","FLATE FILE (SMOOTH) 12&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:38:48","2023-04-27 15:38:48","","");
INSERT INTO products VALUES("1773","FLAT FILE ROUGH 12&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:38:48","2023-04-27 15:38:48","","");
INSERT INTO products VALUES("1774","HEXA BLADE 1/2&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:38:51","2023-04-27 15:38:51","","");
INSERT INTO products VALUES("1775","HSS THREADING TAP 1/2&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:38:52","2023-04-27 15:38:52","","");
INSERT INTO products VALUES("1776","NUT &amp; NIPPLE FOR CUTTING TOURCH","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:38:54","2023-04-27 15:38:54","","");
INSERT INTO products VALUES("1777","PIPE CUTTING MACHINE (EST355) 14&quot; CHOP SAW EIBEN","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:38:56","2023-04-27 15:38:56","","");
INSERT INTO products VALUES("1778","PIPE CUTTING WHEEL 14&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:38:56","2023-04-27 15:38:56","","");
INSERT INTO products VALUES("1779","RIGHT ANGLE 12&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:38:56","2023-04-27 15:38:56","","");
INSERT INTO products VALUES("1780","RUBBER WASHER (O2 &amp; CO2)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:38:57","2023-04-27 15:38:57","","");
INSERT INTO products VALUES("1781","BOLT CUTTER 18&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:38:59","2023-04-27 15:38:59","","");
INSERT INTO products VALUES("1782","BUFFING WHEEL 4&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:39:00","2023-04-27 15:39:00","","");
INSERT INTO products VALUES("1783","CNC SYSTEM CONTROLLER 5.7&quot; FOR ZNC 1500","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:39:00","2023-04-27 15:39:00","","");
INSERT INTO products VALUES("1784","WIRE CUTTER 18&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:39:04","2023-04-27 15:39:04","","");
INSERT INTO products VALUES("1785","CUTTING TOURCH 18&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:39:04","2023-04-27 15:39:04","","");
INSERT INTO products VALUES("1786","WIRE CUTTER 24&quot; (OTHER)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:39:04","2023-04-27 15:39:04","","");
INSERT INTO products VALUES("1787","CUTTING TOURCH NUT &amp; NIPPLE","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:39:04","2023-04-27 15:39:04","","");
INSERT INTO products VALUES("1788","DRILL CHUCK 1/2&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:39:05","2023-04-27 15:39:05","","");
INSERT INTO products VALUES("1789","FLATE FILE (SMOOTH) 12&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:39:05","2023-04-27 15:39:05","","");
INSERT INTO products VALUES("1790","FLAT FILE ROUGH 12&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:39:05","2023-04-27 15:39:05","","");
INSERT INTO products VALUES("1791","HEXA BLADE 1/2&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:39:08","2023-04-27 15:39:08","","");
INSERT INTO products VALUES("1792","HSS THREADING TAP 1/2&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:39:08","2023-04-27 15:39:08","","");
INSERT INTO products VALUES("1793","NUT &amp; NIPPLE FOR CUTTING TOURCH","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:39:10","2023-04-27 15:39:10","","");
INSERT INTO products VALUES("1794","PIPE CUTTING MACHINE (EST355) 14&quot; CHOP SAW EIBEN","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:39:14","2023-04-27 15:39:14","","");
INSERT INTO products VALUES("1795","PIPE CUTTING WHEEL 14&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:39:14","2023-04-27 15:39:14","","");
INSERT INTO products VALUES("1796","RIGHT ANGLE 12&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:39:14","2023-04-27 15:39:14","","");
INSERT INTO products VALUES("1797","RUBBER WASHER (O2 &amp; CO2)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:39:14","2023-04-27 15:39:14","","");
INSERT INTO products VALUES("1798","WIRE CUTTER 18&quot;","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:39:17","2023-04-27 15:39:17","","");
INSERT INTO products VALUES("1799","WIRE CUTTER 24&quot; (OTHER)","9999","standard","C128","3","44","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:39:17","2023-04-27 15:39:17","","");
INSERT INTO products VALUES("1800","CAPACITOR 10 MFD","9999","standard","C128","3","46","1","1","1","15","20","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:42:57","2023-04-27 15:42:57","","");
INSERT INTO products VALUES("1801","CAPACITOR 20 MFD","9999","standard","C128","3","46","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:42:57","2023-04-27 15:42:57","","");
INSERT INTO products VALUES("1802","CAPACITOR 2.5 MFD (440 V)","9999","standard","C128","3","46","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:42:57","2023-04-27 15:42:57","","");
INSERT INTO products VALUES("1803","CAPACITOR 3.15 MFD","9999","standard","C128","3","46","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:42:57","2023-04-27 15:42:57","","");
INSERT INTO products VALUES("1804","CAPACITOR 42 MFD (250V)","9999","standard","C128","3","46","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:42:58","2023-04-27 15:42:58","","");
INSERT INTO products VALUES("1805","CAPACITOR 4  MFD (440 V)","9999","standard","C128","3","46","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:42:58","2023-04-27 15:42:58","","");
INSERT INTO products VALUES("1806","CAPACITOR 50MFD","9999","standard","C128","3","46","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:42:58","2023-04-27 15:42:58","","");
INSERT INTO products VALUES("1807","CAPACITOR 6.9KVAR 525V CYLINDRICAL","9999","standard","C128","3","46","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:42:58","2023-04-27 15:42:58","","");
INSERT INTO products VALUES("1808","CAPACITOR  6  MFD","9999","standard","C128","3","46","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:42:58","2023-04-27 15:42:58","","");
INSERT INTO products VALUES("1809","CAPACITOR 8MFD","9999","standard","C128","3","46","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:42:58","2023-04-27 15:42:58","","");
INSERT INTO products VALUES("1810","ADD ON BLOCK 1 NO+1 NC MNX9-40","9999","standard","C128","3","47","1","1","1","15","20","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:46","2023-04-28 23:33:54","","");
INSERT INTO products VALUES("1811","ADD ON BLOCK 2NO+2NC, MNX 45","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:46","2023-04-28 23:33:54","","");
INSERT INTO products VALUES("1812","ADD ON BLOCK MNX-A1 (CS94114)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:46","2023-04-28 23:33:54","","");
INSERT INTO products VALUES("1813","ADD ON BLOCK MNX-A2 1NO+1NC (CS94118)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:46","2023-04-28 23:33:54","","");
INSERT INTO products VALUES("1814","ADD ON BLOCK MNX-A2 ,2NO+2NC , CS94114OOOO","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:46","2023-04-28 23:33:54","","");
INSERT INTO products VALUES("1815","AIR BREAK (AUX) CONTACTOR","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:46","2023-04-28 23:33:54","","");
INSERT INTO products VALUES("1816","AUX. CONTACT 1NO+1NC 3TF46-57 (3TY75611KA008K)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:47","2023-04-28 23:33:55","","");
INSERT INTO products VALUES("1817","AUX. CONTACT BLOCK 1 NC (3RH19211CA01)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:47","2023-04-28 23:33:55","","");
INSERT INTO products VALUES("1818","AUX.CONTACT BLOCK 1NC [ 3TF30/3TH30 ]","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:47","2023-04-28 23:33:55","","");
INSERT INTO products VALUES("1819","AUX. CONTACT BLOCK 1 NO (3RH19211CA10)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:47","2023-04-28 23:33:55","","");
INSERT INTO products VALUES("1820","AUX. CONTACT BLOCK 1 NO+1NC of TIMER (KRTPN10 TIMER TYPE SP20S3)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:47","2023-04-28 23:33:56","","");
INSERT INTO products VALUES("1821","AUX.CONTACT BLOCK 1NO [ 3TF30/3TH30 ] (3TX40102A)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:48","2023-04-28 23:33:56","","");
INSERT INTO products VALUES("1822","CONTACT BLOCK 1 NC","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:48","2023-04-28 23:33:56","","");
INSERT INTO products VALUES("1823","CONTACT BLOCK 1 NO","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:48","2023-04-28 23:33:56","","");
INSERT INTO products VALUES("1824","CONTACT BLOCK FOR P.B. REAR CONNC. 1NC (3SB54000C
)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:48","2023-04-28 23:33:56","","");
INSERT INTO products VALUES("1825","CONTACT BLOCK FOR P.B. REAR CONNC. 1NO (3SB54000B
)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:48","2023-04-28 23:33:56","","");
INSERT INTO products VALUES("1826","CONTACT BLOCK REAR","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:48","2023-04-28 23:33:56","","");
INSERT INTO products VALUES("1827","CONTACT BLOCK REAR CONNECTION","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:48","2023-04-28 23:33:56","","");
INSERT INTO products VALUES("1828","CONTACTOR 2NO+2NC 230V AC(45A),3TF46020AP0ZA01","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:49","2023-04-28 23:33:56","","");
INSERT INTO products VALUES("1829","CONTACTOR 38AMP -24VAC , 3TF35000AB0","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:49","2023-04-28 23:33:56","","");
INSERT INTO products VALUES("1830","CONTACTOR 3 POLE MNX25 (CS94110)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:50","2023-04-28 23:33:56","","");
INSERT INTO products VALUES("1831","CONTACTOR ML1","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:50","2023-04-28 23:33:56","","");
INSERT INTO products VALUES("1832","CONTACTOR MNX32 (3POLE)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:50","2023-04-28 23:33:56","","");
INSERT INTO products VALUES("1833","CONTACTOR MNX (3POLE)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:50","2023-04-28 23:33:56","","");
INSERT INTO products VALUES("1834","CONTACTOR MNX40 (3POLE)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:50","2023-04-28 23:33:56","","");
INSERT INTO products VALUES("1835","CONTACTOR MNX 50 (3POLE)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:50","2023-04-28 23:33:57","","");
INSERT INTO products VALUES("1836","CONTACTOR MNX70 (3POLE) VOL 415V","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:50","2023-04-28 23:33:57","","");
INSERT INTO products VALUES("1837","C.T. 1600/5A","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:50","2023-04-28 23:33:57","","");
INSERT INTO products VALUES("1838","DO TOP CONTACT (SPARES FOR DO FUSE UNIT)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:50","2023-04-28 23:33:57","","");
INSERT INTO products VALUES("1839","FLWO CONECTOR 8X1/8","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:51","2023-04-28 23:33:57","","");
INSERT INTO products VALUES("1840","INTEG. LED LSU REAR CONN. 230V AC GREEN (3SB54007TE)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:51","2023-04-28 23:33:57","","");
INSERT INTO products VALUES("1841","INTEG. LED LSU REAR CONN. 230V AC RED (3SB54007TC)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:51","2023-04-28 23:33:57","","");
INSERT INTO products VALUES("1842","LUMINIOUS INDIACATOR PUSH BUTTON 220 V , YELLOW","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:51","2023-04-28 23:33:58","","");
INSERT INTO products VALUES("1843","PUSH BUTTON ACTUATOR WITH HOLDER GREEN (3SB50000AE01
)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:51","2023-04-28 23:33:58","","");
INSERT INTO products VALUES("1844","PUSH BUTTON ACTUATOR WITH HOLDER RED (3SB50000AC01
)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:51","2023-04-28 23:33:58","","");
INSERT INTO products VALUES("1845","SIEMENS MAKE SPARE CONTACT KIT 3TF46(45A)","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:51","2023-04-28 23:33:58","","");
INSERT INTO products VALUES("1846","SPARE CONTACTOR KIT 3TF33/43(22A) , 3TY74300A","9999","standard","C128","3","47","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-27 15:46:52","2023-04-28 23:33:58","","");
INSERT INTO products VALUES("1847","AUX. CONTACTOR SIZE 00 4 NO 230V AC , 3RH21401AP00","9999","standard","C128","3","48","1","1","1","15","20","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:28","2023-04-28 23:37:28","","");
INSERT INTO products VALUES("1848","BCH SPARE COIL FOR NHD CONTACTOR 220V AC","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:28","2023-04-28 23:37:28","","");
INSERT INTO products VALUES("1849","BREAK COIL 440 VOLT","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:28","2023-04-28 23:37:28","","");
INSERT INTO products VALUES("1850","COIL -06 - RAC220","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:28","2023-04-28 23:37:28","","");
INSERT INTO products VALUES("1851","CONTACTOR 0410 (3TF46)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:28","2023-04-28 23:37:28","","");
INSERT INTO products VALUES("1852","CONTACTOR 12 AMP (3RT1024-1AL20)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:28","2023-04-28 23:37:28","","");
INSERT INTO products VALUES("1853","CONTACTOR 17 AMP 230 V (3RT1025 -1AL20)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:28","2023-04-28 23:37:28","","");
INSERT INTO products VALUES("1854","CONTACTOR 22A 110V AC (3TF33000AF0)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:28","2023-04-28 23:37:28","","");
INSERT INTO products VALUES("1855","CONTACTOR 22A,3TH30, 110V,2NO+2NC","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:28","2023-04-28 23:37:28","","");
INSERT INTO products VALUES("1856","CONTACTOR  25A,230V, S0 (3RT1026-1AL20)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:28","2023-04-28 23:37:28","","");
INSERT INTO products VALUES("1857","CONTACTOR 32A ,230V (3RT10341AL20)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:29","2023-04-28 23:37:29","","");
INSERT INTO products VALUES("1858","CONTACTOR 3 POLE MNX22 (CS94980)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:29","2023-04-28 23:37:29","","");
INSERT INTO products VALUES("1859","CONTACTOR 3 POLE MNX32 (CS94111)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:29","2023-04-28 23:37:29","","");
INSERT INTO products VALUES("1860","CONTACTOR 3 POLE MNX40 (CS94190)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:29","2023-04-28 23:37:29","","");
INSERT INTO products VALUES("1861","CONTACTOR 3TF33,22A,110V","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:29","2023-04-28 23:37:29","","");
INSERT INTO products VALUES("1862","CONTACTOR 3TF34,32A,110V","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:29","2023-04-28 23:37:29","","");
INSERT INTO products VALUES("1863","CONTACTOR 3TF35 38A 110V (3TF35000AF0)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:29","2023-04-28 23:37:29","","");
INSERT INTO products VALUES("1864","CONTACTOR 3TF35, 38A 230V (3TF35000AP0)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:29","2023-04-28 23:37:29","","");
INSERT INTO products VALUES("1865","CONTACTOR 3TF477,70A 230V (3TF47720AP0
)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:29","2023-04-28 23:37:29","","");
INSERT INTO products VALUES("1866","CONTACTOR 3TF49,85A 230V (3TF49220AP0ZA01
)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:29","2023-04-28 23:37:29","","");
INSERT INTO products VALUES("1867","CONTACTOR 40 A 110 V AC","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:29","2023-04-28 23:37:29","","");
INSERT INTO products VALUES("1868","CONTACTOR 50A,230V (3RT1036-1AL20)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:29","2023-04-28 23:37:29","","");
INSERT INTO products VALUES("1869","CONTACTOR 63A  220V AC","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:29","2023-04-28 23:37:29","","");
INSERT INTO products VALUES("1870","CONTACTOR 65 AMP 230 V (3RT1044-1AL20)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:30","2023-04-28 23:37:30","","");
INSERT INTO products VALUES("1871","CONTACTOR 9A,SIZE 00 1NO , 230V AC (3RT20161AP01)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:30","2023-04-28 23:37:30","","");
INSERT INTO products VALUES("1872","CONTACTORE 15A","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:30","2023-04-28 23:37:30","","");
INSERT INTO products VALUES("1873","CONTACTOR ML2 (3POLE)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:30","2023-04-28 23:37:30","","");
INSERT INTO products VALUES("1874","CONTACTOR  MNX12,110V (CS94108)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:30","2023-04-28 23:37:30","","");
INSERT INTO products VALUES("1875","CONTACTOR MNX 18, 110V","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:31","2023-04-28 23:37:31","","");
INSERT INTO products VALUES("1876","CONTACTOR MNX22 (3POLE)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:31","2023-04-28 23:37:31","","");
INSERT INTO products VALUES("1877","CONTACTOR MNX25,45A,110V","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:31","2023-04-28 23:37:31","","");
INSERT INTO products VALUES("1878","CONTACTOR MNX45 (3POLE)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:31","2023-04-28 23:37:31","","");
INSERT INTO products VALUES("1879","CONTACTOR MNX45 (3POLE) VOLTAGE 415V","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:31","2023-04-28 23:37:31","","");
INSERT INTO products VALUES("1880","CONTACTOR MNX70 (3POLE)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:31","2023-04-28 23:37:31","","");
INSERT INTO products VALUES("1881","CONTACTOR MNX 9,110V","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:31","2023-04-28 23:37:31","","");
INSERT INTO products VALUES("1882","CONTACTOR TC 13210 / 48V","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:31","2023-04-28 23:37:31","","");
INSERT INTO products VALUES("1883","CONTROL CONTACTOR 2NO+2NC 230V AC(45A) (3TH30220AP0
)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:32","2023-04-28 23:37:32","","");
INSERT INTO products VALUES("1884","DIN CONNECTOR LED A-240","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:32","2023-04-28 23:37:32","","");
INSERT INTO products VALUES("1885","DIN CONNECTOR LED -D24","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:32","2023-04-28 23:37:32","","");
INSERT INTO products VALUES("1886","DO BOTTOM CONTACT (SPARES FOR DO FUSE UNIT)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:32","2023-04-28 23:37:32","","");
INSERT INTO products VALUES("1887","MAIN CONTACTOR 3TF477 (70A)3TY7477-OYA","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:32","2023-04-28 23:37:32","","");
INSERT INTO products VALUES("1888","P.U. CONNECTOR (AS PER SAMPLE)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:32","2023-04-28 23:37:32","","");
INSERT INTO products VALUES("1889","SIRIUS AUX. CONTACTOR 10AMP  2NO+2NC 230VAC (3RH21221AP00)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:32","2023-04-28 23:37:32","","");
INSERT INTO products VALUES("1890","SOLENOID COIL  4WE-06-230VAC","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:32","2023-04-28 23:37:32","","");
INSERT INTO products VALUES("1891","SOLENOID COIL A-240 20MM","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:32","2023-04-28 23:37:32","","");
INSERT INTO products VALUES("1892","SPARE COIL 3TF30/33/42/43, 230V (3TY74030A)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:32","2023-04-28 23:37:32","","");
INSERT INTO products VALUES("1893","SPARE COIL 3TF34/35/44/45, 230V (3TY74430A)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:32","2023-04-28 23:37:32","","");
INSERT INTO products VALUES("1894","SPARE COIL 3TF46/47/477, 230V (3TY74630A)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:32","2023-04-28 23:37:32","","");
INSERT INTO products VALUES("1895","SPARE COIL 3TF48/49, 230V","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:33","2023-04-28 23:37:33","","");
INSERT INTO products VALUES("1896","SPARE COIL for 3RT1034, 230V(S2) (3RT19345AL21)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:33","2023-04-28 23:37:33","","");
INSERT INTO products VALUES("1897","SPARE COIL for 3RT1035/36, 230V(S2) (3RT19355AL21)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:33","2023-04-28 23:37:33","","");
INSERT INTO products VALUES("1898","SPARE COIL for 3RT1044, 230V AC( S2 ) (3RT19445AL21)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:33","2023-04-28 23:37:33","","");
INSERT INTO products VALUES("1899","SPARE COIL for 3RT19455, 230V(S3) (3RT19455AL21)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:33","2023-04-28 23:37:33","","");
INSERT INTO products VALUES("1900","SPARE COIL for 3RT20 23/24/25, 230V(S0) (3RT29245AL21)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:33","2023-04-28 23:37:33","","");
INSERT INTO products VALUES("1901","SPARE COIL for 3RT2025, 415V AC( S0 ) (3RT29245AV01)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:33","2023-04-28 23:37:33","","");
INSERT INTO products VALUES("1902","SPARE COIL for 3RT20 26/27/28, 230V(S0) (3RT29265AL21)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:33","2023-04-28 23:37:33","","");
INSERT INTO products VALUES("1903","SPARE COIL MK-1 440VOLT","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:33","2023-04-28 23:37:33","","");
INSERT INTO products VALUES("1904","SPARE COIL ML 2/3 (SS90545 CONTACTOR)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:33","2023-04-28 23:37:33","","");
INSERT INTO products VALUES("1905","SPARE COIL MNX 45-80, 240V (CS94192 CONTACTOR)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:33","2023-04-28 23:37:33","","");
INSERT INTO products VALUES("1906","SPARE COIL MNX-45-80 415V","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:33","2023-04-28 23:37:33","","");
INSERT INTO products VALUES("1907","SPARE COIL MNX 9-40,110V (CS94105)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:34","2023-04-28 23:37:34","","");
INSERT INTO products VALUES("1908","SPARE COIL MNX 9-40, 240V","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:34","2023-04-28 23:37:34","","");
INSERT INTO products VALUES("1909","SPARE COIL MNXX 9-40 415V","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:34","2023-04-28 23:37:34","","");
INSERT INTO products VALUES("1910","SPARE CONTACT KIT 3TF53 (205A)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:34","2023-04-28 23:37:34","","");
INSERT INTO products VALUES("1911","SPARE KIT MNX12,110V","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:34","2023-04-28 23:37:34","","");
INSERT INTO products VALUES("1912","SPARE KIT MNX 18,110V","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:34","2023-04-28 23:37:34","","");
INSERT INTO products VALUES("1913","SPARE KIT MNX22","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:34","2023-04-28 23:37:34","","");
INSERT INTO products VALUES("1914","SPARE KIT MNX32","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:34","2023-04-28 23:37:34","","");
INSERT INTO products VALUES("1915","SPARE KIT  MNX 45","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:34","2023-04-28 23:37:34","","");
INSERT INTO products VALUES("1916","SPARE KIT  MNX 50","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:34","2023-04-28 23:37:34","","");
INSERT INTO products VALUES("1917","SPARE KIT  MNX 70","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:34","2023-04-28 23:37:34","","");
INSERT INTO products VALUES("1918","SPARE KIT MNX 9,110V","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:34","2023-04-28 23:37:34","","");
INSERT INTO products VALUES("1919","SPARE MAIN CONTACT KIT FOR 3TF46 , 45AMPS , 3TY7460-0YA","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:34","2023-04-28 23:37:34","","");
INSERT INTO products VALUES("1920","TERMNL BLOCK KIT MN2 (SS 9470)","9999","standard","C128","3","48","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:37:35","2023-04-28 23:37:35","","");
INSERT INTO products VALUES("1921","6A TOP 3PIN","9999","standard","C128","3","23","1","1","1","15","20","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:40:59","2023-04-28 23:42:13","","");
INSERT INTO products VALUES("1922","ANGLE HOLDER","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:40:59","2023-04-28 23:42:13","","");
INSERT INTO products VALUES("1923","BIG TORCH 3 CELL","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:40:59","2023-04-28 23:42:13","","");
INSERT INTO products VALUES("1924","BULB 100 WATT","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:40:59","2023-04-28 23:42:14","","");
INSERT INTO products VALUES("1925","CEILING ROSE","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:40:59","2023-04-28 23:42:14","","");
INSERT INTO products VALUES("1926","COMPACT LED LAMP 220/240 VAC (AMBER) (3SB52856HL03
)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:40:59","2023-04-28 23:42:14","","");
INSERT INTO products VALUES("1927","COMPACT LED LAMP 220/240 VAC (BLUE) (3SB52856HF03
)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:40:59","2023-04-28 23:42:14","","");
INSERT INTO products VALUES("1928","COMPACT LED LAMP 220/240 VAC (GREEN) (3SB52856HE03
)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:40:59","2023-04-28 23:42:14","","");
INSERT INTO products VALUES("1929","COMPACT LED LAMP 220/240 VAC (RED) (3SB52856HC03
)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:40:59","2023-04-28 23:42:15","","");
INSERT INTO products VALUES("1930","COMPACT LED LAMP 220/240 VAC (YELLOW) (3SB52856HD03
)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:00","2023-04-28 23:42:16","","");
INSERT INTO products VALUES("1931","COPPER BALLAST CHOCK 400 WT (400 WT CHOCK)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:00","2023-04-28 23:42:16","","");
INSERT INTO products VALUES("1932","DISTRIBUTION BOARD 16 WAY","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:00","2023-04-28 23:42:16","","");
INSERT INTO products VALUES("1933","ELECTRONIC IGNITOR","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:00","2023-04-28 23:42:16","","");
INSERT INTO products VALUES("1934","EXHAUST FAN 15&quot;","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:00","2023-04-28 23:41:00","","");
INSERT INTO products VALUES("1935","FLOAT SWITCH","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:00","2023-04-28 23:42:17","","");
INSERT INTO products VALUES("1936","FLOOD LIGHT 400W","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:00","2023-04-28 23:42:17","","");
INSERT INTO products VALUES("1937","FOOT SWITCH (DOUBLE)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:00","2023-04-28 23:42:17","","");
INSERT INTO products VALUES("1938","FOOT SWITCH ( SINGLE)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:00","2023-04-28 23:42:18","","");
INSERT INTO products VALUES("1939","FUSE 5A / 250V [ CO2 ] (S21.02.001.0189)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:00","2023-04-28 23:42:18","","");
INSERT INTO products VALUES("1940","FUSE 8A / 250V [ CO2 ] 0188 (S21.02.001.0188)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:00","2023-04-28 23:42:18","","");
INSERT INTO products VALUES("1941","FUSE DIN TYPE SIZE 00 500 V 125 A","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:00","2023-04-28 23:42:18","","");
INSERT INTO products VALUES("1942","FUSE DIN TYPE SIZE 00 500 V 160A","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:00","2023-04-28 23:42:18","","");
INSERT INTO products VALUES("1943","FUSE DIN TYPE SIZE - 1 ,500V,  250A (3NA71440RC)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:01","2023-04-28 23:42:19","","");
INSERT INTO products VALUES("1944","Fuse Din type Size - 2  500 C AC 400A (3NA72600RC
)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:01","2023-04-28 23:42:19","","");
INSERT INTO products VALUES("1945","HIGHWAY LIGHT 400W","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:01","2023-04-28 23:42:19","","");
INSERT INTO products VALUES("1946","HRC FUSE 400 AM/02","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:01","2023-04-28 23:42:20","","");
INSERT INTO products VALUES("1947","HRC FUSE LINK 125A","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:01","2023-04-28 23:42:20","","");
INSERT INTO products VALUES("1948","HRC FUSE LINK 32A 80KA","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:01","2023-04-28 23:42:20","","");
INSERT INTO products VALUES("1949","HRC FUSE LINK 63A","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:01","2023-04-28 23:42:20","","");
INSERT INTO products VALUES("1950","IGNITOR 400W","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:01","2023-04-28 23:42:20","","");
INSERT INTO products VALUES("1951","IGNITOR TYPE BJ IGN 5VA","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:01","2023-04-28 23:42:20","","");
INSERT INTO products VALUES("1952","ILLUMINATED MODULE GREEN 230VAC","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:01","2023-04-28 23:42:20","","");
INSERT INTO products VALUES("1953","ILLUMINATED MODULE RED 230V","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:01","2023-04-28 23:42:20","","");
INSERT INTO products VALUES("1954","ILLUMINATED RAISED PUSH BUTTON  GREEN (3SB52180LE010PQ0
)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:01","2023-04-28 23:42:21","","");
INSERT INTO products VALUES("1955","ILLUMINATED RAISED PUSH BUTTON RED (3SB52180LC010PQ0
)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:01","2023-04-28 23:42:21","","");
INSERT INTO products VALUES("1956","INDIPENDENT MOUNTING KIT FOR 3UA50 (3UX1418)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:02","2023-04-28 23:42:21","","");
INSERT INTO products VALUES("1957","INDOASIAN FUSE ,160AMP SIZE-00","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:02","2023-04-28 23:42:21","","");
INSERT INTO products VALUES("1958","INSULATOR SP65","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:02","2023-04-28 23:42:21","","");
INSERT INTO products VALUES("1959","KAJU CLIP 10MM","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:02","2023-04-28 23:42:21","","");
INSERT INTO products VALUES("1960","KAJU CLIP 12MM","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:04","2023-04-28 23:42:21","","");
INSERT INTO products VALUES("1961","KAJU CLIP 14MM","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:04","2023-04-28 23:42:21","","");
INSERT INTO products VALUES("1962","KAJU CLIP 16MM","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:04","2023-04-28 23:42:21","","");
INSERT INTO products VALUES("1963","KAJU CLIP 18MM","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:05","2023-04-28 23:42:21","","");
INSERT INTO products VALUES("1964","KAJU CLIP 20MM","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:05","2023-04-28 23:42:21","","");
INSERT INTO products VALUES("1965","KAJU CLIP 25MM","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:05","2023-04-28 23:42:22","","");
INSERT INTO products VALUES("1966","KAJU CLIP 5MM","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:05","2023-04-28 23:42:22","","");
INSERT INTO products VALUES("1967","KAJU CLIP 6MM","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:05","2023-04-28 23:42:22","","");
INSERT INTO products VALUES("1968","KAJU CLIP 8MM","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:05","2023-04-28 23:42:22","","");
INSERT INTO products VALUES("1969","LED 23 DFCDLPRO, LED LAMP 23W","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:06","2023-04-28 23:42:22","","");
INSERT INTO products VALUES("1970","LED BULB 9W","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:06","2023-04-28 23:42:22","","");
INSERT INTO products VALUES("1971","LED FLOOD LIGHT  150W","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:06","2023-04-28 23:42:22","","");
INSERT INTO products VALUES("1972","LED FLOOD LIGHT 160W","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:06","2023-04-28 23:42:23","","");
INSERT INTO products VALUES("1973","LED FLOOD LIGHT 200W","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:06","2023-04-28 23:42:23","","");
INSERT INTO products VALUES("1974","LED FLOOD LIGHT 250W","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:06","2023-04-28 23:42:23","","");
INSERT INTO products VALUES("1975","LED FLOODLIGHT 350W","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:06","2023-04-28 23:42:23","","");
INSERT INTO products VALUES("1976","LED HIGHBAY FITTING 165W","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:06","2023-04-28 23:42:23","","");
INSERT INTO products VALUES("1977","LED HIGHWAY FITTINGS 150W","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:07","2023-04-28 23:42:23","","");
INSERT INTO products VALUES("1978","LED LAMP INDICATOR 110 V , BLUE","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:07","2023-04-28 23:42:23","","");
INSERT INTO products VALUES("1979","LED LAMP INDICATOR 110 V , RED","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:07","2023-04-28 23:42:23","","");
INSERT INTO products VALUES("1980","LED LAMP INDICATOR 110 V , YELLOW","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:07","2023-04-28 23:42:24","","");
INSERT INTO products VALUES("1981","LED LAMP INDICATOR 220 V , BLUE","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:07","2023-04-28 23:42:24","","");
INSERT INTO products VALUES("1982","LED LAMP INDICATOR 220 V , RED","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:07","2023-04-28 23:42:24","","");
INSERT INTO products VALUES("1983","LED LAMP INDICATOR 220 V , YELLOW","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:07","2023-04-28 23:42:25","","");
INSERT INTO products VALUES("1984","LED PLUG 220 VAC","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:07","2023-04-28 23:42:25","","");
INSERT INTO products VALUES("1985","LED STREET LIGHT 150 W","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:07","2023-04-28 23:42:25","","");
INSERT INTO products VALUES("1986","LED TUBE LIGHT 20 W","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:07","2023-04-28 23:42:25","","");
INSERT INTO products VALUES("1987","LIGHTING ARRESTER","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:08","2023-04-28 23:42:25","","");
INSERT INTO products VALUES("1988","LIMIT SWITCH BCH 203","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:08","2023-04-28 23:42:26","","");
INSERT INTO products VALUES("1989","LIMIT SWITCH BOX ALU.","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:08","2023-04-28 23:42:26","","");
INSERT INTO products VALUES("1990","LIMIT SWITCH (LLGS)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:08","2023-04-28 23:42:26","","");
INSERT INTO products VALUES("1991","LIMIT SWITCH PC-603","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:08","2023-04-28 23:42:26","","");
INSERT INTO products VALUES("1992","LIMIT SWITCH TOP [ ITL 360VCT ]","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:08","2023-04-28 23:42:26","","");
INSERT INTO products VALUES("1993","LINE TESTER","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:10","2023-04-28 23:42:26","","");
INSERT INTO products VALUES("1994","LUMINIOUS INDIACATOR PUSH BUTTON 220 V , GREEN","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:41:10","2023-04-28 23:42:26","","");
INSERT INTO products VALUES("1995","EXHAUST FAN 15&quot;","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:17","2023-04-28 23:42:17","","");
INSERT INTO products VALUES("1996","LUMINIOUS INDIACATOR PUSH BUTTON 220 V , RED","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:26","2023-04-28 23:42:26","","");
INSERT INTO products VALUES("1997","METAL CLAD PLUG 3 POLE 30A (CSDBPTPN030)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:26","2023-04-28 23:42:26","","");
INSERT INTO products VALUES("1998","METAL CLAD PLUG &amp; SOCKET BOX 2P+E 20 A DP","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:26","2023-04-28 23:42:26","","");
INSERT INTO products VALUES("1999","METAL CLAD SOCKET 30A 2 POLE","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:26","2023-04-28 23:42:26","","");
INSERT INTO products VALUES("2000","METAL CLAD SOCKET 30A,3P","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:26","2023-04-28 23:42:26","","");
INSERT INTO products VALUES("2001","METAL CLAD SOCKET 30A 415V","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:26","2023-04-28 23:42:26","","");
INSERT INTO products VALUES("2002","METAL CLAD SOCKET 440 V 32 AMP","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:26","2023-04-28 23:42:26","","");
INSERT INTO products VALUES("2003","MH 400 W BALLAST","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:26","2023-04-28 23:42:26","","");
INSERT INTO products VALUES("2004","M H BALLAST 400 WT","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:27","2023-04-28 23:42:27","","");
INSERT INTO products VALUES("2005","M.H. LAMP 250 WT (LAMP 250 WT)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:27","2023-04-28 23:42:27","","");
INSERT INTO products VALUES("2006","M.H. LAMP 400 WT","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:27","2023-04-28 23:42:27","","");
INSERT INTO products VALUES("2007","M H LAMP HOLDER 400 WT (E40)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:27","2023-04-28 23:42:27","","");
INSERT INTO products VALUES("2008","MH/SV 250 W BALLAST (250 WT BALLAST)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:27","2023-04-28 23:42:27","","");
INSERT INTO products VALUES("2009","MODULER PLATE 12MM","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:27","2023-04-28 23:42:27","","");
INSERT INTO products VALUES("2010","MODULER PLATE 4MM","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:27","2023-04-28 23:42:27","","");
INSERT INTO products VALUES("2011","MODULER PLATE 8MM","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:27","2023-04-28 23:42:27","","");
INSERT INTO products VALUES("2012","NIGHT LAMP 15W","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:27","2023-04-28 23:42:27","","");
INSERT INTO products VALUES("2013","ONE SURFACE BOX 12 MODULER","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:27","2023-04-28 23:42:27","","");
INSERT INTO products VALUES("2014","ONE SURFACE BOX 2 MODULER","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:27","2023-04-28 23:42:27","","");
INSERT INTO products VALUES("2015","ONE SURFACE BOX 4 MODULER","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:27","2023-04-28 23:42:27","","");
INSERT INTO products VALUES("2016","ONE SURFACE BOX 8 MODULER","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:27","2023-04-28 23:42:27","","");
INSERT INTO products VALUES("2017","PENDENT HOLDER","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:27","2023-04-28 23:42:27","","");
INSERT INTO products VALUES("2018","PENDENT PUSH BUTTON 12 WAY","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:27","2023-04-28 23:42:27","","");
INSERT INTO products VALUES("2019","PENDENT PUSH BUTTON  8 WAY","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:28","2023-04-28 23:42:28","","");
INSERT INTO products VALUES("2020","PILOTS LAMP 22.5MM LED","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:28","2023-04-28 23:42:28","","");
INSERT INTO products VALUES("2021","PUSH BUTTON GREEN","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:28","2023-04-28 23:42:28","","");
INSERT INTO products VALUES("2022","PUSH BUTTON NC","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:28","2023-04-28 23:42:28","","");
INSERT INTO products VALUES("2023","PUSH BUTTON NO","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:28","2023-04-28 23:42:28","","");
INSERT INTO products VALUES("2024","PUSH BUTTON RED","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:28","2023-04-28 23:42:28","","");
INSERT INTO products VALUES("2025","PUSH BUTTON STATION BOX 2 WAY (2 WAY PUSH BUTTON)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:28","2023-04-28 23:42:28","","");
INSERT INTO products VALUES("2026","PUSH BUTTON STATION BOX 3 WAY","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:28","2023-04-28 23:42:28","","");
INSERT INTO products VALUES("2027","PUSH BUTTON YELLOW","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:29","2023-04-28 23:42:29","","");
INSERT INTO products VALUES("2028","PVC BOARD 10x12","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:29","2023-04-28 23:42:29","","");
INSERT INTO products VALUES("2029","PVC BOARD 4X3","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:29","2023-04-28 23:42:29","","");
INSERT INTO products VALUES("2030","PVC BOARD 4x4","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:29","2023-04-28 23:42:29","","");
INSERT INTO products VALUES("2031","PVC BOARD 6X4","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:29","2023-04-28 23:42:29","","");
INSERT INTO products VALUES("2032","PVC BOARD 6X8","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:29","2023-04-28 23:42:29","","");
INSERT INTO products VALUES("2033","PVC BOARD 7X4","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:29","2023-04-28 23:42:29","","");
INSERT INTO products VALUES("2034","PVC BOARD 8X10","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:29","2023-04-28 23:42:29","","");
INSERT INTO products VALUES("2035","PVC BOX (CASING PATTI)  4X4","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:29","2023-04-28 23:42:29","","");
INSERT INTO products VALUES("2036","PVC GRIP KADDI","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:29","2023-04-28 23:42:29","","");
INSERT INTO products VALUES("2037","PVC JOINTER 3/4''","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:29","2023-04-28 23:42:29","","");
INSERT INTO products VALUES("2038","PVC POWER CONNECTOR 4MM(ELEMEX)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:29","2023-04-28 23:42:29","","");
INSERT INTO products VALUES("2039","PVC TAPE","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:29","2023-04-28 23:42:29","","");
INSERT INTO products VALUES("2040","REV/FORWARD SWITCH 32A","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:30","2023-04-28 23:42:30","","");
INSERT INTO products VALUES("2041","ROTARY LIMIT SWITCH 48:1","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:30","2023-04-28 23:42:30","","");
INSERT INTO products VALUES("2042","ROTARY SWITCH 0198","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:30","2023-04-28 23:42:30","","");
INSERT INTO products VALUES("2043","ROTARY SWITCH 63A, 3P [ ON /OFF ] (TYPE SC63)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:30","2023-04-28 23:42:30","","");
INSERT INTO products VALUES("2044","SHED LIGHT MH 400W [BJHBIS]","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:30","2023-04-28 23:42:30","","");
INSERT INTO products VALUES("2045","SOCKET 16 AMP 3 PIN","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:30","2023-04-28 23:42:30","","");
INSERT INTO products VALUES("2046","SOCKET 20 AMP 2 POLE","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:30","2023-04-28 23:42:30","","");
INSERT INTO products VALUES("2047","SOCKET 32 AMP (3 PIN)","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:31","2023-04-28 23:42:31","","");
INSERT INTO products VALUES("2048","SOCKET 6AMP","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:31","2023-04-28 23:42:31","","");
INSERT INTO products VALUES("2049","SOCKET 6A[5PIN]","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:31","2023-04-28 23:42:31","","");
INSERT INTO products VALUES("2050","STREET LIGHT FITING400 WT WITH BALLAST","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:31","2023-04-28 23:42:31","","");
INSERT INTO products VALUES("2051","SWITCH 6A","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:31","2023-04-28 23:42:31","","");
INSERT INTO products VALUES("2052","TUBE LIGHT CHOCK 36-40 WT","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:31","2023-04-28 23:42:31","","");
INSERT INTO products VALUES("2053","TUBE LIGHT FRAME 40 WATT","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:31","2023-04-28 23:42:31","","");
INSERT INTO products VALUES("2054","TUBE LIGHT FRAME (PATTI )36 WATT","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:31","2023-04-28 23:42:31","","");
INSERT INTO products VALUES("2055","TUBE LIGHT ROD 36 WT","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:31","2023-04-28 23:42:31","","");
INSERT INTO products VALUES("2056","TUBE LIGHT ROD 40 WT","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:31","2023-04-28 23:42:31","","");
INSERT INTO products VALUES("2057","TUBE LIGHT STARTER","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:31","2023-04-28 23:42:31","","");
INSERT INTO products VALUES("2058","ZERO &quot;0&quot; W LED BULB","9999","standard","C128","3","23","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:42:31","2023-04-28 23:42:31","","");
INSERT INTO products VALUES("2059","10MM INLINE ALU LUG","9999","standard","C128","3","49","1","1","1","15","20","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:47","2023-04-28 23:44:47","","");
INSERT INTO products VALUES("2060","120SQMM IN LINE ALU LUG","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:48","2023-04-28 23:44:48","","");
INSERT INTO products VALUES("2061","1.5MMPIPE INSULATED LUG","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:48","2023-04-28 23:44:48","","");
INSERT INTO products VALUES("2062","16MM INLINE ALU LUG","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:48","2023-04-28 23:44:48","","");
INSERT INTO products VALUES("2063","25MM INLINE LUG","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:48","2023-04-28 23:44:48","","");
INSERT INTO products VALUES("2064","35MM INLINE ALU LUG","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:48","2023-04-28 23:44:48","","");
INSERT INTO products VALUES("2065","4MM INLINE ALU LUG","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:48","2023-04-28 23:44:48","","");
INSERT INTO products VALUES("2066","50MM INLINE ALU LUG","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:48","2023-04-28 23:44:48","","");
INSERT INTO products VALUES("2067","6MM INLINE ALU LUG","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:48","2023-04-28 23:44:48","","");
INSERT INTO products VALUES("2068","70 SQMM IN LINE ALU LUG","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:48","2023-04-28 23:44:48","","");
INSERT INTO products VALUES("2069","95SQMM IN LINE ALU LUG","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:48","2023-04-28 23:44:48","","");
INSERT INTO products VALUES("2070","ALLUMINIUM LUGS 630MM (RING)","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:48","2023-04-28 23:44:48","","");
INSERT INTO products VALUES("2071","ALLUMINIUM LUGS (RING) 120 MM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:48","2023-04-28 23:44:48","","");
INSERT INTO products VALUES("2072","ALLUMINIUM LUGS (RING) 150MM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:49","2023-04-28 23:44:49","","");
INSERT INTO products VALUES("2073","ALLUMINIUM LUGS RING 185 SQMM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:49","2023-04-28 23:44:49","","");
INSERT INTO products VALUES("2074","ALLUMINIUM LUGS RING 240SQMM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:49","2023-04-28 23:44:49","","");
INSERT INTO products VALUES("2075","ALLUMINIUM LUGS RING 25 MM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:49","2023-04-28 23:44:49","","");
INSERT INTO products VALUES("2076","ALLUMINIUM LUGS (RING) 300 SQMM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:49","2023-04-28 23:44:49","","");
INSERT INTO products VALUES("2077","ALLUMINIUM LUGS (RING) 35SQMM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:49","2023-04-28 23:44:49","","");
INSERT INTO products VALUES("2078","ALLUMINIUM LUGS (RING)50MM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:49","2023-04-28 23:44:49","","");
INSERT INTO products VALUES("2079","ALLUMINIUM LUGS (RING) 70 SQMM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:49","2023-04-28 23:44:49","","");
INSERT INTO products VALUES("2080","ALLUMINIUM LUGS (RING) 95 SQMM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:49","2023-04-28 23:44:49","","");
INSERT INTO products VALUES("2081","ALUMMINUM LUGS (RING )120MM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:49","2023-04-28 23:44:49","","");
INSERT INTO products VALUES("2082","ALUMMINUM LUGS (RING) 300MM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:49","2023-04-28 23:44:49","","");
INSERT INTO products VALUES("2083","COPPER LUG 120 SQMM (RING)","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:50","2023-04-28 23:44:50","","");
INSERT INTO products VALUES("2084","COPPER LUG 1 MM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:50","2023-04-28 23:44:50","","");
INSERT INTO products VALUES("2085","COPPER LUG 2.5 SQMM (RING)","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:50","2023-04-28 23:44:50","","");
INSERT INTO products VALUES("2086","COPPER LUG 35 SQMM (RING)","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:50","2023-04-28 23:44:50","","");
INSERT INTO products VALUES("2087","COPPER LUG 4 SQMM PIN","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:50","2023-04-28 23:44:50","","");
INSERT INTO products VALUES("2088","COPPER LUG 6SQ MM PIN","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:50","2023-04-28 23:44:50","","");
INSERT INTO products VALUES("2089","COPPER LUG 70 SQMM (RING)","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:50","2023-04-28 23:44:50","","");
INSERT INTO products VALUES("2090","COPPER LUG 95 SQMM (RING)","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:50","2023-04-28 23:44:50","","");
INSERT INTO products VALUES("2091","COPPER LUGS 16 SQMMRING","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:50","2023-04-28 23:44:50","","");
INSERT INTO products VALUES("2092","COPPER LUGS 2.5 MM PIN (COPPER LUG 2.5 MM)","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:50","2023-04-28 23:44:50","","");
INSERT INTO products VALUES("2093","COPPER LUGS 25SQMM RING","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:50","2023-04-28 23:44:50","","");
INSERT INTO products VALUES("2094","COPPER LUGS (PIN) 1.5 MM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:50","2023-04-28 23:44:50","","");
INSERT INTO products VALUES("2095","COPPER LUGS RING 10 SQMM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:50","2023-04-28 23:44:50","","");
INSERT INTO products VALUES("2096","COPPER LUGS RING 1.5 SQMM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:50","2023-04-28 23:44:50","","");
INSERT INTO products VALUES("2097","COPPER LUGS ( RING) 2.5 SQMM [ INSULATED ] (2.5 SQMM LUGS [RING] COPPER)","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:50","2023-04-28 23:44:50","","");
INSERT INTO products VALUES("2098","COPPER LUGS RING  4.6 SQMM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:51","2023-04-28 23:44:51","","");
INSERT INTO products VALUES("2099","COPPER LUGS RING 4 SQMM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:51","2023-04-28 23:44:51","","");
INSERT INTO products VALUES("2100","COPPER LUGS (RING) 50 SQMM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:51","2023-04-28 23:44:51","","");
INSERT INTO products VALUES("2101","COPPER LUGS RING 6 SQMM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:51","2023-04-28 23:44:51","","");
INSERT INTO products VALUES("2102","COPPER LUGS (U) 1.5 SQMM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:51","2023-04-28 23:44:51","","");
INSERT INTO products VALUES("2103","COPPER LUGS (U) 2.5 SQMM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:51","2023-04-28 23:44:51","","");
INSERT INTO products VALUES("2104","COPPER LUGS (U) 4 SQMM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:51","2023-04-28 23:44:51","","");
INSERT INTO products VALUES("2105","COPPER LUGS (U) 6 SQMM","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:51","2023-04-28 23:44:51","","");
INSERT INTO products VALUES("2106","COPPER LUGS [ RING ]1.5 SQMM [INSULATED]","9999","standard","C128","3","49","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:44:51","2023-04-28 23:44:51","","");
INSERT INTO products VALUES("2107","25A MCB AC BOX STANDARD","9999","standard","C128","3","51","1","1","1","15","20","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:37","2023-04-28 23:52:41","","");
INSERT INTO products VALUES("2108","ACB 4 POLE MDO ETU37WT 1600A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:37","2023-04-28 23:52:41","","");
INSERT INTO products VALUES("2109","DB SPN 12WAY DD (MCB DISTRIBUTION BOARD 12 WAY","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:37","2023-04-28 23:52:41","","");
INSERT INTO products VALUES("2110","MCB 1POLE 10A,5SL61107RC","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:37","2023-04-28 23:49:37","","");
INSERT INTO products VALUES("2111","MCB 1POLE 16A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:38","2023-04-28 23:52:41","","");
INSERT INTO products VALUES("2112","MCB 1 POLE 20A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:38","2023-04-28 23:52:42","","");
INSERT INTO products VALUES("2113","MCB 1 POLE 25A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:38","2023-04-28 23:52:42","","");
INSERT INTO products VALUES("2114","MCB 1POLE 32A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:38","2023-04-28 23:52:42","","");
INSERT INTO products VALUES("2115","MCB 1POLE 4A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:38","2023-04-28 23:52:42","","");
INSERT INTO products VALUES("2116","MCB 1POLE 63A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:38","2023-04-28 23:52:42","","");
INSERT INTO products VALUES("2117","MCB 1POLE 6A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:38","2023-04-28 23:52:43","","");
INSERT INTO products VALUES("2118","MCB 2 POLE 10A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:38","2023-04-28 23:52:43","","");
INSERT INTO products VALUES("2119","MCB 2POLE 16A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:38","2023-04-28 23:52:43","","");
INSERT INTO products VALUES("2120","MCB 2POLE 2A (5SL62027RC
)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:39","2023-04-28 23:52:43","","");
INSERT INTO products VALUES("2121","MCB 2 POLE 40A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:39","2023-04-28 23:52:43","","");
INSERT INTO products VALUES("2122","MCB 2POLE 6A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:39","2023-04-28 23:52:43","","");
INSERT INTO products VALUES("2123","MCB 3POLE 10A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:39","2023-04-28 23:52:43","","");
INSERT INTO products VALUES("2124","MCB 3POLE 16A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:39","2023-04-28 23:52:43","","");
INSERT INTO products VALUES("2125","MCB 3POLE 20A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:39","2023-04-28 23:52:43","","");
INSERT INTO products VALUES("2126","MCB 3POLE 25A","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:39","2023-04-28 23:49:39","","");
INSERT INTO products VALUES("2127","MCB 3POLE 2A","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:39","2023-04-28 23:49:39","","");
INSERT INTO products VALUES("2128","MCB 3POLE 32A","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:40","2023-04-28 23:49:40","","");
INSERT INTO products VALUES("2129","MCB 3POLE 40A","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:40","2023-04-28 23:49:40","","");
INSERT INTO products VALUES("2130","MCB 3POLE 50A (5SL63507RC
)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:40","2023-04-28 23:49:40","","");
INSERT INTO products VALUES("2131","MCB 3 POLE 63 A","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:40","2023-04-28 23:49:40","","");
INSERT INTO products VALUES("2132","MCB 3 POLE 6A","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:40","2023-04-28 23:49:40","","");
INSERT INTO products VALUES("2133","MCB 4POLE 10A","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:40","2023-04-28 23:49:40","","");
INSERT INTO products VALUES("2134","MCB 4POLE 16A","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:40","2023-04-28 23:49:40","","");
INSERT INTO products VALUES("2135","MCB 4POLE 32A","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:40","2023-04-28 23:49:40","","");
INSERT INTO products VALUES("2136","MCB 4POLE 40A","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:40","2023-04-28 23:49:40","","");
INSERT INTO products VALUES("2137","MCB 4POLE 50A (5SL64507RC
)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:40","2023-04-28 23:49:40","","");
INSERT INTO products VALUES("2138","MCB 4POLE 63A","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:40","2023-04-28 23:49:40","","");
INSERT INTO products VALUES("2139","MCB BOX 10 WAY","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:41","2023-04-28 23:49:41","","");
INSERT INTO products VALUES("2140","MCB CHANEL (PATTI)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:41","2023-04-28 23:49:41","","");
INSERT INTO products VALUES("2141","MCB CHANNLE PATTI D TYPE","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:41","2023-04-28 23:49:41","","");
INSERT INTO products VALUES("2142","MCB DISTIBUTION BOARD 8 WAY","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:41","2023-04-28 23:49:41","","");
INSERT INTO products VALUES("2143","MCB DISTRIBUTION 60x16WAY","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:41","2023-04-28 23:49:41","","");
INSERT INTO products VALUES("2144","MCCB 3P 25K 63-80A,3VT1 (3VT17082DC360AA0)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:41","2023-04-28 23:49:41","","");
INSERT INTO products VALUES("2145","MCCB 3P 25K 80-100A,3VT1 (3VT17102DC360AA0)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:41","2023-04-28 23:49:41","","");
INSERT INTO products VALUES("2146","MCCB 3P 25KA 100-125A,3VT1 (3VT17122DC360AA0)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:41","2023-04-28 23:49:41","","");
INSERT INTO products VALUES("2147","MCCB 3P 25KA 128-160A,3VT1 (3VT17162DC360AA0)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:41","2023-04-28 23:49:41","","");
INSERT INTO products VALUES("2148","MCCB 3P 25KA 13-16A,3VT1 (3VT17012DC360AA0)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:41","2023-04-28 23:49:41","","");
INSERT INTO products VALUES("2149","MCCB 3P 25KA 20-25A,3VT1 (3VT17922DC360AA0)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:41","2023-04-28 23:49:41","","");
INSERT INTO products VALUES("2150","MCCB 3P 25KA 32-40A,3VT1 (3VT17042DC360AA0)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:42","2023-04-28 23:49:42","","");
INSERT INTO products VALUES("2151","MCCB 3P 25KA 44-63A,3VT1 (3VT17062DC360AA0)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:42","2023-04-28 23:49:42","","");
INSERT INTO products VALUES("2152","MCCB 3P 36K 250A 3VT2 (3VT27252AA360AA0)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:42","2023-04-28 23:49:42","","");
INSERT INTO products VALUES("2153","MCCB 400A","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:42","2023-04-28 23:49:42","","");
INSERT INTO products VALUES("2154","MCCB 40 A (3POLE)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:42","2023-04-28 23:49:42","","");
INSERT INTO products VALUES("2155","MCCB W/O RELEASE 3P 36KA 630A,VT3 (3VT37 632 AA 360AAO)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:42","2023-04-28 23:49:42","","");
INSERT INTO products VALUES("2156","MICRO PORCESSOR RELEASE  630 A (3VT3 ETUDP 630 A MICRO PROSSOR)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:42","2023-04-28 23:49:42","","");
INSERT INTO products VALUES("2157","MICROPROCESSOR RELEASE ETU LP VT2 160A (ELE.TRIP ) (3VT92166AB00)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:42","2023-04-28 23:49:42","","");
INSERT INTO products VALUES("2158","MICROPROCESSOR RELEASE VT2 ETU DP 100A (3VT92106AC00
)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:42","2023-04-28 23:49:42","","");
INSERT INTO products VALUES("2159","MICROPROCESSOR RELEASE VT2 ETU DP 160A (3VT92166AC00)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:42","2023-04-28 23:49:42","","");
INSERT INTO products VALUES("2160","MICROPROCESSOR RELEASE VT2 ETU DP 250A (3VT92256AC00)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:43","2023-04-28 23:49:43","","");
INSERT INTO products VALUES("2161","MICROPROCESSOR RELEASE VT3  ETU DP 250A (3VT93256AC00)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:43","2023-04-28 23:49:43","","");
INSERT INTO products VALUES("2162","MICROPROCESSOR RELEASE VT3 ETU DP 400A (3VT93406AC00)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:43","2023-04-28 23:49:43","","");
INSERT INTO products VALUES("2163","RCCB 25A , 2POLE , 30MA , 5SV43120RC","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:43","2023-04-28 23:49:43","","");
INSERT INTO products VALUES("2164","RCCB 25A , 4POLE , 30MA","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:43","2023-04-28 23:49:43","","");
INSERT INTO products VALUES("2165","RCCB 40A , 2POLE , 30MA , 5SV43140RC","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:43","2023-04-28 23:49:43","","");
INSERT INTO products VALUES("2166","RCCB 40A , 4POLE , 30MA","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:43","2023-04-28 23:49:43","","");
INSERT INTO products VALUES("2167","RCCB 63A , 2POLE , 30MA , 5SV43160RC","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:43","2023-04-28 23:49:43","","");
INSERT INTO products VALUES("2168","RCCB 63A , 4POLE , 30MA","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:43","2023-04-28 23:49:43","","");
INSERT INTO products VALUES("2169","SPREADER LINK 3POLE VT2 (3VT92004ED300RC0)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:43","2023-04-28 23:49:43","","");
INSERT INTO products VALUES("2170","SPREADER LINK 3POLE VT3 (3VT93004ED300RC0)","9999","standard","C128","3","50","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:49:43","2023-04-28 23:49:43","","");
INSERT INTO products VALUES("2171","MCB 1POLE 10A,5SL61107RC","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:41","2023-04-28 23:52:41","","");
INSERT INTO products VALUES("2172","200KW DC DRIVE PANEL DCS 800-S01-0740-05","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:43","2023-04-28 23:52:43","","");
INSERT INTO products VALUES("2173","2X30 KWDC DRIVE PANEL DCS800-S02*0140-05","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:43","2023-04-28 23:52:43","","");
INSERT INTO products VALUES("2174","AMMETER 96X96, 100/5A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:43","2023-04-28 23:52:43","","");
INSERT INTO products VALUES("2175","AMMETER 96X96, 150/5A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:43","2023-04-28 23:52:43","","");
INSERT INTO products VALUES("2176","AMMETER 96X96, 250/5A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:43","2023-04-28 23:52:43","","");
INSERT INTO products VALUES("2177","AMMETER 96X96, 400/5A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:43","2023-04-28 23:52:43","","");
INSERT INTO products VALUES("2178","AMMETER SELECTOR SWITCH","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:44","2023-04-28 23:52:44","","");
INSERT INTO products VALUES("2179","AMMETER SELECTOR SWITCH 6A 4 POSITION (RASS6A4P)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:44","2023-04-28 23:52:44","","");
INSERT INTO products VALUES("2180","AMMETER WITH DIAL EQ96 1600/5A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:44","2023-04-28 23:52:44","","");
INSERT INTO products VALUES("2181","AMMETER WITH DIAL EQ96 200/5A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:44","2023-04-28 23:52:44","","");
INSERT INTO products VALUES("2182","AMMETER WITH DIAL EQ96 75/5A","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:44","2023-04-28 23:52:44","","");
INSERT INTO products VALUES("2183","AMMETOR CHANGE OVER SWITCH","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:44","2023-04-28 23:52:44","","");
INSERT INTO products VALUES("2184","ANALOG AMMETER (S 36.02.001.0109)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:44","2023-04-28 23:52:44","","");
INSERT INTO products VALUES("2185","ANALOG VOLT METER (0107) (S36.02.001.0107)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:44","2023-04-28 23:52:44","","");
INSERT INTO products VALUES("2186","ANALONG TIME SWITCH","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:44","2023-04-28 23:52:44","","");
INSERT INTO products VALUES("2187","BCH TIMER SBT100","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:44","2023-04-28 23:52:44","","");
INSERT INTO products VALUES("2188","BEVEL PROTECTOR 0-180 DEGREE","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:45","2023-04-28 23:52:45","","");
INSERT INTO products VALUES("2189","CITIREN SCA;E 2 TON TANGINS SCALE(WIRE LESS)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:45","2023-04-28 23:52:45","","");
INSERT INTO products VALUES("2190","CURRENT TRANSFORMER 100/5A (CT 100/5A, CL 1.0)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:45","2023-04-28 23:52:45","","");
INSERT INTO products VALUES("2191","CURRENT TRANSFORMER 150/5A (CT 150/5A, CL 1.0)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:45","2023-04-28 23:52:45","","");
INSERT INTO products VALUES("2192","CURRENT TRANSFORMER 250/5A (CT 250/5A, CL 1.0)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:45","2023-04-28 23:52:45","","");
INSERT INTO products VALUES("2193","CURRENT TRANSFORMER 400/5A (CT 400/5, CL 1.0)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:45","2023-04-28 23:52:45","","");
INSERT INTO products VALUES("2194","DIAL VERNIER CALIPER 150MM","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:45","2023-04-28 23:52:45","","");
INSERT INTO products VALUES("2195","DIGITAL CAOTING THICKNESS GAUGE 0-1500MM","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:45","2023-04-28 23:52:45","","");
INSERT INTO products VALUES("2196","DIGITAL CLAMP METER DT-2250Hz Auto","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:45","2023-04-28 23:52:45","","");
INSERT INTO products VALUES("2197","DIGITAL COATING THIK.GAUGE QNIX-4200","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:45","2023-04-28 23:52:45","","");
INSERT INTO products VALUES("2198","DIGITAL ENERGY METER EM 6400 CLASS 1 WITH  RS 485","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:45","2023-04-28 23:52:45","","");
INSERT INTO products VALUES("2199","DIGITAL MULTIMETER M-65","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:45","2023-04-28 23:52:45","","");
INSERT INTO products VALUES("2200","DIGITAL PANEL METER","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:45","2023-04-28 23:52:45","","");
INSERT INTO products VALUES("2201","DIGITAL PANEL METER 230V","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:45","2023-04-28 23:52:45","","");
INSERT INTO products VALUES("2202","DIGITAL PANEL METER (3.5)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:46","2023-04-28 23:52:46","","");
INSERT INTO products VALUES("2203","DIGITAL PANNEL METER","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:46","2023-04-28 23:52:46","","");
INSERT INTO products VALUES("2204","DIGITAL PH METER RANGE 1-14ph ( MODEL- Eco-05 )","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:46","2023-04-28 23:52:46","","");
INSERT INTO products VALUES("2205","DIGITAL TEMPERATURE CONTROLLER SIZE 96X96MM","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:46","2023-04-28 23:52:46","","");
INSERT INTO products VALUES("2206","DIGITAL TEMPERATURE INDICATOR SIZE 140x 80 x 420 MM","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:46","2023-04-28 23:52:46","","");
INSERT INTO products VALUES("2207","DIGITAL TEMPERATURE RECORDER","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:46","2023-04-28 23:52:46","","");
INSERT INTO products VALUES("2208","DIGITAL TEMP. INDI. K, RANGE  0-999 DEG. C","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:46","2023-04-28 23:52:46","","");
INSERT INTO products VALUES("2209","DIGITAL TEMPRACHER 230V","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:46","2023-04-28 23:52:46","","");
INSERT INTO products VALUES("2210","DIGITAL THERMOMETER 305 XL","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:47","2023-04-28 23:52:47","","");
INSERT INTO products VALUES("2211","EAPL TIMER A1D1-X (60M)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:47","2023-04-28 23:52:47","","");
INSERT INTO products VALUES("2212","EARTH TESTER MODEL CIE/222M","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:47","2023-04-28 23:52:47","","");
INSERT INTO products VALUES("2213","EARTH TESTING KIT 4 TERMINAL TYPE","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:47","2023-04-28 23:52:47","","");
INSERT INTO products VALUES("2214","EEE-TECH MULTIMETER MAS -830L","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:47","2023-04-28 23:52:47","","");
INSERT INTO products VALUES("2215","ELECTRONIC TIMER 800AX","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:47","2023-04-28 23:52:47","","");
INSERT INTO products VALUES("2216","GAUGE HOLDER FOR BEVEL PROTACTOR","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:47","2023-04-28 23:52:47","","");
INSERT INTO products VALUES("2217","HAND HELD THERMOMETER CIE-305","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:47","2023-04-28 23:52:47","","");
INSERT INTO products VALUES("2218","HYDROMETER 700-1000","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:47","2023-04-28 23:52:47","","");
INSERT INTO products VALUES("2219","MANUAL TENSIONER 32 MM","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:47","2023-04-28 23:52:47","","");
INSERT INTO products VALUES("2220","MULTIFUNCTIONAL METER PM 130EH+","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:47","2023-04-28 23:52:47","","");
INSERT INTO products VALUES("2221","MULTI FUNCTION METER EM6400","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:47","2023-04-28 23:52:47","","");
INSERT INTO products VALUES("2222","OFF DELAY TIMER 0.5-10S 24/240V (3RP15311AP308K
)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:47","2023-04-28 23:52:47","","");
INSERT INTO products VALUES("2223","ON DELAY TIMER 0.5-10S 24/240V (3RP15111AP308K
)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:47","2023-04-28 23:52:47","","");
INSERT INTO products VALUES("2224","PH METER ( TDS METER )","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:47","2023-04-28 23:52:47","","");
INSERT INTO products VALUES("2225","PRESSURE GAUGE SS 0-4000PSI 1/4BSP","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:48","2023-04-28 23:52:48","","");
INSERT INTO products VALUES("2226","PRESSURE GUAGE SS 0-1000PSI 63MM DIAL","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:48","2023-04-28 23:52:48","","");
INSERT INTO products VALUES("2227","PRESSURE GUAGE SS 100ES-B64-DB3/8'' BSPX10KG","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:48","2023-04-28 23:52:48","","");
INSERT INTO products VALUES("2228","RESISTANCE BOX 5.1KW RV-115, RA-27,","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:48","2023-04-28 23:52:48","","");
INSERT INTO products VALUES("2229","RESISTANCE BOX KW 1.5 ,RV-80, RA-13","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:48","2023-04-28 23:52:48","","");
INSERT INTO products VALUES("2230","RESISTANCE BOX KW 2 ,RV-115, RA-10.2","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:48","2023-04-28 23:52:48","","");
INSERT INTO products VALUES("2231","STAR DELTA TIMER 1-20SEC 240/440V (3RP15741NM208K
)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:48","2023-04-28 23:52:48","","");
INSERT INTO products VALUES("2232","STAR DELTA TIMER 200-240/380-440V (3RP15761NM208K
)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:48","2023-04-28 23:52:48","","");
INSERT INTO products VALUES("2233","STOP WATCH","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:48","2023-04-28 23:52:48","","");
INSERT INTO products VALUES("2234","THERMOSTAT ROD 200. C","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:48","2023-04-28 23:52:48","","");
INSERT INTO products VALUES("2235","TILTING &amp; SWIVELING VICE 4''","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:48","2023-04-28 23:52:48","","");
INSERT INTO products VALUES("2236","TIMER 60 SEC. 110V AV KRTPN10","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:48","2023-04-28 23:52:48","","");
INSERT INTO products VALUES("2237","TIMER MINILEC","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:48","2023-04-28 23:52:48","","");
INSERT INTO products VALUES("2238","UNIVERSAL VISE 4&quot;","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:48","2023-04-28 23:52:48","","");
INSERT INTO products VALUES("2239","UNIVERSAL VISE 6&quot;","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:48","2023-04-28 23:52:48","","");
INSERT INTO products VALUES("2240","VERNIER CALIPER 12&quot; (MANUAL)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:48","2023-04-28 23:52:48","","");
INSERT INTO products VALUES("2241","VERNIER CALIPER 8&quot;(MANUAL)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:48","2023-04-28 23:52:48","","");
INSERT INTO products VALUES("2242","VERNIER HEIGHT GAUGE 300MM","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:48","2023-04-28 23:52:48","","");
INSERT INTO products VALUES("2243","VOLT METER 0162","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:49","2023-04-28 23:52:49","","");
INSERT INTO products VALUES("2244","VOLTMETER 0-500V (96x96MM ) (500V 96x96)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:49","2023-04-28 23:52:49","","");
INSERT INTO products VALUES("2245","VOLTMETER 96X96 0-750 V AC","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:49","2023-04-28 23:52:49","","");
INSERT INTO products VALUES("2246","VOLTMETER SELECTOR SWITCH","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:49","2023-04-28 23:52:49","","");
INSERT INTO products VALUES("2247","VOLTMETER SELECTOR SWITCH 6A 4 POSITION (RVSS6A4P)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:49","2023-04-28 23:52:49","","");
INSERT INTO products VALUES("2248","WIRE WOUND POTATIOMETER 0084 (S21.06.02.0084)","9999","standard","C128","3","51","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:52:49","2023-04-28 23:52:49","","");
INSERT INTO products VALUES("2249","2.2 KW 3PH 50x40 K32LF PUMPMBK32LF","9999","standard","C128","3","52","1","1","1","15","20","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:33","2023-04-28 23:55:23","","");
INSERT INTO products VALUES("2250","3.70 KW 2P 3PH TEFC SCR  CAGE IND MOTOR 1E2","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:33","2023-04-28 23:55:23","","");
INSERT INTO products VALUES("2251","5 HP MOTOR 3.70KW 2 POLE (INDUCTION MOTOR 3PH IP55)","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:33","2023-04-28 23:55:23","","");
INSERT INTO products VALUES("2252","5 HP MOTOR 3.70KW 6 POLE (INDUCTION MOTOR 3PH IP55 (6 POLE))","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:34","2023-04-28 23:55:24","","");
INSERT INTO products VALUES("2253","5KW SERVO MOTOR POWER CONNECTOR","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:34","2023-04-28 23:55:24","","");
INSERT INTO products VALUES("2254","6 PIN USB CONNECTOR","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:34","2023-04-28 23:55:24","","");
INSERT INTO products VALUES("2255","AIR BLOWER WITH 5HP MOTOR","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:34","2023-04-28 23:55:24","","");
INSERT INTO products VALUES("2256","BARE PUMP MODEL EH-375 [ SCREW PUMP ]","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:34","2023-04-28 23:55:24","","");
INSERT INTO products VALUES("2257","CERAMIC SLEEVE 5 HP FOR PP PUMP","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:34","2023-04-28 23:55:24","","");
INSERT INTO products VALUES("2258","CG 0.5HP 1440RPM 3PHASE B-3 MNTG","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:34","2023-04-28 23:55:24","","");
INSERT INTO products VALUES("2259","CG 1 HP 2P 1PH 11/2x11/2&quot; MONO AGRL. MBJJ12(1PH)","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:35","2023-04-28 23:54:35","","");
INSERT INTO products VALUES("2260","COOLANT PUMP 36 LPM , HP 0.15 , KW 0.11 , RPM 2800","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:35","2023-04-28 23:55:24","","");
INSERT INTO products VALUES("2261","COOLANT PUMP HP 0.1 , KW 0.075 , RPM 2800","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:35","2023-04-28 23:55:24","","");
INSERT INTO products VALUES("2262","COOLANT PUMP IMPELLER","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:35","2023-04-28 23:55:24","","");
INSERT INTO products VALUES("2263","COOLANT PUMP WITH SWITCH 0.15HP 2800RPM 3PH","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:35","2023-04-28 23:55:24","","");
INSERT INTO products VALUES("2264","COOLER PUMP (SUBMERSIBLE PUMP SP-150)","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:35","2023-04-28 23:55:25","","");
INSERT INTO products VALUES("2265","DIRECTION VALVE DSG-01-2B2-D24-N1-50","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:36","2023-04-28 23:55:25","","");
INSERT INTO products VALUES("2266","DOL STARTER 8.9-13.5 , 415 V","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:36","2023-04-28 23:55:25","","");
INSERT INTO products VALUES("2267","ENDSHIELD DE FOR FARME 132","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:36","2023-04-28 23:55:25","","");
INSERT INTO products VALUES("2268","ENDSHIELD  NDE FOR 132 MOTOR","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:36","2023-04-28 23:55:25","","");
INSERT INTO products VALUES("2269","FOOT MOUNTED INDUCTION MOTOR 15 HP, 2900 RPM,","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:36","2023-04-28 23:55:25","","");
INSERT INTO products VALUES("2270","FURNACE OIL GEAR PUMP MODEL JPRB 300L","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:36","2023-04-28 23:55:25","","");
INSERT INTO products VALUES("2271","GEAR PUMP IP-3028","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:36","2023-04-28 23:55:25","","");
INSERT INTO products VALUES("2272","GEAR PUMP PG-1267-P-1-P-B-R-3080","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:36","2023-04-28 23:55:25","","");
INSERT INTO products VALUES("2273","HDPE ROLL PIPE 38MM","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:37","2023-04-28 23:55:25","","");
INSERT INTO products VALUES("2274","HIGH PRESSURSEE SRVICING MACHINE 2HP 3PHASE","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:37","2023-04-28 23:55:25","","");
INSERT INTO products VALUES("2275","HYD .JACK PUMP","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:37","2023-04-28 23:55:25","","");
INSERT INTO products VALUES("2276","HYDRAULIC PUMP , MODEL NO 25sCY14-1B","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:37","2023-04-28 23:55:25","","");
INSERT INTO products VALUES("2277","IMPELLER FOR PUMP KDS538+","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:37","2023-04-28 23:55:26","","");
INSERT INTO products VALUES("2278","INDUCTION MOTOR 3 PHASE, K.W.0.75, HP-1, RPM 1430","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:37","2023-04-28 23:55:26","","");
INSERT INTO products VALUES("2279","INDUCTION MOTOR 3 PHASE, K.W.5.2, HP-7, RPM 960","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:38","2023-04-28 23:55:26","","");
INSERT INTO products VALUES("2280","MECHANICAL SEAL 5 HP FOR PP PUMP","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:38","2023-04-28 23:55:26","","");
INSERT INTO products VALUES("2281","MONO BLOCK KDS 225 2 HP (3PH) (KIRLOSKAR KDS 225 2 HP)","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:38","2023-04-28 23:55:26","","");
INSERT INTO products VALUES("2282","MONO BLOCK KDS325,  3HP","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:38","2023-04-28 23:55:27","","");
INSERT INTO products VALUES("2283","MONOBLOCK PUMP 1.5 HP,25MMX 25MM (TULLU PUMP 1.5HP)","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:38","2023-04-28 23:55:27","","");
INSERT INTO products VALUES("2284","MONOBLOCK PUMP 1HP,2880RPM","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:38","2023-04-28 23:55:27","","");
INSERT INTO products VALUES("2285","MONOBLOCK PUMP 3HP KDS335 50X40","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:38","2023-04-28 23:55:27","","");
INSERT INTO products VALUES("2286","MONOBLOCK PUMP 5HP,2880RPM","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:38","2023-04-28 23:55:27","","");
INSERT INTO products VALUES("2287","MONOBLOCK PUMP 5HP,2900 RPM, KDS538+","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:38","2023-04-28 23:55:27","","");
INSERT INTO products VALUES("2288","MONOBLOCK PUMP  HP 50x40 CTG -14/5T","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:38","2023-04-28 23:55:27","","");
INSERT INTO products VALUES("2289","MONOBLOCK PUMP KDS 550 (5 HP 2900 RPM)","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:38","2023-04-28 23:55:27","","");
INSERT INTO products VALUES("2290","MOTOR 0.75 HP, 0.5KW, RPM 900, KD80,DUTY S4","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:38","2023-04-28 23:55:27","","");
INSERT INTO products VALUES("2291","MOTOR 10 HP 2880 RPM","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:38","2023-04-28 23:55:27","","");
INSERT INTO products VALUES("2292","MOTOR 15HP/11KW,RPM 1440","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:38","2023-04-28 23:55:27","","");
INSERT INTO products VALUES("2293","MOTOR 2.7HP,2KW,945RPM,FRAME KS112M (SLEEPRING MOTOR 2.7HP,2KW,910RPM)","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:39","2023-04-28 23:55:27","","");
INSERT INTO products VALUES("2294","MOTOR 2HP,1.5KW,870RPM,FRAME 100L623 (SLEEPRING MOTOR 2HP,1.5KW,870RPM)","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:39","2023-04-28 23:55:27","","");
INSERT INTO products VALUES("2295","MOTOR 30KW / 40HP, 1440RPM","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:39","2023-04-28 23:55:27","","");
INSERT INTO products VALUES("2296","MOTOR 3HP 1440 RPM","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:39","2023-04-28 23:55:28","","");
INSERT INTO products VALUES("2297","MOTOR 3HP, KW 2.2, RPM 925, KD100L, DUTY S4","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:39","2023-04-28 23:55:28","","");
INSERT INTO products VALUES("2298","MOTOR 3HP, KW 2.2, RPM 925, ND112M, DUTY S4","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:39","2023-04-28 23:55:28","","");
INSERT INTO products VALUES("2299","MOTOR 3 HP RPM 2880 3 PHASE B-3","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:40","2023-04-28 23:55:28","","");
INSERT INTO products VALUES("2300","MOTOR 5.2KW, RPM 953,FRAME VD132M","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:40","2023-04-28 23:55:28","","");
INSERT INTO products VALUES("2301","MOTOR 5.5KW ,7.5HP RPM 1000","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:40","2023-04-28 23:55:28","","");
INSERT INTO products VALUES("2302","MOTOR 5HP, 1440 RPM","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:40","2023-04-28 23:55:28","","");
INSERT INTO products VALUES("2303","MOTOR  5HP 900RMP","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:40","2023-04-28 23:55:28","","");
INSERT INTO products VALUES("2304","MOTOR 6.8HP,5.1KW,945RPM,FRAME KS132MC (SLEEPRING MOTOR 6.8HP,5.1KW,945RPM)","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:40","2023-04-28 23:55:28","","");
INSERT INTO products VALUES("2305","MOTOR 7.5KW,10HP RPM 1000","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:40","2023-04-28 23:55:28","","");
INSERT INTO products VALUES("2306","MOTOR CG15HP 1440 RPM 3 PH B5 TEFC","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:40","2023-04-28 23:55:28","","");
INSERT INTO products VALUES("2307","MS 3108F  20-29S (ANGULAR)","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:40","2023-04-28 23:55:28","","");
INSERT INTO products VALUES("2308","MS 3108F 20-4S (ANGULAR)","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:40","2023-04-28 23:55:28","","");
INSERT INTO products VALUES("2309","OIL GEAR PUMP with MOTOR 0.75KW / RPM 870","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:41","2023-04-28 23:55:28","","");
INSERT INTO products VALUES("2310","OPENWELL SUBMERSIBLE PUMP 2HP","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:41","2023-04-28 23:55:29","","");
INSERT INTO products VALUES("2311","PIPE VICE 1/2''-2''","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:41","2023-04-28 23:55:29","","");
INSERT INTO products VALUES("2312","PIPE VICE 1/2''-3''","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:41","2023-04-28 23:55:29","","");
INSERT INTO products VALUES("2313","PISTON PUMP  -2RCE-7CC-28","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:41","2023-04-28 23:55:29","","");
INSERT INTO products VALUES("2314","PISTON PUMP RP1E-5D","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:41","2023-04-28 23:55:29","","");
INSERT INTO products VALUES("2315","PP IMPELLER FOR PP-130/130H","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:42","2023-04-28 23:55:29","","");
INSERT INTO products VALUES("2316","PP-IMPELLER FOR PP-50/55/50R/40","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:42","2023-04-28 23:55:29","","");
INSERT INTO products VALUES("2317","P P PUMP 3 HP 2900 RPM","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:42","2023-04-28 23:55:29","","");
INSERT INTO products VALUES("2318","PP PUMP 5HP, 1440 RPM","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:42","2023-04-28 23:55:29","","");
INSERT INTO products VALUES("2319","PUMP IMPELLER","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:42","2023-04-28 23:55:29","","");
INSERT INTO products VALUES("2320","PUMPSET 5 HP 3.7/5.0 KW (65*50CF MB)","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:42","2023-04-28 23:55:29","","");
INSERT INTO products VALUES("2321","PU PINCHER BELT","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:43","2023-04-28 23:55:30","","");
INSERT INTO products VALUES("2322","PVR50-F-F-45-RAA-3180(VANE PUMP)","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:43","2023-04-28 23:55:30","","");
INSERT INTO products VALUES("2323","RADIAL PISTON PUMP -2RCE-7CC-50","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:43","2023-04-28 23:55:30","","");
INSERT INTO products VALUES("2324","SHAFT 5HP FOR PP PUMP","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:43","2023-04-28 23:55:30","","");
INSERT INTO products VALUES("2325","SLIPRING ID-35,OD-65,LENGTH-58MM","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:43","2023-04-28 23:55:30","","");
INSERT INTO products VALUES("2326","SOLENOID TOP CONNECTOR 24VDC","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:43","2023-04-28 23:55:30","","");
INSERT INTO products VALUES("2327","SUBMERSIBLE PUMP 10HP MODEL 50HHN1016","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:43","2023-04-28 23:55:30","","");
INSERT INTO products VALUES("2328","SUBMERSIBLE PUMP 5HP,38 STAGE,38MM","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:43","2023-04-28 23:55:30","","");
INSERT INTO products VALUES("2329","SUBMERSIBLE PUMP 7.5HP 18STAGE 3PHASE","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:43","2023-04-28 23:55:30","","");
INSERT INTO products VALUES("2330","SUBMERSIBLE PUMP MOTOR 5 HP 35 STAGE","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:43","2023-04-28 23:55:30","","");
INSERT INTO products VALUES("2331","T6C-B15-1R00-B1 VANE PUMP","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:43","2023-04-28 23:55:30","","");
INSERT INTO products VALUES("2332","TOOLU PUMP 0.5HP","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:54:43","2023-04-28 23:55:30","","");
INSERT INTO products VALUES("2333","CG 1 HP 2P 1PH 11/2x11/2&quot; MONO AGRL. MBJJ12(1PH)","9999","standard","C128","3","52","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-28 23:55:24","2023-04-28 23:55:24","","");
INSERT INTO products VALUES("2334","11 PIN RELAY SOCKET 110V","9999","standard","C128","3","54","1","1","1","15","20","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:05","2023-04-29 00:01:05","","");
INSERT INTO products VALUES("2335","3 RU BI-RELAY SIZE S00 RANGE 0.28-0.4 A (3RU21160EB0)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:05","2023-04-29 00:01:05","","");
INSERT INTO products VALUES("2336","BCH O/L RELAY 17-24AM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:05","2023-04-29 00:01:05","","");
INSERT INTO products VALUES("2337","BI-METAL RELAY 3UA RANGE 10-16A (3UA55002A)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:06","2023-04-29 00:01:06","","");
INSERT INTO products VALUES("2338","BIMETAL RELAY 3UA,RANGE 12.5 - 20A , 3UA55002B","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:06","2023-04-29 00:01:06","","");
INSERT INTO products VALUES("2339","BIMETAL RELAY 3UA,RANGE 16-25A , 3UA55002C","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:06","2023-04-29 00:01:06","","");
INSERT INTO products VALUES("2340","BI-METAL RELAY 3UA RANGE 8-12.5A (3UA50001K)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:06","2023-04-29 00:01:06","","");
INSERT INTO products VALUES("2341","BIMETAL RELAY WITH SINGLE PHASING","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:06","2023-04-29 00:01:06","","");
INSERT INTO products VALUES("2342","BIMETAL RELAY WITH SINGLE PHASING OD NO  34A 500","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:06","2023-04-29 00:01:06","","");
INSERT INTO products VALUES("2343","CONTACTOR 12A AC 3-5.5 KM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:06","2023-04-29 00:01:06","","");
INSERT INTO products VALUES("2344","CONTACTOR 17A AC-3 7.5KW","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:06","2023-04-29 00:01:06","","");
INSERT INTO products VALUES("2345","INDEPENDENT MOUNTING KIT for S0 RFLAY (3RU29263AA01
)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:06","2023-04-29 00:01:06","","");
INSERT INTO products VALUES("2346","LIMIT SWITCH (LLGSS)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:06","2023-04-29 00:01:06","","");
INSERT INTO products VALUES("2347","MICROPROCESSOR BASED O/L RELAY 25-100A (3RB20461EW1)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:06","2023-04-29 00:01:06","","");
INSERT INTO products VALUES("2348","MICROPROCESSOR BASED O/L RELAY 6-25A (3RB20361QW1)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:07","2023-04-29 00:01:07","","");
INSERT INTO products VALUES("2349","MICROPROCESSOR BASED O/L RELAY TRIP CLASS 10 13-50A (3RB20361UW1
)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:07","2023-04-29 00:01:07","","");
INSERT INTO products VALUES("2350","MICROPROCESSOR RELAY S0 3-12A , 3RB30261SB0","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:07","2023-04-29 00:01:07","","");
INSERT INTO products VALUES("2351","O/L RELAY 13-22 MK1","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:07","2023-04-29 00:01:07","","");
INSERT INTO products VALUES("2352","OVER LOAD RELAY","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:07","2023-04-29 00:01:07","","");
INSERT INTO products VALUES("2353","OVER LOAD RELAY 14-20A S2 (3RU1136-4BBO)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:07","2023-04-29 00:01:07","","");
INSERT INTO products VALUES("2354","OVER LOAD RELAY 17-25A (3RU21264 CB0)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:07","2023-04-29 00:01:07","","");
INSERT INTO products VALUES("2355","OVER LOAD RELAY 18-25A, S2 (3RU11364DB0)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:07","2023-04-29 00:01:07","","");
INSERT INTO products VALUES("2356","OVER LOAD RELAY 18-25A,S3 (3RU11464DBO)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:07","2023-04-29 00:01:07","","");
INSERT INTO products VALUES("2357","OVER LOAD RELAY 22-32A,S3 (3RU1146-4EBO)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:07","2023-04-29 00:01:07","","");
INSERT INTO products VALUES("2358","OVERLOAD RELAY 3UA 2-3.2A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:07","2023-04-29 00:01:07","","");
INSERT INTO products VALUES("2359","OVERLOAD RELAY 3UA, 6.3-10 A (3UA50001J)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:07","2023-04-29 00:01:07","","");
INSERT INTO products VALUES("2360","OVERLOAD RELAY 3UA RANGE 3.2-5A (3UA50001F)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:07","2023-04-29 00:01:07","","");
INSERT INTO products VALUES("2361","OVER LOAD RELAY 4.5-6.3A,S0 (3RU11261GB0)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:07","2023-04-29 00:01:07","","");
INSERT INTO products VALUES("2362","OVER LOAD RELAY 7-10A,S0 (3RU11261JB0)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:07","2023-04-29 00:01:07","","");
INSERT INTO products VALUES("2363","OVER LOAD RELAY 9.12.5A,S2 (3RU11361 KBO)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:07","2023-04-29 00:01:07","","");
INSERT INTO products VALUES("2364","OVER LOAD RELAY MN2 RANGE 14.0-23A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:08","2023-04-29 00:01:08","","");
INSERT INTO products VALUES("2365","OVER LOAD RELAY MN2 RANGE 20-33A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:08","2023-04-29 00:01:08","","");
INSERT INTO products VALUES("2366","OVER LOAD RELAY MN2 RANGE 2-3.3A (RELAY RANGE 2.0-3.3A)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:08","2023-04-29 00:01:08","","");
INSERT INTO products VALUES("2367","OVER LOAD RELAY MN2 RANGE 24-40A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:09","2023-04-29 00:01:09","","");
INSERT INTO products VALUES("2368","OVERLOAD RELAY MN2 RANGE 3-5A (RANGE 3.0 - 5A)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:09","2023-04-29 00:01:09","","");
INSERT INTO products VALUES("2369","OVERLOAD RELAY MN2 RANGE 4.5 - 7.5A (RANGE 4.5-7.5A)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:09","2023-04-29 00:01:09","","");
INSERT INTO products VALUES("2370","OVER LOAD RELAY MN2 RANGE 6.0-10A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:10","2023-04-29 00:01:10","","");
INSERT INTO products VALUES("2371","OVER LOAD RELAY MN2 RANGE 9.0-15A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:10","2023-04-29 00:01:10","","");
INSERT INTO products VALUES("2372","OVER LOAD RELAY P NO 3R411464EBO","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:10","2023-04-29 00:01:10","","");
INSERT INTO products VALUES("2373","OVERLOAD RELAY P NO3RU 11364BBO","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:10","2023-04-29 00:01:10","","");
INSERT INTO products VALUES("2374","OVER LOAD RELAY P NO 3RU11464DBBO","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:10","2023-04-29 00:01:10","","");
INSERT INTO products VALUES("2375","OVERLOAD RELAY ,RANGE 13-20 AMP","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:10","2023-04-29 00:01:10","","");
INSERT INTO products VALUES("2376","PLA RELAY (11 PIN 3NO+3NC) 110V AC","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:10","2023-04-29 00:01:10","","");
INSERT INTO products VALUES("2377","RALEAY 23-28A (3RUBI)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:10","2023-04-29 00:01:10","","");
INSERT INTO products VALUES("2378","RELAY 17-22A (3RUBI)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:10","2023-04-29 00:01:10","","");
INSERT INTO products VALUES("2379","RELAY 3RUBI 20-25A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:10","2023-04-29 00:01:10","","");
INSERT INTO products VALUES("2380","RELAY C.T.OPRATED 10-16A (3UC58305A)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:10","2023-04-29 00:01:10","","");
INSERT INTO products VALUES("2381","RELAY C.T.OPRATED 16-25A (3UC58305C)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:10","2023-04-29 00:01:10","","");
INSERT INTO products VALUES("2382","RELAY C.T.OPRATED 25-40A (3UC58305E)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:10","2023-04-29 00:01:10","","");
INSERT INTO products VALUES("2383","RELAY C.T.OPRATED 6.3-10A (3UC50305J)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:10","2023-04-29 00:01:10","","");
INSERT INTO products VALUES("2384","RELAY MK1, 06-10A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:10","2023-04-29 00:01:10","","");
INSERT INTO products VALUES("2385","RELAY MK1 6-10A (18%)(SS90035OOVO)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:10","2023-04-29 00:01:10","","");
INSERT INTO products VALUES("2386","RELAY MK 1, 9-14A(18%) (SS90035OOAO)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:11","2023-04-29 00:01:11","","");
INSERT INTO products VALUES("2387","RELAY MK-1 RANGE 2.5-4A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:11","2023-04-29 00:01:11","","");
INSERT INTO products VALUES("2388","RELAY MN2 14-23A(SS94144OODO)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:11","2023-04-29 00:01:11","","");
INSERT INTO products VALUES("2389","RELAY MN24.5-7.5A (SS94141OOUO)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:11","2023-04-29 00:01:11","","");
INSERT INTO products VALUES("2390","RELAY MN2 9-15A(SS94142OOBO)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:11","2023-04-29 00:01:11","","");
INSERT INTO products VALUES("2391","RELAY MOUNTING KIT MN -2","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:11","2023-04-29 00:01:11","","");
INSERT INTO products VALUES("2392","RELAY OF CNC MACHINE 8 PIN 24 V DC","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:11","2023-04-29 00:01:11","","");
INSERT INTO products VALUES("2393","SPARE COIL  ML2/3 CONTACTOR (CAT NO SS90545)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:11","2023-04-29 00:01:11","","");
INSERT INTO products VALUES("2394","SPARE COIL MNX 45-80, 110V (CAT NO CS94192)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:12","2023-04-29 00:01:12","","");
INSERT INTO products VALUES("2395","THERM OVERLOAD RELAY 17","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:12","2023-04-29 00:01:12","","");
INSERT INTO products VALUES("2396","33 KV DO BARREL with METAL PARTS","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:12","2023-04-29 00:01:12","","");
INSERT INTO products VALUES("2397","33 KV DO CONTACT FEMALE","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:12","2023-04-29 00:01:12","","");
INSERT INTO products VALUES("2398","33 KV DO CONTACT MALE","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:12","2023-04-29 00:01:12","","");
INSERT INTO products VALUES("2399","450M PENDESTAL HIGH FLO FAN","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:12","2023-04-29 00:01:12","","");
INSERT INTO products VALUES("2400","6 PIN PLUG (S 21.07.003.0334)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:12","2023-04-29 00:01:12","","");
INSERT INTO products VALUES("2401","800S X 80MS","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:13","2023-04-29 00:01:13","","");
INSERT INTO products VALUES("2402","AC BOX 20A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:13","2023-04-29 00:01:13","","");
INSERT INTO products VALUES("2403","AC DRIVE  (LTVF-C40016BAA)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:14","2023-04-29 00:01:14","","");
INSERT INTO products VALUES("2404","ADOPTER OF T.B.MN2","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:16","2023-04-29 00:01:16","","");
INSERT INTO products VALUES("2405","AIR BREAK 4POLE CONTACTOR","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:16","2023-04-29 00:01:16","","");
INSERT INTO products VALUES("2406","AIR BREAK (AUX) CONTOCTOR","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:16","2023-04-29 00:01:16","","");
INSERT INTO products VALUES("2407","ALLU. CASTING BLADE 30&quot; (24MM BORE)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:16","2023-04-29 00:01:16","","");
INSERT INTO products VALUES("2408","ALLU. FAN BLADE 36&quot;","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:17","2023-04-29 00:01:17","","");
INSERT INTO products VALUES("2409","AUTO SWITCH","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:17","2023-04-29 00:01:17","","");
INSERT INTO products VALUES("2410","AUXILIARY SWITCH BLOCK","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:17","2023-04-29 00:01:17","","");
INSERT INTO products VALUES("2411","A V R for DG","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:17","2023-04-29 00:01:17","","");
INSERT INTO products VALUES("2412","BATTARY 24V,32AH with CHARGER","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:17","2023-04-29 00:01:17","","");
INSERT INTO products VALUES("2413","BATTARY AT6-7(6V7AH/20HR)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:17","2023-04-29 00:01:17","","");
INSERT INTO products VALUES("2414","BATTERY  12 V  (HLL 800/130 AH)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:17","2023-04-29 00:01:17","","");
INSERT INTO products VALUES("2415","BATTERY 9 VOLT","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:17","2023-04-29 00:01:17","","");
INSERT INTO products VALUES("2416","BCH SPARE COIL 415V","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:17","2023-04-29 00:01:17","","");
INSERT INTO products VALUES("2417","BIMETAL RELAG WITH SINGLE","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:17","2023-04-29 00:01:17","","");
INSERT INTO products VALUES("2418","BLOWER 60 NO.","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:17","2023-04-29 00:01:17","","");
INSERT INTO products VALUES("2419","BUSBAR 1000 AM 4 POLE","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:17","2023-04-29 00:01:17","","");
INSERT INTO products VALUES("2420","BUTTON HOLDER","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:17","2023-04-29 00:01:17","","");
INSERT INTO products VALUES("2421","CARBON  BRUSH 18X7X6MM (WL)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:18","2023-04-29 00:01:18","","");
INSERT INTO products VALUES("2422","CARBON BRUSH 18X9.5X6MM(WL)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:18","2023-04-29 00:01:18","","");
INSERT INTO products VALUES("2423","CARBON BRUSH 20x9x7MM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:18","2023-04-29 00:01:18","","");
INSERT INTO products VALUES("2424","CARBON BRUSH 32X16X10MM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:18","2023-04-29 00:01:18","","");
INSERT INTO products VALUES("2425","CARBON BRUSH 32X18X10","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:18","2023-04-29 00:01:18","","");
INSERT INTO products VALUES("2426","CARBON BRUSH 32X18X9 (MC70)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:18","2023-04-29 00:01:18","","");
INSERT INTO products VALUES("2427","CARBON BRUSH 32X20X9.5MM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:18","2023-04-29 00:01:18","","");
INSERT INTO products VALUES("2428","CARBON HOLDER 1/4&quot;x3/8&quot;","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:18","2023-04-29 00:01:18","","");
INSERT INTO products VALUES("2429","CASING CAPING PATTI 1/2X7 FEET","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:18","2023-04-29 00:01:18","","");
INSERT INTO products VALUES("2430","CASING PATTI 25MM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:18","2023-04-29 00:01:18","","");
INSERT INTO products VALUES("2431","CELLING FAN 24''","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:18","2023-04-29 00:01:18","","");
INSERT INTO products VALUES("2432","CELLING FAN 48&quot;","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:19","2023-04-29 00:01:19","","");
INSERT INTO products VALUES("2433","CERAMIC BUSH for RESISTANCE BOX","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:19","2023-04-29 00:01:19","","");
INSERT INTO products VALUES("2434","CHANGE OVER 1600A,4POLE Without Encl.","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:19","2023-04-29 00:01:19","","");
INSERT INTO products VALUES("2435","CHANGE OVER 400A,4POLE Without Encl.","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:19","2023-04-29 00:01:19","","");
INSERT INTO products VALUES("2436","CHANGE OVER ON LOAD 100A [ W/o/Enlc.]","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:19","2023-04-29 00:01:19","","");
INSERT INTO products VALUES("2437","CHANGE OVER SWITCH (3STI400-2RQ08)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:19","2023-04-29 00:01:19","","");
INSERT INTO products VALUES("2438","CHANGE OVER SWITCH 100AMP","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:19","2023-04-29 00:01:19","","");
INSERT INTO products VALUES("2439","CHANGE OVER SWITCH 400A, with Encl","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:19","2023-04-29 00:01:19","","");
INSERT INTO products VALUES("2440","COLLING FAN 4''","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:19","2023-04-29 00:01:19","","");
INSERT INTO products VALUES("2441","COMMUNICATION CABLE 10MTR","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:19","2023-04-29 00:01:19","","");
INSERT INTO products VALUES("2442","CONNECTOR 1/4X8 MM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:20","2023-04-29 00:01:20","","");
INSERT INTO products VALUES("2443","CONNECTOR 2.5 SQMM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:20","2023-04-29 00:01:20","","");
INSERT INTO products VALUES("2444","CONNECTOR SC 1210","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:20","2023-04-29 00:01:20","","");
INSERT INTO products VALUES("2445","COOLING FAN 8&quot; , 230 VAC","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:20","2023-04-29 00:01:20","","");
INSERT INTO products VALUES("2446","COOLING FAN 8''","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:20","2023-04-29 00:01:20","","");
INSERT INTO products VALUES("2447","COOLING FAN (AS PER SAMLPE)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:20","2023-04-29 00:01:20","","");
INSERT INTO products VALUES("2448","COOLING FAN (OD 25 MM)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:20","2023-04-29 00:01:20","","");
INSERT INTO products VALUES("2449","COOLING FAN (OD 35 MM)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:20","2023-04-29 00:01:20","","");
INSERT INTO products VALUES("2450","COOLING FAN (OD 40MM)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:20","2023-04-29 00:01:20","","");
INSERT INTO products VALUES("2451","COPPER ROD 6MM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:20","2023-04-29 00:01:20","","");
INSERT INTO products VALUES("2452","COPPER STRIP 25 X 3MM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:20","2023-04-29 00:01:20","","");
INSERT INTO products VALUES("2453","COPPER WINDING WIRE  20.5 + 21.5 Sq","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:20","2023-04-29 00:01:20","","");
INSERT INTO products VALUES("2454","COPPER WINDING WIRE 20 SQMM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:20","2023-04-29 00:01:20","","");
INSERT INTO products VALUES("2455","COPPER WINDING WIRE 21+21.1/2 SQMM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:20","2023-04-29 00:01:20","","");
INSERT INTO products VALUES("2456","COPPER WINDING WIRE 22+2+22.1/2 SQMM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:21","2023-04-29 00:01:21","","");
INSERT INTO products VALUES("2457","COPPER WINDING WIRE 23 SQMM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:21","2023-04-29 00:01:21","","");
INSERT INTO products VALUES("2458","COPPER WINDING WIRE 24 SQMM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:21","2023-04-29 00:01:21","","");
INSERT INTO products VALUES("2459","COPPER WINDING WIRE 25 SQ","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:21","2023-04-29 00:01:21","","");
INSERT INTO products VALUES("2460","COPPER WINDING WIRE 26 SQ","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:21","2023-04-29 00:01:21","","");
INSERT INTO products VALUES("2461","COPPER WINDING WIRE 27 SQMM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:21","2023-04-29 00:01:21","","");
INSERT INTO products VALUES("2462","COPPER WINDING WIRE 32 SQMM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:21","2023-04-29 00:01:21","","");
INSERT INTO products VALUES("2463","COPPER WINDING WIRE 36 SQ","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:21","2023-04-29 00:01:21","","");
INSERT INTO products VALUES("2464","COPPER WIRE 21 NO.","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:21","2023-04-29 00:01:21","","");
INSERT INTO products VALUES("2465","COPPER WIRE 21X3 SE","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:21","2023-04-29 00:01:21","","");
INSERT INTO products VALUES("2466","COPPER WIRE 22 NO.","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:21","2023-04-29 00:01:21","","");
INSERT INTO products VALUES("2467","COPPER WIRE 24 NO","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:22","2023-04-29 00:01:22","","");
INSERT INTO products VALUES("2468","COTTON TAPE 1&quot;","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:22","2023-04-29 00:01:22","","");
INSERT INTO products VALUES("2469","CRIMPING TOOL 0.5TO 16 SQMM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:22","2023-04-29 00:01:22","","");
INSERT INTO products VALUES("2470","CRIMPING TOOL6 TO 50 SQMM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:22","2023-04-29 00:01:22","","");
INSERT INTO products VALUES("2471","C.T. 200/5A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:22","2023-04-29 00:01:22","","");
INSERT INTO products VALUES("2472","CT CONNECTOR","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:22","2023-04-29 00:01:22","","");
INSERT INTO products VALUES("2473","CURRENT TRANSFORMER","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:22","2023-04-29 00:01:22","","");
INSERT INTO products VALUES("2474","CURRENT TRANSFORMER 125/5A (P1790010RIS)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:22","2023-04-29 00:01:22","","");
INSERT INTO products VALUES("2475","CURRENT TRANSFORMER 160/5A (P1797112RIS)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:22","2023-04-29 00:01:22","","");
INSERT INTO products VALUES("2476","CURRENT TRANSFORMER 50/5A (P1793072R35)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:22","2023-04-29 00:01:22","","");
INSERT INTO products VALUES("2477","CURRENT TRANSFORMER 75/5A (P1790004 RIS)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:22","2023-04-29 00:01:22","","");
INSERT INTO products VALUES("2478","CURRENT TRANSFORMER RAT NO125/5A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2479","CURRENT TRANSFORMER RAT NO160/5A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2480","CURRENT TRANSFORMER RAT NO400/5A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2481","CURRENT TRANSFORMER RAT NO 75/5A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2482","CVT-5","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2483","CYCLE INSULATOR 2.5&quot;","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2484","D.C. AMMETER 0175","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2485","DIN TYPE FUSE 500V 100A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2486","DIN TYPE FUSE SIZE -1 500V  250A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2487","DIN TYPE FUSE SIZE -3 630A (3NA33720RC)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2488","DIODE","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2489","DISCHARGE ROD 33KV","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2490","D.O. FUSE 10 A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2491","D.O. FUSE  2.5 A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2492","D.O. FUSE 33 KV","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2493","DOL STARTAR 1.5-2.5A 415V","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2494","DOL STARTAR 6-9.3A 415V","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2495","DOL STARTER 2.5-4A MK-1","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2496","DOL STARTER  4-6.5A MK-1","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2497","DOL STARTER MK1, 6-10A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:23","2023-04-29 00:01:23","","");
INSERT INTO products VALUES("2498","DR. BACK VERNISH","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:24","2023-04-29 00:01:24","","");
INSERT INTO products VALUES("2499","DSL BUS BAR LED INDICATOR","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:24","2023-04-29 00:01:24","","");
INSERT INTO products VALUES("2500","EAPL TIMER A1DA-X","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:24","2023-04-29 00:01:24","","");
INSERT INTO products VALUES("2501","ELECTRICAL CONNECTOR 4WAY TERMINAL","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:24","2023-04-29 00:01:24","","");
INSERT INTO products VALUES("2502","ELECTRICAL HAND GLOVES 33KVA","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:24","2023-04-29 00:01:24","","");
INSERT INTO products VALUES("2503","ELECTRONIC EXLENSOMETER (2 MM )","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:24","2023-04-29 00:01:24","","");
INSERT INTO products VALUES("2504","ELECTRONIC TIMER (STAR DELTA) 03-120 SEC (2ASDTO)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:24","2023-04-29 00:01:24","","");
INSERT INTO products VALUES("2505","ELECTRONIC TRIP 4MT","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:24","2023-04-29 00:01:24","","");
INSERT INTO products VALUES("2506","ELEMEX CONNECTOR CST-2.5 (PVC POWER CONNECTOR 25 SQMM)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:24","2023-04-29 00:01:24","","");
INSERT INTO products VALUES("2507","ELEMEX CONNECTOR CST-6 (PVC POWER CONNECTOR 6 SQMM)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:24","2023-04-29 00:01:24","","");
INSERT INTO products VALUES("2508","ELMEX CONNECTOR 2.5 SQMM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:24","2023-04-29 00:01:24","","");
INSERT INTO products VALUES("2509","ENCODER COUPLING","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:24","2023-04-29 00:01:24","","");
INSERT INTO products VALUES("2510","EXHASUT FAN 9 &quot;","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:25","2023-04-29 00:01:25","","");
INSERT INTO products VALUES("2511","EXHAUST FAN 12''","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:25","2023-04-29 00:01:25","","");
INSERT INTO products VALUES("2512","EXHAUST FAN 18&quot;","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:25","2023-04-29 00:01:25","","");
INSERT INTO products VALUES("2513","EXJUST FAN 12&quot;","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:25","2023-04-29 00:01:25","","");
INSERT INTO products VALUES("2514","FAN BLADE 18 &quot;","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:25","2023-04-29 00:01:25","","");
INSERT INTO products VALUES("2515","FAN DC 24V","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:25","2023-04-29 00:01:25","","");
INSERT INTO products VALUES("2516","FAN FLOW 8&quot; (AXIAL)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:25","2023-04-29 00:01:25","","");
INSERT INTO products VALUES("2517","FAN REGULATOR","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:25","2023-04-29 00:01:25","","");
INSERT INTO products VALUES("2518","FAN REGULATOR  100W 2 MODULE STEP REGULATOR","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:25","2023-04-29 00:01:25","","");
INSERT INTO products VALUES("2519","FARMA KSB","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:25","2023-04-29 00:01:25","","");
INSERT INTO products VALUES("2520","FARMA  MONOSET","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:25","2023-04-29 00:01:25","","");
INSERT INTO products VALUES("2521","FUSE 20AMP","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:25","2023-04-29 00:01:25","","");
INSERT INTO products VALUES("2522","FUSE DIN TYPE 500V 200A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:25","2023-04-29 00:01:25","","");
INSERT INTO products VALUES("2523","FUSE PULLER (BIG) FOR DIN TYPE FUSES
 (3NX1011
)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:25","2023-04-29 00:01:25","","");
INSERT INTO products VALUES("2524","GLASS CLOTH 7","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:25","2023-04-29 00:01:25","","");
INSERT INTO products VALUES("2525","GLASS TAPE 1&quot;","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:26","2023-04-29 00:01:26","","");
INSERT INTO products VALUES("2526","GLASS TAPE 2&quot;","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:26","2023-04-29 00:01:26","","");
INSERT INTO products VALUES("2527","HBC FUSE LINK 25A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:26","2023-04-29 00:01:26","","");
INSERT INTO products VALUES("2528","HEATER IMMERSION 1.5KW  , 230 V","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:26","2023-04-29 00:01:26","","");
INSERT INTO products VALUES("2529","HEATER IMMERSION 2KW 6'' 1.25 BSP","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:26","2023-04-29 00:01:26","","");
INSERT INTO products VALUES("2530","HEATER PORCELAIN 32''X32MM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:26","2023-04-29 00:01:26","","");
INSERT INTO products VALUES("2531","HOLDER 250 WATT","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:26","2023-04-29 00:01:26","","");
INSERT INTO products VALUES("2532","HRC FUSE LINK 4A 80KA","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:26","2023-04-29 00:01:26","","");
INSERT INTO products VALUES("2533","HRC FUSE LINKS 500V","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:27","2023-04-29 00:01:27","","");
INSERT INTO products VALUES("2534","HRC FUSE LINKS SIZE 125A 80KA","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:27","2023-04-29 00:01:27","","");
INSERT INTO products VALUES("2535","HRC FUSE LINKS SIZE 63A 80 KA","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:27","2023-04-29 00:01:27","","");
INSERT INTO products VALUES("2536","ID FAN","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:27","2023-04-29 00:01:27","","");
INSERT INTO products VALUES("2537","INDIPENDENT MOUNTING KIT FOR SO RELAY (3RU2963AA01)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:27","2023-04-29 00:01:27","","");
INSERT INTO products VALUES("2538","KWH METER CLASS 1.0,240V CT2M","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:27","2023-04-29 00:01:27","","");
INSERT INTO products VALUES("2539","LINE FILTER PCB ASSLY-0068","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:28","2023-04-29 00:01:28","","");
INSERT INTO products VALUES("2540","LINER FOR 400AMPS MIG TORCH","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:28","2023-04-29 00:01:28","","");
INSERT INTO products VALUES("2541","LINER FOR 500AMPS MIG TORCH","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:28","2023-04-29 00:01:28","","");
INSERT INTO products VALUES("2542","L.T.CONTROL SWITCH 63A R/F","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:28","2023-04-29 00:01:28","","");
INSERT INTO products VALUES("2543","LUMINUS SELECTOR SWITCH ACTUATOR Green 2Position (3SB50012AE01)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:28","2023-04-29 00:01:28","","");
INSERT INTO products VALUES("2544","LUMINUS SELECTOR SWITCH ACTUATOR Red 2Position (3SB50012AC01)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:28","2023-04-29 00:01:28","","");
INSERT INTO products VALUES("2545","MAIN SWITCH 250AMP","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:28","2023-04-29 00:01:28","","");
INSERT INTO products VALUES("2546","MANCOOLER FAN 36&quot; (T)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:29","2023-04-29 00:01:29","","");
INSERT INTO products VALUES("2547","MCB CHANNEL PATTI 1 MTR D TYPE","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:29","2023-04-29 00:01:29","","");
INSERT INTO products VALUES("2548","MCB CHANNLE PATTI C TYPE","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:29","2023-04-29 00:01:29","","");
INSERT INTO products VALUES("2549","MCB DISTRIBUTION BOARD 6WAY","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:29","2023-04-29 00:01:29","","");
INSERT INTO products VALUES("2550","METAL CLAD SOCKET 20A, 2POLE (MS20)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:29","2023-04-29 00:01:29","","");
INSERT INTO products VALUES("2551","METAL SOCKET 20 A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:29","2023-04-29 00:01:29","","");
INSERT INTO products VALUES("2552","MICA PLATE 10X12","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:29","2023-04-29 00:01:29","","");
INSERT INTO products VALUES("2553","MICRO SWITCH (MR34P)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:29","2023-04-29 00:01:29","","");
INSERT INTO products VALUES("2554","MN X 50 3POLE","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:29","2023-04-29 00:01:29","","");
INSERT INTO products VALUES("2555","MODULAR PLATE 2 M","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:29","2023-04-29 00:01:29","","");
INSERT INTO products VALUES("2556","MOTAR TERMINAL 6 WAY","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:29","2023-04-29 00:01:29","","");
INSERT INTO products VALUES("2557","MOTOR COVER 10 HP [ MA13S253 M/c No.K1102353] (MOTOR COVER 10 HP OF BHARAT BIJLI)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:30","2023-04-29 00:01:30","","");
INSERT INTO products VALUES("2558","MOTOR COVER 10 HP [SDF/1204 2441132] (MOTOR COVER 10 HP OF  for 1LA0 131-2YA80 M/c)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:30","2023-04-29 00:01:30","","");
INSERT INTO products VALUES("2559","MULTIFUNCTION METER 7KT0310 (7KT0310)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:30","2023-04-29 00:01:30","","");
INSERT INTO products VALUES("2560","NOMEX  PAPER 5 MIL","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:30","2023-04-29 00:01:30","","");
INSERT INTO products VALUES("2561","NOMEX  PAPER 7 MIL","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:30","2023-04-29 00:01:30","","");
INSERT INTO products VALUES("2562","OIL HEATER 3KW","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:30","2023-04-29 00:01:30","","");
INSERT INTO products VALUES("2563","PANEL COOLING FAN  8&quot; SQUIRE","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:30","2023-04-29 00:01:30","","");
INSERT INTO products VALUES("2564","PANEL FAN REC AC 220V","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:30","2023-04-29 00:01:30","","");
INSERT INTO products VALUES("2565","PANEL LOCK KEY","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:30","2023-04-29 00:01:30","","");
INSERT INTO products VALUES("2566","PANNEL LOCK","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:30","2023-04-29 00:01:30","","");
INSERT INTO products VALUES("2567","PEDESTUAL FAN 24 &quot;","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:30","2023-04-29 00:01:30","","");
INSERT INTO products VALUES("2568","PENDENT PUSH BUTTON 6WAY","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:30","2023-04-29 00:01:30","","");
INSERT INTO products VALUES("2569","PEN THERMOMETER , TP -101","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:30","2023-04-29 00:01:30","","");
INSERT INTO products VALUES("2570","PIN INSULATOR 33KV","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:30","2023-04-29 00:01:30","","");
INSERT INTO products VALUES("2571","POST INSULATOR 33KV  SOLID CORE","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:31","2023-04-29 00:01:31","","");
INSERT INTO products VALUES("2572","POWER DISTRIBUTION PANEL WITH KEY","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:31","2023-04-29 00:01:31","","");
INSERT INTO products VALUES("2573","POWER FACTOR RELAY PFCR-120 MK HPL","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:31","2023-04-29 00:01:31","","");
INSERT INTO products VALUES("2574","POWER INSULATOR 60MM X 60MM [ ROUND ] (EPOXY INSULATOR 60MM)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:31","2023-04-29 00:01:31","","");
INSERT INTO products VALUES("2575","PROXIMITY SWITCH ( PS17-5DN )","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:31","2023-04-29 00:01:31","","");
INSERT INTO products VALUES("2576","PUSH BUTTON STATION  12 WAY","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:31","2023-04-29 00:01:31","","");
INSERT INTO products VALUES("2577","PUSH BUTTON STATION  8 WAY","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:31","2023-04-29 00:01:31","","");
INSERT INTO products VALUES("2578","PVC BOARD 12&quot;x12&quot;","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:31","2023-04-29 00:01:31","","");
INSERT INTO products VALUES("2579","PVC CASING PATTI 38MM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:31","2023-04-29 00:01:31","","");
INSERT INTO products VALUES("2580","PVC EXHAUST FAN 8''","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:31","2023-04-29 00:01:31","","");
INSERT INTO products VALUES("2581","PVC EXHUST FAN 12''","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:32","2023-04-29 00:01:32","","");
INSERT INTO products VALUES("2582","PVC FAN (AS PER SAMPLE)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:32","2023-04-29 00:01:32","","");
INSERT INTO products VALUES("2583","PVC JUNCTION BOX 1&quot;","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:32","2023-04-29 00:01:32","","");
INSERT INTO products VALUES("2584","PVC JUNCTION BOX 3/4&quot;","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:32","2023-04-29 00:01:32","","");
INSERT INTO products VALUES("2585","PVC JUNCTION BOX 4 WAY","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:32","2023-04-29 00:01:32","","");
INSERT INTO products VALUES("2586","PVC JUNCTION BOX D/3 WAY","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:32","2023-04-29 00:01:32","","");
INSERT INTO products VALUES("2587","PVC MOTOR COOLING FAN 20X100 MM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:32","2023-04-29 00:01:32","","");
INSERT INTO products VALUES("2588","PVC PLUG  16A 5 PIN","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:32","2023-04-29 00:01:32","","");
INSERT INTO products VALUES("2589","PVC POWER CONNECTOR 1.5SQMM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:32","2023-04-29 00:01:32","","");
INSERT INTO products VALUES("2590","PVC POWER CONNECTOR 16SQMM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:32","2023-04-29 00:01:32","","");
INSERT INTO products VALUES("2591","PVC POWER CONNECTOR 25SQMM (ELMEX)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:32","2023-04-29 00:01:32","","");
INSERT INTO products VALUES("2592","PVC SOCKET 16A 5PIN","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:32","2023-04-29 00:01:32","","");
INSERT INTO products VALUES("2593","RANGA 500 GM (16MM)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:32","2023-04-29 00:01:32","","");
INSERT INTO products VALUES("2594","READ SWITCH TYPE SENSOR  2WIRE (KT-50R-1MM)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:32","2023-04-29 00:01:32","","");
INSERT INTO products VALUES("2595","REFLECTOR ANODISED (BJHBI)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:32","2023-04-29 00:01:32","","");
INSERT INTO products VALUES("2596","REMOTE CONTROL (834) (S 15.01.002.0834)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:32","2023-04-29 00:01:32","","");
INSERT INTO products VALUES("2597","RESISTANCE FOR PUG MACHINE","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:32","2023-04-29 00:01:32","","");
INSERT INTO products VALUES("2598","REXNORD FAN 8&quot; SQUARE ,220 V AC","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:33","2023-04-29 00:01:33","","");
INSERT INTO products VALUES("2599","RISHABH &amp; BCH MAKE PANEL MATERIAL","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:33","2023-04-29 00:01:33","","");
INSERT INTO products VALUES("2600","ROTARY ENCODER KOYO TRD-2E2500V","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:33","2023-04-29 00:01:33","","");
INSERT INTO products VALUES("2601","ROTARY HAMMER 20MM (GSB200)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:33","2023-04-29 00:01:33","","");
INSERT INTO products VALUES("2602","SALECTOR ACTUATOR RED 2 POSI","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:34","2023-04-29 00:01:34","","");
INSERT INTO products VALUES("2603","SDF 25AM WITH ENCLOSER TPN","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:35","2023-04-29 00:01:35","","");
INSERT INTO products VALUES("2604","SDF/SFU 125 A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:35","2023-04-29 00:01:35","","");
INSERT INTO products VALUES("2605","SDF/SFU 160 A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:35","2023-04-29 00:01:35","","");
INSERT INTO products VALUES("2606","SDF/SFU 250 A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:35","2023-04-29 00:01:35","","");
INSERT INTO products VALUES("2607","SDF/SFU , 400A
 (3KL83411UA00
)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:35","2023-04-29 00:01:35","","");
INSERT INTO products VALUES("2608","SDF/SFU 630 A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:35","2023-04-29 00:01:35","","");
INSERT INTO products VALUES("2609","SDF TP DIN TYPE 100A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:35","2023-04-29 00:01:35","","");
INSERT INTO products VALUES("2610","SDF TP DIN TYPE 200A (3KL83111UA00)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:35","2023-04-29 00:01:35","","");
INSERT INTO products VALUES("2611","SDF TP DIN TYPE 32A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:35","2023-04-29 00:01:35","","");
INSERT INTO products VALUES("2612","SELECTOR SWITCH 2 POSITION","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:35","2023-04-29 00:01:35","","");
INSERT INTO products VALUES("2613","SELECTOR SWITCH 3 POSITION","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:35","2023-04-29 00:01:35","","");
INSERT INTO products VALUES("2614","SERVO DRIVE PANASONIC MODEL MDDHT3530E02","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:36","2023-04-29 00:01:36","","");
INSERT INTO products VALUES("2615","SERVO DRIVE PANASONIC MODEL NO. MFDHTB3A2CA1","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:36","2023-04-29 00:01:36","","");
INSERT INTO products VALUES("2616","SIEMENS MAKE PANEL MATERIAL","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:36","2023-04-29 00:01:36","","");
INSERT INTO products VALUES("2617","SILCA JEL","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:36","2023-04-29 00:01:36","","");
INSERT INTO products VALUES("2618","SILICON SLEEVE 1,2,3,4,5,6, &amp; 8 MM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:36","2023-04-29 00:01:36","","");
INSERT INTO products VALUES("2619","SILICON SLEEVING 1 NO","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:36","2023-04-29 00:01:36","","");
INSERT INTO products VALUES("2620","SILICON SLEEVING 2 N0","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:36","2023-04-29 00:01:36","","");
INSERT INTO products VALUES("2621","SILICON SLEEVING 3 NO.","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:36","2023-04-29 00:01:36","","");
INSERT INTO products VALUES("2622","SIREN","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:36","2023-04-29 00:01:36","","");
INSERT INTO products VALUES("2623","SMPS 10 A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:36","2023-04-29 00:01:36","","");
INSERT INTO products VALUES("2624","SMPS 16 A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:36","2023-04-29 00:01:36","","");
INSERT INTO products VALUES("2625","SOLDERING COPPER WIRE","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:37","2023-04-29 00:01:37","","");
INSERT INTO products VALUES("2626","SOLDERING WIRE 500GM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:37","2023-04-29 00:01:37","","");
INSERT INTO products VALUES("2627","SOLDRING IRON 250W","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:37","2023-04-29 00:01:37","","");
INSERT INTO products VALUES("2628","SOLDRING IRON 60W","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:37","2023-04-29 00:01:37","","");
INSERT INTO products VALUES("2629","SOLDRING PASTE","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:37","2023-04-29 00:01:37","","");
INSERT INTO products VALUES("2630","SOLDRING WIRE 50GM","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:37","2023-04-29 00:01:37","","");
INSERT INTO products VALUES("2631","SOLENAID COIL 220 V (1.02-101728)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:37","2023-04-29 00:01:37","","");
INSERT INTO products VALUES("2632","SPARE COIL 3TF30 -3TF33 24 V DC","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:37","2023-04-29 00:01:37","","");
INSERT INTO products VALUES("2633","SPARE  SPREADER LINK ASSY (ST98053)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:37","2023-04-29 00:01:37","","");
INSERT INTO products VALUES("2634","SPIRAL SW -12","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:37","2023-04-29 00:01:37","","");
INSERT INTO products VALUES("2635","SS 5X15 COM. ANCHOR DELUX","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:38","2023-04-29 00:01:38","","");
INSERT INTO products VALUES("2636","SS ENCLOSURE SIZE 3 ,200-400A SDF (3KX83454AC)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:38","2023-04-29 00:01:38","","");
INSERT INTO products VALUES("2637","STAND FAN 18 &quot;","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:38","2023-04-29 00:01:38","","");
INSERT INTO products VALUES("2638","STAND WIND CLOTH , WIND INDICATOR 2001374726","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:38","2023-04-29 00:01:38","","");
INSERT INTO products VALUES("2639","STARDELTA STARTER FOR 15HP/11KW","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:38","2023-04-29 00:01:38","","");
INSERT INTO products VALUES("2640","STAR DELTA TIMER 110C, 0-60SEC. , 3RP15761NQ308K","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:38","2023-04-29 00:01:38","","");
INSERT INTO products VALUES("2641","SWITCH 10A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:38","2023-04-29 00:01:38","","");
INSERT INTO products VALUES("2642","SWITCH 16 AMP","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:38","2023-04-29 00:01:38","","");
INSERT INTO products VALUES("2643","SWITCH 900628","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:38","2023-04-29 00:01:38","","");
INSERT INTO products VALUES("2644","SWITCH DISCONNECTOR FUSE DINE TYPE 400A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:38","2023-04-29 00:01:38","","");
INSERT INTO products VALUES("2645","SWITCH DISCONNECTOR FUSE DIN TYPE 125A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:38","2023-04-29 00:01:38","","");
INSERT INTO products VALUES("2646","SWITCH DISCONNECTOR FUSE DIN TYPE160A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:38","2023-04-29 00:01:38","","");
INSERT INTO products VALUES("2647","SWITCH DISCONNECTOR FUSE DIN TYPE 250A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:38","2023-04-29 00:01:38","","");
INSERT INTO products VALUES("2648","SWITCH DISCONNECTOR FUSE DIN TYPE 630A","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:38","2023-04-29 00:01:38","","");
INSERT INTO products VALUES("2649","SWITCH (EMERGENCY PUSH )","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:38","2023-04-29 00:01:38","","");
INSERT INTO products VALUES("2650","SWITCH FOR CNC (PROFAIL CUTTER M/C)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:39","2023-04-29 00:01:39","","");
INSERT INTO products VALUES("2651","TERMINAL BLOCK","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:39","2023-04-29 00:01:39","","");
INSERT INTO products VALUES("2652","TOOLU PUMP 1 HP (CROMPTON GREAVES 1 PH SINGLE PHASE)","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:39","2023-04-29 00:01:39","","");
INSERT INTO products VALUES("2653","TRIPLEX PAPER 7 NO","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:39","2023-04-29 00:01:39","","");
INSERT INTO products VALUES("2654","USB CABLE","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:39","2023-04-29 00:01:39","","");
INSERT INTO products VALUES("2655","WALL MOUNTING FAN 16&quot;","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:39","2023-04-29 00:01:39","","");
INSERT INTO products VALUES("2656","WATER COOLER  CAPACITY 80 LTRS","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:39","2023-04-29 00:01:39","","");
INSERT INTO products VALUES("2657","WINDOW AC","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:39","2023-04-29 00:01:39","","");
INSERT INTO products VALUES("2658","WINDOW COOLER","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:39","2023-04-29 00:01:39","","");
INSERT INTO products VALUES("2659","WINDOW COOLER 18&quot;","9999","standard","C128","3","54","1","1","1","15","15","0","","","","","","","","1","image","","","","","","","","","","","","","","","1","2023-04-29 00:01:39","2023-04-29 00:01:39","","");
INSERT INTO products VALUES("2660","demo product","95877648","standard","C128","3","1","17","17","17","5000","10000","0","90","10","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","1","2023-04-30 00:19:02","2023-04-30 00:19:02","2","4");
INSERT INTO products VALUES("2661","hdjd","999kdkd9","standard","C128","3","30","1","1","1","15","20","0","","","","","","","","1","zummXD2dvAtI.png","","","1","","","","","","","","","this is test product with variant","","","1","2023-04-30 03:50:17","2023-04-30 03:50:17","","");



CREATE TABLE `purchase_product_return` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO purchases VALUES("1","pr-20220731-072145","1","1","1","1","10","0","0","8000","0","0","200","500","8300","8300","1","2","","","2022-07-31 17:51:45","2022-07-31 18:06:45");
INSERT INTO purchases VALUES("2","pr-20230210-092433","1","1","2","1","5","0","0","4000","0","0","","","4000","0","1","1","","","2023-02-11 00:00:00","2023-02-10 21:24:33");
INSERT INTO purchases VALUES("3","pr-20230219-030247","1","1","2","1","1","0","0","800","9","72","","","872","872","1","2","","","2023-02-16 00:00:00","2023-02-19 15:03:06");



CREATE TABLE `quotations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO quotations VALUES("1","qr-20230406-110124","1","1","1","2","1","1","2","0","0","1800","0","0","","","1800","1","","","2023-04-06 23:01:24","2023-04-06 23:01:24");
INSERT INTO quotations VALUES("2","qr-20230430-121617","1","1","1","1","1","1","1","0","0","900","0","0","","","900","1","","","2023-04-30 00:16:17","2023-04-30 00:16:17");
INSERT INTO quotations VALUES("3","qr-20230430-015508","1","1","1","2","1","1","5","0","0","4500","0","0","","","4500","1","","","2023-04-30 13:55:08","2023-04-30 13:55:08");
INSERT INTO quotations VALUES("4","qr-20230430-015744","1","1","1","2","1","1","1","0","0","900","0","0","","","900","1","","","2023-04-30 13:57:44","2023-04-30 13:57:44");



CREATE TABLE `reconciliation_bills` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `approve` enum('accept','decline','na') NOT NULL DEFAULT 'na',
  `user_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `d_msg` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

INSERT INTO reconciliation_bills VALUES("1","5","1000","10","1","accept","1","1","2023-03-31 17:56:57","2023-04-01 21:50:25","Aute veniam quibusd");
INSERT INTO reconciliation_bills VALUES("2","1","1000","100","1","accept","1","1","2023-03-31 17:57:35","2023-04-06 15:46:32","i want to");
INSERT INTO reconciliation_bills VALUES("3","1","12344","12","1","na","1","1","2023-04-01 22:16:26","2023-04-01 22:16:26","");
INSERT INTO reconciliation_bills VALUES("4","3","1010","9","1","accept","1","1","2023-04-01 22:16:51","2023-04-06 15:46:41","");
INSERT INTO reconciliation_bills VALUES("5","4","12344","1233","1","na","1","1","2023-04-01 22:20:34","2023-04-01 22:20:34","");



CREATE TABLE `repair_maintenances` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `bill_no` varchar(100) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO repair_maintenances VALUES("1","2","65","9868989","1","1","1","2023-04-04 11:03:33","2023-04-04 11:27:25");
INSERT INTO repair_maintenances VALUES("2","2","5","7854215","1","1","0","2023-04-04 11:52:58","2023-04-04 11:53:17");
INSERT INTO repair_maintenances VALUES("3","3","2","ddhgeujd","1","1","1","2023-04-06 15:56:06","2023-04-06 15:56:06");
INSERT INTO repair_maintenances VALUES("4","4","2","w2","1","1","1","2023-05-08 18:24:10","2023-05-08 18:24:10");



CREATE TABLE `return_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO returns VALUES("1","rr-20220731-074830","1","1","","1","1","1","5","1","1","0","0","900","0","0","900","","","","2022-07-31 18:18:30","2022-07-31 18:18:30");



CREATE TABLE `reward_point_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `per_point_amount` double NOT NULL,
  `minimum_amount` double NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO reward_point_settings VALUES("1","300","1000","1","Year","1","2021-06-09 09:10:15","2022-07-31 16:59:38");



CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO role_has_permissions VALUES("4","1");
INSERT INTO role_has_permissions VALUES("4","2");
INSERT INTO role_has_permissions VALUES("4","4");
INSERT INTO role_has_permissions VALUES("4","6");
INSERT INTO role_has_permissions VALUES("5","1");
INSERT INTO role_has_permissions VALUES("5","2");
INSERT INTO role_has_permissions VALUES("5","6");
INSERT INTO role_has_permissions VALUES("6","1");
INSERT INTO role_has_permissions VALUES("6","2");
INSERT INTO role_has_permissions VALUES("6","4");
INSERT INTO role_has_permissions VALUES("6","6");
INSERT INTO role_has_permissions VALUES("7","1");
INSERT INTO role_has_permissions VALUES("7","2");
INSERT INTO role_has_permissions VALUES("7","4");
INSERT INTO role_has_permissions VALUES("7","6");
INSERT INTO role_has_permissions VALUES("7","10");
INSERT INTO role_has_permissions VALUES("8","1");
INSERT INTO role_has_permissions VALUES("8","2");
INSERT INTO role_has_permissions VALUES("8","4");
INSERT INTO role_has_permissions VALUES("8","6");
INSERT INTO role_has_permissions VALUES("9","1");
INSERT INTO role_has_permissions VALUES("9","2");
INSERT INTO role_has_permissions VALUES("9","4");
INSERT INTO role_has_permissions VALUES("9","6");
INSERT INTO role_has_permissions VALUES("10","1");
INSERT INTO role_has_permissions VALUES("10","2");
INSERT INTO role_has_permissions VALUES("10","6");
INSERT INTO role_has_permissions VALUES("11","1");
INSERT INTO role_has_permissions VALUES("11","2");
INSERT INTO role_has_permissions VALUES("11","6");
INSERT INTO role_has_permissions VALUES("12","1");
INSERT INTO role_has_permissions VALUES("12","2");
INSERT INTO role_has_permissions VALUES("12","4");
INSERT INTO role_has_permissions VALUES("12","6");
INSERT INTO role_has_permissions VALUES("13","1");
INSERT INTO role_has_permissions VALUES("13","2");
INSERT INTO role_has_permissions VALUES("13","4");
INSERT INTO role_has_permissions VALUES("13","6");
INSERT INTO role_has_permissions VALUES("14","1");
INSERT INTO role_has_permissions VALUES("14","2");
INSERT INTO role_has_permissions VALUES("14","6");
INSERT INTO role_has_permissions VALUES("15","1");
INSERT INTO role_has_permissions VALUES("15","2");
INSERT INTO role_has_permissions VALUES("15","6");
INSERT INTO role_has_permissions VALUES("16","1");
INSERT INTO role_has_permissions VALUES("16","6");
INSERT INTO role_has_permissions VALUES("16","10");
INSERT INTO role_has_permissions VALUES("17","1");
INSERT INTO role_has_permissions VALUES("17","2");
INSERT INTO role_has_permissions VALUES("17","6");
INSERT INTO role_has_permissions VALUES("18","1");
INSERT INTO role_has_permissions VALUES("18","2");
INSERT INTO role_has_permissions VALUES("18","6");
INSERT INTO role_has_permissions VALUES("19","1");
INSERT INTO role_has_permissions VALUES("19","2");
INSERT INTO role_has_permissions VALUES("19","6");
INSERT INTO role_has_permissions VALUES("20","1");
INSERT INTO role_has_permissions VALUES("20","2");
INSERT INTO role_has_permissions VALUES("20","4");
INSERT INTO role_has_permissions VALUES("20","6");
INSERT INTO role_has_permissions VALUES("21","1");
INSERT INTO role_has_permissions VALUES("21","2");
INSERT INTO role_has_permissions VALUES("21","4");
INSERT INTO role_has_permissions VALUES("21","6");
INSERT INTO role_has_permissions VALUES("22","1");
INSERT INTO role_has_permissions VALUES("22","2");
INSERT INTO role_has_permissions VALUES("22","4");
INSERT INTO role_has_permissions VALUES("22","6");
INSERT INTO role_has_permissions VALUES("23","1");
INSERT INTO role_has_permissions VALUES("23","2");
INSERT INTO role_has_permissions VALUES("23","6");
INSERT INTO role_has_permissions VALUES("24","1");
INSERT INTO role_has_permissions VALUES("24","2");
INSERT INTO role_has_permissions VALUES("24","4");
INSERT INTO role_has_permissions VALUES("24","6");
INSERT INTO role_has_permissions VALUES("25","1");
INSERT INTO role_has_permissions VALUES("25","2");
INSERT INTO role_has_permissions VALUES("25","4");
INSERT INTO role_has_permissions VALUES("25","6");
INSERT INTO role_has_permissions VALUES("26","1");
INSERT INTO role_has_permissions VALUES("26","2");
INSERT INTO role_has_permissions VALUES("26","6");
INSERT INTO role_has_permissions VALUES("27","1");
INSERT INTO role_has_permissions VALUES("27","2");
INSERT INTO role_has_permissions VALUES("27","6");
INSERT INTO role_has_permissions VALUES("28","1");
INSERT INTO role_has_permissions VALUES("28","2");
INSERT INTO role_has_permissions VALUES("28","4");
INSERT INTO role_has_permissions VALUES("28","6");
INSERT INTO role_has_permissions VALUES("29","1");
INSERT INTO role_has_permissions VALUES("29","2");
INSERT INTO role_has_permissions VALUES("29","4");
INSERT INTO role_has_permissions VALUES("29","6");
INSERT INTO role_has_permissions VALUES("30","1");
INSERT INTO role_has_permissions VALUES("30","2");
INSERT INTO role_has_permissions VALUES("30","6");
INSERT INTO role_has_permissions VALUES("31","1");
INSERT INTO role_has_permissions VALUES("31","2");
INSERT INTO role_has_permissions VALUES("31","6");
INSERT INTO role_has_permissions VALUES("32","1");
INSERT INTO role_has_permissions VALUES("32","2");
INSERT INTO role_has_permissions VALUES("32","6");
INSERT INTO role_has_permissions VALUES("33","1");
INSERT INTO role_has_permissions VALUES("33","2");
INSERT INTO role_has_permissions VALUES("33","6");
INSERT INTO role_has_permissions VALUES("34","1");
INSERT INTO role_has_permissions VALUES("34","2");
INSERT INTO role_has_permissions VALUES("34","6");
INSERT INTO role_has_permissions VALUES("35","1");
INSERT INTO role_has_permissions VALUES("35","2");
INSERT INTO role_has_permissions VALUES("35","6");
INSERT INTO role_has_permissions VALUES("36","1");
INSERT INTO role_has_permissions VALUES("36","2");
INSERT INTO role_has_permissions VALUES("36","6");
INSERT INTO role_has_permissions VALUES("37","1");
INSERT INTO role_has_permissions VALUES("37","2");
INSERT INTO role_has_permissions VALUES("37","6");
INSERT INTO role_has_permissions VALUES("38","1");
INSERT INTO role_has_permissions VALUES("38","2");
INSERT INTO role_has_permissions VALUES("38","6");
INSERT INTO role_has_permissions VALUES("39","1");
INSERT INTO role_has_permissions VALUES("39","2");
INSERT INTO role_has_permissions VALUES("39","6");
INSERT INTO role_has_permissions VALUES("40","1");
INSERT INTO role_has_permissions VALUES("40","2");
INSERT INTO role_has_permissions VALUES("40","6");
INSERT INTO role_has_permissions VALUES("41","1");
INSERT INTO role_has_permissions VALUES("41","2");
INSERT INTO role_has_permissions VALUES("41","6");
INSERT INTO role_has_permissions VALUES("42","1");
INSERT INTO role_has_permissions VALUES("42","6");
INSERT INTO role_has_permissions VALUES("43","1");
INSERT INTO role_has_permissions VALUES("43","6");
INSERT INTO role_has_permissions VALUES("44","1");
INSERT INTO role_has_permissions VALUES("44","6");
INSERT INTO role_has_permissions VALUES("45","1");
INSERT INTO role_has_permissions VALUES("45","2");
INSERT INTO role_has_permissions VALUES("45","6");
INSERT INTO role_has_permissions VALUES("46","1");
INSERT INTO role_has_permissions VALUES("46","2");
INSERT INTO role_has_permissions VALUES("46","6");
INSERT INTO role_has_permissions VALUES("47","1");
INSERT INTO role_has_permissions VALUES("47","2");
INSERT INTO role_has_permissions VALUES("47","6");
INSERT INTO role_has_permissions VALUES("48","1");
INSERT INTO role_has_permissions VALUES("48","2");
INSERT INTO role_has_permissions VALUES("48","6");
INSERT INTO role_has_permissions VALUES("49","1");
INSERT INTO role_has_permissions VALUES("49","2");
INSERT INTO role_has_permissions VALUES("49","6");
INSERT INTO role_has_permissions VALUES("50","1");
INSERT INTO role_has_permissions VALUES("50","2");
INSERT INTO role_has_permissions VALUES("50","6");
INSERT INTO role_has_permissions VALUES("51","1");
INSERT INTO role_has_permissions VALUES("51","2");
INSERT INTO role_has_permissions VALUES("51","6");
INSERT INTO role_has_permissions VALUES("52","1");
INSERT INTO role_has_permissions VALUES("52","2");
INSERT INTO role_has_permissions VALUES("52","6");
INSERT INTO role_has_permissions VALUES("53","1");
INSERT INTO role_has_permissions VALUES("53","2");
INSERT INTO role_has_permissions VALUES("53","6");
INSERT INTO role_has_permissions VALUES("54","1");
INSERT INTO role_has_permissions VALUES("54","2");
INSERT INTO role_has_permissions VALUES("54","6");
INSERT INTO role_has_permissions VALUES("55","1");
INSERT INTO role_has_permissions VALUES("55","2");
INSERT INTO role_has_permissions VALUES("55","4");
INSERT INTO role_has_permissions VALUES("55","6");
INSERT INTO role_has_permissions VALUES("56","1");
INSERT INTO role_has_permissions VALUES("56","2");
INSERT INTO role_has_permissions VALUES("56","4");
INSERT INTO role_has_permissions VALUES("56","6");
INSERT INTO role_has_permissions VALUES("57","1");
INSERT INTO role_has_permissions VALUES("57","2");
INSERT INTO role_has_permissions VALUES("57","4");
INSERT INTO role_has_permissions VALUES("57","6");
INSERT INTO role_has_permissions VALUES("58","1");
INSERT INTO role_has_permissions VALUES("58","2");
INSERT INTO role_has_permissions VALUES("58","6");
INSERT INTO role_has_permissions VALUES("59","1");
INSERT INTO role_has_permissions VALUES("59","2");
INSERT INTO role_has_permissions VALUES("59","6");
INSERT INTO role_has_permissions VALUES("60","1");
INSERT INTO role_has_permissions VALUES("60","2");
INSERT INTO role_has_permissions VALUES("60","6");
INSERT INTO role_has_permissions VALUES("61","1");
INSERT INTO role_has_permissions VALUES("61","2");
INSERT INTO role_has_permissions VALUES("61","6");
INSERT INTO role_has_permissions VALUES("62","1");
INSERT INTO role_has_permissions VALUES("62","2");
INSERT INTO role_has_permissions VALUES("62","6");
INSERT INTO role_has_permissions VALUES("63","1");
INSERT INTO role_has_permissions VALUES("63","2");
INSERT INTO role_has_permissions VALUES("63","4");
INSERT INTO role_has_permissions VALUES("63","6");
INSERT INTO role_has_permissions VALUES("64","1");
INSERT INTO role_has_permissions VALUES("64","2");
INSERT INTO role_has_permissions VALUES("64","4");
INSERT INTO role_has_permissions VALUES("64","6");
INSERT INTO role_has_permissions VALUES("65","1");
INSERT INTO role_has_permissions VALUES("65","2");
INSERT INTO role_has_permissions VALUES("65","6");
INSERT INTO role_has_permissions VALUES("66","1");
INSERT INTO role_has_permissions VALUES("66","2");
INSERT INTO role_has_permissions VALUES("66","6");
INSERT INTO role_has_permissions VALUES("67","1");
INSERT INTO role_has_permissions VALUES("67","2");
INSERT INTO role_has_permissions VALUES("67","4");
INSERT INTO role_has_permissions VALUES("67","6");
INSERT INTO role_has_permissions VALUES("68","1");
INSERT INTO role_has_permissions VALUES("68","2");
INSERT INTO role_has_permissions VALUES("68","6");
INSERT INTO role_has_permissions VALUES("69","1");
INSERT INTO role_has_permissions VALUES("69","2");
INSERT INTO role_has_permissions VALUES("69","6");
INSERT INTO role_has_permissions VALUES("70","1");
INSERT INTO role_has_permissions VALUES("70","2");
INSERT INTO role_has_permissions VALUES("70","6");
INSERT INTO role_has_permissions VALUES("71","1");
INSERT INTO role_has_permissions VALUES("71","2");
INSERT INTO role_has_permissions VALUES("71","6");
INSERT INTO role_has_permissions VALUES("72","1");
INSERT INTO role_has_permissions VALUES("72","2");
INSERT INTO role_has_permissions VALUES("72","6");
INSERT INTO role_has_permissions VALUES("73","1");
INSERT INTO role_has_permissions VALUES("73","2");
INSERT INTO role_has_permissions VALUES("73","6");
INSERT INTO role_has_permissions VALUES("74","1");
INSERT INTO role_has_permissions VALUES("74","2");
INSERT INTO role_has_permissions VALUES("74","6");
INSERT INTO role_has_permissions VALUES("75","1");
INSERT INTO role_has_permissions VALUES("75","2");
INSERT INTO role_has_permissions VALUES("75","6");
INSERT INTO role_has_permissions VALUES("76","1");
INSERT INTO role_has_permissions VALUES("76","2");
INSERT INTO role_has_permissions VALUES("76","6");
INSERT INTO role_has_permissions VALUES("77","1");
INSERT INTO role_has_permissions VALUES("77","2");
INSERT INTO role_has_permissions VALUES("77","6");
INSERT INTO role_has_permissions VALUES("78","1");
INSERT INTO role_has_permissions VALUES("78","2");
INSERT INTO role_has_permissions VALUES("78","6");
INSERT INTO role_has_permissions VALUES("79","1");
INSERT INTO role_has_permissions VALUES("79","2");
INSERT INTO role_has_permissions VALUES("79","6");
INSERT INTO role_has_permissions VALUES("80","1");
INSERT INTO role_has_permissions VALUES("80","2");
INSERT INTO role_has_permissions VALUES("80","6");
INSERT INTO role_has_permissions VALUES("81","1");
INSERT INTO role_has_permissions VALUES("81","2");
INSERT INTO role_has_permissions VALUES("81","6");
INSERT INTO role_has_permissions VALUES("82","1");
INSERT INTO role_has_permissions VALUES("82","2");
INSERT INTO role_has_permissions VALUES("82","6");
INSERT INTO role_has_permissions VALUES("83","1");
INSERT INTO role_has_permissions VALUES("83","2");
INSERT INTO role_has_permissions VALUES("83","6");
INSERT INTO role_has_permissions VALUES("84","1");
INSERT INTO role_has_permissions VALUES("84","2");
INSERT INTO role_has_permissions VALUES("84","6");
INSERT INTO role_has_permissions VALUES("85","1");
INSERT INTO role_has_permissions VALUES("85","2");
INSERT INTO role_has_permissions VALUES("85","6");
INSERT INTO role_has_permissions VALUES("86","1");
INSERT INTO role_has_permissions VALUES("86","2");
INSERT INTO role_has_permissions VALUES("86","6");
INSERT INTO role_has_permissions VALUES("87","1");
INSERT INTO role_has_permissions VALUES("87","2");
INSERT INTO role_has_permissions VALUES("87","6");
INSERT INTO role_has_permissions VALUES("88","1");
INSERT INTO role_has_permissions VALUES("88","2");
INSERT INTO role_has_permissions VALUES("88","6");
INSERT INTO role_has_permissions VALUES("89","1");
INSERT INTO role_has_permissions VALUES("89","2");
INSERT INTO role_has_permissions VALUES("89","6");
INSERT INTO role_has_permissions VALUES("90","1");
INSERT INTO role_has_permissions VALUES("90","2");
INSERT INTO role_has_permissions VALUES("90","6");
INSERT INTO role_has_permissions VALUES("91","1");
INSERT INTO role_has_permissions VALUES("91","2");
INSERT INTO role_has_permissions VALUES("91","6");
INSERT INTO role_has_permissions VALUES("92","1");
INSERT INTO role_has_permissions VALUES("92","2");
INSERT INTO role_has_permissions VALUES("92","6");
INSERT INTO role_has_permissions VALUES("93","1");
INSERT INTO role_has_permissions VALUES("93","2");
INSERT INTO role_has_permissions VALUES("93","6");
INSERT INTO role_has_permissions VALUES("94","1");
INSERT INTO role_has_permissions VALUES("94","2");
INSERT INTO role_has_permissions VALUES("94","6");
INSERT INTO role_has_permissions VALUES("95","1");
INSERT INTO role_has_permissions VALUES("95","2");
INSERT INTO role_has_permissions VALUES("95","6");
INSERT INTO role_has_permissions VALUES("96","1");
INSERT INTO role_has_permissions VALUES("96","2");
INSERT INTO role_has_permissions VALUES("96","6");
INSERT INTO role_has_permissions VALUES("97","1");
INSERT INTO role_has_permissions VALUES("97","2");
INSERT INTO role_has_permissions VALUES("97","6");
INSERT INTO role_has_permissions VALUES("98","1");
INSERT INTO role_has_permissions VALUES("98","2");
INSERT INTO role_has_permissions VALUES("98","6");
INSERT INTO role_has_permissions VALUES("99","1");
INSERT INTO role_has_permissions VALUES("99","2");
INSERT INTO role_has_permissions VALUES("99","6");
INSERT INTO role_has_permissions VALUES("100","1");
INSERT INTO role_has_permissions VALUES("100","2");
INSERT INTO role_has_permissions VALUES("100","6");
INSERT INTO role_has_permissions VALUES("101","1");
INSERT INTO role_has_permissions VALUES("101","2");
INSERT INTO role_has_permissions VALUES("101","6");
INSERT INTO role_has_permissions VALUES("102","1");
INSERT INTO role_has_permissions VALUES("102","2");
INSERT INTO role_has_permissions VALUES("102","6");
INSERT INTO role_has_permissions VALUES("103","1");
INSERT INTO role_has_permissions VALUES("103","2");
INSERT INTO role_has_permissions VALUES("103","6");
INSERT INTO role_has_permissions VALUES("104","1");
INSERT INTO role_has_permissions VALUES("104","2");
INSERT INTO role_has_permissions VALUES("104","6");
INSERT INTO role_has_permissions VALUES("105","1");
INSERT INTO role_has_permissions VALUES("105","2");
INSERT INTO role_has_permissions VALUES("105","6");
INSERT INTO role_has_permissions VALUES("106","1");
INSERT INTO role_has_permissions VALUES("106","6");
INSERT INTO role_has_permissions VALUES("107","1");
INSERT INTO role_has_permissions VALUES("107","6");
INSERT INTO role_has_permissions VALUES("108","1");
INSERT INTO role_has_permissions VALUES("108","6");
INSERT INTO role_has_permissions VALUES("109","1");
INSERT INTO role_has_permissions VALUES("109","6");
INSERT INTO role_has_permissions VALUES("109","10");
INSERT INTO role_has_permissions VALUES("110","1");
INSERT INTO role_has_permissions VALUES("110","6");
INSERT INTO role_has_permissions VALUES("111","1");
INSERT INTO role_has_permissions VALUES("111","6");
INSERT INTO role_has_permissions VALUES("112","1");
INSERT INTO role_has_permissions VALUES("112","6");
INSERT INTO role_has_permissions VALUES("113","1");
INSERT INTO role_has_permissions VALUES("113","6");
INSERT INTO role_has_permissions VALUES("114","1");
INSERT INTO role_has_permissions VALUES("114","6");
INSERT INTO role_has_permissions VALUES("115","1");
INSERT INTO role_has_permissions VALUES("115","6");
INSERT INTO role_has_permissions VALUES("116","1");
INSERT INTO role_has_permissions VALUES("116","6");
INSERT INTO role_has_permissions VALUES("117","1");
INSERT INTO role_has_permissions VALUES("117","6");
INSERT INTO role_has_permissions VALUES("118","1");
INSERT INTO role_has_permissions VALUES("118","6");
INSERT INTO role_has_permissions VALUES("119","1");
INSERT INTO role_has_permissions VALUES("119","6");
INSERT INTO role_has_permissions VALUES("120","1");
INSERT INTO role_has_permissions VALUES("120","6");
INSERT INTO role_has_permissions VALUES("121","1");
INSERT INTO role_has_permissions VALUES("121","6");
INSERT INTO role_has_permissions VALUES("122","1");
INSERT INTO role_has_permissions VALUES("122","6");
INSERT INTO role_has_permissions VALUES("123","1");
INSERT INTO role_has_permissions VALUES("123","6");
INSERT INTO role_has_permissions VALUES("124","6");
INSERT INTO role_has_permissions VALUES("125","6");



CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO roles VALUES("1","Admin","admin can access all data...","web","1","2018-06-02 17:16:44","2022-07-31 14:49:24");
INSERT INTO roles VALUES("2","Owner","Staff of shop","web","1","2018-10-22 20:08:13","2022-07-31 14:49:37");
INSERT INTO roles VALUES("4","staff","staff has specific acess...","web","1","2018-06-02 17:35:27","2022-07-31 14:50:13");
INSERT INTO roles VALUES("5","Customer","","web","1","2020-11-06 00:13:16","2022-07-31 14:50:01");
INSERT INTO roles VALUES("6","Adarsh","Owner","web","1","2023-01-03 12:23:32","2023-01-03 12:23:32");
INSERT INTO roles VALUES("7","L1","","web","1","2023-03-22 15:06:28","2023-03-22 15:06:28");
INSERT INTO roles VALUES("8","L2","","web","1","2023-03-22 15:06:35","2023-03-22 15:06:35");
INSERT INTO roles VALUES("9","L3","","web","1","2023-03-22 15:06:41","2023-03-22 15:06:41");
INSERT INTO roles VALUES("10","Devify","Testing","web","1","2023-04-27 00:22:11","2023-04-27 00:22:11");



CREATE TABLE `sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_discount_value` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO sales VALUES("1","sr-20220731-074339","1","","1","1","1","1","3","0","0","2700","2773","0","0","Percentage","1","27","","","100","1","2","","1773","","","2022-07-31 18:13:39","2022-07-31 20:51:29");
INSERT INTO sales VALUES("2","posr-20220731-103409","1","","1","1","1","1","3","900","0","1800","1800","0","0","Flat","","0","","","","3","4","","1800","","","2022-07-31 21:04:09","2022-07-31 21:04:09");
INSERT INTO sales VALUES("3","posr-20220731-103413","1","","1","1","1","1","3","900","0","1800","1800","0","0","Flat","","0","","","","3","4","","1800","","","2022-07-31 21:04:13","2022-07-31 21:04:13");



CREATE TABLE `stock_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO stock_counts VALUES("1","scr-20221001-104912","1","","","1","full","20221001-104912.csv","","","0","2022-10-02 02:19:12","2022-10-02 02:19:12");
INSERT INTO stock_counts VALUES("2","scr-20221218-010858","1","1","1","1","partial","20221218-010858.csv","","","0","2022-12-18 17:38:58","2022-12-18 17:38:58");
INSERT INTO stock_counts VALUES("3","scr-20230104-113421","1","1,2","1","1","partial","20230104-113421.csv","","","0","2023-01-04 11:34:21","2023-01-04 11:34:21");



CREATE TABLE `suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO suppliers VALUES("1","Bùi Đức Toàn","","AnToanHome","","hero70411@gmail.com","0904422959","58 Tố Hữu","Quận Nam Từ Liêm","Hà Nội","12015","Vietnam","1","2022-07-31 17:47:34","2022-07-31 17:47:34");
INSERT INTO suppliers VALUES("2","Kumar","","KUmar","","abhi@gmail.com","9898787677","noida","nopida","up","201301","iondia","1","2022-12-05 16:52:22","2022-12-05 16:52:22");



CREATE TABLE `taxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO taxes VALUES("1","cgst","9","1","2022-12-18 17:50:48","2022-12-18 17:50:48");
INSERT INTO taxes VALUES("2","gst","3","1","2023-05-04 21:33:36","2023-05-04 21:33:36");



CREATE TABLE `transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO transfers VALUES("1","tr-20230508-061852","1","1","1","2","1","2","0","1600","","1600","","","2023-05-09 00:00:00","2023-05-08 18:18:52");
INSERT INTO transfers VALUES("2","tr-20230508-061938","1","1","1","2","1","6","0","4800","","4800","","","2023-05-09 00:00:00","2023-05-08 18:19:38");



CREATE TABLE `units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unit_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO units VALUES("1","Pcs","Cái","","*","1","1","2022-07-31 17:45:05","2022-07-31 17:45:05");
INSERT INTO units VALUES("2","Sq.Ft","Square Feet","","*","1","1","2023-01-23 15:05:26","2023-01-23 15:05:26");
INSERT INTO units VALUES("3","Sq.Mtr","Square Meter","","*","1","1","2023-01-23 15:05:47","2023-01-23 15:05:47");
INSERT INTO units VALUES("4","BAG","BAG","","*","1","1","2023-01-23 15:06:14","2023-01-23 15:06:14");
INSERT INTO units VALUES("5","Book","Book","","*","1","1","2023-01-23 15:06:29","2023-01-23 15:06:29");
INSERT INTO units VALUES("6","Ft","Feet","","*","1","1","2023-01-23 15:06:47","2023-01-23 15:06:47");
INSERT INTO units VALUES("7","MT","Metric Ton","","*","1","1","2023-01-23 15:07:03","2023-01-23 15:07:03");
INSERT INTO units VALUES("8","Bundle","Bundle","","*","1","1","2023-01-23 15:07:19","2023-01-23 15:07:19");
INSERT INTO units VALUES("9","Box","Box","","*","1","1","2023-01-23 15:07:32","2023-01-23 15:07:32");
INSERT INTO units VALUES("10","Set","Set","","*","1","1","2023-01-23 15:07:47","2023-01-23 15:07:47");
INSERT INTO units VALUES("11","Pkt","Packet","","*","1","1","2023-01-23 15:08:03","2023-01-23 15:08:03");
INSERT INTO units VALUES("12","Pair","Pair","","*","1","1","2023-01-23 15:08:18","2023-01-23 15:08:18");
INSERT INTO units VALUES("13","Ltr","Litre","","*","1","1","2023-01-23 15:08:34","2023-01-23 15:08:34");
INSERT INTO units VALUES("14","Roll","Roll","","*","1","1","2023-01-23 15:08:49","2023-01-23 15:08:49");
INSERT INTO units VALUES("15","Kg","Kilogram","","*","1","1","2023-01-23 15:09:01","2023-01-23 15:09:01");
INSERT INTO units VALUES("16","Mtr","Metre","","*","1","1","2023-01-23 15:09:15","2023-01-23 15:09:15");
INSERT INTO units VALUES("17","Nos","Number","","*","1","1","2023-01-23 15:09:31","2023-01-23 15:09:31");



CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES("1","admin","admin@mango.com.gt","$2y$10$OwhBOY8Mleix8ml9tGpSOeKqw80K.PXvd1wqUK2r/ASqq3ERtnM8e","4DvpIZNuicRRIJZJsZXApe1ilxHKOVGZXeEsgnOSrpdXQJgK1x7RqsprJewp","9667732250","Mango POS","1","","","1","0","2018-06-02 20:54:15","2023-01-04 17:57:35");
INSERT INTO users VALUES("3","dhiman da","dhiman@gmail.com","$2y$10$Fef6vu5E67nm11hX7V5a2u1ThNCQ6n9DRCvRF9TD7stk.Pmt2R6O.","5ehQM6JIfiQfROgTbB5let0Z93vjLHS7rd9QD5RPNgOxli3xdo7fykU7vtTt","212","lioncoders","1","0","0","0","1","2018-06-14 15:30:31","2020-11-06 00:36:51");
INSERT INTO users VALUES("6","test","test@gmail.com","$2y$10$TDAeHcVqHyCmurki0wjLZeIl1SngKX3WLOhyTiCoZG3souQfqv.LS","KpW1gYYlOFacumklO2IcRfSsbC3KcWUZzOI37gqoqM388Xie6KdhaOHIFEYm","1234","212312","4","0","0","0","1","2018-06-23 20:35:33","2018-06-23 20:43:45");
INSERT INTO users VALUES("8","test","test@yahoo.com","$2y$10$hlMigidZV0j2/IPkgE/xsOSb8WM2IRlsMv.1hg1NM7kfyd6bGX3hC","","31231","","4","0","0","0","1","2018-06-25 16:05:49","2018-07-02 18:37:39");
INSERT INTO users VALUES("9","staff","anda@gmail.com","$2y$10$kxDbnynB6mB1e1w3pmtbSOlSxy/WwbLPY5TJpMi0Opao5ezfuQjQm","Mrz7tEybQ255Dx70cLiyCkMcDgYMGVVg3UVEGpJ8u5facwdZ7KErU89zYGKm","3123","","4","5","1","0","1","2018-07-02 18:38:08","2022-07-16 14:07:08");
INSERT INTO users VALUES("10","abul","abul@alpha.com","$2y$10$5zgB2OOMyNBNVAd.QOQIju5a9fhNnTqPx5H6s4oFlXhNiF6kXEsPq","x7HlttI5bM0vSKViqATaowHFJkLS3PHwfvl7iJdFl5Z1SsyUgWCVbLSgAoi0","1234","anda","1","0","0","0","1","2018-09-08 17:14:48","2022-07-16 14:05:32");
INSERT INTO users VALUES("11","teststaff","a@a.com","$2y$10$5KNBIIhZzvvZEQEhkHaZGu.Q8bbQNfqYvYgL5N55B8Pb4P5P/b/Li","DkHDEcCA0QLfsKPkUK0ckL0CPM6dPiJytNa0k952gyTbeAyMthW3vi7IRitp","111","aa","4","5","1","0","1","2018-10-22 20:17:56","2018-10-23 19:40:56");
INSERT INTO users VALUES("12","john","john@gmail.com","$2y$10$P/pN2J/uyTYNzQy2kRqWwuSv7P2f6GE/ykBwtHdda7yci3XsfOKWe","O0f1WJBVjT5eKYl3Js5l1ixMMtoU6kqrH7hbHDx9I1UCcD9CmiSmCBzHbQZg","10001","","4","2","2","0","1","2018-12-30 18:18:37","2019-03-06 22:29:49");
INSERT INTO users VALUES("13","jjj","test@test.com","$2y$10$/Qx3gHWYWUhlF1aPfzXaCeZA7fRzfSEyCIOnk/dcC4ejO8PsoaalG","","1213","","1","0","0","0","1","2019-01-03 17:38:31","2019-03-03 21:32:29");
INSERT INTO users VALUES("19","shakalaka","shakalaka@gmail.com","$2y$10$ketLWT0Ib/JXpo00eJlxoeSw.7leS8V1CUGInfbyOWT4F5.Xuo7S2","","1212","Digital image","5","0","0","0","1","2020-11-09 17:37:16","2022-07-16 14:05:32");
INSERT INTO users VALUES("21","modon","modon@gmail.com","$2y$10$7VpoeGMkP8QCvL5zLwFW..6MYJ5MRumDLDoX.TTQtClS561rpFHY.","","2222","modon company","5","0","0","0","1","2020-11-14 00:42:08","2022-07-16 14:05:32");
INSERT INTO users VALUES("22","dhiman","dhiman@gmail.com","$2y$10$3mPygsC6wwnDtw/Sg85IpuExtUhgaHx52Lwp7Rz0.FNfuFdfKVpRq","","+8801111111101","lioncoders","5","0","0","0","1","2020-11-15 23:44:58","2022-07-16 14:05:32");
INSERT INTO users VALUES("31","mbs","mbs@gmail.com","$2y$10$6Ldm1rWEVSrlTmpjIXkeQO9KwWJz/j0FB4U.fY1oCFeax47rvttEK","","2121","","4","1","2","0","1","2021-12-30 00:10:22","2022-07-16 14:05:32");
INSERT INTO users VALUES("36","Manuel S","msolis@mango.com.gt","$2y$10$YfM/LdEtAN08hoVXiaRRZO.0Wf.fBn0wRnaCSczc50s3bR.7xFliu","","53664377","","1","","","1","0","2022-07-16 13:18:37","2022-07-16 13:18:37");
INSERT INTO users VALUES("37","David","davsoftconcepts@gmail.com","$2y$10$pW4umPrc/lkyDrqOrAd/8.kK8.E.7Eayvxve9eV0xoUgpZyOEK1Ku","","08057427294","","1","","","1","0","2022-09-21 03:26:02","2022-09-21 03:26:02");
INSERT INTO users VALUES("38","test","test@gmail.com","$2y$10$9JfIBTdml0ByJGtX3xOJwuJWy.vyhmEHHZxWteN.iVk8aFX1ZJpRW","","9898982525","","1","","","1","0","2022-10-02 01:59:08","2022-10-02 01:59:08");
INSERT INTO users VALUES("39","staff","staff@gmail.com","$2y$10$pqmXnzbuvb85crxNL4543./vjp.z5mOA8etd2RNxZaM.YfTeoBQUW","","987898767987","test","4","1","1","1","0","2022-12-05 16:45:06","2022-12-05 16:50:55");
INSERT INTO users VALUES("40","shakalaka","abhi@gmail.com","$2y$10$7Wt2q1KkszEkfNsaqU5dTu97zFil0v8aPQsJGkiAPyCDEmi8GRf/G","","9898787677","KUmar","5","","","1","0","2022-12-05 16:52:22","2022-12-05 16:52:22");
INSERT INTO users VALUES("41","test10","test10@gmail.com","$2y$10$Zta7KmvOp7tcIX4AMMkVm.XjYmBvG/AHl2rFZ3cmucDEqQQDXfCdW","","0123456789","Game","2","","","1","0","2022-12-22 01:26:57","2023-01-03 15:54:49");
INSERT INTO users VALUES("42","user5","fakelist@gmail.com","$2y$10$qF0Duu8vvYtDacmvmusGwuoUGxXM.RpYMYHDrbbMGw1YlJLh5jJN.","","0987654321","","4","1","1","1","0","2023-01-03 15:52:20","2023-01-03 15:52:20");
INSERT INTO users VALUES("43","harsh","harsh@gmail.com","$2y$10$L6FTrFYuuOxfD9LQtYvfueITUL8Siz6H8vzUXCib0cLLAw4k/nKte","","harsh","harsh1","1","","","1","0","2023-02-04 22:59:19","2023-02-04 22:59:19");
INSERT INTO users VALUES("44","devify","devify@gmail.com","$2y$10$GDsLZ1e2apG7MTTbN50/j.KIpMRALN91lpIbddu0FCNhTNwRdpPR.","","9625394689","iVote","10","1","1","1","0","2023-04-27 00:26:52","2023-04-27 00:26:52");
INSERT INTO users VALUES("45","subham","subham@kumar.com","$2y$10$weIcd2rYYUKAz04utC9gqe8/E5dFJ.65jnF9OMoJFh4Yd/i6Qv9gG","","9801408173","subham company","2","","","0","0","2023-04-28 00:06:25","2023-04-28 00:06:25");



CREATE TABLE `variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO variants VALUES("1","S","2023-04-11 23:10:53","2023-04-11 23:10:53");
INSERT INTO variants VALUES("2","M","2023-04-11 23:10:54","2023-04-11 23:10:54");
INSERT INTO variants VALUES("3","L","2023-04-11 23:10:54","2023-04-11 23:10:54");



CREATE TABLE `warehouses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO warehouses VALUES("1","Kho Ecolife","0904422959","hero70411@gmail.com","58 Tố Hữu","1","2022-07-31 17:44:05","2022-07-31 17:44:05");
INSERT INTO warehouses VALUES("2","Nandan Group of Steels","9625394689","akash@gmail.com","Raipur","1","2023-01-04 11:35:30","2023-01-04 11:35:30");

