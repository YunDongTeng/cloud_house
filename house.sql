/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 80015
Source Host           : 127.0.0.1:3306
Source Database       : house

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-10-11 18:14:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `room` int(11) DEFAULT NULL,
  `floor` int(255) DEFAULT NULL,
  `total_floor` int(255) DEFAULT NULL,
  `watch_times` int(11) DEFAULT NULL,
  `build_year` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `city_en_name` varchar(50) DEFAULT NULL,
  `region_en_name` varchar(255) DEFAULT NULL,
  `cover` varchar(100) DEFAULT NULL,
  `direction` int(11) DEFAULT NULL,
  `distance_to_subway` int(11) DEFAULT NULL,
  `partour` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `bathroom` int(11) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of house
-- ----------------------------

-- ----------------------------
-- Table structure for house_picture
-- ----------------------------
DROP TABLE IF EXISTS `house_picture`;
CREATE TABLE `house_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hosue_id` int(11) DEFAULT NULL,
  `cdn_prefix` varchar(30) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of house_picture
-- ----------------------------

-- ----------------------------
-- Table structure for house_subscribe
-- ----------------------------
DROP TABLE IF EXISTS `house_subscribe`;
CREATE TABLE `house_subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of house_subscribe
-- ----------------------------

-- ----------------------------
-- Table structure for house_tag
-- ----------------------------
DROP TABLE IF EXISTS `house_tag`;
CREATE TABLE `house_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of house_tag
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for subway
-- ----------------------------
DROP TABLE IF EXISTS `subway`;
CREATE TABLE `subway` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `city_en_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of subway
-- ----------------------------

-- ----------------------------
-- Table structure for subway_station
-- ----------------------------
DROP TABLE IF EXISTS `subway_station`;
CREATE TABLE `subway_station` (
  `id` int(11) NOT NULL,
  `subway_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of subway_station
-- ----------------------------

-- ----------------------------
-- Table structure for support_address
-- ----------------------------
DROP TABLE IF EXISTS `support_address`;
CREATE TABLE `support_address` (
  `id` int(11) NOT NULL,
  `belong_to` varchar(255) DEFAULT NULL,
  `en_name` varchar(50) DEFAULT NULL,
  `cn_name` varchar(50) NOT NULL,
  `level` varchar(10) DEFAULT NULL,
  `baidu_map_lat` double DEFAULT NULL,
  `baidu_map_lng` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of support_address
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(11) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
