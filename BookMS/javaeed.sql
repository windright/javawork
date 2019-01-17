/*
 Navicat Premium Data Transfer

 Source Server         : localmysql
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : javaeed

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 01/01/2019 22:51:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `published` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` date NULL DEFAULT NULL,
  `category` enum('shaoer','wenxue','keji','yinyue','meishu') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'wenxue',
  `price` decimal(10, 2) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('9787530211564', '人生', '北京十月文艺出版社', '2012-03-01', 'wenxue', 17.30);
INSERT INTO `book` VALUES ('9787532742929', '挪威的森林', '上海译文出版社', '2018-12-13', 'wenxue', 23.10);
INSERT INTO `book` VALUES ('9787513312103', '高等数学', '兰州大学出版社', '2013-06-01', 'wenxue', 30.80);
INSERT INTO `book` VALUES ('9787530216774', '平凡的世界', '北京十月文艺出版社', '2017-06-01', 'wenxue', 39.80);
INSERT INTO `book` VALUES ('9787550023338', '野性的呼唤', '百花洲文艺出版社', '2017-08-01', 'wenxue', 39.80);
INSERT INTO `book` VALUES ('9787539789842', '父与子', '安徽少年儿童出版社', '2015-06-01', 'shaoer', 16.80);
INSERT INTO `book` VALUES ('9787539552118', '三字经', '福建少年儿童出版社', '2015-06-01', 'shaoer', 15.80);
INSERT INTO `book` VALUES ('9787536692930', '三体', '重庆出版集团', '2008-01-01', 'keji', 13.80);
INSERT INTO `book` VALUES ('9787806928363', '乐理视唱练耳考级教程', '上海音乐学院出版社', '2013-04-01', 'yinyue', 50.00);
INSERT INTO `book` VALUES ('9787562121619', '中国民间音乐概述', '西南师范大学出版社', '2011-04-01', 'yinyue', 23.90);
INSERT INTO `book` VALUES ('9787101096231', '曲院风荷', '中华书局', '2014-03-01', 'meishu', 36.00);
INSERT INTO `book` VALUES ('9787515320946', '美术考级', '中国青年出版社', '2014-01-01', 'meishu', 55.10);
INSERT INTO `book` VALUES ('0804176981', 'The Culture Code: The Secrets of Highly Successful Groups', 'Bantam', '2018-01-30', 'wenxue', 19.04);

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `readernick` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `readerid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bookname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bookid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `time` date NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES ('1', 'user1_', '320150000001', '第七天', '9787513312103', '2018-12-13', '2018-12-16');
INSERT INTO `borrow` VALUES ('2', 'user1_', '320150000001', '三字经', '9787539552118', '2018-12-25', '2018-12-27');

-- ----------------------------
-- Table structure for reader
-- ----------------------------
DROP TABLE IF EXISTS `reader`;
CREATE TABLE `reader`  (
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `studentid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `profession` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hobby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birth` date NULL DEFAULT NULL,
  `grade` enum('1','2','3','4') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reader
-- ----------------------------
INSERT INTO `reader` VALUES ('user1_', 'yasuo', '320150000001', 'information science&engineering', 'culture', 'swim', '1996-06-01', '2');
INSERT INTO `reader` VALUES ('user2_', 'gailun', '320150000002', 'physics', 'nuclear physics', 'excersise', '1995-06-01', '3');
INSERT INTO `reader` VALUES ('user3_', 'fengnv', '320150000003', 'math', 'math', 'ping pang ball', '1996-08-01', '1');
INSERT INTO `reader` VALUES ('user4_', 'jianmo', '320150000004', 'music', 'classic music', 'basketball', '1996-09-01', '1');
INSERT INTO `reader` VALUES ('root1_', 'hanbing', '320150000005', 'information science&engineering', 'computer science', 'games', '1996-07-01', '1');
INSERT INTO `reader` VALUES ('user5_', 'jiqiren', '320150000007', 'culture', 'culture', 'swim', '1995-01-02', '2');

-- ----------------------------
-- Table structure for root_login
-- ----------------------------
DROP TABLE IF EXISTS `root_login`;
CREATE TABLE `root_login`  (
  `rootname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rootpasswd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of root_login
-- ----------------------------
INSERT INTO `root_login` VALUES ('root1_', 'Aa');

-- ----------------------------
-- Table structure for user_login
-- ----------------------------
DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userpasswd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_login
-- ----------------------------
INSERT INTO `user_login` VALUES ('user1_', 'Aa');
INSERT INTO `user_login` VALUES ('user2_', 'Aa');
INSERT INTO `user_login` VALUES ('user3_', 'Aa');
INSERT INTO `user_login` VALUES ('user4_', 'Aa');
INSERT INTO `user_login` VALUES ('root1_', 'Aa');
INSERT INTO `user_login` VALUES ('user5_', 'Aa');

SET FOREIGN_KEY_CHECKS = 1;
