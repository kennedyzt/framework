/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50617
Source Host           : 127.0.0.1:3306
Source Database       : framework

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-05-19 16:00:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` int(11) unsigned DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL COMMENT '模块图标',
  `selected_icon` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `back_color` varchar(255) DEFAULT NULL COMMENT '背景颜色',
  `href` varchar(255) DEFAULT NULL,
  `select_table` tinyint(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(17) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', null, '1', '系统管理', null, null, null, null, null, '0', null, '2016-03-06 19:00:33', '1', null, null);
INSERT INTO `menu` VALUES ('2', '1', '2', '用户管理', null, null, null, null, null, '0', null, '2016-03-06 19:01:11', '1', null, null);
INSERT INTO `menu` VALUES ('3', null, '1', '采购订单', null, null, null, null, null, '0', null, null, null, null, null);
INSERT INTO `menu` VALUES ('4', null, '1', '销售订单', null, null, null, null, null, '0', null, null, null, null, null);
INSERT INTO `menu` VALUES ('5', null, '1', '销售发货单', null, null, null, null, null, '0', null, null, null, null, null);
INSERT INTO `menu` VALUES ('6', null, '1', '库存发货单', null, null, null, null, null, '0', null, null, null, null, null);
INSERT INTO `menu` VALUES ('7', '2', '3', '用户列表', null, null, null, null, '/user/list', '0', null, null, null, null, null);
INSERT INTO `menu` VALUES ('8', '2', null, '权限管理', null, null, null, null, null, '0', null, null, null, null, null);
INSERT INTO `menu` VALUES ('9', '3', '2', '采购订单列表', null, null, null, null, null, '0', null, null, null, null, null);
INSERT INTO `menu` VALUES ('100', null, '1', 'DEMO', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('10', '100', '2', 'BootStrap Validator', null, null, null, null, '/demo//bootstrapvalidator', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('11', '100', '2', 'Layer', null, null, null, null, '/demo/layer', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('12', '100', '2', 'AngularJs', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('13', '12', '3', 'Hello World', null, null, null, null, '/demo/angularjs/helloworld', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('14', '100', '2', 'FileInput', null, null, null, null, '/demo/fileinput', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionname` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', 'add', '2');
INSERT INTO `permission` VALUES ('2', 'del', '1');
INSERT INTO `permission` VALUES ('3', 'update', '2');
INSERT INTO `permission` VALUES ('4', 'query', '3');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin');
INSERT INTO `role` VALUES ('2', 'manager');
INSERT INTO `role` VALUES ('3', 'normal');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(17) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(17) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'tom', 'zengt', '000000', '863468390@qq.com', '18384280421', '成都', '2016-05-30 15:40:08', '111', null, null);
INSERT INTO `user` VALUES ('2', 'jack', 'zengt', '000000', '863468390@qq.com', '18384280421', '成都', '2016-05-30 15:40:08', '111', null, null);
INSERT INTO `user` VALUES ('3', 'rose', 'zengt', '000000', '863468390@qq.com', '18384280421', '成都', '2016-05-30 15:40:08', '111', null, null);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1');
INSERT INTO `user_role` VALUES ('1', '3');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('2', '3');
INSERT INTO `user_role` VALUES ('3', '3');
