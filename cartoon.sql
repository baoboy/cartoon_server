/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50703
Source Host           : localhost:3306
Source Database       : cartoon

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2015-04-28 21:43:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bussiness_admin
-- ----------------------------
DROP TABLE IF EXISTS `bussiness_admin`;
CREATE TABLE `bussiness_admin` (
  `ChannelId` varchar(255) NOT NULL,
  `pwd` varchar(255) DEFAULT '1234',
  PRIMARY KEY (`ChannelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bussiness_admin
-- ----------------------------
INSERT INTO `bussiness_admin` VALUES ('admin', '1234');

-- ----------------------------
-- Table structure for bussiness_record
-- ----------------------------
DROP TABLE IF EXISTS `bussiness_record`;
CREATE TABLE `bussiness_record` (
  `nID` int(11) NOT NULL AUTO_INCREMENT,
  `MsgType` varchar(255) NOT NULL,
  `PayCode` varchar(255) NOT NULL,
  `TradeId` varchar(255) NOT NULL,
  `AppId` varchar(255) NOT NULL,
  `ProgramId` varchar(255) DEFAULT NULL,
  `ApData` varchar(255) NOT NULL,
  `ChannelId` varchar(255) DEFAULT NULL,
  `SubsId` bigint(20) NOT NULL,
  `Cost` bigint(20) NOT NULL,
  `ChargeTime` bigint(20) NOT NULL,
  `ChargeType` varchar(255) NOT NULL,
  PRIMARY KEY (`nID`)
) ENGINE=InnoDB AUTO_INCREMENT=3208 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bussiness_record
-- ----------------------------
INSERT INTO `bussiness_record` VALUES ('3203', 'ChargedNotifyReq', '', '15030910234032828092', '300000006181', '4453', '0123456789abcdef', '', '429561024194286', '100', '20150309102342', '102');
INSERT INTO `bussiness_record` VALUES ('3204', 'ChargedNotifyReq', '', '15030910240912261304', '300000006181', '4453', '0123456789abcdef', '', '714290236714396', '300', '20150309102410', '102');
INSERT INTO `bussiness_record` VALUES ('3205', 'ChargedNotifyReq', '', '15030910315332831415', '300000006181', '4453', '0123456789abcdef', '', '371420566591011', '100', '20150309103154', '102');
INSERT INTO `bussiness_record` VALUES ('3206', 'ChargedNotifyReq', '', '15030910360332831421', '300000006181', '4453', '0123456789abcdef', '', '371421039979785', '10', '20150309103605', '102');
INSERT INTO `bussiness_record` VALUES ('3207', 'ChargedNotifyReq', '', '15030910413612259125', '300000006181', '4453', '0123456789abcdef', '', '714290322542266', '100', '20150309104137', '102');

-- ----------------------------
-- Table structure for cartoon_content_image_list
-- ----------------------------
DROP TABLE IF EXISTS `cartoon_content_image_list`;
CREATE TABLE `cartoon_content_image_list` (
  `cartoon_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `cartoon_id` int(11) DEFAULT NULL,
  `cartoon_title_id` int(11) DEFAULT NULL,
  `cartoon_image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cartoon_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cartoon_content_image_list
-- ----------------------------
INSERT INTO `cartoon_content_image_list` VALUES ('113', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/1.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('114', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/2.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('115', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/3.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('116', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/4.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('117', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/5.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('118', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/6.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('119', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/7.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('120', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/8.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('121', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/9.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('122', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/10.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('123', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/11.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('124', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/12.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('125', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/13.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('126', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/14.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('127', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/15.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('128', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/16.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('129', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/17.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('130', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/18.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('131', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/19.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('132', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/20.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('133', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/21.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('134', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/22.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('135', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/23.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('136', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/24.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('137', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/25.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('138', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/26.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('139', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/27.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('140', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/28.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('141', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/29.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('142', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/30.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('143', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/31.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('144', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/32.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('145', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/33.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('146', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/34.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('147', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/35.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('148', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/36.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('149', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/37.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('150', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/38.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('151', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/39.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('152', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/40.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('153', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/41.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('154', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/42.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('155', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/43.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('156', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/44.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('157', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/45.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('158', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/46.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('159', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/47.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('160', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/48.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('161', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/49.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('162', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/50.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('163', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/51.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('164', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/52.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('165', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/53.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('166', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/54.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('167', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/55.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('168', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/56.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('169', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/57.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('170', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/58.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('171', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/59.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('172', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/60.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('173', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/61.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('174', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/62.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('175', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/63.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('176', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/64.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('177', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/65.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('178', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/66.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('179', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/67.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('180', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/68.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('181', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/69.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('182', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/70.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('183', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/71.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('184', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/72.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('185', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/73.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('186', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/74.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('187', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/75.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('188', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/76.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('189', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/77.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('190', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/78.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('191', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/79.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('192', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/80.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('193', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/81.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('194', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/82.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('195', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/83.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('196', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/84.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('197', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/85.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('198', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/86.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('199', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/87.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('200', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/88.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('201', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/89.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('202', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/90.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('203', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/91.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('204', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/92.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('205', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/93.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('206', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/94.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('207', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/95.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('208', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/96.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('209', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/97.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('210', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/98.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('211', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/99.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('212', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/100.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('213', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/101.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('214', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/102.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('215', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/103.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('216', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/104.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('217', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/105.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('218', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/106.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('219', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/107.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('220', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/108.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('221', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/109.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('222', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/110.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('223', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/111.jpg');
INSERT INTO `cartoon_content_image_list` VALUES ('224', '1001', '101', 'http://192.168.1.102:8080/CartoonServer/cartoon_picture/zhuangzi/zhuangzi_1/112.jpg');

-- ----------------------------
-- Table structure for cartoon_content_list
-- ----------------------------
DROP TABLE IF EXISTS `cartoon_content_list`;
CREATE TABLE `cartoon_content_list` (
  `cartoon_id` int(11) NOT NULL,
  `cartoon_title_id` int(11) DEFAULT NULL,
  `cartoon_title` varchar(11) DEFAULT NULL,
  `cartoon_title_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cartoon_content_list
-- ----------------------------
INSERT INTO `cartoon_content_list` VALUES ('1001', '101', '第1话', null);
INSERT INTO `cartoon_content_list` VALUES ('1001', '102', '第2话', null);
INSERT INTO `cartoon_content_list` VALUES ('1001', '103', '第3话', null);
INSERT INTO `cartoon_content_list` VALUES ('1002', '101', '第1话', null);
INSERT INTO `cartoon_content_list` VALUES ('1002', '102', '第2话', null);
INSERT INTO `cartoon_content_list` VALUES ('1002', '103', '第3话', null);
INSERT INTO `cartoon_content_list` VALUES ('1002', '104', '第4话', null);
INSERT INTO `cartoon_content_list` VALUES ('1002', '105', '第5话', null);
INSERT INTO `cartoon_content_list` VALUES ('1002', '106', '第6话', null);
INSERT INTO `cartoon_content_list` VALUES ('1002', '107', '第7话', null);
INSERT INTO `cartoon_content_list` VALUES ('1002', '108', '第8话', null);
INSERT INTO `cartoon_content_list` VALUES ('1002', '109', '第9话', null);
INSERT INTO `cartoon_content_list` VALUES ('1002', '110', '第10话', null);
INSERT INTO `cartoon_content_list` VALUES ('1002', '111', '第11话', null);
INSERT INTO `cartoon_content_list` VALUES ('1002', '112', '第12话', null);
INSERT INTO `cartoon_content_list` VALUES ('1002', '113', '第13话', null);
INSERT INTO `cartoon_content_list` VALUES ('1002', '114', '第14话', null);
INSERT INTO `cartoon_content_list` VALUES ('1003', '101', '第1话', null);
INSERT INTO `cartoon_content_list` VALUES ('1003', '102', '第2话', null);
INSERT INTO `cartoon_content_list` VALUES ('1003', '103', '第3话', null);
INSERT INTO `cartoon_content_list` VALUES ('1003', '104', '第4话', null);
INSERT INTO `cartoon_content_list` VALUES ('1003', '105', '第5话', null);
INSERT INTO `cartoon_content_list` VALUES ('1003', '106', '第6话', null);
INSERT INTO `cartoon_content_list` VALUES ('1003', '107', '第7话', null);
INSERT INTO `cartoon_content_list` VALUES ('1003', '108', '第8话', null);
INSERT INTO `cartoon_content_list` VALUES ('1003', '109', '第9话', null);
INSERT INTO `cartoon_content_list` VALUES ('1004', '101', '第1话', null);
INSERT INTO `cartoon_content_list` VALUES ('1004', '102', '第2话', null);
INSERT INTO `cartoon_content_list` VALUES ('1004', '103', '第3话', null);
INSERT INTO `cartoon_content_list` VALUES ('1004', '104', '第4话', null);
INSERT INTO `cartoon_content_list` VALUES ('1005', '101', '第1话', null);
INSERT INTO `cartoon_content_list` VALUES ('1005', '102', '第2话', null);
INSERT INTO `cartoon_content_list` VALUES ('1005', '103', '第3话', null);
INSERT INTO `cartoon_content_list` VALUES ('1005', '104', '第4话', null);
INSERT INTO `cartoon_content_list` VALUES ('1005', '105', '第5话', null);

-- ----------------------------
-- Table structure for cartoon_list
-- ----------------------------
DROP TABLE IF EXISTS `cartoon_list`;
CREATE TABLE `cartoon_list` (
  `cartoon_id` int(11) NOT NULL,
  `cartoon_title` varchar(255) DEFAULT NULL,
  `cartoon_category` int(255) DEFAULT '0',
  `cartoon_author` varchar(255) DEFAULT NULL,
  `cartoon_cover_url` varchar(255) DEFAULT NULL,
  `cartoon_star` varchar(255) DEFAULT NULL,
  `cartoon_update` varchar(255) DEFAULT NULL,
  `cartoon_desc` varchar(255) DEFAULT NULL,
  `cartoon_type` int(255) DEFAULT NULL,
  `cartoon_price` float(3,2) DEFAULT '0.50',
  `cartoon_time` bigint(30) DEFAULT NULL,
  `cartoon_pay_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cartoon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cartoon_list
-- ----------------------------
INSERT INTO `cartoon_list` VALUES ('1001', '庄子', '1', '南京启晨兴', 'http://www.timesyw.com:8080/cartoon/cartoon_pictures/zhuangzi/cover.jpg', '5', '更新到3话', '庄子', '1', '1.00', null, '300006181002');
INSERT INTO `cartoon_list` VALUES ('1002', '名人家训', '1', '南京启晨兴', 'http://www.timesyw.com:8080/cartoon/cartoon_pictures/mingrenjiaxun/cover.jpg', '5', '更新到14话', '名人家训', '1', '1.00', null, '300006181002');
INSERT INTO `cartoon_list` VALUES ('1003', '千字文', '1', '南京启辰兴', 'http://www.timesyw.com:8080/cartoon/cartoon_pictures/qianziwen/cover.jpg', '5', '更新到9话', '千字文', '1', '1.00', null, '300006181002');
INSERT INTO `cartoon_list` VALUES ('1004', '幼学琼林', '1', '南京启晨兴', 'http://www.timesyw.com:8080/cartoon/cartoon_pictures/youxueqionglin/cover.jpg', '5', '更新到4话', '幼学琼林', '1', '5.00', null, '300006181004');
INSERT INTO `cartoon_list` VALUES ('1005', '诸子百家', '1', '南京启晨兴', 'http://www.timesyw.com:8080/cartoon/cartoon_pictures/zhuzibaijia/cover.jpg', '5', '更新到5话', '诸子百家', '1', '7.00', null, '300006181005');

-- ----------------------------
-- Table structure for cartoon_recommend
-- ----------------------------
DROP TABLE IF EXISTS `cartoon_recommend`;
CREATE TABLE `cartoon_recommend` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cartoon_recommend
-- ----------------------------
INSERT INTO `cartoon_recommend` VALUES ('1003', '火眼神探司马特', '3话', 'http://www.timesyw.com:8001/cartoon/images/content/hystsmt/cover.jpg');
INSERT INTO `cartoon_recommend` VALUES ('1006', '职场进行时', '15话', 'http://www.timesyw.com:8001/cartoon/images/content/zcjxs/cover.jpg');
INSERT INTO `cartoon_recommend` VALUES ('1007', '顽皮的亮仔', '19话', 'http://www.timesyw.com:8001/cartoon/images/content/wpdlz/cover.jpg');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(11) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '漫画');

-- ----------------------------
-- Table structure for pictures_list
-- ----------------------------
DROP TABLE IF EXISTS `pictures_list`;
CREATE TABLE `pictures_list` (
  `picture_id` int(11) NOT NULL AUTO_INCREMENT,
  `picture_category_id` int(11) DEFAULT NULL,
  `picture_url` varchar(255) DEFAULT NULL,
  `picture_smal_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`picture_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2251 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pictures_list
-- ----------------------------
INSERT INTO `pictures_list` VALUES ('2101', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/1.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_1.jpg');
INSERT INTO `pictures_list` VALUES ('2102', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/2.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_2.jpg');
INSERT INTO `pictures_list` VALUES ('2103', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/3.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_3.jpg');
INSERT INTO `pictures_list` VALUES ('2104', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/4.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_4.jpg');
INSERT INTO `pictures_list` VALUES ('2105', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/5.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_5.jpg');
INSERT INTO `pictures_list` VALUES ('2106', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/6.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_6.jpg');
INSERT INTO `pictures_list` VALUES ('2107', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/7.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_7.jpg');
INSERT INTO `pictures_list` VALUES ('2108', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/8.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_8.jpg');
INSERT INTO `pictures_list` VALUES ('2109', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/9.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_9.jpg');
INSERT INTO `pictures_list` VALUES ('2110', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/10.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_10.jpg');
INSERT INTO `pictures_list` VALUES ('2111', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/11.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_11.jpg');
INSERT INTO `pictures_list` VALUES ('2112', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/12.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_12.jpg');
INSERT INTO `pictures_list` VALUES ('2113', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/13.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_13.jpg');
INSERT INTO `pictures_list` VALUES ('2114', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/14.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_14.jpg');
INSERT INTO `pictures_list` VALUES ('2115', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/15.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_15.jpg');
INSERT INTO `pictures_list` VALUES ('2116', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/16.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_16.jpg');
INSERT INTO `pictures_list` VALUES ('2117', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/17.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_17.jpg');
INSERT INTO `pictures_list` VALUES ('2118', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/18.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_18.jpg');
INSERT INTO `pictures_list` VALUES ('2119', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/19.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_19.jpg');
INSERT INTO `pictures_list` VALUES ('2120', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/20.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_20.jpg');
INSERT INTO `pictures_list` VALUES ('2121', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/21.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_21.jpg');
INSERT INTO `pictures_list` VALUES ('2122', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/22.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_22.jpg');
INSERT INTO `pictures_list` VALUES ('2123', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/23.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_23.jpg');
INSERT INTO `pictures_list` VALUES ('2124', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/24.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_24.jpg');
INSERT INTO `pictures_list` VALUES ('2125', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/25.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_25.jpg');
INSERT INTO `pictures_list` VALUES ('2126', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/26.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_26.jpg');
INSERT INTO `pictures_list` VALUES ('2127', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/27.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_27.jpg');
INSERT INTO `pictures_list` VALUES ('2128', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/28.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_28.jpg');
INSERT INTO `pictures_list` VALUES ('2129', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/29.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_29.jpg');
INSERT INTO `pictures_list` VALUES ('2130', '1', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/30.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/wallpaper/smal_30.jpg');
INSERT INTO `pictures_list` VALUES ('2131', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/1.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_1.jpg');
INSERT INTO `pictures_list` VALUES ('2132', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/2.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_2.jpg');
INSERT INTO `pictures_list` VALUES ('2133', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/3.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_3.jpg');
INSERT INTO `pictures_list` VALUES ('2134', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/4.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_4.jpg');
INSERT INTO `pictures_list` VALUES ('2135', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/5.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_5.jpg');
INSERT INTO `pictures_list` VALUES ('2136', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/6.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_6.jpg');
INSERT INTO `pictures_list` VALUES ('2137', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/7.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_7.jpg');
INSERT INTO `pictures_list` VALUES ('2138', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/8.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_8.jpg');
INSERT INTO `pictures_list` VALUES ('2139', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/9.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_9.jpg');
INSERT INTO `pictures_list` VALUES ('2140', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/10.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_10.jpg');
INSERT INTO `pictures_list` VALUES ('2141', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/11.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_11.jpg');
INSERT INTO `pictures_list` VALUES ('2142', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/12.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_12.jpg');
INSERT INTO `pictures_list` VALUES ('2143', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/13.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_13.jpg');
INSERT INTO `pictures_list` VALUES ('2144', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/14.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_14.jpg');
INSERT INTO `pictures_list` VALUES ('2145', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/15.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_15.jpg');
INSERT INTO `pictures_list` VALUES ('2146', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/16.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_16.jpg');
INSERT INTO `pictures_list` VALUES ('2147', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/17.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_17.jpg');
INSERT INTO `pictures_list` VALUES ('2148', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/18.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_18.jpg');
INSERT INTO `pictures_list` VALUES ('2149', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/19.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_19.jpg');
INSERT INTO `pictures_list` VALUES ('2150', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/20.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_20.jpg');
INSERT INTO `pictures_list` VALUES ('2151', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/21.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_21.jpg');
INSERT INTO `pictures_list` VALUES ('2152', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/22.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_22.jpg');
INSERT INTO `pictures_list` VALUES ('2153', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/23.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_23.jpg');
INSERT INTO `pictures_list` VALUES ('2154', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/24.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_24.jpg');
INSERT INTO `pictures_list` VALUES ('2155', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/25.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_25.jpg');
INSERT INTO `pictures_list` VALUES ('2156', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/26.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_26.jpg');
INSERT INTO `pictures_list` VALUES ('2157', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/27.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_27.jpg');
INSERT INTO `pictures_list` VALUES ('2158', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/28.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_28.jpg');
INSERT INTO `pictures_list` VALUES ('2159', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/29.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_29.jpg');
INSERT INTO `pictures_list` VALUES ('2160', '2', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/30.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/cartoon/smal_30.jpg');
INSERT INTO `pictures_list` VALUES ('2161', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/1.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_1.jpg');
INSERT INTO `pictures_list` VALUES ('2162', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/2.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_2.jpg');
INSERT INTO `pictures_list` VALUES ('2163', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/3.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_3.jpg');
INSERT INTO `pictures_list` VALUES ('2164', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/4.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_4.jpg');
INSERT INTO `pictures_list` VALUES ('2165', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/5.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_5.jpg');
INSERT INTO `pictures_list` VALUES ('2166', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/6.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_6.jpg');
INSERT INTO `pictures_list` VALUES ('2167', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/7.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_7.jpg');
INSERT INTO `pictures_list` VALUES ('2168', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/8.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_8.jpg');
INSERT INTO `pictures_list` VALUES ('2169', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/9.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_9.jpg');
INSERT INTO `pictures_list` VALUES ('2170', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/10.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_10.jpg');
INSERT INTO `pictures_list` VALUES ('2171', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/11.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_11.jpg');
INSERT INTO `pictures_list` VALUES ('2172', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/12.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_12.jpg');
INSERT INTO `pictures_list` VALUES ('2173', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/13.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_13.jpg');
INSERT INTO `pictures_list` VALUES ('2174', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/14.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_14.jpg');
INSERT INTO `pictures_list` VALUES ('2175', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/15.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_15.jpg');
INSERT INTO `pictures_list` VALUES ('2176', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/16.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_16.jpg');
INSERT INTO `pictures_list` VALUES ('2177', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/17.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_17.jpg');
INSERT INTO `pictures_list` VALUES ('2178', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/18.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_18.jpg');
INSERT INTO `pictures_list` VALUES ('2179', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/19.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_19.jpg');
INSERT INTO `pictures_list` VALUES ('2180', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/20.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_20.jpg');
INSERT INTO `pictures_list` VALUES ('2181', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/21.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_21.jpg');
INSERT INTO `pictures_list` VALUES ('2182', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/22.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_22.jpg');
INSERT INTO `pictures_list` VALUES ('2183', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/23.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_23.jpg');
INSERT INTO `pictures_list` VALUES ('2184', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/24.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_24.jpg');
INSERT INTO `pictures_list` VALUES ('2185', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/25.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_25.jpg');
INSERT INTO `pictures_list` VALUES ('2186', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/26.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_26.jpg');
INSERT INTO `pictures_list` VALUES ('2187', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/27.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_27.jpg');
INSERT INTO `pictures_list` VALUES ('2188', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/28.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_28.jpg');
INSERT INTO `pictures_list` VALUES ('2189', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/29.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_29.jpg');
INSERT INTO `pictures_list` VALUES ('2190', '3', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/30.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/beauty/smal_30.jpg');
INSERT INTO `pictures_list` VALUES ('2191', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/1.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_1.jpg');
INSERT INTO `pictures_list` VALUES ('2192', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/2.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_2.jpg');
INSERT INTO `pictures_list` VALUES ('2193', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/3.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_3.jpg');
INSERT INTO `pictures_list` VALUES ('2194', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/4.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_4.jpg');
INSERT INTO `pictures_list` VALUES ('2195', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/5.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_5.jpg');
INSERT INTO `pictures_list` VALUES ('2196', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/6.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_6.jpg');
INSERT INTO `pictures_list` VALUES ('2197', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/7.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_7.jpg');
INSERT INTO `pictures_list` VALUES ('2198', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/8.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_8.jpg');
INSERT INTO `pictures_list` VALUES ('2199', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/9.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_9.jpg');
INSERT INTO `pictures_list` VALUES ('2200', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/10.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_10.jpg');
INSERT INTO `pictures_list` VALUES ('2201', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/11.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_11.jpg');
INSERT INTO `pictures_list` VALUES ('2202', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/12.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_12.jpg');
INSERT INTO `pictures_list` VALUES ('2203', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/13.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_13.jpg');
INSERT INTO `pictures_list` VALUES ('2204', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/14.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_14.jpg');
INSERT INTO `pictures_list` VALUES ('2205', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/15.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_15.jpg');
INSERT INTO `pictures_list` VALUES ('2206', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/16.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_16.jpg');
INSERT INTO `pictures_list` VALUES ('2207', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/17.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_17.jpg');
INSERT INTO `pictures_list` VALUES ('2208', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/18.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_18.jpg');
INSERT INTO `pictures_list` VALUES ('2209', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/19.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_19.jpg');
INSERT INTO `pictures_list` VALUES ('2210', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/20.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_20.jpg');
INSERT INTO `pictures_list` VALUES ('2211', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/21.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_21.jpg');
INSERT INTO `pictures_list` VALUES ('2212', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/22.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_22.jpg');
INSERT INTO `pictures_list` VALUES ('2213', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/23.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_23.jpg');
INSERT INTO `pictures_list` VALUES ('2214', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/24.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_24.jpg');
INSERT INTO `pictures_list` VALUES ('2215', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/25.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_25.jpg');
INSERT INTO `pictures_list` VALUES ('2216', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/26.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_26.jpg');
INSERT INTO `pictures_list` VALUES ('2217', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/27.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_27.jpg');
INSERT INTO `pictures_list` VALUES ('2218', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/28.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_28.jpg');
INSERT INTO `pictures_list` VALUES ('2219', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/29.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_29.jpg');
INSERT INTO `pictures_list` VALUES ('2220', '4', 'http://www.timesyw.com:8080/cartoon/pictures/car/30.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/car/smal_30.jpg');
INSERT INTO `pictures_list` VALUES ('2221', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/1.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_1.jpg');
INSERT INTO `pictures_list` VALUES ('2222', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/2.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_2.jpg');
INSERT INTO `pictures_list` VALUES ('2223', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/3.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_3.jpg');
INSERT INTO `pictures_list` VALUES ('2224', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/4.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_4.jpg');
INSERT INTO `pictures_list` VALUES ('2225', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/5.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_5.jpg');
INSERT INTO `pictures_list` VALUES ('2226', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/6.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_6.jpg');
INSERT INTO `pictures_list` VALUES ('2227', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/7.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_7.jpg');
INSERT INTO `pictures_list` VALUES ('2228', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/8.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_8.jpg');
INSERT INTO `pictures_list` VALUES ('2229', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/9.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_9.jpg');
INSERT INTO `pictures_list` VALUES ('2230', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/10.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_10.jpg');
INSERT INTO `pictures_list` VALUES ('2231', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/11.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_11.jpg');
INSERT INTO `pictures_list` VALUES ('2232', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/12.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_12.jpg');
INSERT INTO `pictures_list` VALUES ('2233', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/13.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_13.jpg');
INSERT INTO `pictures_list` VALUES ('2234', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/14.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_14.jpg');
INSERT INTO `pictures_list` VALUES ('2235', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/15.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_15.jpg');
INSERT INTO `pictures_list` VALUES ('2236', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/16.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_16.jpg');
INSERT INTO `pictures_list` VALUES ('2237', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/17.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_17.jpg');
INSERT INTO `pictures_list` VALUES ('2238', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/18.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_18.jpg');
INSERT INTO `pictures_list` VALUES ('2239', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/19.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_19.jpg');
INSERT INTO `pictures_list` VALUES ('2240', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/20.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_20.jpg');
INSERT INTO `pictures_list` VALUES ('2241', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/21.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_21.jpg');
INSERT INTO `pictures_list` VALUES ('2242', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/22.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_22.jpg');
INSERT INTO `pictures_list` VALUES ('2243', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/23.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_23.jpg');
INSERT INTO `pictures_list` VALUES ('2244', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/24.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_24.jpg');
INSERT INTO `pictures_list` VALUES ('2245', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/25.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_25.jpg');
INSERT INTO `pictures_list` VALUES ('2246', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/26.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_26.jpg');
INSERT INTO `pictures_list` VALUES ('2247', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/27.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_27.jpg');
INSERT INTO `pictures_list` VALUES ('2248', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/28.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_28.jpg');
INSERT INTO `pictures_list` VALUES ('2249', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/29.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_29.jpg');
INSERT INTO `pictures_list` VALUES ('2250', '5', 'http://www.timesyw.com:8080/cartoon/pictures/photography/30.jpg', 'http://www.timesyw.com:8080/cartoon/pictures/photography/smal_30.jpg');

-- ----------------------------
-- Table structure for picture_category
-- ----------------------------
DROP TABLE IF EXISTS `picture_category`;
CREATE TABLE `picture_category` (
  `category_id` int(11) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture_category
-- ----------------------------
INSERT INTO `picture_category` VALUES ('1', '壁纸');
INSERT INTO `picture_category` VALUES ('2', '动漫');
INSERT INTO `picture_category` VALUES ('3', '美女');
INSERT INTO `picture_category` VALUES ('4', '汽车');
INSERT INTO `picture_category` VALUES ('5', '摄影');

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `param1` varchar(255) DEFAULT NULL,
  `param2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES ('1001', '聪明猴与糊涂猴', 'none', 'http://www.timesyw.com:8001/cartoon/images/recommend-2.jpg', null, null, null);
INSERT INTO `recommend` VALUES ('1003', '火眼神探司马特', 'none', 'http://www.timesyw.com:8001/cartoon/images/recommend-1.jpg', null, null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `user_register_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('23', '860623020655856', '2014-11-25 15:54');
INSERT INTO `user` VALUES ('24', '860623020655856', '2014-11-25 17:28');
INSERT INTO `user` VALUES ('25', '359911051968068', '2014-11-26 15:02');
INSERT INTO `user` VALUES ('26', '359911051968068', '2014-11-26 17:27');
INSERT INTO `user` VALUES ('27', '359911051968068', '2014-11-26 17:29');
INSERT INTO `user` VALUES ('28', '359911051968068', '2014-11-26 17:30');
INSERT INTO `user` VALUES ('29', '868128012960597', '2014-12-01 10:55');
INSERT INTO `user` VALUES ('30', '868128012960597', '2014-12-01 11:08');
INSERT INTO `user` VALUES ('31', '868128012960597', '2014-12-01 11:39');
INSERT INTO `user` VALUES ('32', '868128012960597', '2014-12-01 13:32');
INSERT INTO `user` VALUES ('33', '868128012960597', '2014-12-01 13:35');
INSERT INTO `user` VALUES ('34', '359911051968068', '2014-12-01 16:12');
INSERT INTO `user` VALUES ('35', '004999010640000', '2014-12-01 17:35');
INSERT INTO `user` VALUES ('36', '868128012960597', '2014-12-02 11:50');
INSERT INTO `user` VALUES ('37', '860623020655856', '2014-12-02 12:35');
INSERT INTO `user` VALUES ('38', '860623020655856', '2014-12-03 13:46');
INSERT INTO `user` VALUES ('39', '860623020655856', '2014-12-03 13:49');
INSERT INTO `user` VALUES ('40', '860623020655856', '2014-12-03 13:52');
INSERT INTO `user` VALUES ('41', '359911051968068', '2014-12-03 16:09');
INSERT INTO `user` VALUES ('42', '359911051968068', '2014-12-03 16:36');
INSERT INTO `user` VALUES ('43', '860623020655856', '2014-12-05 10:01');
INSERT INTO `user` VALUES ('44', '860623020655856', '2014-12-05 10:08');
INSERT INTO `user` VALUES ('45', '860623020655856', '2014-12-05 10:11');
INSERT INTO `user` VALUES ('46', '359911051968068', '2014-12-05 16:25');
INSERT INTO `user` VALUES ('47', '864691028744630', '2014-12-09 16:12');
INSERT INTO `user` VALUES ('48', '359911051968068', '2014-12-10 15:34');
INSERT INTO `user` VALUES ('49', '359911051968068', '2014-12-11 15:49');
INSERT INTO `user` VALUES ('50', '862958021170242', '2014-12-12 08:59');
INSERT INTO `user` VALUES ('51', '863151024180918', '2014-12-12 10:07');
INSERT INTO `user` VALUES ('52', '359911051968068', '2014-12-12 10:10');
INSERT INTO `user` VALUES ('53', '357071050157296', '2014-12-12 10:55');
INSERT INTO `user` VALUES ('54', '867064012067508', '2014-12-12 10:56');
INSERT INTO `user` VALUES ('55', '357071050157296', '2014-12-12 11:25');
INSERT INTO `user` VALUES ('56', '355136058169784', '2014-12-12 11:37');
INSERT INTO `user` VALUES ('57', '863121025139049', '2014-12-12 11:40');
INSERT INTO `user` VALUES ('58', '379489607424', '2014-12-12 14:36');
INSERT INTO `user` VALUES ('59', '860623020655856', '2014-12-18 11:04');
INSERT INTO `user` VALUES ('60', '359911051968068', '2014-12-19 09:46');
INSERT INTO `user` VALUES ('61', '359911051968068', '2014-12-19 11:19');
INSERT INTO `user` VALUES ('62', '863151024180918', '2014-12-19 15:14');
INSERT INTO `user` VALUES ('63', '860623020655856', '2014-12-30 14:23');
INSERT INTO `user` VALUES ('64', '868128012960597', '2014-12-30 14:24');
INSERT INTO `user` VALUES ('65', '868128012960597', '2015-01-05 14:21');
INSERT INTO `user` VALUES ('66', '1420557324968', '2015-01-05 15:13');
INSERT INTO `user` VALUES ('67', '359911051968068', '2015-01-05 17:45');
INSERT INTO `user` VALUES ('68', '359911051968068', '2015-01-07 14:44');
INSERT INTO `user` VALUES ('69', '359911051968068', '2015-01-09 11:16');
INSERT INTO `user` VALUES ('70', '863121029243359', '2015-01-15 11:06');
INSERT INTO `user` VALUES ('71', '867083012223556', '2015-01-21 15:57');
INSERT INTO `user` VALUES ('72', '863121029243359', '2015-01-22 09:49');
INSERT INTO `user` VALUES ('73', '865267028319365', '2015-01-22 10:49');
INSERT INTO `user` VALUES ('74', '868128012960597', '2015-01-22 14:36');
INSERT INTO `user` VALUES ('75', '868128012960597', '2015-01-22 14:48');
INSERT INTO `user` VALUES ('76', '860623020655856', '2015-01-22 14:54');
INSERT INTO `user` VALUES ('77', '356393041549337', '2015-01-26 14:23');
INSERT INTO `user` VALUES ('78', '359911051968068', '2015-01-29 11:20');
INSERT INTO `user` VALUES ('79', '860623020655856', '2015-01-30 17:27');
INSERT INTO `user` VALUES ('80', '868128012960597', '2015-01-30 17:28');
INSERT INTO `user` VALUES ('81', '863121029243359', '2015-02-04 10:17');
INSERT INTO `user` VALUES ('82', '359911051968068', '2015-02-04 10:47');
INSERT INTO `user` VALUES ('83', '860623020655856', '2015-02-04 11:30');
INSERT INTO `user` VALUES ('84', '865267028319365', '2015-02-05 18:08');
INSERT INTO `user` VALUES ('85', '359911051968068', '2015-02-12 15:35');
INSERT INTO `user` VALUES ('86', '359911051968068', '2015-02-28 16:00');
INSERT INTO `user` VALUES ('87', '359911051968068', '2015-03-05 09:49');
INSERT INTO `user` VALUES ('88', '359911051968068', '2015-03-12 10:26');

-- ----------------------------
-- Table structure for user_pay_state
-- ----------------------------
DROP TABLE IF EXISTS `user_pay_state`;
CREATE TABLE `user_pay_state` (
  `user_id` varchar(255) NOT NULL,
  `cartoon_id` int(11) DEFAULT NULL,
  `cartoon_pay_state` int(11) DEFAULT NULL,
  `cartoon_pay_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_pay_state
-- ----------------------------
INSERT INTO `user_pay_state` VALUES ('359911051968068', '1001', '1', '2014-11-26 15:03');
INSERT INTO `user_pay_state` VALUES ('359911051968068', '1002', '1', '2014-11-26 15:04');
INSERT INTO `user_pay_state` VALUES ('359911051968068', '1006', '1', '2014-11-26 15:09');
INSERT INTO `user_pay_state` VALUES ('359911051968068', '1007', '1', '2014-11-26 17:31');
