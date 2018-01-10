/*
Navicat MySQL Data Transfer

Source Server         : dang
Source Server Version : 50624
Source Host           : 127.0.0.1:3306
Source Database       : huoyun

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2018-01-10 13:16:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gr_dep
-- ----------------------------
DROP TABLE IF EXISTS `gr_dep`;
CREATE TABLE `gr_dep` (
  `grid` int(11) NOT NULL,
  `depid` int(11) NOT NULL,
  PRIMARY KEY (`grid`,`depid`),
  UNIQUE KEY `depid` (`depid`),
  UNIQUE KEY `depid_2` (`depid`),
  KEY `FKB63652BB7A8B2D93` (`grid`),
  KEY `FKB63652BBF0AD3225` (`depid`),
  CONSTRAINT `FKB63652BB7A8B2D93` FOREIGN KEY (`grid`) REFERENCES `t_gruser` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKB63652BBF0AD3225` FOREIGN KEY (`depid`) REFERENCES `t_deopt` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gr_dep
-- ----------------------------
INSERT INTO `gr_dep` VALUES ('14', '26');
INSERT INTO `gr_dep` VALUES ('14', '27');
INSERT INTO `gr_dep` VALUES ('14', '28');
INSERT INTO `gr_dep` VALUES ('14', '29');
INSERT INTO `gr_dep` VALUES ('14', '30');
INSERT INTO `gr_dep` VALUES ('14', '31');
INSERT INTO `gr_dep` VALUES ('14', '32');
INSERT INTO `gr_dep` VALUES ('14', '33');
INSERT INTO `gr_dep` VALUES ('14', '34');
INSERT INTO `gr_dep` VALUES ('14', '35');
INSERT INTO `gr_dep` VALUES ('14', '36');
INSERT INTO `gr_dep` VALUES ('14', '37');
INSERT INTO `gr_dep` VALUES ('14', '38');
INSERT INTO `gr_dep` VALUES ('14', '39');
INSERT INTO `gr_dep` VALUES ('14', '40');
INSERT INTO `gr_dep` VALUES ('14', '41');
INSERT INTO `gr_dep` VALUES ('14', '42');
INSERT INTO `gr_dep` VALUES ('14', '43');
INSERT INTO `gr_dep` VALUES ('14', '44');
INSERT INTO `gr_dep` VALUES ('14', '45');
INSERT INTO `gr_dep` VALUES ('14', '46');
INSERT INTO `gr_dep` VALUES ('14', '47');
INSERT INTO `gr_dep` VALUES ('14', '48');
INSERT INTO `gr_dep` VALUES ('14', '49');
INSERT INTO `gr_dep` VALUES ('23', '50');

-- ----------------------------
-- Table structure for gr_fre
-- ----------------------------
DROP TABLE IF EXISTS `gr_fre`;
CREATE TABLE `gr_fre` (
  `grid` int(11) NOT NULL,
  `freid` int(11) NOT NULL,
  PRIMARY KEY (`grid`,`freid`),
  UNIQUE KEY `freid` (`freid`),
  UNIQUE KEY `freid_2` (`freid`),
  KEY `FKB6365BC5A2C31720` (`freid`),
  KEY `FKB6365BC57A8B2D93` (`grid`),
  CONSTRAINT `FKB6365BC57A8B2D93` FOREIGN KEY (`grid`) REFERENCES `t_gruser` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKB6365BC5A2C31720` FOREIGN KEY (`freid`) REFERENCES `t_freight` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gr_fre
-- ----------------------------
INSERT INTO `gr_fre` VALUES ('14', '25');
INSERT INTO `gr_fre` VALUES ('14', '26');
INSERT INTO `gr_fre` VALUES ('14', '27');
INSERT INTO `gr_fre` VALUES ('14', '28');
INSERT INTO `gr_fre` VALUES ('14', '29');
INSERT INTO `gr_fre` VALUES ('14', '30');
INSERT INTO `gr_fre` VALUES ('14', '31');
INSERT INTO `gr_fre` VALUES ('14', '32');
INSERT INTO `gr_fre` VALUES ('14', '33');
INSERT INTO `gr_fre` VALUES ('14', '34');
INSERT INTO `gr_fre` VALUES ('14', '35');
INSERT INTO `gr_fre` VALUES ('14', '36');
INSERT INTO `gr_fre` VALUES ('14', '37');
INSERT INTO `gr_fre` VALUES ('14', '38');
INSERT INTO `gr_fre` VALUES ('14', '39');
INSERT INTO `gr_fre` VALUES ('14', '40');
INSERT INTO `gr_fre` VALUES ('14', '41');
INSERT INTO `gr_fre` VALUES ('14', '42');
INSERT INTO `gr_fre` VALUES ('14', '43');
INSERT INTO `gr_fre` VALUES ('14', '44');
INSERT INTO `gr_fre` VALUES ('14', '45');
INSERT INTO `gr_fre` VALUES ('14', '46');
INSERT INTO `gr_fre` VALUES ('14', '47');
INSERT INTO `gr_fre` VALUES ('14', '48');
INSERT INTO `gr_fre` VALUES ('14', '50');
INSERT INTO `gr_fre` VALUES ('23', '53');

-- ----------------------------
-- Table structure for gr_tru
-- ----------------------------
DROP TABLE IF EXISTS `gr_tru`;
CREATE TABLE `gr_tru` (
  `grid` int(11) NOT NULL,
  `truid` int(11) NOT NULL,
  PRIMARY KEY (`grid`,`truid`),
  UNIQUE KEY `truid` (`truid`),
  UNIQUE KEY `truid_2` (`truid`),
  KEY `FKB63690637A8B2D93` (`grid`),
  KEY `FKB6369063F27C1B9A` (`truid`),
  CONSTRAINT `FKB63690637A8B2D93` FOREIGN KEY (`grid`) REFERENCES `t_gruser` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKB6369063F27C1B9A` FOREIGN KEY (`truid`) REFERENCES `t_truck` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gr_tru
-- ----------------------------
INSERT INTO `gr_tru` VALUES ('14', '31');
INSERT INTO `gr_tru` VALUES ('14', '32');
INSERT INTO `gr_tru` VALUES ('14', '33');
INSERT INTO `gr_tru` VALUES ('14', '34');
INSERT INTO `gr_tru` VALUES ('14', '35');
INSERT INTO `gr_tru` VALUES ('14', '36');
INSERT INTO `gr_tru` VALUES ('14', '37');
INSERT INTO `gr_tru` VALUES ('14', '38');
INSERT INTO `gr_tru` VALUES ('14', '39');
INSERT INTO `gr_tru` VALUES ('14', '40');
INSERT INTO `gr_tru` VALUES ('14', '41');
INSERT INTO `gr_tru` VALUES ('14', '42');
INSERT INTO `gr_tru` VALUES ('14', '43');
INSERT INTO `gr_tru` VALUES ('14', '44');
INSERT INTO `gr_tru` VALUES ('14', '45');
INSERT INTO `gr_tru` VALUES ('14', '46');
INSERT INTO `gr_tru` VALUES ('14', '47');
INSERT INTO `gr_tru` VALUES ('14', '58');
INSERT INTO `gr_tru` VALUES ('14', '59');
INSERT INTO `gr_tru` VALUES ('14', '60');
INSERT INTO `gr_tru` VALUES ('14', '61');
INSERT INTO `gr_tru` VALUES ('14', '62');
INSERT INTO `gr_tru` VALUES ('14', '63');
INSERT INTO `gr_tru` VALUES ('14', '64');
INSERT INTO `gr_tru` VALUES ('14', '65');
INSERT INTO `gr_tru` VALUES ('14', '66');
INSERT INTO `gr_tru` VALUES ('14', '67');

-- ----------------------------
-- Table structure for qy_dep
-- ----------------------------
DROP TABLE IF EXISTS `qy_dep`;
CREATE TABLE `qy_dep` (
  `qyid` int(11) NOT NULL,
  `depid` int(11) NOT NULL,
  PRIMARY KEY (`qyid`,`depid`),
  UNIQUE KEY `depid` (`depid`),
  UNIQUE KEY `depid_2` (`depid`),
  KEY `FKC7A96D788C02EE4D` (`qyid`),
  KEY `FKC7A96D78F0AD3225` (`depid`),
  CONSTRAINT `FKC7A96D788C02EE4D` FOREIGN KEY (`qyid`) REFERENCES `t_qyuser` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKC7A96D78F0AD3225` FOREIGN KEY (`depid`) REFERENCES `t_deopt` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qy_dep
-- ----------------------------
INSERT INTO `qy_dep` VALUES ('10', '2');
INSERT INTO `qy_dep` VALUES ('10', '3');
INSERT INTO `qy_dep` VALUES ('10', '4');
INSERT INTO `qy_dep` VALUES ('10', '5');
INSERT INTO `qy_dep` VALUES ('10', '6');
INSERT INTO `qy_dep` VALUES ('10', '7');
INSERT INTO `qy_dep` VALUES ('10', '8');
INSERT INTO `qy_dep` VALUES ('10', '9');
INSERT INTO `qy_dep` VALUES ('10', '10');
INSERT INTO `qy_dep` VALUES ('10', '11');
INSERT INTO `qy_dep` VALUES ('10', '12');
INSERT INTO `qy_dep` VALUES ('10', '13');
INSERT INTO `qy_dep` VALUES ('10', '14');
INSERT INTO `qy_dep` VALUES ('10', '15');
INSERT INTO `qy_dep` VALUES ('10', '16');
INSERT INTO `qy_dep` VALUES ('10', '17');
INSERT INTO `qy_dep` VALUES ('10', '18');
INSERT INTO `qy_dep` VALUES ('10', '19');
INSERT INTO `qy_dep` VALUES ('10', '20');
INSERT INTO `qy_dep` VALUES ('10', '21');
INSERT INTO `qy_dep` VALUES ('10', '22');
INSERT INTO `qy_dep` VALUES ('10', '23');
INSERT INTO `qy_dep` VALUES ('10', '24');
INSERT INTO `qy_dep` VALUES ('10', '25');

-- ----------------------------
-- Table structure for qy_fre
-- ----------------------------
DROP TABLE IF EXISTS `qy_fre`;
CREATE TABLE `qy_fre` (
  `qyid` int(11) NOT NULL,
  `freid` int(11) NOT NULL,
  PRIMARY KEY (`qyid`,`freid`),
  UNIQUE KEY `freid` (`freid`),
  UNIQUE KEY `freid_2` (`freid`),
  KEY `FKC7A97682A2C31720` (`freid`),
  KEY `FKC7A976828C02EE4D` (`qyid`),
  CONSTRAINT `FKC7A976828C02EE4D` FOREIGN KEY (`qyid`) REFERENCES `t_qyuser` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKC7A97682A2C31720` FOREIGN KEY (`freid`) REFERENCES `t_freight` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qy_fre
-- ----------------------------
INSERT INTO `qy_fre` VALUES ('10', '1');
INSERT INTO `qy_fre` VALUES ('10', '3');
INSERT INTO `qy_fre` VALUES ('10', '4');
INSERT INTO `qy_fre` VALUES ('10', '5');
INSERT INTO `qy_fre` VALUES ('10', '6');
INSERT INTO `qy_fre` VALUES ('10', '7');
INSERT INTO `qy_fre` VALUES ('10', '8');
INSERT INTO `qy_fre` VALUES ('10', '9');
INSERT INTO `qy_fre` VALUES ('10', '10');
INSERT INTO `qy_fre` VALUES ('10', '11');
INSERT INTO `qy_fre` VALUES ('10', '12');
INSERT INTO `qy_fre` VALUES ('10', '13');
INSERT INTO `qy_fre` VALUES ('10', '14');
INSERT INTO `qy_fre` VALUES ('10', '15');
INSERT INTO `qy_fre` VALUES ('10', '16');
INSERT INTO `qy_fre` VALUES ('10', '17');
INSERT INTO `qy_fre` VALUES ('10', '18');
INSERT INTO `qy_fre` VALUES ('10', '19');
INSERT INTO `qy_fre` VALUES ('10', '20');
INSERT INTO `qy_fre` VALUES ('10', '21');
INSERT INTO `qy_fre` VALUES ('10', '22');
INSERT INTO `qy_fre` VALUES ('10', '23');
INSERT INTO `qy_fre` VALUES ('10', '24');

-- ----------------------------
-- Table structure for qy_job
-- ----------------------------
DROP TABLE IF EXISTS `qy_job`;
CREATE TABLE `qy_job` (
  `qyid` int(11) NOT NULL,
  `jobid` int(11) NOT NULL,
  PRIMARY KEY (`qyid`,`jobid`),
  UNIQUE KEY `jobid` (`jobid`),
  UNIQUE KEY `jobid_2` (`jobid`),
  KEY `FKC7A9852666FB61BE` (`jobid`),
  KEY `FKC7A985268C02EE4D` (`qyid`),
  CONSTRAINT `FKC7A9852666FB61BE` FOREIGN KEY (`jobid`) REFERENCES `t_job` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKC7A985268C02EE4D` FOREIGN KEY (`qyid`) REFERENCES `t_qyuser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qy_job
-- ----------------------------
INSERT INTO `qy_job` VALUES ('10', '1');
INSERT INTO `qy_job` VALUES ('10', '2');
INSERT INTO `qy_job` VALUES ('10', '3');
INSERT INTO `qy_job` VALUES ('10', '4');
INSERT INTO `qy_job` VALUES ('10', '5');
INSERT INTO `qy_job` VALUES ('10', '6');
INSERT INTO `qy_job` VALUES ('10', '7');
INSERT INTO `qy_job` VALUES ('10', '8');
INSERT INTO `qy_job` VALUES ('10', '9');
INSERT INTO `qy_job` VALUES ('10', '10');
INSERT INTO `qy_job` VALUES ('10', '11');
INSERT INTO `qy_job` VALUES ('10', '12');
INSERT INTO `qy_job` VALUES ('10', '13');
INSERT INTO `qy_job` VALUES ('10', '14');
INSERT INTO `qy_job` VALUES ('10', '15');
INSERT INTO `qy_job` VALUES ('10', '16');
INSERT INTO `qy_job` VALUES ('10', '17');
INSERT INTO `qy_job` VALUES ('10', '18');
INSERT INTO `qy_job` VALUES ('10', '19');
INSERT INTO `qy_job` VALUES ('10', '20');
INSERT INTO `qy_job` VALUES ('10', '21');
INSERT INTO `qy_job` VALUES ('10', '22');
INSERT INTO `qy_job` VALUES ('10', '23');
INSERT INTO `qy_job` VALUES ('10', '24');
INSERT INTO `qy_job` VALUES ('10', '25');
INSERT INTO `qy_job` VALUES ('10', '26');
INSERT INTO `qy_job` VALUES ('10', '27');
INSERT INTO `qy_job` VALUES ('10', '28');
INSERT INTO `qy_job` VALUES ('10', '29');
INSERT INTO `qy_job` VALUES ('10', '30');
INSERT INTO `qy_job` VALUES ('10', '31');
INSERT INTO `qy_job` VALUES ('10', '32');
INSERT INTO `qy_job` VALUES ('10', '33');

-- ----------------------------
-- Table structure for qy_spe
-- ----------------------------
DROP TABLE IF EXISTS `qy_spe`;
CREATE TABLE `qy_spe` (
  `qyid` int(11) NOT NULL,
  `speid` int(11) NOT NULL,
  PRIMARY KEY (`qyid`,`speid`),
  UNIQUE KEY `speid` (`speid`),
  UNIQUE KEY `speid_2` (`speid`),
  KEY `FKC7A9A7118C02EE4D` (`qyid`),
  KEY `FKC7A9A7114FBDFD65` (`speid`),
  CONSTRAINT `FKC7A9A7114FBDFD65` FOREIGN KEY (`speid`) REFERENCES `t_special` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKC7A9A7118C02EE4D` FOREIGN KEY (`qyid`) REFERENCES `t_qyuser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qy_spe
-- ----------------------------
INSERT INTO `qy_spe` VALUES ('10', '2');
INSERT INTO `qy_spe` VALUES ('10', '3');
INSERT INTO `qy_spe` VALUES ('10', '4');
INSERT INTO `qy_spe` VALUES ('10', '5');
INSERT INTO `qy_spe` VALUES ('10', '6');
INSERT INTO `qy_spe` VALUES ('10', '7');
INSERT INTO `qy_spe` VALUES ('10', '9');
INSERT INTO `qy_spe` VALUES ('10', '10');
INSERT INTO `qy_spe` VALUES ('10', '12');
INSERT INTO `qy_spe` VALUES ('10', '13');
INSERT INTO `qy_spe` VALUES ('10', '14');
INSERT INTO `qy_spe` VALUES ('10', '15');
INSERT INTO `qy_spe` VALUES ('10', '16');
INSERT INTO `qy_spe` VALUES ('10', '17');
INSERT INTO `qy_spe` VALUES ('10', '18');
INSERT INTO `qy_spe` VALUES ('10', '19');
INSERT INTO `qy_spe` VALUES ('10', '20');
INSERT INTO `qy_spe` VALUES ('10', '22');
INSERT INTO `qy_spe` VALUES ('10', '23');
INSERT INTO `qy_spe` VALUES ('10', '24');
INSERT INTO `qy_spe` VALUES ('10', '25');
INSERT INTO `qy_spe` VALUES ('10', '26');
INSERT INTO `qy_spe` VALUES ('10', '27');
INSERT INTO `qy_spe` VALUES ('10', '28');
INSERT INTO `qy_spe` VALUES ('10', '29');
INSERT INTO `qy_spe` VALUES ('10', '30');
INSERT INTO `qy_spe` VALUES ('10', '32');
INSERT INTO `qy_spe` VALUES ('10', '33');
INSERT INTO `qy_spe` VALUES ('10', '34');
INSERT INTO `qy_spe` VALUES ('10', '35');
INSERT INTO `qy_spe` VALUES ('10', '36');
INSERT INTO `qy_spe` VALUES ('10', '37');
INSERT INTO `qy_spe` VALUES ('10', '38');
INSERT INTO `qy_spe` VALUES ('10', '39');
INSERT INTO `qy_spe` VALUES ('10', '40');
INSERT INTO `qy_spe` VALUES ('10', '41');
INSERT INTO `qy_spe` VALUES ('10', '42');
INSERT INTO `qy_spe` VALUES ('10', '43');
INSERT INTO `qy_spe` VALUES ('10', '44');
INSERT INTO `qy_spe` VALUES ('10', '45');
INSERT INTO `qy_spe` VALUES ('10', '46');
INSERT INTO `qy_spe` VALUES ('10', '47');
INSERT INTO `qy_spe` VALUES ('10', '48');
INSERT INTO `qy_spe` VALUES ('10', '49');
INSERT INTO `qy_spe` VALUES ('10', '50');
INSERT INTO `qy_spe` VALUES ('10', '51');

-- ----------------------------
-- Table structure for qy_tru
-- ----------------------------
DROP TABLE IF EXISTS `qy_tru`;
CREATE TABLE `qy_tru` (
  `qyid` int(11) NOT NULL,
  `truid` int(11) NOT NULL,
  PRIMARY KEY (`qyid`,`truid`),
  UNIQUE KEY `truid` (`truid`),
  UNIQUE KEY `truid_2` (`truid`),
  KEY `FKC7A9AB208C02EE4D` (`qyid`),
  KEY `FKC7A9AB20F27C1B9A` (`truid`),
  CONSTRAINT `FKC7A9AB208C02EE4D` FOREIGN KEY (`qyid`) REFERENCES `t_qyuser` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKC7A9AB20F27C1B9A` FOREIGN KEY (`truid`) REFERENCES `t_truck` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qy_tru
-- ----------------------------
INSERT INTO `qy_tru` VALUES ('10', '6');
INSERT INTO `qy_tru` VALUES ('10', '7');
INSERT INTO `qy_tru` VALUES ('10', '8');
INSERT INTO `qy_tru` VALUES ('10', '9');
INSERT INTO `qy_tru` VALUES ('10', '10');
INSERT INTO `qy_tru` VALUES ('10', '11');
INSERT INTO `qy_tru` VALUES ('10', '12');
INSERT INTO `qy_tru` VALUES ('10', '13');
INSERT INTO `qy_tru` VALUES ('10', '14');
INSERT INTO `qy_tru` VALUES ('10', '15');
INSERT INTO `qy_tru` VALUES ('10', '16');
INSERT INTO `qy_tru` VALUES ('10', '17');
INSERT INTO `qy_tru` VALUES ('10', '19');
INSERT INTO `qy_tru` VALUES ('10', '20');
INSERT INTO `qy_tru` VALUES ('10', '21');
INSERT INTO `qy_tru` VALUES ('10', '22');
INSERT INTO `qy_tru` VALUES ('10', '23');
INSERT INTO `qy_tru` VALUES ('10', '25');
INSERT INTO `qy_tru` VALUES ('10', '26');
INSERT INTO `qy_tru` VALUES ('10', '27');
INSERT INTO `qy_tru` VALUES ('10', '28');

-- ----------------------------
-- Table structure for t_city
-- ----------------------------
DROP TABLE IF EXISTS `t_city`;
CREATE TABLE `t_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marks` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_city
-- ----------------------------

-- ----------------------------
-- Table structure for t_deopt
-- ----------------------------
DROP TABLE IF EXISTS `t_deopt`;
CREATE TABLE `t_deopt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auditing` char(1) DEFAULT '0',
  `content` varchar(255) DEFAULT NULL,
  `deoptType` char(5) DEFAULT NULL,
  `depotAcreage` varchar(25) DEFAULT NULL,
  `depotCity` varchar(255) DEFAULT NULL,
  `depotPrice` varchar(20) DEFAULT NULL,
  `depotSite` varchar(255) DEFAULT NULL,
  `depotSum` varchar(255) DEFAULT NULL,
  `fBDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `linkman` char(20) DEFAULT NULL,
  `loading` varchar(255) DEFAULT NULL,
  `packing` varchar(255) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `send` varchar(255) DEFAULT NULL,
  `term` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_deopt
-- ----------------------------
INSERT INTO `t_deopt` VALUES ('2', '1', '按天收费', '冷藏', '300平方', '河北省保定市徐水县', '100', 'A区', '11', '2018-01-09 11:24:51', '张三', '支持装卸', null, '12345678901', null, '2018-01-24');
INSERT INTO `t_deopt` VALUES ('3', '1', '按天收费		', '冷藏', '300平方', '河北省保定市徐水县', '100', 'A区', '13', '2018-01-09 12:27:29', '张三', '支持装卸', null, '12345678901', null, '2018-01-26');
INSERT INTO `t_deopt` VALUES ('4', '1', '按天收费		', '普通', '300平方', '福建省南平市邵武市', '100', 'A区', '18', '2018-01-09 12:31:02', '张三', '支持装卸', null, '12345678901', null, '2018-01-28');
INSERT INTO `t_deopt` VALUES ('5', '1', '先到先得		', '冷藏', '300平方', '河南省周口市城关镇', '100', 'A区', '26', '2018-01-09 12:45:10', '张三', '支持装卸', '支持包装', '12345678901', '支持配送', '2018-01-23');
INSERT INTO `t_deopt` VALUES ('6', '0', '先到先得', '冷藏', '300平方', '天津市天津市河东区', '100', 'A区', '12', '2018-01-09 12:48:09', '张三', '支持装卸', null, '12345678901', null, '2018-01-18');
INSERT INTO `t_deopt` VALUES ('7', '1', '先到先得		', '冷藏', '300平方', '山西省朔州市岱岳乡', '100', 'A区', '19', '2018-01-09 12:48:50', '张三', '支持装卸', '支持包装', '12345678901', '支持配送', '2018-01-26');
INSERT INTO `t_deopt` VALUES ('8', '1', '按天收费			', '冷藏', '300平方', '河北省保定市徐水县', '100', 'A区', '20', '2018-01-09 10:33:22', '张三', '支持装卸', null, '12345678901', null, '2018-01-21');
INSERT INTO `t_deopt` VALUES ('9', '1', '按天收费', '冷藏', '300平方', '河北省保定市徐水县', '100', 'A区', '11', '2018-01-09 11:24:51', '张三', '支持装卸', null, '12345678901', null, '2018-01-24');
INSERT INTO `t_deopt` VALUES ('10', '1', '按天收费		', '冷藏', '300平方', '河北省保定市徐水县', '100', 'A区', '13', '2018-01-09 12:27:29', '张三', '支持装卸', null, '12345678901', null, '2018-01-26');
INSERT INTO `t_deopt` VALUES ('11', '0', '按天收费		', '普通', '300平方', '福建省南平市邵武市', '100', 'A区', '18', '2018-01-09 12:31:02', '张三', '支持装卸', null, '12345678901', null, '2018-01-28');
INSERT INTO `t_deopt` VALUES ('12', '0', '先到先得		', '冷藏', '300平方', '河南省周口市城关镇', '100', 'A区', '26', '2018-01-09 12:45:10', '张三', '支持装卸', '支持包装', '12345678901', '支持配送', '2018-01-23');
INSERT INTO `t_deopt` VALUES ('13', '0', '先到先得', '冷藏', '300平方', '天津市天津市河东区', '100', 'A区', '12', '2018-01-09 12:48:09', '张三', '支持装卸', null, '12345678901', null, '2018-01-18');
INSERT INTO `t_deopt` VALUES ('14', '0', '先到先得		', '冷藏', '300平方', '山西省朔州市岱岳乡', '100', 'A区', '19', '2018-01-09 12:48:50', '张三', '支持装卸', '支持包装', '12345678901', '支持配送', '2018-01-26');
INSERT INTO `t_deopt` VALUES ('15', '0', '先到先得		', '冷藏', '300平方', '河南省周口市城关镇', '100', 'A区', '26', '2018-01-09 12:45:10', '张三', '支持装卸', '支持包装', '12345678901', '支持配送', '2018-01-23');
INSERT INTO `t_deopt` VALUES ('16', '0', '先到先得', '冷藏', '300平方', '天津市天津市河东区', '100', 'A区', '12', '2018-01-09 12:48:09', '张三', '支持装卸', null, '12345678901', null, '2018-01-18');
INSERT INTO `t_deopt` VALUES ('17', '0', '先到先得		', '冷藏', '300平方', '山西省朔州市岱岳乡', '100', 'A区', '19', '2018-01-09 12:48:50', '张三', '支持装卸', '支持包装', '12345678901', '支持配送', '2018-01-26');
INSERT INTO `t_deopt` VALUES ('18', '0', '按天收费			', '冷藏', '300平方', '河北省保定市徐水县', '100', 'A区', '20', '2018-01-09 10:33:22', '张三', '支持装卸', null, '12345678901', null, '2018-01-21');
INSERT INTO `t_deopt` VALUES ('19', '0', '按天收费', '冷藏', '300平方', '河北省保定市徐水县', '100', 'A区', '11', '2018-01-09 11:24:51', '张三', '支持装卸', null, '12345678901', null, '2018-01-24');
INSERT INTO `t_deopt` VALUES ('20', '0', '按天收费		', '冷藏', '300平方', '河北省保定市徐水县', '100', 'A区', '13', '2018-01-09 12:27:29', '张三', '支持装卸', null, '12345678901', null, '2018-01-26');
INSERT INTO `t_deopt` VALUES ('21', '0', '按天收费		', '普通', '300平方', '福建省南平市邵武市', '100', 'A区', '18', '2018-01-09 12:31:02', '张三', '支持装卸', null, '12345678901', null, '2018-01-28');
INSERT INTO `t_deopt` VALUES ('22', '0', '先到先得		', '冷藏', '300平方', '河南省周口市城关镇', '100', 'A区', '26', '2018-01-09 12:45:10', '张三', '支持装卸', '支持包装', '12345678901', '支持配送', '2018-01-23');
INSERT INTO `t_deopt` VALUES ('23', '0', '先到先得', '冷藏', '300平方', '天津市天津市河东区', '100', 'A区', '12', '2018-01-09 12:48:09', '张三', '支持装卸', null, '12345678901', null, '2018-01-18');
INSERT INTO `t_deopt` VALUES ('24', '0', '先到先得		', '冷藏', '300平方', '山西省朔州市岱岳乡', '100', 'A区', '19', '2018-01-09 12:48:50', '张三', '支持装卸', '支持包装', '12345678901', '支持配送', '2018-01-26');
INSERT INTO `t_deopt` VALUES ('25', '0', '先到先得		', '冷藏', '300平方', '河南省周口市城关镇', '100', 'A区', '26', '2018-01-09 12:45:10', '张三', '支持装卸', '支持包装', '12345678901', '支持配送', '2018-01-23');
INSERT INTO `t_deopt` VALUES ('26', '0', '先到先得', '冷藏', '300平方', '天津市天津市河东区', '100', 'A区', '12', '2018-01-09 12:48:09', '张三', '支持装卸', null, '12345678901', null, '2018-01-18');
INSERT INTO `t_deopt` VALUES ('27', '0', '先到先得		', '冷藏', '300平方', '山西省朔州市岱岳乡', '100', 'A区', '19', '2018-01-09 12:48:50', '张三', '支持装卸', '支持包装', '12345678901', '支持配送', '2018-01-26');
INSERT INTO `t_deopt` VALUES ('28', '0', '按天收费			', '冷藏', '300平方', '河北省保定市徐水县', '100', 'A区', '20', '2018-01-09 10:33:22', '张三', '支持装卸', null, '12345678901', null, '2018-01-21');
INSERT INTO `t_deopt` VALUES ('29', '0', '按天收费', '冷藏', '300平方', '河北省保定市徐水县', '100', 'A区', '11', '2018-01-09 11:24:51', '张三', '支持装卸', null, '12345678901', null, '2018-01-24');
INSERT INTO `t_deopt` VALUES ('30', '0', '按天收费		', '冷藏', '300平方', '河北省保定市徐水县', '100', 'A区', '13', '2018-01-09 12:27:29', '张三', '支持装卸', null, '12345678901', null, '2018-01-26');
INSERT INTO `t_deopt` VALUES ('31', '0', '按天收费		', '普通', '300平方', '福建省南平市邵武市', '100', 'A区', '18', '2018-01-09 12:31:02', '张三', '支持装卸', null, '12345678901', null, '2018-01-28');
INSERT INTO `t_deopt` VALUES ('32', '0', '先到先得		', '冷藏', '300平方', '河南省周口市城关镇', '100', 'A区', '26', '2018-01-09 12:45:10', '张三', '支持装卸', '支持包装', '12345678901', '支持配送', '2018-01-23');
INSERT INTO `t_deopt` VALUES ('33', '0', '先到先得', '冷藏', '300平方', '天津市天津市河东区', '100', 'A区', '12', '2018-01-09 12:48:09', '张三', '支持装卸', null, '12345678901', null, '2018-01-18');
INSERT INTO `t_deopt` VALUES ('34', '0', '先到先得		', '冷藏', '300平方', '山西省朔州市岱岳乡', '100', 'A区', '19', '2018-01-09 12:48:50', '张三', '支持装卸', '支持包装', '12345678901', '支持配送', '2018-01-26');
INSERT INTO `t_deopt` VALUES ('35', '0', '先到先得		', '冷藏', '300平方', '河南省周口市城关镇', '100', 'A区', '26', '2018-01-09 12:45:10', '张三', '支持装卸', '支持包装', '12345678901', '支持配送', '2018-01-23');
INSERT INTO `t_deopt` VALUES ('36', '0', '先到先得', '冷藏', '300平方', '天津市天津市河东区', '100', 'A区', '12', '2018-01-09 12:48:09', '张三', '支持装卸', null, '12345678901', null, '2018-01-18');
INSERT INTO `t_deopt` VALUES ('37', '0', '先到先得		', '冷藏', '300平方', '山西省朔州市岱岳乡', '100', 'A区', '19', '2018-01-09 12:48:50', '张三', '支持装卸', '支持包装', '12345678901', '支持配送', '2018-01-26');
INSERT INTO `t_deopt` VALUES ('38', '0', '按天收费			', '冷藏', '300平方', '河北省保定市徐水县', '100', 'A区', '20', '2018-01-09 10:33:22', '张三', '支持装卸', null, '12345678901', null, '2018-01-21');
INSERT INTO `t_deopt` VALUES ('39', '0', '按天收费', '冷藏', '300平方', '河北省保定市徐水县', '100', 'A区', '11', '2018-01-09 11:24:51', '张三', '支持装卸', null, '12345678901', null, '2018-01-24');
INSERT INTO `t_deopt` VALUES ('40', '0', '按天收费		', '冷藏', '300平方', '河北省保定市徐水县', '100', 'A区', '13', '2018-01-09 12:27:29', '张三', '支持装卸', null, '12345678901', null, '2018-01-26');
INSERT INTO `t_deopt` VALUES ('41', '0', '按天收费		', '普通', '300平方', '福建省南平市邵武市', '100', 'A区', '18', '2018-01-09 12:31:02', '张三', '支持装卸', null, '12345678901', null, '2018-01-28');
INSERT INTO `t_deopt` VALUES ('42', '0', '先到先得		', '冷藏', '300平方', '河南省周口市城关镇', '100', 'A区', '26', '2018-01-09 12:45:10', '张三', '支持装卸', '支持包装', '12345678901', '支持配送', '2018-01-23');
INSERT INTO `t_deopt` VALUES ('43', '0', '先到先得', '冷藏', '300平方', '天津市天津市河东区', '100', 'A区', '12', '2018-01-09 12:48:09', '张三', '支持装卸', null, '12345678901', null, '2018-01-18');
INSERT INTO `t_deopt` VALUES ('44', '0', '先到先得		', '冷藏', '300平方', '山西省朔州市岱岳乡', '100', 'A区', '19', '2018-01-09 12:48:50', '张三', '支持装卸', '支持包装', '12345678901', '支持配送', '2018-01-26');
INSERT INTO `t_deopt` VALUES ('45', '0', '先到先得		', '冷藏', '300平方', '河南省周口市城关镇', '100', 'A区', '26', '2018-01-09 12:45:10', '张三', '支持装卸', '支持包装', '12345678901', '支持配送', '2018-01-23');
INSERT INTO `t_deopt` VALUES ('46', '0', '先到先得', '冷藏', '300平方', '天津市天津市河东区', '100', 'A区', '12', '2018-01-09 12:48:09', '张三', '支持装卸', null, '12345678901', null, '2018-01-18');
INSERT INTO `t_deopt` VALUES ('47', '0', '先到先得		', '冷藏', '300平方', '山西省朔州市岱岳乡', '100', 'A区', '19', '2018-01-09 12:48:50', '张三', '支持装卸', '支持包装', '12345678901', '支持配送', '2018-01-26');
INSERT INTO `t_deopt` VALUES ('48', '0', '按天收费			', '冷藏', '300平方', '河北省保定市徐水县', '100', 'A区', '20', '2018-01-09 10:33:22', '张三', '支持装卸', null, '12345678901', null, '2018-01-21');
INSERT INTO `t_deopt` VALUES ('49', '0', '按天收费', '冷藏', '300平方', '河北省保定市徐水县', '100', 'A区', '11', '2018-01-09 11:24:51', '张三', '支持装卸', null, '12345678901', null, '2018-01-24');
INSERT INTO `t_deopt` VALUES ('50', '0', '按天收费				', '普通', '300平方', '湖南省湘潭市韶山市', '100', 'A区', '19', '2018-01-10 10:51:22', '张三', '支持装卸', '支持包装', '12345678901', '支持配送', '2018-01-27');

-- ----------------------------
-- Table structure for t_freight
-- ----------------------------
DROP TABLE IF EXISTS `t_freight`;
CREATE TABLE `t_freight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auditing` char(1) DEFAULT '0',
  `content` varchar(255) DEFAULT NULL,
  `fBDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `freightType` varchar(255) DEFAULT NULL,
  `freightWeight` varchar(255) DEFAULT NULL,
  `linkman` char(20) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `term` varchar(255) DEFAULT NULL,
  `terminal` varchar(255) DEFAULT NULL,
  `weightUnit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_freight
-- ----------------------------
INSERT INTO `t_freight` VALUES ('1', '1', '				    保证质量\r\n				    ', '2018-01-08 21:01:29', '煤', '10', '张三', '12345678901', '江西省宜春市双溪镇', '2018-01-19', '浙江省台州市天台县', '吨');
INSERT INTO `t_freight` VALUES ('3', '1', '确保质量', '2018-01-09 10:30:10', '煤', '10', '张三', '12345678901', '河北省唐山市丰南区', '2018-01-25', '吉林省吉林市蛟河市', '吨');
INSERT INTO `t_freight` VALUES ('4', '1', '保证质量', '2018-01-09 11:21:17', '煤', '10', '张三', '12345678901', '山西省阳泉市平定县', '2018-01-28', '江苏省盐城市阜宁县', '吨');
INSERT INTO `t_freight` VALUES ('5', '1', '保证质量', '2018-01-08 21:01:29', '煤', '10', '张三', '12345678901', '江西省宜春市双溪镇', '2018-01-19', '浙江省台州市天台县', '吨');
INSERT INTO `t_freight` VALUES ('6', '0', '确保质量', '2018-01-09 10:30:10', '煤', '10', '张三', '12345678901', '河北省唐山市丰南区', '2018-01-25', '吉林省吉林市蛟河市', '吨');
INSERT INTO `t_freight` VALUES ('7', '1', '保证质量', '2018-01-09 11:21:17', '煤', '10', '张三', '12345678901', '山西省阳泉市平定县', '2018-01-28', '江苏省盐城市阜宁县', '吨');
INSERT INTO `t_freight` VALUES ('8', '1', '保证质量', '2018-01-08 21:01:29', '煤', '10', '张三', '12345678901', '江西省宜春市双溪镇', '2018-01-19', '浙江省台州市天台县', '吨');
INSERT INTO `t_freight` VALUES ('9', '0', '确保质量', '2018-01-09 10:30:10', '煤', '10', '张三', '12345678901', '河北省唐山市丰南区', '2018-01-25', '吉林省吉林市蛟河市', '吨');
INSERT INTO `t_freight` VALUES ('10', '0', '保证质量', '2018-01-09 11:21:17', '煤', '10', '张三', '12345678901', '山西省阳泉市平定县', '2018-01-28', '江苏省盐城市阜宁县', '吨');
INSERT INTO `t_freight` VALUES ('11', '0', '保证质量', '2018-01-08 21:01:29', '煤', '10', '张三', '12345678901', '江西省宜春市双溪镇', '2018-01-19', '浙江省台州市天台县', '吨');
INSERT INTO `t_freight` VALUES ('12', '0', '确保质量', '2018-01-09 10:30:10', '煤', '10', '张三', '12345678901', '河北省唐山市丰南区', '2018-01-25', '吉林省吉林市蛟河市', '吨');
INSERT INTO `t_freight` VALUES ('13', '0', '保证质量', '2018-01-09 11:21:17', '煤', '10', '张三', '12345678901', '山西省阳泉市平定县', '2018-01-28', '江苏省盐城市阜宁县', '吨');
INSERT INTO `t_freight` VALUES ('14', '0', '保证质量', '2018-01-08 21:01:29', '煤', '10', '张三', '12345678901', '江西省宜春市双溪镇', '2018-01-19', '浙江省台州市天台县', '吨');
INSERT INTO `t_freight` VALUES ('15', '0', '确保质量', '2018-01-09 10:30:10', '煤', '10', '张三', '12345678901', '河北省唐山市丰南区', '2018-01-25', '吉林省吉林市蛟河市', '吨');
INSERT INTO `t_freight` VALUES ('16', '0', '保证质量', '2018-01-09 11:21:17', '煤', '10', '张三', '12345678901', '山西省阳泉市平定县', '2018-01-28', '江苏省盐城市阜宁县', '吨');
INSERT INTO `t_freight` VALUES ('17', '0', '保证质量', '2018-01-08 21:01:29', '煤', '10', '张三', '12345678901', '江西省宜春市双溪镇', '2018-01-19', '浙江省台州市天台县', '吨');
INSERT INTO `t_freight` VALUES ('18', '0', '确保质量', '2018-01-09 10:30:10', '煤', '10', '张三', '12345678901', '河北省唐山市丰南区', '2018-01-25', '吉林省吉林市蛟河市', '吨');
INSERT INTO `t_freight` VALUES ('19', '0', '保证质量', '2018-01-09 11:21:17', '煤', '10', '张三', '12345678901', '山西省阳泉市平定县', '2018-01-28', '江苏省盐城市阜宁县', '吨');
INSERT INTO `t_freight` VALUES ('20', '0', '保证质量', '2018-01-08 21:01:29', '煤', '10', '张三', '12345678901', '江西省宜春市双溪镇', '2018-01-19', '浙江省台州市天台县', '吨');
INSERT INTO `t_freight` VALUES ('21', '0', '确保质量', '2018-01-09 10:30:10', '煤', '10', '张三', '12345678901', '河北省唐山市丰南区', '2018-01-25', '吉林省吉林市蛟河市', '吨');
INSERT INTO `t_freight` VALUES ('22', '0', '保证质量', '2018-01-09 11:21:17', '煤', '10', '张三', '12345678901', '山西省阳泉市平定县', '2018-01-28', '江苏省盐城市阜宁县', '吨');
INSERT INTO `t_freight` VALUES ('23', '0', '保证质量', '2018-01-08 21:01:29', '煤', '10', '张三', '12345678901', '江西省宜春市双溪镇', '2018-01-19', '浙江省台州市天台县', '吨');
INSERT INTO `t_freight` VALUES ('24', '0', '确保质量', '2018-01-09 10:30:10', '煤', '10', '张三', '12345678901', '河北省唐山市丰南区', '2018-01-25', '吉林省吉林市蛟河市', '吨');
INSERT INTO `t_freight` VALUES ('25', '0', '保证质量', '2018-01-09 11:21:17', '煤', '10', '张三', '12345678901', '山西省阳泉市平定县', '2018-01-28', '江苏省盐城市阜宁县', '吨');
INSERT INTO `t_freight` VALUES ('26', '0', '保证质量', '2018-01-08 21:01:29', '煤', '10', '张三', '12345678901', '江西省宜春市双溪镇', '2018-01-19', '浙江省台州市天台县', '吨');
INSERT INTO `t_freight` VALUES ('27', '0', '确保质量', '2018-01-09 10:30:10', '煤', '10', '张三', '12345678901', '河北省唐山市丰南区', '2018-01-25', '吉林省吉林市蛟河市', '吨');
INSERT INTO `t_freight` VALUES ('28', '0', '保证质量', '2018-01-09 11:21:17', '煤', '10', '张三', '12345678901', '山西省阳泉市平定县', '2018-01-28', '江苏省盐城市阜宁县', '吨');
INSERT INTO `t_freight` VALUES ('29', '0', '保证质量', '2018-01-08 21:01:29', '煤', '10', '张三', '12345678901', '江西省宜春市双溪镇', '2018-01-19', '浙江省台州市天台县', '吨');
INSERT INTO `t_freight` VALUES ('30', '0', '确保质量', '2018-01-09 10:30:10', '煤', '10', '张三', '12345678901', '河北省唐山市丰南区', '2018-01-25', '吉林省吉林市蛟河市', '吨');
INSERT INTO `t_freight` VALUES ('31', '0', '保证质量', '2018-01-09 11:21:17', '煤', '10', '张三', '12345678901', '山西省阳泉市平定县', '2018-01-28', '江苏省盐城市阜宁县', '吨');
INSERT INTO `t_freight` VALUES ('32', '0', '保证质量', '2018-01-08 21:01:29', '煤', '10', '张三', '12345678901', '江西省宜春市双溪镇', '2018-01-19', '浙江省台州市天台县', '吨');
INSERT INTO `t_freight` VALUES ('33', '0', '确保质量', '2018-01-09 10:30:10', '煤', '10', '张三', '12345678901', '河北省唐山市丰南区', '2018-01-25', '吉林省吉林市蛟河市', '吨');
INSERT INTO `t_freight` VALUES ('34', '0', '保证质量', '2018-01-09 11:21:17', '煤', '10', '张三', '12345678901', '山西省阳泉市平定县', '2018-01-28', '江苏省盐城市阜宁县', '吨');
INSERT INTO `t_freight` VALUES ('35', '0', '保证质量', '2018-01-08 21:01:29', '煤', '10', '张三', '12345678901', '江西省宜春市双溪镇', '2018-01-19', '浙江省台州市天台县', '吨');
INSERT INTO `t_freight` VALUES ('36', '0', '确保质量', '2018-01-09 10:30:10', '煤', '10', '张三', '12345678901', '河北省唐山市丰南区', '2018-01-25', '吉林省吉林市蛟河市', '吨');
INSERT INTO `t_freight` VALUES ('37', '0', '保证质量', '2018-01-09 11:21:17', '煤', '10', '张三', '12345678901', '山西省阳泉市平定县', '2018-01-28', '江苏省盐城市阜宁县', '吨');
INSERT INTO `t_freight` VALUES ('38', '0', '保证质量', '2018-01-08 21:01:29', '煤', '10', '张三', '12345678901', '江西省宜春市双溪镇', '2018-01-19', '浙江省台州市天台县', '吨');
INSERT INTO `t_freight` VALUES ('39', '0', '确保质量', '2018-01-09 10:30:10', '煤', '10', '张三', '12345678901', '河北省唐山市丰南区', '2018-01-25', '吉林省吉林市蛟河市', '吨');
INSERT INTO `t_freight` VALUES ('40', '0', '保证质量', '2018-01-09 11:21:17', '煤', '10', '张三', '12345678901', '山西省阳泉市平定县', '2018-01-28', '江苏省盐城市阜宁县', '吨');
INSERT INTO `t_freight` VALUES ('41', '0', '保证质量', '2018-01-09 11:21:17', '煤', '10', '张三', '12345678901', '山西省阳泉市平定县', '2018-01-28', '江苏省盐城市阜宁县', '吨');
INSERT INTO `t_freight` VALUES ('42', '0', '保证质量', '2018-01-08 21:01:29', '煤', '10', '张三', '12345678901', '江西省宜春市双溪镇', '2018-01-19', '浙江省台州市天台县', '吨');
INSERT INTO `t_freight` VALUES ('43', '0', '确保质量', '2018-01-09 10:30:10', '煤', '10', '张三', '12345678901', '河北省唐山市丰南区', '2018-01-25', '吉林省吉林市蛟河市', '吨');
INSERT INTO `t_freight` VALUES ('44', '0', '保证质量', '2018-01-09 11:21:17', '煤', '10', '张三', '12345678901', '山西省阳泉市平定县', '2018-01-28', '江苏省盐城市阜宁县', '吨');
INSERT INTO `t_freight` VALUES ('45', '0', '保证质量', '2018-01-08 21:01:29', '煤', '10', '张三', '12345678901', '江西省宜春市双溪镇', '2018-01-19', '浙江省台州市天台县', '吨');
INSERT INTO `t_freight` VALUES ('46', '0', '确保质量', '2018-01-09 10:30:10', '煤', '10', '张三', '12345678901', '河北省唐山市丰南区', '2018-01-25', '吉林省吉林市蛟河市', '吨');
INSERT INTO `t_freight` VALUES ('47', '0', '保证质量', '2018-01-09 11:21:17', '煤', '10', '张三', '12345678901', '山西省阳泉市平定县', '2018-01-28', '江苏省盐城市阜宁县', '吨');
INSERT INTO `t_freight` VALUES ('48', '0', '保证质量', '2018-01-08 21:01:29', '煤', '10', '张三', '12345678901', '江西省宜春市双溪镇', '2018-01-19', '浙江省台州市天台县', '吨');
INSERT INTO `t_freight` VALUES ('50', '0', '保证质量', '2018-01-09 11:21:17', '煤', '10', '张三', '12345678901', '山西省阳泉市平定县', '2018-01-28', '江苏省盐城市阜宁县', '吨');
INSERT INTO `t_freight` VALUES ('51', '0', '保证质量', '2018-01-09 17:13:55', '煤', '10', '张三', '12345678901', '山西省阳泉市平定县', '2018-01-28', '江苏省盐城市阜宁县', '吨');
INSERT INTO `t_freight` VALUES ('52', '0', '保证质量', '2018-01-09 17:14:04', '煤', '10', '张三', '12345678901', '江西省宜春市双溪镇', '2018-01-19', '浙江省台州市天台县', '吨');
INSERT INTO `t_freight` VALUES ('53', '0', '保质保量', '2018-01-10 10:50:36', '木材', '1', '张三', '12345678901', '湖南省衡阳市衡山县', '2018-01-23', '山东省青岛市四方区', '吨');

-- ----------------------------
-- Table structure for t_gruser
-- ----------------------------
DROP TABLE IF EXISTS `t_gruser`;
CREATE TABLE `t_gruser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` char(100) DEFAULT NULL,
  `linkman` char(20) DEFAULT NULL,
  `lockCause` varchar(100) DEFAULT '无',
  `locks` char(5) DEFAULT '未锁定',
  `name` char(20) DEFAULT NULL,
  `pass` char(20) DEFAULT NULL,
  `passQuestion` varchar(255) DEFAULT NULL,
  `passSolution` varchar(255) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_gruser
-- ----------------------------
INSERT INTO `t_gruser` VALUES ('2', '山东青岛', '李四1', '无', '未锁定', '张三2', '123456', '我是谁？', '李四呀', '1234567');
INSERT INTO `t_gruser` VALUES ('3', '山东青岛', '小明1', '无', '未锁定', '张三3', '123456', '我是谁？', '小明呀', '1234567');
INSERT INTO `t_gruser` VALUES ('4', '山东青岛', '张三1', '无', '未锁定', '张三4', '123456', '我是谁？', '张三呀', '1234567');
INSERT INTO `t_gruser` VALUES ('5', '山东青岛', '李四2', '无', '未锁定', '张三5', '123456', '我是谁？', '李四呀', '1234567');
INSERT INTO `t_gruser` VALUES ('6', '山东青岛', '小明2', '无', '未锁定', '张三6', '123456', '我是谁？', '小明呀', '1234567');
INSERT INTO `t_gruser` VALUES ('7', '青岛', '张三2', '无', '未锁定', 'qwe', '123456', 'test2', 'test2', '12345678901');
INSERT INTO `t_gruser` VALUES ('8', '青岛', '张三3', '无', '未锁定', 'qwe3', '123456', '123', 'test2', '12345678901');
INSERT INTO `t_gruser` VALUES ('9', '山东青岛', '李四3', '无', '未锁定', '张三7', '123456', '我是谁？', '李四呀', '1234567');
INSERT INTO `t_gruser` VALUES ('10', '山东青岛', '小明3', '无', '未锁定', '张三8', '123456', '我是谁？', '小明呀', '1234567');
INSERT INTO `t_gruser` VALUES ('11', '山东青岛', '张三4', '无', '未锁定', '张三9', '123456', '我是谁？', '张三呀', '1234567');
INSERT INTO `t_gruser` VALUES ('12', '山东青岛', '李四4', '无', '未锁定', '张三10', '123456', '我是谁？', '李四呀', '1234567');
INSERT INTO `t_gruser` VALUES ('13', '山东青岛', '小明4', '无', '未锁定', '张三11', '123456', '我是谁？', '小明呀', '1234567');
INSERT INTO `t_gruser` VALUES ('14', '青岛', '张三5', '无', '未锁定', 'qwe2', '123456', 'test2', 'test2', '12345678901');
INSERT INTO `t_gruser` VALUES ('15', '青岛', '张三6', '无', '未锁定', 'qwe1', '123456', '123', 'test2', '12345678901');
INSERT INTO `t_gruser` VALUES ('16', '山东青岛', '李四', '无', '未锁定', '张三21', '123456', '我是谁？', '李四呀', '1234567');
INSERT INTO `t_gruser` VALUES ('17', '山东青岛', '小明', '无', '未锁定', '张三22', '123456', '我是谁？', '小明呀', '1234567');
INSERT INTO `t_gruser` VALUES ('18', '山东青岛', '张三1', '无', '未锁定', '张三23', '123456', '我是谁？', '张三呀', '1234567');
INSERT INTO `t_gruser` VALUES ('19', '山东青岛', '李四1', '无', '未锁定', '张三24', '123456', '我是谁？', '李四呀', '1234567');
INSERT INTO `t_gruser` VALUES ('20', '山东青岛', '小明1', '无', '未锁定', '张三25', '123456', '我是谁？', '小明呀', '1234567');
INSERT INTO `t_gruser` VALUES ('21', '青岛', 'tset1linckman', '无', '未锁定', 'qwe11', '123456', 'test2', 'test2', '12345678901');
INSERT INTO `t_gruser` VALUES ('23', '青岛', '张三', '无', '未锁定', 'kun', '123456', '123', 'test2', '12345678901');

-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS `t_job`;
CREATE TABLE `t_job` (
  `age` varchar(255) DEFAULT NULL,
  `auditing` char(1) DEFAULT '0',
  `city` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `fBDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `job` varchar(255) DEFAULT NULL,
  `knowledge` char(3) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `particularInfo` varchar(255) DEFAULT NULL,
  `pay` varchar(255) DEFAULT NULL,
  `sex` char(2) DEFAULT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_job
-- ----------------------------
INSERT INTO `t_job` VALUES ('18~45', '1', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '1');
INSERT INTO `t_job` VALUES ('18~45', '1', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '2');
INSERT INTO `t_job` VALUES ('18~45', '1', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '3');
INSERT INTO `t_job` VALUES ('18~45', '1', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '4');
INSERT INTO `t_job` VALUES ('18~45', '1', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '5');
INSERT INTO `t_job` VALUES ('18~45', '1', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '6');
INSERT INTO `t_job` VALUES ('18~45', '1', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '7');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '8');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '9');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '10');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '11');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '12');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '13');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '14');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '15');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '16');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '17');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '18');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '19');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '20');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '21');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '22');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '23');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '24');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '25');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '26');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '27');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '28');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '29');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '30');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '31');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '32');
INSERT INTO `t_job` VALUES ('18~45', '0', '禹州', '驾龄2年以上', '2018-01-09 12:44:16', '货车司机', '不限', '22', '五险一金', '3000', '男', '不限', '33');

-- ----------------------------
-- Table structure for t_news
-- ----------------------------
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fBDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `newsContent` varchar(200) DEFAULT NULL,
  `newsTitle` char(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_news
-- ----------------------------
INSERT INTO `t_news` VALUES ('1', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('2', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('3', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('4', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('5', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('6', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('7', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('8', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('9', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('10', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('11', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('12', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('13', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('14', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('15', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('16', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('17', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('18', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('19', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('20', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('21', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('22', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('23', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('24', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('25', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');
INSERT INTO `t_news` VALUES ('26', '2018-01-02 00:00:00', '文章内容...测试', '文章标题');

-- ----------------------------
-- Table structure for t_qyuser
-- ----------------------------
DROP TABLE IF EXISTS `t_qyuser`;
CREATE TABLE `t_qyuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `calling` varchar(255) DEFAULT NULL,
  `companyName` char(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `kind` char(5) DEFAULT NULL,
  `licenceNumber` varchar(255) DEFAULT NULL,
  `linkman` char(20) DEFAULT NULL,
  `lockCause` varchar(100) DEFAULT '无',
  `locks` char(5) DEFAULT '未锁定',
  `networkIP` varchar(255) DEFAULT NULL,
  `passQuestion` varchar(255) DEFAULT NULL,
  `passSolution` varchar(255) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `name` char(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_qyuser
-- ----------------------------
INSERT INTO `t_qyuser` VALUES ('3', '青岛', 'it', '某科技公司', '公司简介简介', '1234@qq.com', '34nk234', '私企', '123UIIIB689g', 'tset1linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', 'test1', 'test1', '12345678901', 'test3', '12345');
INSERT INTO `t_qyuser` VALUES ('4', '青岛', 'it', '某科技公司', '简介简介2', 'dangxq1008@163.com', '34nk234', '国企', '123UIIIB689g', 'tse2linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', 'test2', 'test2', '1234567890', 'test2', '123456');
INSERT INTO `t_qyuser` VALUES ('5', '青岛', 'it', '某科技公司', '简介简介3', '1234@qq.com', '34nk234', '私企', '123UIIIB689g', '1231231231', '无', '未锁定', 'http://www.XXXXX.com.cn', '123123', '123123', '12345678901', 'qwe2', '123456');
INSERT INTO `t_qyuser` VALUES ('6', '青岛', 'it', '某科技公司', '企业简介企业简介企业简介企业简介企业简介企业简介', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tset1linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', 'test2', 'test2', '12345678901', 'test5', '123456');
INSERT INTO `t_qyuser` VALUES ('7', '青岛', 'it', '某科技公司', '企业简介7', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tse7linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', '123123', '123123', '1234567890', 'test7', '123123');
INSERT INTO `t_qyuser` VALUES ('8', '青岛', 'it', '某科技公司', '12312311231', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tse2linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', '123', '123', '12345678901', 'test8', '123456');
INSERT INTO `t_qyuser` VALUES ('9', '青岛', 'it', '某科技公司', '简介简介', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tset1linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', '123', 'test2', '12345678901', 'qwe', '123456');
INSERT INTO `t_qyuser` VALUES ('10', '青岛', 'it', '某科技公司', 'qweqwqweqwe', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tset1linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', 'test2', 'test2', '12345678901', 'qwe3', 'qwe');
INSERT INTO `t_qyuser` VALUES ('11', '青岛', 'it', '某科技公司', 'qweqwqweqwe', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tset1linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', 'test2', 'test2', '12345678901', 'qwe4', 'qwe');
INSERT INTO `t_qyuser` VALUES ('12', '青岛', 'it', '某科技公司', 'qweqwqweqwe', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tset1linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', 'test2', 'test2', '12345678901', 'qwe5', 'qwe');
INSERT INTO `t_qyuser` VALUES ('13', '青岛', 'it', '某科技公司', 'qweqwqweqwe', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tset1linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', 'test2', 'test2', '12345678901', 'qwe6', 'qwe');
INSERT INTO `t_qyuser` VALUES ('14', '青岛', 'it', '某科技公司', '简介简介2', 'dangxq1008@163.com', '34nk234', '国企', '123UIIIB689g', 'tse2linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', 'test2', 'test2', '1234567890', 'qwe7', '123456');
INSERT INTO `t_qyuser` VALUES ('15', '青岛', 'it', '某科技公司', '简介简介3', '1234@qq.com', '34nk234', '私企', '123UIIIB689g', '1231231231', '无', '未锁定', 'http://www.XXXXX.com.cn', '123123', '123123', '12345678901', 'qwe8', '123456');
INSERT INTO `t_qyuser` VALUES ('16', '青岛', 'it', '某科技公司', '企业简介企业简介企业简介企业简介企业简介企业简介', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tset1linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', 'test2', 'test2', '12345678901', 'qwe9', '123456');
INSERT INTO `t_qyuser` VALUES ('17', '青岛', 'it', '某科技公司', '企业简介7', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tse7linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', '123123', '123123', '1234567890', 'qwe10', '123123');
INSERT INTO `t_qyuser` VALUES ('18', '青岛', 'it', '某科技公司', '12312311231', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tse2linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', '123', '123', '12345678901', 'qwe11', '123456');
INSERT INTO `t_qyuser` VALUES ('19', '青岛', 'it', '某科技公司', '简介简介', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tset1linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', '123', 'test2', '12345678901', 'qwe12', '123456');
INSERT INTO `t_qyuser` VALUES ('20', '青岛', 'it', '某科技公司', 'qweqwqweqwe', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tset1linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', 'test2', 'test2', '12345678901', 'qwe13', 'qwe');
INSERT INTO `t_qyuser` VALUES ('21', '青岛', 'it', '某科技公司', 'qweqwqweqwe', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tset1linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', 'test2', 'test2', '12345678901', 'qwe14', 'qwe');
INSERT INTO `t_qyuser` VALUES ('22', '青岛', 'it', '某科技公司', 'qweqwqweqwe', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tset1linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', 'test2', 'test2', '12345678901', 'qwe15', 'qwe');
INSERT INTO `t_qyuser` VALUES ('23', '青岛', 'it', '某科技公司', 'qweqwqweqwe', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tset1linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', 'test2', 'test2', '12345678901', 'qwe16', 'qwe');
INSERT INTO `t_qyuser` VALUES ('24', '青岛', 'it', '某科技公司', '简介简介2', 'dangxq1008@163.com', '34nk234', '国企', '123UIIIB689g', 'tse2linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', 'test2', 'test2', '1234567890', 'qwe17', '123456');
INSERT INTO `t_qyuser` VALUES ('25', '青岛', 'it', '某科技公司', '简介简介3', '1234@qq.com', '34nk234', '私企', '123UIIIB689g', '1231231231', '无', '未锁定', 'http://www.XXXXX.com.cn', '123123', '123123', '12345678901', 'qwe18', '123456');
INSERT INTO `t_qyuser` VALUES ('26', '青岛', 'it', '某科技公司', '企业简介企业简介企业简介企业简介企业简介企业简介', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tset1linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', 'test2', 'test2', '12345678901', 'qwe19', '123456');
INSERT INTO `t_qyuser` VALUES ('27', '青岛', 'it', '某科技公司', '企业简介7', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tse7linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', '123123', '123123', '1234567890', 'qwe20', '123123');
INSERT INTO `t_qyuser` VALUES ('28', '青岛', 'it', '某科技公司', '12312311231', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tse2linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', '123', '123', '12345678901', 'qwe21', '123456');
INSERT INTO `t_qyuser` VALUES ('29', '青岛', 'it', '某科技公司', '简介简介', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tset1linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', '123', 'test2', '12345678901', 'qwe22', '123456');
INSERT INTO `t_qyuser` VALUES ('30', '青岛', 'it', '某科技公司', 'qweqwqweqwe', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tset1linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', 'test2', 'test2', '12345678901', 'qwe23', 'qwe');
INSERT INTO `t_qyuser` VALUES ('31', '青岛', 'it', '某科技公司', 'qweqwqweqwe', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tset1linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', 'test2', 'test2', '12345678901', 'qwe24', 'qwe');
INSERT INTO `t_qyuser` VALUES ('32', '青岛', 'it', '某科技公司', 'qweqwqweqwe', 'dangxq1008@163.com', '34nk234', '私企', '123UIIIB689g', 'tset1linckman', '无', '未锁定', 'http://www.XXXXX.com.cn', 'test2', 'test2', '12345678901', 'qwe25', 'qwe');

-- ----------------------------
-- Table structure for t_search
-- ----------------------------
DROP TABLE IF EXISTS `t_search`;
CREATE TABLE `t_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(20) DEFAULT NULL,
  `searchKey` varchar(255) DEFAULT NULL,
  `searchType` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `tableName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_search
-- ----------------------------

-- ----------------------------
-- Table structure for t_special
-- ----------------------------
DROP TABLE IF EXISTS `t_special`;
CREATE TABLE `t_special` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auditing` char(1) DEFAULT '0',
  `bewrite` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `fBDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `linkman` char(20) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `specialPrice` varchar(255) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `term` varchar(255) DEFAULT NULL,
  `terminal` varchar(255) DEFAULT NULL,
  `truckLoad` varchar(255) DEFAULT NULL,
  `truckLong` varchar(255) DEFAULT NULL,
  `truckType` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_special
-- ----------------------------
INSERT INTO `t_special` VALUES ('2', '1', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('3', '1', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('4', '1', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('5', '1', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('6', '1', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('7', '1', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('9', '1', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('10', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('12', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('13', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('14', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('15', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('16', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('17', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('18', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('19', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('20', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('22', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('23', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('24', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('25', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('26', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('27', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('28', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('29', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('30', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('32', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('33', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('34', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('35', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('36', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('37', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('38', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('39', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('40', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('41', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('42', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('43', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('44', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('45', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('46', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('47', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('48', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('49', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('50', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');
INSERT INTO `t_special` VALUES ('51', '0', '速运', '速运', '2018-01-09 12:31:43', '张三', '12345678901', '3000元', '辽宁省铁岭市清河区', '2018-01-24', '内蒙古呼伦贝尔市牙克石市', '5吨', '5米', '高栏');

-- ----------------------------
-- Table structure for t_truck
-- ----------------------------
DROP TABLE IF EXISTS `t_truck`;
CREATE TABLE `t_truck` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auditing` char(1) DEFAULT '0',
  `content` varchar(255) DEFAULT NULL,
  `fBDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `linkman` char(20) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `term` varchar(255) DEFAULT NULL,
  `terminal` varchar(255) DEFAULT NULL,
  `truckLoad` varchar(255) DEFAULT NULL,
  `truckLong` varchar(255) DEFAULT NULL,
  `truckType` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_truck
-- ----------------------------
INSERT INTO `t_truck` VALUES ('6', '0', '确保速度！', '2018-01-08 21:09:31', '张三', '12345678901', '河北省承德市平泉县', '2018-01-21', '浙江省舟山市定海区', '5吨', '5米', '冷藏');
INSERT INTO `t_truck` VALUES ('7', '0', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('8', '1', 'asd', '2018-01-08 20:21:21', 'tset1linckman', '12345678901', '重庆市重庆市九龙坡区', '2018-01-28', '山西省朔州市右玉县', '5吨', '5米', '高栏');
INSERT INTO `t_truck` VALUES ('9', '1', '确保速度！', '2018-01-08 21:09:31', '张三', '12345678901', '河北省承德市平泉县', '2018-01-21', '浙江省舟山市定海区', '5吨', '5米', '冷藏');
INSERT INTO `t_truck` VALUES ('10', '1', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('11', '1', 'asd', '2018-01-08 20:21:21', 'tset1linckman', '12345678901', '重庆市重庆市九龙坡区', '2018-01-28', '山西省朔州市右玉县', '5吨', '5米', '高栏');
INSERT INTO `t_truck` VALUES ('12', '1', '确保速度！', '2018-01-08 21:09:31', '张三', '12345678901', '河北省承德市平泉县', '2018-01-21', '浙江省舟山市定海区', '5吨', '5米', '冷藏');
INSERT INTO `t_truck` VALUES ('13', '1', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('14', '0', 'asd', '2018-01-08 20:21:21', 'tset1linckman', '12345678901', '重庆市重庆市九龙坡区', '2018-01-28', '山西省朔州市右玉县', '5吨', '5米', '高栏');
INSERT INTO `t_truck` VALUES ('15', '0', '确保速度！', '2018-01-08 21:09:31', '张三', '12345678901', '河北省承德市平泉县', '2018-01-21', '浙江省舟山市定海区', '5吨', '5米', '冷藏');
INSERT INTO `t_truck` VALUES ('16', '0', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('17', '0', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('19', '0', '确保速度！', '2018-01-08 21:09:31', '张三', '12345678901', '河北省承德市平泉县', '2018-01-21', '浙江省舟山市定海区', '5吨', '5米', '冷藏');
INSERT INTO `t_truck` VALUES ('20', '0', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('21', '0', 'asd', '2018-01-08 20:21:21', 'tset1linckman', '12345678901', '重庆市重庆市九龙坡区', '2018-01-28', '山西省朔州市右玉县', '5吨', '5米', '高栏');
INSERT INTO `t_truck` VALUES ('22', '0', '确保速度！', '2018-01-08 21:09:31', '张三', '12345678901', '河北省承德市平泉县', '2018-01-21', '浙江省舟山市定海区', '5吨', '5米', '冷藏');
INSERT INTO `t_truck` VALUES ('23', '0', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('25', '0', '确保速度！', '2018-01-08 21:09:31', '张三', '12345678901', '河北省承德市平泉县', '2018-01-21', '浙江省舟山市定海区', '5吨', '5米', '冷藏');
INSERT INTO `t_truck` VALUES ('26', '0', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('27', '0', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('28', '0', 'asd', '2018-01-08 20:21:21', 'tset1linckman', '12345678901', '重庆市重庆市九龙坡区', '2018-01-28', '山西省朔州市右玉县', '5吨', '5米', '高栏');
INSERT INTO `t_truck` VALUES ('31', '0', 'asd', '2018-01-08 20:21:21', 'tset1linckman', '12345678901', '重庆市重庆市九龙坡区', '2018-01-28', '山西省朔州市右玉县', '5吨', '5米', '高栏');
INSERT INTO `t_truck` VALUES ('32', '0', '确保速度！', '2018-01-08 21:09:31', '张三', '12345678901', '河北省承德市平泉县', '2018-01-21', '浙江省舟山市定海区', '5吨', '5米', '冷藏');
INSERT INTO `t_truck` VALUES ('33', '0', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('34', '0', 'asd', '2018-01-08 20:21:21', 'tset1linckman', '12345678901', '重庆市重庆市九龙坡区', '2018-01-28', '山西省朔州市右玉县', '5吨', '5米', '高栏');
INSERT INTO `t_truck` VALUES ('35', '0', '确保速度！', '2018-01-08 21:09:31', '张三', '12345678901', '河北省承德市平泉县', '2018-01-21', '浙江省舟山市定海区', '5吨', '5米', '冷藏');
INSERT INTO `t_truck` VALUES ('36', '0', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('37', '0', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('38', '0', 'asd', '2018-01-08 20:21:21', 'tset1linckman', '12345678901', '重庆市重庆市九龙坡区', '2018-01-28', '山西省朔州市右玉县', '5吨', '5米', '高栏');
INSERT INTO `t_truck` VALUES ('39', '0', '确保速度！', '2018-01-08 21:09:31', '张三', '12345678901', '河北省承德市平泉县', '2018-01-21', '浙江省舟山市定海区', '5吨', '5米', '冷藏');
INSERT INTO `t_truck` VALUES ('40', '0', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('41', '0', 'asd', '2018-01-08 20:21:21', 'tset1linckman', '12345678901', '重庆市重庆市九龙坡区', '2018-01-28', '山西省朔州市右玉县', '5吨', '5米', '高栏');
INSERT INTO `t_truck` VALUES ('42', '0', '确保速度！', '2018-01-08 21:09:31', '张三', '12345678901', '河北省承德市平泉县', '2018-01-21', '浙江省舟山市定海区', '5吨', '5米', '冷藏');
INSERT INTO `t_truck` VALUES ('43', '0', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('44', '0', 'asd', '2018-01-08 20:21:21', 'tset1linckman', '12345678901', '重庆市重庆市九龙坡区', '2018-01-28', '山西省朔州市右玉县', '5吨', '5米', '高栏');
INSERT INTO `t_truck` VALUES ('45', '0', '确保速度！', '2018-01-08 21:09:31', '张三', '12345678901', '河北省承德市平泉县', '2018-01-21', '浙江省舟山市定海区', '5吨', '5米', '冷藏');
INSERT INTO `t_truck` VALUES ('46', '0', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('47', '0', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('58', '0', 'asd', '2018-01-08 20:21:21', 'tset1linckman', '12345678901', '重庆市重庆市九龙坡区', '2018-01-28', '山西省朔州市右玉县', '5吨', '5米', '高栏');
INSERT INTO `t_truck` VALUES ('59', '0', '确保速度！', '2018-01-08 21:09:31', '张三', '12345678901', '河北省承德市平泉县', '2018-01-21', '浙江省舟山市定海区', '5吨', '5米', '冷藏');
INSERT INTO `t_truck` VALUES ('60', '0', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('61', '0', 'asd', '2018-01-08 20:21:21', 'tset1linckman', '12345678901', '重庆市重庆市九龙坡区', '2018-01-28', '山西省朔州市右玉县', '5吨', '5米', '高栏');
INSERT INTO `t_truck` VALUES ('62', '0', '确保速度！', '2018-01-08 21:09:31', '张三', '12345678901', '河北省承德市平泉县', '2018-01-21', '浙江省舟山市定海区', '5吨', '5米', '冷藏');
INSERT INTO `t_truck` VALUES ('63', '0', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('64', '0', 'asd', '2018-01-08 20:21:21', 'tset1linckman', '12345678901', '重庆市重庆市九龙坡区', '2018-01-28', '山西省朔州市右玉县', '5吨', '5米', '高栏');
INSERT INTO `t_truck` VALUES ('65', '0', '确保速度！', '2018-01-08 21:09:31', '张三', '12345678901', '河北省承德市平泉县', '2018-01-21', '浙江省舟山市定海区', '5吨', '5米', '冷藏');
INSERT INTO `t_truck` VALUES ('66', '0', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('67', '0', '9成新车', '2018-01-09 10:40:52', '张三', '12345678901', '河南省许昌市禹州市', '2018-01-31', '河北省承德市兴隆县', '5吨', '5米', '箱式');
INSERT INTO `t_truck` VALUES ('69', '0', '					       速运速运				       速运速运			       速运速运', '2018-01-10 10:58:51', '张三', '12345678901', '湖南省衡阳市衡山县', '2018-01-27', '山东省青岛市市北区', '5吨', '5米', '高栏');
