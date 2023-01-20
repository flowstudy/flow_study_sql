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

 Date: 20/01/2023 22:50:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for playground
-- ----------------------------
DROP TABLE IF EXISTS `playground`;
CREATE TABLE `playground`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `contract_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contract_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `playground_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `contract_name`(`contract_name`, `contract_address`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playground
-- ----------------------------
INSERT INTO `playground` VALUES (1, 'NWayUtilityCoin', '0x011b6f1425389550', 'https://play.flow.com/af7aba31-dee9-4477-9e1d-7b46e958468e');

SET FOREIGN_KEY_CHECKS = 1;
