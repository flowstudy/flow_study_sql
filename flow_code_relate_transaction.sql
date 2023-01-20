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

 Date: 20/01/2023 22:53:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for flow_code_relate_transaction
-- ----------------------------
DROP TABLE IF EXISTS `flow_code_relate_transaction`;
CREATE TABLE `flow_code_relate_transaction`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `contract_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contract_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `relate_transaction_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `relate_transaction_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '相关 transaction，此合约代码，被引用的 合约类型代码。contract_relation表有引用关系。' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flow_code_relate_transaction
-- ----------------------------
INSERT INTO `flow_code_relate_transaction` VALUES (1, 'CharityNFT', '0x097bafa4e0b48eef', 'Admin', '0x097bafa4e0b48eef');

SET FOREIGN_KEY_CHECKS = 1;
