/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : credit

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2016-12-09 21:25:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ck
-- ----------------------------
DROP TABLE IF EXISTS `ck`;
CREATE TABLE `ck` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `rq` varchar(255) DEFAULT NULL,
  `bj` varchar(255) DEFAULT NULL,
  `lx` varchar(255) DEFAULT NULL,
  `fx` varchar(255) DEFAULT NULL,
  `sdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck
-- ----------------------------
INSERT INTO `ck` VALUES ('1', '客户名称1', '2016-12-01', '1234', '1万', '1万', '2016-12-09');
INSERT INTO `ck` VALUES ('3', '客户名称3', '2016-12-01', '12万', '2万', '1万', '2016-12-09');

-- ----------------------------
-- Table structure for kh
-- ----------------------------
DROP TABLE IF EXISTS `kh`;
CREATE TABLE `kh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `birthDate` varchar(255) DEFAULT NULL COMMENT '出生年月',
  `idCardNumber` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `idCardAddress` varchar(255) DEFAULT NULL COMMENT '身份证地址',
  `maritalStatus` varchar(255) DEFAULT NULL COMMENT '婚姻状况',
  `issuingAuthority` varchar(255) DEFAULT NULL COMMENT '发证机关',
  `education` varchar(255) DEFAULT NULL COMMENT '学历',
  `tel` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `immediateFamily` varchar(255) DEFAULT NULL COMMENT '直系亲属联系人',
  `accountChange` varchar(255) DEFAULT NULL COMMENT '户口变更信息',
  `company` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `companyAddress` varchar(255) DEFAULT NULL COMMENT '公司地址',
  `workingHours` varchar(255) DEFAULT NULL COMMENT '工作时间',
  `status` varchar(255) DEFAULT NULL COMMENT '状态',
  `type` varchar(255) DEFAULT NULL COMMENT '客户种类',
  `addtime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='客户信息表';

-- ----------------------------
-- Records of kh
-- ----------------------------
INSERT INTO `kh` VALUES ('2', '客户1', '男', '34', '1980-10-08', '130208754536739', '中国', '已婚', '发证机关1', '博士', '13145672345', '1234@qq.com', '直系亲属联系人1', '户口变更信息1', '公司名称1', '公司地址1', '2年', '已审核', '个人', '2016-12-08 23:03:47');
INSERT INTO `kh` VALUES ('4', '客户2', '男', '34', '1980-10-08', '126787654567876', '中国', '已婚', '发证机关2', '博士', '13145672345', '1234@qq.com', '赵先生', '无', '公司名称2', '公司地址2', '2年', '已审核', '个人', '2016-12-09 08:57:01');

-- ----------------------------
-- Table structure for sk
-- ----------------------------
DROP TABLE IF EXISTS `sk`;
CREATE TABLE `sk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zh` varchar(255) DEFAULT NULL COMMENT '还款账户',
  `zhm` varchar(255) DEFAULT NULL COMMENT '账户名',
  `rq` varchar(255) DEFAULT NULL COMMENT '还款日期',
  `je` varchar(255) DEFAULT NULL COMMENT '还款金额',
  `syje` varchar(255) DEFAULT NULL COMMENT '贷款剩余金额',
  `czy` varchar(255) DEFAULT NULL COMMENT '还款操作员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收款表';

-- ----------------------------
-- Records of sk
-- ----------------------------

-- ----------------------------
-- Table structure for sq
-- ----------------------------
DROP TABLE IF EXISTS `sq`;
CREATE TABLE `sq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(255) DEFAULT NULL COMMENT '用户id',
  `dkzl` varchar(255) DEFAULT NULL COMMENT '贷款类型',
  `dkxz` varchar(255) DEFAULT NULL COMMENT '贷款性质',
  `dkdyp` varchar(255) DEFAULT NULL COMMENT '贷款抵押品',
  `dypje` varchar(255) DEFAULT NULL COMMENT '抵押品金额',
  `dkje` varchar(255) DEFAULT NULL COMMENT '贷款金额',
  `sqrq` varchar(255) DEFAULT NULL COMMENT '申请日期',
  `sprq` varchar(255) DEFAULT NULL COMMENT '审批日期',
  `dkhtll` varchar(255) DEFAULT NULL COMMENT '合同贷款利率',
  `hkfs` varchar(255) DEFAULT NULL COMMENT '还款方式',
  `mqhkje` varchar(255) DEFAULT NULL COMMENT '每期还款金额',
  `status` varchar(255) DEFAULT NULL COMMENT '审批状态',
  `fxpgdj` int(11) DEFAULT NULL COMMENT '风险评估等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='贷款申请表';

-- ----------------------------
-- Records of sq
-- ----------------------------
INSERT INTO `sq` VALUES ('2', '2', '开款类型1', '贷款性质1', '贷款抵押品1', '12', '12', '2016-12-09', '2016-12-09', '12', '还款方式1', '12', '已审核', '2');
INSERT INTO `sq` VALUES ('3', '4', '贷款类型2', '贷款性质2', '贷款抵押品2', '12万', '44万', '2016-12-09', '2016-12-09', '1', '还款方式2', '1万', '已审核', '2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'xdy', '123456', '信贷员', '2016-12-08 15:00:35');
INSERT INTO `user` VALUES ('2', 'spy', '123456', '信贷审批专员', '2016-12-08 15:01:05');
INSERT INTO `user` VALUES ('3', 'zhgly', '12345', '信贷综合管理员', '2016-12-08 15:03:52');
INSERT INTO `user` VALUES ('4', 'pgy', '1234', '信贷风险评估员', '2016-12-08 15:04:36');

-- ----------------------------
-- Table structure for zcpg
-- ----------------------------
DROP TABLE IF EXISTS `zcpg`;
CREATE TABLE `zcpg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgrq` varchar(255) DEFAULT NULL COMMENT '资产评估日期',
  `sqid` int(11) DEFAULT NULL COMMENT '贷款申请id',
  `pgje` varchar(255) DEFAULT NULL COMMENT '评估金额',
  `pggs` varchar(255) DEFAULT NULL COMMENT '评估公司',
  `cfdd` varchar(255) DEFAULT NULL COMMENT '存放单位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zcpg
-- ----------------------------
INSERT INTO `zcpg` VALUES ('2', '2016-12-09', '2', '12', '评估公司', '存放单位');
INSERT INTO `zcpg` VALUES ('3', '2016-12-09', '3', '22万', '评估公司2', '存放单位2');
