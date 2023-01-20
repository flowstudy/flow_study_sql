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

 Date: 20/01/2023 22:51:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for member_token
-- ----------------------------
DROP TABLE IF EXISTS `member_token`;
CREATE TABLE `member_token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login_time` datetime NOT NULL COMMENT '用户登录时间',
  `ip` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ip',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `email`(`email`(255)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户登录token库' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of member_token
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
