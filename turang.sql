/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : turang

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 06/04/2019 03:36:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (180);

-- ----------------------------
-- Table structure for threshold
-- ----------------------------
DROP TABLE IF EXISTS `threshold`;
CREATE TABLE `threshold`  (
  `id` bigint(20) NOT NULL,
  `ph` double NULL DEFAULT NULL,
  `huan_xiao_jia` double NULL DEFAULT NULL,
  `jian_jie_dan` double NULL DEFAULT NULL,
  `nearlyph` double NULL DEFAULT NULL,
  `nearlyhuan_xiao_jia` double NULL DEFAULT NULL,
  `nearlyjian_jie_dan` double NULL DEFAULT NULL,
  `nearlyquan_dan` double NULL DEFAULT NULL,
  `nearlysu_xiao_jia` double NULL DEFAULT NULL,
  `nearlyyou_ji_zhi` double NULL DEFAULT NULL,
  `nearlyyou_xiao_lin` double NULL DEFAULT NULL,
  `nearlyyou_xiao_liu` double NULL DEFAULT NULL,
  `nearlyyou_xiao_meng` double NULL DEFAULT NULL,
  `nearlyyou_xiao_tie` double NULL DEFAULT NULL,
  `nearlyyou_xiao_tong` double NULL DEFAULT NULL,
  `nearlyyou_xiao_xin` double NULL DEFAULT NULL,
  `quan_dan` double NULL DEFAULT NULL,
  `su_xiao_jia` double NULL DEFAULT NULL,
  `you_ji_zhi` double NULL DEFAULT NULL,
  `you_xiao_lin` double NULL DEFAULT NULL,
  `you_xiao_liu` double NULL DEFAULT NULL,
  `you_xiao_meng` double NULL DEFAULT NULL,
  `you_xiao_tie` double NULL DEFAULT NULL,
  `you_xiao_tong` double NULL DEFAULT NULL,
  `you_xiao_xin` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of threshold
-- ----------------------------
INSERT INTO `threshold` VALUES (1, 7, 15, 15, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, 15, 15, 15, 15, 15, 15, 15, 15);

-- ----------------------------
-- Table structure for turang
-- ----------------------------
DROP TABLE IF EXISTS `turang`;
CREATE TABLE `turang`  (
  `id` bigint(20) NOT NULL,
  `ph` double NULL DEFAULT NULL,
  `cai_yang_dian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `huan_xiao_jia` double NULL DEFAULT NULL,
  `jian_jie_dan` double NULL DEFAULT NULL,
  `latitude` double NULL DEFAULT NULL,
  `longitude` double NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `quan_dan` double NULL DEFAULT NULL,
  `su_xiao_jia` double NULL DEFAULT NULL,
  `you_ji_zhi` double NULL DEFAULT NULL,
  `you_xiao_lin` double NULL DEFAULT NULL,
  `you_xiao_liu` double NULL DEFAULT NULL,
  `you_xiao_meng` double NULL DEFAULT NULL,
  `you_xiao_tie` double NULL DEFAULT NULL,
  `you_xiao_tong` double NULL DEFAULT NULL,
  `you_xiao_xin` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of turang
-- ----------------------------
INSERT INTO `turang` VALUES (320, 7.8, '开平', 465, NULL, 118.26567, 39.7261, '周赵宽', '开平镇欢套', 0.769, 87, 14.98, 7.2, NULL, 10.334, 7.436, 0.664, 2.916);
INSERT INTO `turang` VALUES (321, 6.58, '开平', 289, NULL, 118.29803, 39.6613, '苏桂霞', '开平镇欢套', 0.805, 135, 15.85, 30.8, NULL, 19.844, 29.262, 1.284, 3.932);
INSERT INTO `turang` VALUES (322, 6.78, '开平', 290, 50.78, 118.2975, 39.66113, '宋殿臣', '开平镇欢套', 0.6, 74, 12.31, 27, 10.07, 17.426, 22.758, 1.09, 3.124);
INSERT INTO `turang` VALUES (323, 6.93, '开平', 302, NULL, 118.30498, 39.66647, '孟凡浩', '开平镇欢套', 0.69, 94, 12.89, 31.9, NULL, 17.272, 20.678, 0.876, 4.114);
INSERT INTO `turang` VALUES (324, 6.47, '开平', 283, NULL, 118.30548, 39.6666, '孟祥存', '开平镇欢套', 0.468, 77, 12.4, 33.9, NULL, 19.648, 25.262, 1.54, 3.834);
INSERT INTO `turang` VALUES (325, 6.01, '开平', 310, 65.1, 118.3097, 39.66643, '宋喜增', '开平镇欢套', 0.448, 94, 12.58, 38.2, 19.42, 19.968, 31.868, 1.112, 3.728);
INSERT INTO `turang` VALUES (326, 5.75, '开平', 395, NULL, 118.3, 39.66667, '宋志田', '开平镇欢套', 0.469, 65, 12.6, 23, NULL, 17.47, 30.706, 1.206, 2.972);
INSERT INTO `turang` VALUES (327, 5.18, '开平', 338, NULL, 118.3, 39.66667, '孟祥宝', '开平镇欢套', 0.566, 62, 11.493638, 29.5, NULL, 20.724, 32.212, 1.068, 1.824);
INSERT INTO `turang` VALUES (328, 5.17, '开平', 306, NULL, 118.3, 39.65, '宋永秀', '开平镇欢套', 0.643, 42, 13.98443, 21.5, NULL, 21.152, 34.452, 1.08, 1.928);
INSERT INTO `turang` VALUES (329, 5.65, '开平', 373, NULL, 118.3, 39.65, '孟祥琴', '开平镇欢套', 0.812, 99, 16.3, 33.1, NULL, 18.966, 32.912, 0.874, 4.242);
INSERT INTO `turang` VALUES (330, 6.39, '开平', 393, NULL, 118.3, 39.65, '宋义海', '开平镇欢套', 0.888, 67, 17.877503, 12.6, NULL, 17.546, 23.152, 0.77, 3.992);
INSERT INTO `turang` VALUES (331, 5.98, '开平', 412, NULL, 118.3, 39.65, '易文红', '开平镇欢套', 0.795, 152, 17.357518, 48.6, NULL, 19.616, 31.206, 1.222, 4.098);
INSERT INTO `turang` VALUES (332, 5.8, '开平', 332, NULL, 118.3, 39.65, '甄和', '开平镇欢套', 0.628, 96, 14.030553, 28.9, NULL, 17.346, 33.49, 1.198, 3.272);
INSERT INTO `turang` VALUES (333, 6.2, '开平', 376, NULL, 118.3, 39.65, '宋忠宇', '开平镇欢套', 0.758, 96, 15.51, 12.8, NULL, 20.13, 29.08, 1.164, 3.252);
INSERT INTO `turang` VALUES (334, 5.82, '开平', 309, NULL, 118.3, 39.65, '宋海玲', '开平镇欢套', 0.735, 79, 14.701682, 10.9, NULL, 20.936, 30.268, 1.186, 2.238);
INSERT INTO `turang` VALUES (271, 7.43, '开平', 484, NULL, 118.26667, 39.61667, '张民', '越河镇康各庄', 0.948, 140, 19.381054, 31.7, NULL, 15.674, 14.964, 1.228, 4.95);
INSERT INTO `turang` VALUES (272, 7.09, '开平', 451, NULL, 118.26667, 39.61667, '孟凡利', '越河镇康各庄', 0.84, 81, 17.400234, 24.3, NULL, 17.346, 16.044, 0.984, 4.214);
INSERT INTO `turang` VALUES (273, 6.94, '开平', 386, NULL, 118.26667, 39.61667, '唐春江', '越河镇康各庄', 0.85, 78, 17.855056, 26.2, NULL, 19.856, 17.056, 0.856, 3.726);
INSERT INTO `turang` VALUES (274, 7.05, '开平', 473, NULL, 118.26667, 39.61667, '崔宝宽', '越河镇康各庄', 0.76, 107, 16.665689, 34.1, NULL, 18.446, 16.828, 0.888, 3.816);
INSERT INTO `turang` VALUES (275, 7.3, '开平', 452, NULL, 118.26667, 39.61667, '孟凡旺', '越河镇康各庄', 0.788, 68, 19.929779, 13.2, NULL, 17.182, 12.23, 1.012, 3.214);
INSERT INTO `turang` VALUES (276, 6.8, '开平', 505, NULL, 118.26667, 39.61667, '胡志和', '越河镇康各庄', 0.956, 135, 20.879888, 35.3, NULL, 21.562, 17.632, 1.064, 4.628);
INSERT INTO `turang` VALUES (277, 6.14, '开平', 700, NULL, 118.26667, 39.61667, '李泽民', '越河镇康各庄', 0.913, 88, 19.982192, 33.3, NULL, 23.56, 28.766, 1.216, 4.188);
INSERT INTO `turang` VALUES (278, 6.88, '开平', 432, NULL, 118.26667, 39.61667, '闫永新', '越河镇康各庄', 0.873, 88, 19.630982, 20.3, NULL, 15.656, 13.708, 1.018, 4.352);
INSERT INTO `turang` VALUES (349, 6.38, '开平', 470, NULL, 118.28333, 39.63333, '刘广春', '开平镇聂各庄', 1.09, 146, 18.976405, 59.5, NULL, 19.368, 22.37, 2.54, 5.954);
INSERT INTO `turang` VALUES (350, 5.52, '开平', 432, NULL, 118.28333, 39.63333, '刘广天', '开平镇聂各庄', 0.842, 76, 15.947612, 16.2, NULL, 21.006, 28.782, 1.314, 3.468);
INSERT INTO `turang` VALUES (351, 5.2, '开平', 362, NULL, 118.28333, 39.63333, '王福香', '开平镇聂各庄', 0.916, 90, 18.16, 26, NULL, 22.406, 33.364, 1.244, 3.218);
INSERT INTO `turang` VALUES (352, 5.52, '开平', 750, NULL, 118.28333, 39.63333, '陆国安', '开平镇聂各庄', 0.645, 50, 12.27, 17.5, NULL, 21.584, 29.684, 0.898, 2.504);
INSERT INTO `turang` VALUES (353, 6.05, '开平', 340, NULL, 118.29692, 39.63333, '陆金良', '开平镇聂各庄', 0.716, 52, 14.240672, 18.5, NULL, 20.926, 21.942, 1.596, 3.66);
INSERT INTO `turang` VALUES (354, 5.69, '开平', 316, NULL, 118.28333, 39.63333, '陆国仓', '开平镇聂各庄', 0.735, 44, 14.06767, 10.6, NULL, 21.152, 28.168, 1.694, 3.212);
INSERT INTO `turang` VALUES (355, 6.25, '开平', 322, NULL, 118.29347, 39.63333, '刘东风', '开平镇聂各庄', 0.707, 94, 14.12, 26.7, NULL, 20.85, 24.992, 1.022, 3.804);
INSERT INTO `turang` VALUES (356, 6.07, '开平', 339, NULL, 118.28333, 39.63333, '刘广明', '开平镇聂各庄', 0.663, 61, 12.16, 17.2, NULL, 20.27, 24.368, 0.964, 3.604);
INSERT INTO `turang` VALUES (357, 5.82, '开平', 383, 62.5, 118.28705, 39.63333, '赵宝峰', '开平镇聂各庄', 0.815, 65, 16.32, 55.9, 9.35, 21.448, 29.26, 0.964, 3.45);
INSERT INTO `turang` VALUES (358, 6.16, '开平', 393, NULL, 118.28333, 39.63333, '陆金义', '开平镇聂各庄', 0.948, 71, 18.56, 18.1, NULL, 20.784, 23.562, 0.84, 3.64);
INSERT INTO `turang` VALUES (27, 6.8, '开平区', NULL, NULL, 118.277972, 39.643694, NULL, '聂各庄', 0.1053, 140, 20.2, 20.1, NULL, 23.478, 15.566, 1.562, 8.53);
INSERT INTO `turang` VALUES (49, 7, '开平区', NULL, NULL, 118.30835, 39.6499, NULL, '大陈庄', 0.0972, 175, 18.3, 51.8, NULL, 21.024, 19.882, 0.67, 7.976);
INSERT INTO `turang` VALUES (50, 6.7, '开平区', NULL, 82, 118.30837, 39.64969, NULL, '大陈庄', 0.085, 120, 16, 42.6, NULL, 24.114, 22.344, 0.986, 8.878);
INSERT INTO `turang` VALUES (408, 6.92, '开平', 452, 102.86, 118.26667, 39.65, '陈立升', '开平镇丰山', 1.292, 116, 25.89, 32.087671, 16.78, 17.998, 12.282, 1.222, 6.402);
INSERT INTO `turang` VALUES (409, 7.17, '开平', 525, NULL, 118.26667, 39.65, '陈永顺', '开平镇丰山', 1.069, 119, 23.92, 11.907534, NULL, 15.878, 8.658, 1.118, 5.1);
INSERT INTO `turang` VALUES (410, 7, '开平', 346, NULL, 118.26667, 39.65, '苗长友', '开平镇丰山', 1.167, 102, 24.01, 8.64863, NULL, 19.846, 10.816, 1.102, 6.41);
INSERT INTO `turang` VALUES (411, 8, '开平', 443, NULL, 118.26667, 39.65, '张德兴', '开平镇丰山', 0.999, 121, 22.80347, 10.04, NULL, 14.764, 6.12, 0.85, 9.976);
INSERT INTO `turang` VALUES (5, 8.059, '开平', 2550, NULL, 118.311, 39.67183, '郑立生', '东帅甲', NULL, 150, 28.494991, 62.3, 22.755, 9.296, 8.97, 1.432, 2.268);
INSERT INTO `turang` VALUES (6, 8.369, '开平', 1940, NULL, 118.31152, 39.67291, '郑立国', '东帅甲', NULL, 60, 23.180147, 7.8, 18.22, 8.028, 6.078, 0.842, 1.026);
INSERT INTO `turang` VALUES (7, 8.496, '开平', 1205, NULL, 118.3103, 39.67137, '司立山', '东帅甲', NULL, 55, 8.288304, 14, 7.605, 5.152, 6.99, 0.48, 0.372);
INSERT INTO `turang` VALUES (8, 8.192, '开平', 1902, NULL, 118.31007, 39.67164, '孟祥海', '东帅甲', NULL, 138, 20.021049, 25.7, 26.785, 15.154, 7.204, 1.092, 2.072);
INSERT INTO `turang` VALUES (9, 7.9, '开平', 2292, NULL, 118.30852, 39.66949, '石现增', '东帅甲', NULL, 108, 17.6, 10.8, 23.9, 8, 5.51, 0.65, 1.12);
INSERT INTO `turang` VALUES (10, 7.9, '开平', 2684, NULL, 118.30647, 39.67138, '石现方', '东帅甲', NULL, 96, 16.4, 34.2, 20.7, 9.9, 5.42, 1.58, 1.77);
INSERT INTO `turang` VALUES (279, 7.5, '开平', 412, NULL, 118.26667, 39.6, '王柱希', '越河镇东塔', 0.563, 68, 12.296225, 11, NULL, 8.44, 7.924, 0.568, 1.124);
INSERT INTO `turang` VALUES (280, 7.2, '开平', 417, 67.7, 118.26667, 39.6, '孙丽娜', '越河镇东塔', 0.806, 67, 16.89, 21, 7.19, 14.708, 9.964, 0.704, 2.97);
INSERT INTO `turang` VALUES (281, 6.85, '开平', 446, 65.1, 118.26667, 39.6, '王珠', '越河镇东塔', 0.787, 74, 16.378879, 26.3, 10.55, 18.236, 17.402, 0.868, 2.946);
INSERT INTO `turang` VALUES (282, 6.98, '开平', 461, NULL, 118.26667, 39.6, '董素琴', '越河镇东塔', 0.841, 83, 18.073314, 29.7, NULL, 17.034, 13.998, 0.81, 3.512);
INSERT INTO `turang` VALUES (283, 7, '开平', 402, NULL, 118.26667, 39.6, '徐福银', '越河镇东塔', 0.983, 98, 21.717381, 29.3, NULL, 18.184, 12.344, 0.682, 3.022);
INSERT INTO `turang` VALUES (284, 7.41, '开平', 462, NULL, 118.26667, 39.6, '徐建利', '越河镇东塔', 0.82, 66, 15.996368, 15.6, NULL, 11.846, 6.5, 0.648, 2.122);
INSERT INTO `turang` VALUES (285, 6.63, '开平', 604, NULL, 118.26667, 39.6, '陈宪文', '越河镇东塔', 0.834, 72, 16.12, 25.4, NULL, 18.674, 17.858, 0.728, 3.304);

-- ----------------------------
-- Table structure for warning
-- ----------------------------
DROP TABLE IF EXISTS `warning`;
CREATE TABLE `warning`  (
  `id` bigint(20) NOT NULL,
  `deal` bit(1) NULL DEFAULT NULL,
  `degree` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `project` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warning
-- ----------------------------
INSERT INTO `warning` VALUES (160, b'1', '超标！', '越河镇东塔', '#有机质超标！,当前值为21.717381#缓效钾超标！,当前值为402.0', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (161, b'1', '超标！', '越河镇东塔', '#有机质超标！,当前值为15.996368#缓效钾超标！,当前值为462.0', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (159, b'1', '超标！', '越河镇东塔', '#有机质超标！,当前值为18.073314#缓效钾超标！,当前值为461.0', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (157, b'1', '超标！', '越河镇东塔', '#有机质超标！,当前值为16.89#缓效钾超标！,当前值为417.0#碱解氮超标！,当前值为:67.7#速效钾超标！,当前值为67.0#有效磷超标！,当前值为21.0#有效锰快要超标！,当前值为14.708', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (158, b'1', '超标！', '越河镇东塔', '#有机质超标！,当前值为16.378879#缓效钾超标！,当前值为446.0#碱解氮超标！,当前值为:65.1#速效钾超标！,当前值为74.0#有效磷超标！,当前值为26.3#有效硫快要超标！,当前值为10.55#有效铁超标！,当前值为17.402#有效锰超标！,当前值为18.236', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (156, b'1', '超标！', '越河镇东塔', '#有机质快要超标！,当前值为12.296225#缓效钾超标！,当前值为412.0', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (155, b'0', '超标！', '东帅甲', '#有机质超标！,当前值为16.4', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (152, b'0', '超标！', '东帅甲', '#有机质超标！,当前值为23.180147', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (153, b'1', '超标！', '东帅甲', '#有机质超标！,当前值为20.021049', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (154, b'0', '超标！', '东帅甲', '#有机质超标！,当前值为17.6', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (151, b'0', '超标！', '东帅甲', '#有机质超标！,当前值为28.494991', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (148, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为22.80347#缓效钾超标！,当前值为443.0', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (149, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为22.77#缓效钾超标！,当前值为424.0', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (150, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为23.77#缓效钾超标！,当前值为311.0', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (146, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为23.92#缓效钾超标！,当前值为525.0', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (147, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为24.01#缓效钾超标！,当前值为346.0', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (143, b'0', '超标！', '大陈庄', '#有机质超标！,当前值为18.3', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (144, b'0', '超标！', '大陈庄', '#有机质超标！,当前值为16.0', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (145, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为25.89#缓效钾超标！,当前值为452.0#碱解氮超标！,当前值为:102.86#速效钾超标！,当前值为116.0#有效磷超标！,当前值为32.087671#有效硫超标！,当前值为16.78#有效铁快要超标！,当前值为12.282#有效锰超标！,当前值为17.998', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (141, b'0', '超标！', '开平镇聂各庄', '#有机质超标！,当前值为18.56#缓效钾超标！,当前值为393.0', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (142, b'0', '超标！', '聂各庄', '#有机质超标！,当前值为20.2', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (139, b'0', '超标！', '开平镇聂各庄', '#有机质快要超标！,当前值为12.16#缓效钾超标！,当前值为339.0', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (140, b'0', '超标！', '开平镇聂各庄', '#有机质超标！,当前值为16.32#缓效钾超标！,当前值为383.0#碱解氮超标！,当前值为:62.5#速效钾超标！,当前值为65.0#有效磷超标！,当前值为55.9#有效铁超标！,当前值为29.26#有效锰超标！,当前值为21.448', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (136, b'0', '超标！', '开平镇聂各庄', '#有机质快要超标！,当前值为14.240672#缓效钾超标！,当前值为340.0', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (133, b'0', '超标！', '开平镇聂各庄', '#有机质超标！,当前值为15.947612#缓效钾超标！,当前值为432.0', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (134, b'0', '超标！', '开平镇聂各庄', '#有机质超标！,当前值为18.16#缓效钾超标！,当前值为362.0', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (137, b'0', '超标！', '开平镇聂各庄', '#有机质快要超标！,当前值为14.06767#缓效钾超标！,当前值为316.0', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (138, b'0', '超标！', '开平镇聂各庄', '#有机质快要超标！,当前值为14.12#缓效钾超标！,当前值为322.0', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (135, b'0', '超标！', '开平镇聂各庄', '#有机质快要超标！,当前值为12.27#缓效钾超标！,当前值为750.0', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (132, b'0', '超标！', '开平镇聂各庄', '#有机质超标！,当前值为18.976405#缓效钾超标！,当前值为470.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (130, b'0', '超标！', '越河镇康各庄', '#有机质超标！,当前值为19.982192#缓效钾超标！,当前值为700.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (131, b'0', '超标！', '越河镇康各庄', '#有机质超标！,当前值为19.630982#缓效钾超标！,当前值为432.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (129, b'0', '超标！', '越河镇康各庄', '#有机质超标！,当前值为20.879888#缓效钾超标！,当前值为505.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (128, b'0', '超标！', '越河镇康各庄', '#有机质超标！,当前值为19.929779#缓效钾超标！,当前值为452.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (125, b'0', '超标！', '越河镇康各庄', '#有机质超标！,当前值为17.400234#缓效钾超标！,当前值为451.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (126, b'0', '超标！', '越河镇康各庄', '#有机质超标！,当前值为17.855056#缓效钾超标！,当前值为386.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (127, b'0', '超标！', '越河镇康各庄', '#有机质超标！,当前值为16.665689#缓效钾超标！,当前值为473.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (124, b'1', '超标！', '越河镇康各庄', '#有机质超标！,当前值为19.381054#缓效钾超标！,当前值为484.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (123, b'1', '超标！', '开平镇欢套', '#有机质快要超标！,当前值为14.701682#缓效钾超标！,当前值为309.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (122, b'0', '超标！', '开平镇欢套', '#有机质超标！,当前值为15.51#缓效钾超标！,当前值为376.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (121, b'0', '超标！', '开平镇欢套', '#有机质快要超标！,当前值为14.030553#缓效钾超标！,当前值为332.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (120, b'0', '超标！', '开平镇欢套', '#有机质超标！,当前值为17.357518#缓效钾超标！,当前值为412.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (116, b'0', '超标！', '开平镇欢套', '#有机质快要超标！,当前值为11.493638#缓效钾超标！,当前值为338.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (117, b'0', '超标！', '开平镇欢套', '#有机质快要超标！,当前值为13.98443#缓效钾超标！,当前值为306.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (118, b'0', '超标！', '开平镇欢套', '#有机质超标！,当前值为16.3#缓效钾超标！,当前值为373.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (119, b'0', '超标！', '开平镇欢套', '#有机质超标！,当前值为17.877503#缓效钾超标！,当前值为393.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (114, b'0', '超标！', '开平镇欢套', '#有机质快要超标！,当前值为12.58#缓效钾超标！,当前值为310.0#碱解氮超标！,当前值为:65.1#速效钾超标！,当前值为94.0#有效磷超标！,当前值为38.2#有效硫超标！,当前值为19.42#有效铁超标！,当前值为31.868#有效锰超标！,当前值为19.968', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (115, b'0', '超标！', '开平镇欢套', '#有机质快要超标！,当前值为12.6#缓效钾超标！,当前值为395.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (113, b'0', '超标！', '开平镇欢套', '#有机质快要超标！,当前值为12.4#缓效钾超标！,当前值为283.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (112, b'0', '超标！', '开平镇欢套', '#有机质快要超标！,当前值为12.89#缓效钾超标！,当前值为302.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (111, b'0', '超标！', '开平镇欢套', '#有机质快要超标！,当前值为12.31#缓效钾超标！,当前值为290.0#碱解氮超标！,当前值为:50.78#速效钾超标！,当前值为74.0#有效磷超标！,当前值为27.0#有效硫快要超标！,当前值为10.07#有效铁超标！,当前值为22.758#有效锰超标！,当前值为17.426', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (110, b'0', '超标！', '开平镇欢套', '#有机质超标！,当前值为15.85#缓效钾超标！,当前值为289.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (109, b'0', '超标！', '开平镇欢套', '#有机质快要超标！,当前值为14.98#缓效钾超标！,当前值为465.0', '2019-04-05 17:21:11');
INSERT INTO `warning` VALUES (162, b'1', '超标！', '越河镇东塔', '#有机质超标！,当前值为16.12#缓效钾超标！,当前值为604.0', '2019-04-05 17:21:12');
INSERT INTO `warning` VALUES (163, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为22.80347#缓效钾超标！,当前值为443.0', '2019-04-05 19:09:10');
INSERT INTO `warning` VALUES (164, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为22.80347#缓效钾超标！,当前值为443.0', '2019-04-05 19:10:24');
INSERT INTO `warning` VALUES (165, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为22.80347#缓效钾超标！,当前值为443.0', '2019-04-05 19:11:09');
INSERT INTO `warning` VALUES (166, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为22.80347#缓效钾超标！,当前值为443.0', '2019-04-05 19:23:31');
INSERT INTO `warning` VALUES (167, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为22.80347#缓效钾超标！,当前值为443.0', '2019-04-05 19:25:00');
INSERT INTO `warning` VALUES (168, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为22.80347#缓效钾超标！,当前值为443.0', '2019-04-05 19:27:27');
INSERT INTO `warning` VALUES (169, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为22.80347#缓效钾超标！,当前值为443.0', '2019-04-05 19:27:30');
INSERT INTO `warning` VALUES (170, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为22.80347#缓效钾超标！,当前值为443.0', '2019-04-05 19:28:06');
INSERT INTO `warning` VALUES (171, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为22.80347#缓效钾超标！,当前值为443.0', '2019-04-05 19:28:30');
INSERT INTO `warning` VALUES (172, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为22.80347#缓效钾超标！,当前值为443.0', '2019-04-05 19:29:33');
INSERT INTO `warning` VALUES (173, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为22.80347#缓效钾超标！,当前值为443.0', '2019-04-05 19:31:09');
INSERT INTO `warning` VALUES (174, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为22.80347#缓效钾超标！,当前值为443.0', '2019-04-05 19:31:42');
INSERT INTO `warning` VALUES (175, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为22.80347#缓效钾超标！,当前值为443.0', '2019-04-05 19:32:51');
INSERT INTO `warning` VALUES (176, b'0', '超标！', '开平镇丰山', '#有机质超标！,当前值为24.01#缓效钾超标！,当前值为346.0', '2019-04-05 19:33:00');
INSERT INTO `warning` VALUES (177, b'1', '超标！', '开平镇丰山', '#有机质超标！,当前值为22.80347#缓效钾超标！,当前值为443.0', '2019-04-05 19:33:17');
INSERT INTO `warning` VALUES (178, b'1', '超标！', '开平镇丰山', '#有机质超标！,当前值为22.80347#缓效钾超标！,当前值为443.0', '2019-04-05 19:35:29');
INSERT INTO `warning` VALUES (179, b'1', '超标！', '开平镇丰山', '#有机质超标！,当前值为24.01#缓效钾超标！,当前值为346.0', '2019-04-05 19:35:34');

SET FOREIGN_KEY_CHECKS = 1;
