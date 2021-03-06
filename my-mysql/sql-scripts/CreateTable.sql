CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(64) NOT NULL,
  `second_name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `user_password` varchar(64) NOT NULL,
  `user_role` varchar(8) NOT NULL,
  `bio` varchar(128) DEFAULT NULL,
  `photo_profile` longblob,
  `date_reset` timestamp NULL DEFAULT NULL,
  `reset_code` varchar(64) DEFAULT NULL,
  `p_iva` varchar(11) DEFAULT NULL,
  `identity_card_number` varchar(9) DEFAULT NULL,
  `category` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `meeting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId_worker` int DEFAULT NULL,
  `userId_customer` int DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `slot_time` varchar(32) DEFAULT NULL,
  `accepted` tinyint DEFAULT NULL,
  `started` tinyint DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId_worker_idx` (`userId_worker`),
  KEY `userId_customer_idx` (`userId_customer`),
  CONSTRAINT `userId_customer` FOREIGN KEY (`userId_customer`) REFERENCES `account` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `userId_worker` FOREIGN KEY (`userId_worker`) REFERENCES `account` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` int DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `deadline` timestamp NULL DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `paymentId` varchar(64) DEFAULT NULL,
  `payerId` varchar(64) DEFAULT NULL,
  `is_valid` tinyint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sds_idx` (`account_id`),
  CONSTRAINT `user` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `image` blob,
  `price` decimal(10,2) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `deleted` tinyint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId_receive` int DEFAULT NULL,
  `userId_assign` int DEFAULT NULL,
  `content` varchar(256) DEFAULT NULL,
  `star` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId_receive1_idx` (`userId_receive`),
  KEY `userId_assign2_idx` (`userId_assign`),
  CONSTRAINT `userId_assign2` FOREIGN KEY (`userId_assign`) REFERENCES `account` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `userId_receive1` FOREIGN KEY (`userId_receive`) REFERENCES `account` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
