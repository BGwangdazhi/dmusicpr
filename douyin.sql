/*
Navicat MySQL Data Transfer

Source Server         : shopstore
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : douyin

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2019-04-15 23:07:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_musician
-- ----------------------------
DROP TABLE IF EXISTS `tbl_musician`;
CREATE TABLE `tbl_musician` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `musician` varchar(255) DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL,
  `idcard` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_musician
-- ----------------------------
INSERT INTO `tbl_musician` VALUES ('1', '张三', '78', null, null);
INSERT INTO `tbl_musician` VALUES ('2', '李四', '85', null, null);
INSERT INTO `tbl_musician` VALUES ('3', '王五', '89', null, null);
INSERT INTO `tbl_musician` VALUES ('13', '王二麻子', '王二麻子', '', '');
INSERT INTO `tbl_musician` VALUES ('14', 'qw', 'qw', 'qw', '');
INSERT INTO `tbl_musician` VALUES ('15', '嗯嗯', '嗯嗯', '嗯嗯', '');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for tbl_video
-- ----------------------------
DROP TABLE IF EXISTS `tbl_video`;
CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_video
-- ----------------------------
INSERT INTO `tbl_video` VALUES ('1', '/dmusic/video/video1.mp4');
