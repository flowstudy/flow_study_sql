/*
 Navicat Premium Data Transfer

 Source Server         : flow_study
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : 8.218.127.18:3306
 Source Schema         : nft

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 20/01/2023 22:50:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for test1
-- ----------------------------
DROP TABLE IF EXISTS `test1`;
CREATE TABLE `test1`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fetch_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test1
-- ----------------------------
INSERT INTO `test1` VALUES (1, '9', 'contt1', '2022-01-02 00:00:00');
INSERT INTO `test1` VALUES (2, '7', 'content', NULL);
INSERT INTO `test1` VALUES (3, '4', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
