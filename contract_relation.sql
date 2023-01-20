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

 Date: 20/01/2023 22:53:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for contract_relation
-- ----------------------------
DROP TABLE IF EXISTS `contract_relation`;
CREATE TABLE `contract_relation`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `contract_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contract_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `related_contract_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `related_contract_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fetch_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `contract_address_name`(`contract_address`, `contract_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 266 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'relate contract  相关合约，即此合约代码所引用（import）的合约代码' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contract_relation
-- ----------------------------
INSERT INTO `contract_relation` VALUES (33, 'Admin', '0x097bafa4e0b48eef', 'CharityNFT', '0x097bafa4e0b48eef', '2022-11-26 19:45:22');
INSERT INTO `contract_relation` VALUES (41, 'CharityNFT', '0x097bafa4e0b48eef', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:32:59');
INSERT INTO `contract_relation` VALUES (42, 'FIND', '0x097bafa4e0b48eef', 'Sender', '0x097bafa4e0b48eef', '2022-11-27 00:33:02');
INSERT INTO `contract_relation` VALUES (49, 'TheFabricantS1GarmentNFT', '0x09e03b1f871b3513', 'FungibleToken', '0xf233dcee88fe0abe', '2022-11-27 00:33:04');
INSERT INTO `contract_relation` VALUES (51, 'TheFabricantS1ItemNFT', '0x09e03b1f871b3513', 'TheFabricantS1MaterialNFT', '0x09e03b1f871b3513', '2022-11-27 00:33:06');
INSERT INTO `contract_relation` VALUES (55, 'TheFabricantS1MaterialNFT', '0x09e03b1f871b3513', 'FungibleToken', '0xf233dcee88fe0abe', '2022-11-27 00:33:07');
INSERT INTO `contract_relation` VALUES (57, 'TheFabricantS1MintTransferClaim', '0x09e03b1f871b3513', 'TheFabricantS1ItemNFT', '0x9e03b1f871b3513', '2022-11-27 00:33:08');
INSERT INTO `contract_relation` VALUES (62, 'FlowFestAccess', '0x09e03b1f871b3513', 'TheFabricantMysteryBox_FF1', '0xa0cbe021821c0965', '2022-11-27 00:33:10');
INSERT INTO `contract_relation` VALUES (65, 'TheFabricantMarketplace', '0x09e03b1f871b3513', 'FungibleToken', '0xf233dcee88fe0abe', '2022-11-27 00:33:11');
INSERT INTO `contract_relation` VALUES (67, 'TheFabricantMarketplaceHelper', '0x09e03b1f871b3513', 'TheFabricantMarketplace', '0x9e03b1f871b3513', '2022-11-27 00:33:12');
INSERT INTO `contract_relation` VALUES (80, 'TeleportCustodyEthereum', '0x0ac14a822e54cc4e', 'BloctoToken', '0x0f9df91c9121c460', '2022-11-27 00:33:15');
INSERT INTO `contract_relation` VALUES (82, 'TeleportCustodySolana', '0x0ac14a822e54cc4e', 'BloctoToken', '0x0f9df91c9121c460', '2022-11-27 00:33:16');
INSERT INTO `contract_relation` VALUES (84, 'TeleportCustodyBSC', '0x0ac14a822e54cc4e', 'BloctoToken', '0x0f9df91c9121c460', '2022-11-27 00:33:17');
INSERT INTO `contract_relation` VALUES (86, 'TopShot', '0x0b2a3299cc857e29', 'MetadataViews', '0x1d7e57aa55817448', '2022-11-27 00:33:18');
INSERT INTO `contract_relation` VALUES (88, 'FrontRowStorefront', '0x0bef462a908719a8', 'FrontRow', '0x0bef462a908719a8', '2022-11-27 00:33:19');
INSERT INTO `contract_relation` VALUES (92, 'FrontRow', '0x0bef462a908719a8', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:33:21');
INSERT INTO `contract_relation` VALUES (94, 'DaysOnFlow', '0x0d13392e973049d8', 'DayNFT', '0x1600b04bf033fb99', '2022-11-27 00:33:22');
INSERT INTO `contract_relation` VALUES (99, 'MatrixWorldVoucher', '0x0d77ec47bbad8ef6', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:33:23');
INSERT INTO `contract_relation` VALUES (100, 'TuneGO', '0x0d9bc5af3fc0c2e3', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:33:24');
INSERT INTO `contract_relation` VALUES (101, 'BloctoPass', '0x0f9df91c9121c460', 'BloctoPassStamp', '0x0f9df91c9121c460', '2022-11-27 00:33:26');
INSERT INTO `contract_relation` VALUES (106, 'BloctoPassStamp', '0x0f9df91c9121c460', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:33:27');
INSERT INTO `contract_relation` VALUES (107, 'BloctoToken', '0x0f9df91c9121c460', 'FungibleToken', '0xf233dcee88fe0abe', '2022-11-27 00:33:28');
INSERT INTO `contract_relation` VALUES (108, 'BloctoTokenSale', '0x0f9df91c9121c460', 'TeleportedTetherToken', '0xcfdd90d4a00f7b5b', '2022-11-27 00:33:29');
INSERT INTO `contract_relation` VALUES (113, 'BloctoTokenStaking', '0x0f9df91c9121c460', 'BloctoToken', '0x0f9df91c9121c460', '2022-11-27 00:33:31');
INSERT INTO `contract_relation` VALUES (115, 'StarlyTokenReward', '0x11f592931238aaf6', 'FungibleToken', '0xf233dcee88fe0abe', '2022-11-27 00:33:32');
INSERT INTO `contract_relation` VALUES (117, 'Genies', '0x12450e4bb3b7666e', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:33:33');
INSERT INTO `contract_relation` VALUES (118, 'GeniesShardedCollection', '0x12450e4bb3b7666e', 'Genies', '0x12450e4bb3b7666e', '2022-11-27 00:33:34');
INSERT INTO `contract_relation` VALUES (120, 'StarlyToken', '0x142fa6570b62fd97', 'FungibleToken', '0xf233dcee88fe0abe', '2022-11-27 00:33:35');
INSERT INTO `contract_relation` VALUES (121, 'NextName', '0x15b236723f4b88ee', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:33:36');
INSERT INTO `contract_relation` VALUES (122, 'DayNFT', '0x1600b04bf033fb99', 'FlowToken', '0x1654653399040a61', '2022-11-27 00:33:37');
INSERT INTO `contract_relation` VALUES (127, 'FlowToken', '0x1654653399040a61', 'FungibleToken', '0xf233dcee88fe0abe', '2022-11-27 00:33:39');
INSERT INTO `contract_relation` VALUES (128, 'PrivateReceiverForwarder', '0x18eb4ee6b3c026d2', 'FungibleToken', '0xf233dcee88fe0abe', '2022-11-27 00:33:40');
INSERT INTO `contract_relation` VALUES (129, 'OlympicPin', '0x1d007eed492fdbbe', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:33:41');
INSERT INTO `contract_relation` VALUES (130, 'MetadataViews', '0x1d7e57aa55817448', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:33:42');
INSERT INTO `contract_relation` VALUES (132, 'BloctoStorageRent', '0x1dfd1e5b87b847dc', 'FlowStorageFees', '0xe467b9dd11fa00df', '2022-11-27 00:33:44');
INSERT INTO `contract_relation` VALUES (134, 'LNVCT', '0x1e3c78c6d580273b', 'MetadataViews', '0x1d7e57aa55817448', '2022-11-27 00:33:45');
INSERT INTO `contract_relation` VALUES (136, 'MintStoreItem', '0x20187093790b9aef', 'MetadataViews', '0x1d7e57aa55817448', '2022-11-27 00:33:47');
INSERT INTO `contract_relation` VALUES (140, 'GoatedGoatsTraitPack', '0x2068315349bdfce5', 'MetadataViews', '0x1d7e57aa55817448', '2022-11-27 00:33:48');
INSERT INTO `contract_relation` VALUES (143, 'GoatedGoats', '0x2068315349bdfce5', 'MetadataViews', '0x1d7e57aa55817448', '2022-11-27 00:33:50');
INSERT INTO `contract_relation` VALUES (147, 'GoatedGoatsManager', '0x2068315349bdfce5', 'GoatedGoats', '0x2068315349bdfce5', '2022-11-27 00:33:51');
INSERT INTO `contract_relation` VALUES (155, 'GoatedGoatsTrait', '0x2068315349bdfce5', 'MetadataViews', '0x1d7e57aa55817448', '2022-11-27 00:33:53');
INSERT INTO `contract_relation` VALUES (158, 'Collectible', '0x2096cb04c18e4a42', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:33:54');
INSERT INTO `contract_relation` VALUES (159, 'ceWBTC', '0x231cc0dbbcffc4b7', 'FTMinterBurner', '0x08dd120226ec2213', '2022-11-27 00:33:56');
INSERT INTO `contract_relation` VALUES (161, 'ceAVAX', '0x231cc0dbbcffc4b7', 'FTMinterBurner', '0x08dd120226ec2213', '2022-11-27 00:33:57');
INSERT INTO `contract_relation` VALUES (163, 'ceFTM', '0x231cc0dbbcffc4b7', 'FTMinterBurner', '0x08dd120226ec2213', '2022-11-27 00:33:58');
INSERT INTO `contract_relation` VALUES (165, 'ceUSDT', '0x231cc0dbbcffc4b7', 'FTMinterBurner', '0x08dd120226ec2213', '2022-11-27 00:34:00');
INSERT INTO `contract_relation` VALUES (167, 'ceWETH', '0x231cc0dbbcffc4b7', 'FTMinterBurner', '0x08dd120226ec2213', '2022-11-27 00:34:01');
INSERT INTO `contract_relation` VALUES (169, 'ceBNB', '0x231cc0dbbcffc4b7', 'FTMinterBurner', '0x08dd120226ec2213', '2022-11-27 00:34:02');
INSERT INTO `contract_relation` VALUES (171, 'ceBUSD', '0x231cc0dbbcffc4b7', 'FTMinterBurner', '0x08dd120226ec2213', '2022-11-27 00:34:03');
INSERT INTO `contract_relation` VALUES (173, 'ceMATIC', '0x231cc0dbbcffc4b7', 'FTMinterBurner', '0x08dd120226ec2213', '2022-11-27 00:34:04');
INSERT INTO `contract_relation` VALUES (175, 'RLY', '0x231cc0dbbcffc4b7', 'FTMinterBurner', '0x08dd120226ec2213', '2022-11-27 00:34:05');
INSERT INTO `contract_relation` VALUES (177, 'ceDAI', '0x231cc0dbbcffc4b7', 'FTMinterBurner', '0x08dd120226ec2213', '2022-11-27 00:34:06');
INSERT INTO `contract_relation` VALUES (179, 'Domains', '0x233eb012d34b0070', 'FungibleToken', '0xf233dcee88fe0abe', '2022-11-27 00:34:07');
INSERT INTO `contract_relation` VALUES (181, 'Flowns', '0x233eb012d34b0070', 'Domains', '0x233eb012d34b0070', '2022-11-27 00:34:08');
INSERT INTO `contract_relation` VALUES (184, 'Interfaces', '0x24de869c5e40b2eb', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:10');
INSERT INTO `contract_relation` VALUES (185, 'ARTIFACT', '0x24de869c5e40b2eb', 'ARTIFACTViews', '0x24de869c5e40b2eb', '2022-11-27 00:34:11');
INSERT INTO `contract_relation` VALUES (186, 'ARTIFACTAdmin', '0x24de869c5e40b2eb', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:12');
INSERT INTO `contract_relation` VALUES (187, 'ARTIFACTMarket', '0x24de869c5e40b2eb', 'FUSD', '0x3c5959b568896393', '2022-11-27 00:34:13');
INSERT INTO `contract_relation` VALUES (190, 'ARTIFACTViews', '0x24de869c5e40b2eb', 'MetadataViews', '0x1d7e57aa55817448', '2022-11-27 00:34:15');
INSERT INTO `contract_relation` VALUES (191, 'IrNFT', '0x276a7cc9316712af', 'IrVoucher', '0x276a7cc9316712af', '2022-11-27 00:34:16');
INSERT INTO `contract_relation` VALUES (195, 'IrVoucher', '0x276a7cc9316712af', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:18');
INSERT INTO `contract_relation` VALUES (196, 'BarterYardClubWerewolf', '0x28abb9f291cadaf2', 'MetadataViews', '0x1d7e57aa55817448', '2022-11-27 00:34:18');
INSERT INTO `contract_relation` VALUES (198, 'BarterYardClubWerewolfSale', '0x28abb9f291cadaf2', 'BarterYardClubWerewolf', '0x28abb9f291cadaf2', '2022-11-27 00:34:20');
INSERT INTO `contract_relation` VALUES (204, 'StarlyCardStaking', '0x29fcd0b5e444242a', 'StarlyMetadataViews', '0x5b82f21c0edf76e3', '2022-11-27 00:34:21');
INSERT INTO `contract_relation` VALUES (209, 'StarlyCardStakingClaims', '0x29fcd0b5e444242a', 'StarlyTokenStaking', '0x76a9b420a331b9f0', '2022-11-27 00:34:23');
INSERT INTO `contract_relation` VALUES (219, 'StakedStarlyCard', '0x29fcd0b5e444242a', 'StarlyToken', '0x142fa6570b62fd97', '2022-11-27 00:34:25');
INSERT INTO `contract_relation` VALUES (227, 'MatrixWorldFlowFestNFT', '0x2d2750f240198f91', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:27');
INSERT INTO `contract_relation` VALUES (228, 'FLOAT', '0x2d4c3caffbeab845', 'FlowToken', '0x1654653399040a61', '2022-11-27 00:34:30');
INSERT INTO `contract_relation` VALUES (233, 'FLOATVerifiers', '0x2d4c3caffbeab845', 'FLOAT', '0x2d4c3caffbeab845', '2022-11-27 00:34:31');
INSERT INTO `contract_relation` VALUES (234, 'TenantService', '0x2ffa91f235de20e5', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:35');
INSERT INTO `contract_relation` VALUES (235, 'Seussibles', '0x321d8fcde05f6e8c', 'TiblesProducer', '0x5cdeb067561defcb', '2022-11-27 00:34:36');
INSERT INTO `contract_relation` VALUES (240, 'NFL_NFT', '0x329feb3ab062d289', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:38');
INSERT INTO `contract_relation` VALUES (241, 'Canes_Vault_NFT', '0x329feb3ab062d289', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:39');
INSERT INTO `contract_relation` VALUES (242, 'RaceDay_NFT', '0x329feb3ab062d289', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:40');
INSERT INTO `contract_relation` VALUES (243, 'Atheletes_Unlimited_NFT', '0x329feb3ab062d289', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:41');
INSERT INTO `contract_relation` VALUES (244, 'AmericanAirlines_NFT', '0x329feb3ab062d289', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:42');
INSERT INTO `contract_relation` VALUES (245, 'DGD_NFT', '0x329feb3ab062d289', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:43');
INSERT INTO `contract_relation` VALUES (246, 'The_Next_Cartel_NFT', '0x329feb3ab062d289', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:44');
INSERT INTO `contract_relation` VALUES (247, 'Art_NFT', '0x329feb3ab062d289', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:45');
INSERT INTO `contract_relation` VALUES (248, 'BreakingT_NFT', '0x329feb3ab062d289', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:46');
INSERT INTO `contract_relation` VALUES (249, 'Andbox_NFT', '0x329feb3ab062d289', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:47');
INSERT INTO `contract_relation` VALUES (250, 'CNN_NFT', '0x329feb3ab062d289', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:48');
INSERT INTO `contract_relation` VALUES (251, 'BlockleteGames_NFT', '0x329feb3ab062d289', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:49');
INSERT INTO `contract_relation` VALUES (252, 'GL_BridgeTest_NFT', '0x329feb3ab062d289', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:50');
INSERT INTO `contract_relation` VALUES (253, 'GiglabsShopifyDemo_NFT', '0x329feb3ab062d289', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:51');
INSERT INTO `contract_relation` VALUES (254, 'AtlantaNft_NFT', '0x329feb3ab062d289', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:52');
INSERT INTO `contract_relation` VALUES (255, 'Costacos_NFT', '0x329feb3ab062d289', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:53');
INSERT INTO `contract_relation` VALUES (256, 'RareRooms_NFT', '0x329feb3ab062d289', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:55');
INSERT INTO `contract_relation` VALUES (257, 'UFC_NFT', '0x329feb3ab062d289', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:56');
INSERT INTO `contract_relation` VALUES (258, 'Collectible', '0x3357b77bbecb12b9', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:57');
INSERT INTO `contract_relation` VALUES (259, 'MyNFT', '0x33f44e504a396ba7', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:34:58');
INSERT INTO `contract_relation` VALUES (260, 'MyToken', '0x348fe2042c8a70d8', 'FungibleToken', '0xf233dcee88fe0abe', '2022-11-27 00:34:59');
INSERT INTO `contract_relation` VALUES (261, 'NFTKred', '0x34ac358b9819f79d', 'NonFungibleToken', '0x1d7e57aa55817448', '2022-11-27 00:35:00');
INSERT INTO `contract_relation` VALUES (262, 'GooberXContract', '0x34f2bf4a80bb0f69', 'FUSD', '0x3c5959b568896393', '2022-11-27 15:23:07');
INSERT INTO `contract_relation` VALUES (265, 'PartyMansionDrinksContract', '0x34f2bf4a80bb0f69', 'PartyMansionGiveawayContract', '0x34f2bf4a80bb0f69', '2022-11-27 15:23:08');

SET FOREIGN_KEY_CHECKS = 1;
