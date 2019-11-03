/*
Navicat MySQL Data Transfer

Source Server         : WeiBo_DEMO
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : weibo

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-11-03 17:01:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `log_icecoldmonitor`
-- ----------------------------
DROP TABLE IF EXISTS `log_icecoldmonitor`;
CREATE TABLE `log_icecoldmonitor` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(255) NOT NULL DEFAULT '' COMMENT '优先级',
  `category` varchar(255) NOT NULL DEFAULT '' COMMENT '类目',
  `thread` varchar(255) NOT NULL DEFAULT '' COMMENT '进程',
  `time` varchar(30) NOT NULL DEFAULT '' COMMENT '时间',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT '位置',
  `note` text COMMENT '日志信息',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_icecoldmonitor
-- ----------------------------
INSERT INTO `log_icecoldmonitor` VALUES ('7', 'ERROR', 'controller.WeiboController', 'http-nio-8080-exec-6', '2019-09-13 10:35:09:958', 'controller.WeiboController.showById(WeiboController.java:62)', '插入测试');
INSERT INTO `log_icecoldmonitor` VALUES ('8', 'ERROR', 'controller.WeiboController', 'http-nio-8080-exec-7', '2019-09-13 10:35:14:202', 'controller.WeiboController.showById(WeiboController.java:62)', '插入测试');
INSERT INTO `log_icecoldmonitor` VALUES ('9', 'ERROR', 'org.springframework.web.context.ContextLoader', 'ContainerBackgroundProcessor[StandardEngine[Catalina]]', '2019-09-15 11:51:08:801', 'org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:353)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('10', 'ERROR', 'org.springframework.web.context.ContextLoader', 'localhost-startStop-1', '2019-09-15 12:30:02:970', 'org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:353)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('11', 'ERROR', 'org.springframework.web.context.ContextLoader', 'localhost-startStop-1', '2019-09-15 12:30:38:629', 'org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:353)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('12', 'ERROR', 'org.springframework.web.context.ContextLoader', 'localhost-startStop-1', '2019-09-15 12:31:29:197', 'org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:353)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('13', 'ERROR', 'org.springframework.web.servlet.DispatcherServlet', 'ContainerBackgroundProcessor[StandardEngine[Catalina]]', '2019-09-15 12:52:34:623', 'org.springframework.web.servlet.FrameworkServlet.initServletBean(FrameworkServlet.java:502)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('14', 'ERROR', 'org.springframework.web.context.ContextLoader', 'localhost-startStop-1', '2019-09-16 09:30:21:909', 'org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:353)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('15', 'ERROR', 'org.springframework.web.context.ContextLoader', 'ContainerBackgroundProcessor[StandardEngine[Catalina]]', '2019-09-17 10:46:22:007', 'org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:353)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('16', 'ERROR', 'org.springframework.web.servlet.DispatcherServlet', 'localhost-startStop-1', '2019-09-18 16:44:10:768', 'org.springframework.web.servlet.FrameworkServlet.initServletBean(FrameworkServlet.java:502)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('17', 'ERROR', 'org.springframework.web.servlet.DispatcherServlet', 'http-nio-8080-exec-1', '2019-09-18 16:44:11:705', 'org.springframework.web.servlet.FrameworkServlet.initServletBean(FrameworkServlet.java:502)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('18', 'ERROR', 'org.springframework.web.servlet.DispatcherServlet', 'ContainerBackgroundProcessor[StandardEngine[Catalina]]', '2019-09-18 16:44:27:999', 'org.springframework.web.servlet.FrameworkServlet.initServletBean(FrameworkServlet.java:502)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('19', 'ERROR', 'org.springframework.web.context.ContextLoader', 'localhost-startStop-1', '2019-09-19 08:50:37:699', 'org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:353)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('20', 'ERROR', 'org.springframework.web.context.ContextLoader', 'localhost-startStop-1', '2019-09-19 08:51:23:101', 'org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:353)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('21', 'ERROR', 'org.springframework.web.context.ContextLoader', 'localhost-startStop-1', '2019-09-19 08:54:04:435', 'org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:353)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('22', 'ERROR', 'org.springframework.web.context.ContextLoader', 'localhost-startStop-1', '2019-09-19 08:57:26:257', 'org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:353)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('23', 'ERROR', 'org.springframework.web.context.ContextLoader', 'ContainerBackgroundProcessor[StandardEngine[Catalina]]', '2019-09-19 09:03:58:492', 'org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:353)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('24', 'ERROR', 'org.springframework.web.context.ContextLoader', 'localhost-startStop-1', '2019-09-19 09:07:34:500', 'org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:353)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('25', 'ERROR', 'org.springframework.web.context.ContextLoader', 'localhost-startStop-1', '2019-09-19 09:08:19:087', 'org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:353)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('26', 'ERROR', 'org.springframework.web.servlet.DispatcherServlet', 'ContainerBackgroundProcessor[StandardEngine[Catalina]]', '2019-09-22 10:00:58:756', 'org.springframework.web.servlet.FrameworkServlet.initServletBean(FrameworkServlet.java:502)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('27', 'ERROR', 'org.springframework.web.servlet.DispatcherServlet', 'ContainerBackgroundProcessor[StandardEngine[Catalina]]', '2019-09-22 10:03:53:295', 'org.springframework.web.servlet.FrameworkServlet.initServletBean(FrameworkServlet.java:502)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('28', 'ERROR', 'org.springframework.web.servlet.DispatcherServlet', 'ContainerBackgroundProcessor[StandardEngine[Catalina]]', '2019-09-22 10:07:10:445', 'org.springframework.web.servlet.FrameworkServlet.initServletBean(FrameworkServlet.java:502)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('29', 'ERROR', 'org.springframework.web.servlet.DispatcherServlet', 'ContainerBackgroundProcessor[StandardEngine[Catalina]]', '2019-09-22 10:08:38:103', 'org.springframework.web.servlet.FrameworkServlet.initServletBean(FrameworkServlet.java:502)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('30', 'ERROR', 'org.springframework.web.servlet.DispatcherServlet', 'ContainerBackgroundProcessor[StandardEngine[Catalina]]', '2019-09-22 10:09:32:800', 'org.springframework.web.servlet.FrameworkServlet.initServletBean(FrameworkServlet.java:502)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('31', 'ERROR', 'org.springframework.web.servlet.DispatcherServlet', 'ContainerBackgroundProcessor[StandardEngine[Catalina]]', '2019-09-22 10:10:48:339', 'org.springframework.web.servlet.FrameworkServlet.initServletBean(FrameworkServlet.java:502)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('32', 'ERROR', 'org.springframework.web.servlet.DispatcherServlet', 'http-nio-8080-exec-5', '2019-09-22 10:10:56:956', 'org.springframework.web.servlet.FrameworkServlet.initServletBean(FrameworkServlet.java:502)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('33', 'ERROR', 'org.springframework.web.servlet.DispatcherServlet', 'http-nio-8080-exec-13', '2019-09-22 10:11:01:710', 'org.springframework.web.servlet.FrameworkServlet.initServletBean(FrameworkServlet.java:502)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('34', 'ERROR', 'org.springframework.web.servlet.DispatcherServlet', 'localhost-startStop-1', '2019-09-22 10:12:32:478', 'org.springframework.web.servlet.FrameworkServlet.initServletBean(FrameworkServlet.java:502)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('35', 'ERROR', 'org.springframework.web.context.ContextLoader', 'localhost-startStop-1', '2019-09-22 13:09:04:850', 'org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:353)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('36', 'ERROR', 'org.springframework.web.context.ContextLoader', 'localhost-startStop-1', '2019-09-22 13:11:01:662', 'org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:353)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('37', 'ERROR', 'org.springframework.web.context.ContextLoader', 'localhost-startStop-1', '2019-10-12 11:23:02:671', 'org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:353)', 'Context initialization failed');
INSERT INTO `log_icecoldmonitor` VALUES ('38', 'ERROR', 'org.springframework.web.context.ContextLoader', 'localhost-startStop-1', '2019-10-12 11:41:35:986', 'org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:353)', 'Context initialization failed');

-- ----------------------------
-- Table structure for `t_collect`
-- ----------------------------
DROP TABLE IF EXISTS `t_collect`;
CREATE TABLE `t_collect` (
  `collect_id` int(11) NOT NULL AUTO_INCREMENT,
  `weibo_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `collect_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`collect_id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_collect
-- ----------------------------
INSERT INTO `t_collect` VALUES ('5', '86', '53', '2019-09-14 14:00:38');
INSERT INTO `t_collect` VALUES ('6', '85', '53', '2019-09-14 14:02:47');
INSERT INTO `t_collect` VALUES ('7', '87', '53', '2019-09-14 14:04:55');
INSERT INTO `t_collect` VALUES ('8', '84', '53', '2019-09-14 14:05:21');
INSERT INTO `t_collect` VALUES ('13', '103', '53', '2019-09-14 14:18:46');
INSERT INTO `t_collect` VALUES ('17', '113', '57', '2019-09-14 21:31:03');
INSERT INTO `t_collect` VALUES ('26', '146', '58', '2019-09-16 17:09:30');
INSERT INTO `t_collect` VALUES ('27', '147', '55', '2019-09-16 19:52:14');
INSERT INTO `t_collect` VALUES ('28', '151', '58', '2019-09-16 20:20:44');
INSERT INTO `t_collect` VALUES ('29', '150', '58', '2019-09-16 21:38:04');
INSERT INTO `t_collect` VALUES ('30', '149', '58', '2019-09-16 21:38:04');
INSERT INTO `t_collect` VALUES ('31', '148', '58', '2019-09-16 21:38:06');
INSERT INTO `t_collect` VALUES ('32', '147', '58', '2019-09-16 21:38:07');
INSERT INTO `t_collect` VALUES ('33', '145', '58', '2019-09-16 21:38:09');
INSERT INTO `t_collect` VALUES ('34', '141', '58', '2019-09-16 21:38:11');
INSERT INTO `t_collect` VALUES ('35', '140', '58', '2019-09-16 21:38:11');
INSERT INTO `t_collect` VALUES ('36', '128', '58', '2019-09-16 21:38:12');
INSERT INTO `t_collect` VALUES ('37', '126', '58', '2019-09-16 21:38:16');
INSERT INTO `t_collect` VALUES ('40', '152', '57', '2019-09-18 11:23:02');
INSERT INTO `t_collect` VALUES ('41', '156', '48', '2019-09-18 18:57:20');
INSERT INTO `t_collect` VALUES ('47', '158', '60', '2019-09-19 13:18:58');
INSERT INTO `t_collect` VALUES ('48', '157', '60', '2019-09-19 13:46:50');
INSERT INTO `t_collect` VALUES ('49', '154', '60', '2019-09-19 13:46:53');
INSERT INTO `t_collect` VALUES ('50', '153', '60', '2019-09-19 13:46:54');
INSERT INTO `t_collect` VALUES ('51', '152', '60', '2019-09-19 13:46:57');
INSERT INTO `t_collect` VALUES ('52', '151', '60', '2019-09-19 13:46:58');
INSERT INTO `t_collect` VALUES ('53', '150', '60', '2019-09-19 13:47:00');
INSERT INTO `t_collect` VALUES ('54', '149', '60', '2019-09-19 13:47:02');
INSERT INTO `t_collect` VALUES ('55', '148', '60', '2019-09-19 13:47:05');
INSERT INTO `t_collect` VALUES ('56', '147', '60', '2019-09-19 13:47:07');
INSERT INTO `t_collect` VALUES ('57', '146', '60', '2019-09-19 13:47:42');
INSERT INTO `t_collect` VALUES ('58', '145', '60', '2019-09-19 13:47:45');
INSERT INTO `t_collect` VALUES ('59', '159', '61', '2019-09-19 20:09:01');
INSERT INTO `t_collect` VALUES ('60', '158', '61', '2019-09-19 20:09:40');
INSERT INTO `t_collect` VALUES ('63', '165', '53', '2019-09-21 12:04:44');
INSERT INTO `t_collect` VALUES ('64', '164', '53', '2019-09-21 12:04:46');
INSERT INTO `t_collect` VALUES ('65', '163', '53', '2019-09-21 12:04:47');
INSERT INTO `t_collect` VALUES ('66', '161', '53', '2019-09-21 12:04:48');
INSERT INTO `t_collect` VALUES ('67', '160', '53', '2019-09-21 12:04:49');
INSERT INTO `t_collect` VALUES ('68', '159', '53', '2019-09-21 12:04:51');
INSERT INTO `t_collect` VALUES ('69', '158', '53', '2019-09-21 12:04:52');
INSERT INTO `t_collect` VALUES ('70', '157', '53', '2019-09-21 12:04:53');
INSERT INTO `t_collect` VALUES ('71', '154', '53', '2019-09-21 12:04:55');
INSERT INTO `t_collect` VALUES ('72', '153', '53', '2019-09-21 12:04:57');
INSERT INTO `t_collect` VALUES ('75', '163', '64', '2019-09-21 13:00:57');
INSERT INTO `t_collect` VALUES ('76', '161', '64', '2019-09-21 13:00:58');
INSERT INTO `t_collect` VALUES ('77', '160', '64', '2019-09-21 13:01:00');
INSERT INTO `t_collect` VALUES ('78', '159', '64', '2019-09-21 13:01:01');
INSERT INTO `t_collect` VALUES ('79', '158', '64', '2019-09-21 13:01:03');
INSERT INTO `t_collect` VALUES ('80', '157', '64', '2019-09-21 13:01:05');
INSERT INTO `t_collect` VALUES ('81', '154', '64', '2019-09-21 13:01:07');
INSERT INTO `t_collect` VALUES ('82', '153', '64', '2019-09-21 13:01:08');
INSERT INTO `t_collect` VALUES ('83', '152', '64', '2019-09-21 13:01:11');
INSERT INTO `t_collect` VALUES ('84', '165', '64', '2019-09-21 15:35:45');
INSERT INTO `t_collect` VALUES ('85', '164', '64', '2019-09-21 15:35:46');
INSERT INTO `t_collect` VALUES ('87', '165', '48', '2019-09-21 17:25:15');
INSERT INTO `t_collect` VALUES ('88', '180', '65', '2019-09-21 19:57:01');
INSERT INTO `t_collect` VALUES ('89', '179', '48', '2019-09-23 19:34:59');
INSERT INTO `t_collect` VALUES ('90', '189', '61', '2019-09-25 19:28:18');
INSERT INTO `t_collect` VALUES ('91', '190', '61', '2019-09-25 19:29:02');
INSERT INTO `t_collect` VALUES ('92', '188', '61', '2019-09-25 19:29:04');
INSERT INTO `t_collect` VALUES ('94', '183', '48', '2019-09-25 21:47:48');
INSERT INTO `t_collect` VALUES ('95', '185', '48', '2019-09-26 13:10:44');
INSERT INTO `t_collect` VALUES ('96', '190', '72', '2019-10-02 17:23:12');
INSERT INTO `t_collect` VALUES ('97', '192', '72', '2019-10-02 17:30:29');
INSERT INTO `t_collect` VALUES ('98', '195', '73', '2019-10-10 14:48:17');
INSERT INTO `t_collect` VALUES ('99', '196', '73', '2019-10-10 14:48:42');
INSERT INTO `t_collect` VALUES ('100', '164', '73', '2019-10-10 16:28:47');
INSERT INTO `t_collect` VALUES ('101', '197', '73', '2019-10-10 17:20:23');
INSERT INTO `t_collect` VALUES ('102', '200', '48', '2019-10-11 09:36:14');
INSERT INTO `t_collect` VALUES ('104', '201', '75', '2019-10-11 15:07:10');
INSERT INTO `t_collect` VALUES ('105', '200', '75', '2019-10-11 15:07:13');
INSERT INTO `t_collect` VALUES ('106', '202', '75', '2019-10-11 15:08:21');
INSERT INTO `t_collect` VALUES ('107', '204', '76', '2019-10-11 17:57:35');
INSERT INTO `t_collect` VALUES ('108', '205', '76', '2019-10-11 17:59:18');
INSERT INTO `t_collect` VALUES ('109', '207', '77', '2019-10-12 12:32:23');
INSERT INTO `t_collect` VALUES ('110', '211', '78', '2019-10-12 15:34:35');
INSERT INTO `t_collect` VALUES ('111', '213', '79', '2019-10-12 16:06:24');
INSERT INTO `t_collect` VALUES ('112', '210', '79', '2019-10-12 16:19:53');
INSERT INTO `t_collect` VALUES ('113', '209', '79', '2019-10-12 16:19:55');
INSERT INTO `t_collect` VALUES ('114', '216', '79', '2019-10-12 16:23:20');
INSERT INTO `t_collect` VALUES ('115', '216', '80', '2019-10-12 18:08:57');

-- ----------------------------
-- Table structure for `t_comment`
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `weibo_id` int(11) DEFAULT NULL COMMENT '微博id',
  `comment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '评论时间',
  `comment_content` varchar(100) NOT NULL COMMENT '评论内容',
  PRIMARY KEY (`comment_id`),
  KEY `FK_sendcom` (`user_id`),
  KEY `FK_getcom` (`weibo_id`),
  CONSTRAINT `t_comment_ibfk_1` FOREIGN KEY (`weibo_id`) REFERENCES `t_weibo` (`id`) ON DELETE CASCADE,
  CONSTRAINT `t_comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('14', '48', '83', '2019-09-09 10:35:45', '11111111111111');
INSERT INTO `t_comment` VALUES ('16', '48', '83', '2019-09-09 11:05:13', '评论测试');
INSERT INTO `t_comment` VALUES ('17', '48', '83', '2019-09-09 11:06:42', '33');
INSERT INTO `t_comment` VALUES ('22', '48', '82', '2019-09-09 22:53:11', '3333');
INSERT INTO `t_comment` VALUES ('27', '53', '84', '2019-09-10 15:02:19', 'nb');
INSERT INTO `t_comment` VALUES ('28', '53', '84', '2019-09-10 15:04:58', '123');
INSERT INTO `t_comment` VALUES ('29', '48', '91', '2019-09-10 18:20:28', '321');
INSERT INTO `t_comment` VALUES ('30', '48', '91', '2019-09-10 18:24:49', '321');
INSERT INTO `t_comment` VALUES ('32', '48', '93', '2019-09-11 22:21:33', '321');
INSERT INTO `t_comment` VALUES ('33', '55', '99', '2019-09-12 17:36:34', '123');
INSERT INTO `t_comment` VALUES ('40', '58', '116', '2019-09-15 11:06:53', '333');
INSERT INTO `t_comment` VALUES ('45', '48', '154', '2019-09-18 19:38:58', '123123123');
INSERT INTO `t_comment` VALUES ('53', '48', '106', '2019-09-19 17:49:11', '');
INSERT INTO `t_comment` VALUES ('74', '48', '158', '2019-09-19 19:54:19', '35210');
INSERT INTO `t_comment` VALUES ('78', '48', '104', '2019-09-19 20:01:55', '5210');
INSERT INTO `t_comment` VALUES ('81', '48', '151', '2019-09-19 20:05:48', '333');
INSERT INTO `t_comment` VALUES ('82', '48', '104', '2019-09-19 20:06:08', '256');
INSERT INTO `t_comment` VALUES ('83', '48', '165', '2019-09-21 17:25:13', '12312');
INSERT INTO `t_comment` VALUES ('85', '48', '179', '2019-09-21 17:39:19', '5210');
INSERT INTO `t_comment` VALUES ('86', '65', '180', '2019-09-21 19:50:36', '你们看，风景是不是很美丽呢？');
INSERT INTO `t_comment` VALUES ('87', '70', '181', '2019-09-22 14:38:38', '评论消息提醒测试');
INSERT INTO `t_comment` VALUES ('88', '48', '181', '2019-09-22 14:45:46', '他人评论消息提醒测试');
INSERT INTO `t_comment` VALUES ('90', '70', '182', '2019-09-23 14:30:43', '评论长训练测试');
INSERT INTO `t_comment` VALUES ('92', '48', '182', '2019-09-23 14:33:06', '他人评论测试');
INSERT INTO `t_comment` VALUES ('93', '48', '179', '2019-09-23 19:34:58', '测试');
INSERT INTO `t_comment` VALUES ('94', '70', '184', '2019-09-24 14:37:20', '可不可以');
INSERT INTO `t_comment` VALUES ('95', '58', '146', '2019-09-24 19:30:54', '312');
INSERT INTO `t_comment` VALUES ('97', '48', '188', '2019-09-25 15:42:18', '31');
INSERT INTO `t_comment` VALUES ('98', '48', '185', '2019-09-25 16:42:27', '333');
INSERT INTO `t_comment` VALUES ('100', '61', '160', '2019-09-25 19:27:45', '321');
INSERT INTO `t_comment` VALUES ('102', '61', '190', '2019-09-25 19:34:09', '3333');
INSERT INTO `t_comment` VALUES ('108', '48', '183', '2019-09-26 10:04:36', '5555555555555555');
INSERT INTO `t_comment` VALUES ('111', '48', '183', '2019-09-26 10:33:54', '3321');
INSERT INTO `t_comment` VALUES ('112', '48', '183', '2019-09-26 10:49:42', '432');
INSERT INTO `t_comment` VALUES ('113', '48', '190', '2019-09-26 14:37:52', '你郝雅');
INSERT INTO `t_comment` VALUES ('114', '72', '192', '2019-10-02 17:26:24', '这五个照片拍的不错！');
INSERT INTO `t_comment` VALUES ('115', '58', '185', '2019-10-06 14:58:41', '评论测试');
INSERT INTO `t_comment` VALUES ('116', '48', '196', '2019-10-10 15:17:18', '恩爱啊~');
INSERT INTO `t_comment` VALUES ('117', '73', '197', '2019-10-10 17:29:05', '哎哟，不错喔');
INSERT INTO `t_comment` VALUES ('118', '48', '200', '2019-10-11 09:36:20', '123');
INSERT INTO `t_comment` VALUES ('119', '48', '141', '2019-10-11 09:38:21', '33');
INSERT INTO `t_comment` VALUES ('120', '48', '198', '2019-10-11 09:39:13', '哈哈，长序');
INSERT INTO `t_comment` VALUES ('121', '48', '198', '2019-10-11 09:39:59', '可以的');
INSERT INTO `t_comment` VALUES ('122', '48', '198', '2019-10-11 09:44:44', '99');
INSERT INTO `t_comment` VALUES ('123', '48', '198', '2019-10-11 09:48:55', '99不88');
INSERT INTO `t_comment` VALUES ('124', '48', '185', '2019-10-11 09:51:16', '转发的不错啊');
INSERT INTO `t_comment` VALUES ('125', '48', '179', '2019-10-11 09:51:47', '666');
INSERT INTO `t_comment` VALUES ('126', '48', '163', '2019-10-11 09:55:45', '图片排的不错吧？');
INSERT INTO `t_comment` VALUES ('127', '75', '202', '2019-10-11 15:08:45', '是的，今天');
INSERT INTO `t_comment` VALUES ('128', '75', '201', '2019-10-11 15:11:11', '风景不错！');
INSERT INTO `t_comment` VALUES ('129', '75', '202', '2019-10-11 15:22:43', '好！');
INSERT INTO `t_comment` VALUES ('130', '76', '205', '2019-10-11 17:59:10', 'hahahha');
INSERT INTO `t_comment` VALUES ('131', '77', '207', '2019-10-12 11:50:50', '你们好鸭');
INSERT INTO `t_comment` VALUES ('132', '78', '210', '2019-10-12 15:36:26', '确实不错！');
INSERT INTO `t_comment` VALUES ('133', '79', '216', '2019-10-12 16:23:53', '可以');

-- ----------------------------
-- Table structure for `t_likes`
-- ----------------------------
DROP TABLE IF EXISTS `t_likes`;
CREATE TABLE `t_likes` (
  `likes_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `weibo_id` int(11) DEFAULT NULL,
  `like_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`likes_id`),
  KEY `FK_sendlikes` (`user_id`),
  KEY `FK_getlikes` (`weibo_id`),
  CONSTRAINT `t_likes_ibfk_1` FOREIGN KEY (`weibo_id`) REFERENCES `t_weibo` (`id`) ON DELETE CASCADE,
  CONSTRAINT `t_likes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_likes
-- ----------------------------
INSERT INTO `t_likes` VALUES ('85', '58', '145', '2019-09-16 16:22:57');
INSERT INTO `t_likes` VALUES ('88', '58', '151', '2019-09-16 20:20:45');
INSERT INTO `t_likes` VALUES ('89', '58', '120', '2019-09-16 21:02:39');
INSERT INTO `t_likes` VALUES ('90', '58', '119', '2019-09-16 21:02:40');
INSERT INTO `t_likes` VALUES ('91', '58', '118', '2019-09-16 21:02:41');
INSERT INTO `t_likes` VALUES ('92', '58', '117', '2019-09-16 21:02:42');
INSERT INTO `t_likes` VALUES ('93', '58', '116', '2019-09-16 21:02:43');
INSERT INTO `t_likes` VALUES ('94', '58', '115', '2019-09-16 21:02:44');
INSERT INTO `t_likes` VALUES ('95', '58', '114', '2019-09-16 21:02:49');
INSERT INTO `t_likes` VALUES ('97', '58', '128', '2019-09-16 21:03:23');
INSERT INTO `t_likes` VALUES ('98', '58', '141', '2019-09-16 21:03:25');
INSERT INTO `t_likes` VALUES ('99', '58', '146', '2019-09-16 21:05:51');
INSERT INTO `t_likes` VALUES ('100', '55', '150', '2019-09-17 21:17:17');
INSERT INTO `t_likes` VALUES ('101', '57', '152', '2019-09-18 11:22:58');
INSERT INTO `t_likes` VALUES ('109', '60', '158', '2019-09-19 11:41:57');
INSERT INTO `t_likes` VALUES ('110', '60', '154', '2019-09-19 11:44:38');
INSERT INTO `t_likes` VALUES ('111', '60', '157', '2019-09-19 13:46:51');
INSERT INTO `t_likes` VALUES ('112', '60', '153', '2019-09-19 13:46:55');
INSERT INTO `t_likes` VALUES ('113', '60', '152', '2019-09-19 13:46:56');
INSERT INTO `t_likes` VALUES ('114', '60', '151', '2019-09-19 13:46:59');
INSERT INTO `t_likes` VALUES ('115', '60', '150', '2019-09-19 13:47:01');
INSERT INTO `t_likes` VALUES ('116', '60', '149', '2019-09-19 13:47:03');
INSERT INTO `t_likes` VALUES ('117', '60', '148', '2019-09-19 13:47:06');
INSERT INTO `t_likes` VALUES ('118', '60', '147', '2019-09-19 13:47:08');
INSERT INTO `t_likes` VALUES ('119', '60', '146', '2019-09-19 13:47:43');
INSERT INTO `t_likes` VALUES ('120', '60', '145', '2019-09-19 13:47:45');
INSERT INTO `t_likes` VALUES ('123', '61', '158', '2019-09-19 20:09:39');
INSERT INTO `t_likes` VALUES ('124', '61', '154', '2019-09-19 20:16:19');
INSERT INTO `t_likes` VALUES ('125', '61', '159', '2019-09-19 20:16:20');
INSERT INTO `t_likes` VALUES ('126', '61', '160', '2019-09-19 20:16:22');
INSERT INTO `t_likes` VALUES ('127', '61', '112', '2019-09-19 20:47:18');
INSERT INTO `t_likes` VALUES ('128', '61', '111', '2019-09-19 20:47:19');
INSERT INTO `t_likes` VALUES ('130', '53', '153', '2019-09-21 12:08:53');
INSERT INTO `t_likes` VALUES ('131', '53', '154', '2019-09-21 12:08:54');
INSERT INTO `t_likes` VALUES ('132', '53', '157', '2019-09-21 12:08:55');
INSERT INTO `t_likes` VALUES ('133', '53', '158', '2019-09-21 12:08:56');
INSERT INTO `t_likes` VALUES ('134', '53', '159', '2019-09-21 12:08:57');
INSERT INTO `t_likes` VALUES ('135', '53', '160', '2019-09-21 12:08:57');
INSERT INTO `t_likes` VALUES ('136', '53', '161', '2019-09-21 12:08:58');
INSERT INTO `t_likes` VALUES ('137', '53', '163', '2019-09-21 12:09:00');
INSERT INTO `t_likes` VALUES ('138', '53', '164', '2019-09-21 12:09:01');
INSERT INTO `t_likes` VALUES ('139', '53', '165', '2019-09-21 12:09:02');
INSERT INTO `t_likes` VALUES ('140', '53', '103', '2019-09-21 12:09:04');
INSERT INTO `t_likes` VALUES ('141', '53', '84', '2019-09-21 12:09:06');
INSERT INTO `t_likes` VALUES ('142', '53', '87', '2019-09-21 12:09:07');
INSERT INTO `t_likes` VALUES ('143', '53', '85', '2019-09-21 12:09:08');
INSERT INTO `t_likes` VALUES ('144', '53', '86', '2019-09-21 12:09:09');
INSERT INTO `t_likes` VALUES ('145', '64', '165', '2019-09-21 13:00:48');
INSERT INTO `t_likes` VALUES ('146', '64', '164', '2019-09-21 13:00:56');
INSERT INTO `t_likes` VALUES ('147', '64', '163', '2019-09-21 13:00:58');
INSERT INTO `t_likes` VALUES ('148', '64', '161', '2019-09-21 13:00:59');
INSERT INTO `t_likes` VALUES ('149', '64', '160', '2019-09-21 13:01:00');
INSERT INTO `t_likes` VALUES ('150', '64', '159', '2019-09-21 13:01:02');
INSERT INTO `t_likes` VALUES ('158', '48', '165', '2019-09-21 17:25:08');
INSERT INTO `t_likes` VALUES ('159', '48', '179', '2019-09-21 17:28:15');
INSERT INTO `t_likes` VALUES ('160', '48', '164', '2019-09-21 17:28:17');
INSERT INTO `t_likes` VALUES ('161', '48', '163', '2019-09-21 17:28:18');
INSERT INTO `t_likes` VALUES ('162', '48', '161', '2019-09-21 17:28:20');
INSERT INTO `t_likes` VALUES ('164', '48', '141', '2019-09-21 17:28:22');
INSERT INTO `t_likes` VALUES ('165', '48', '128', '2019-09-21 17:28:23');
INSERT INTO `t_likes` VALUES ('166', '48', '126', '2019-09-21 17:28:24');
INSERT INTO `t_likes` VALUES ('167', '48', '124', '2019-09-21 17:28:25');
INSERT INTO `t_likes` VALUES ('168', '48', '123', '2019-09-21 17:28:28');
INSERT INTO `t_likes` VALUES ('169', '65', '180', '2019-09-21 19:56:57');
INSERT INTO `t_likes` VALUES ('170', '70', '181', '2019-09-22 14:13:31');
INSERT INTO `t_likes` VALUES ('171', '48', '104', '2019-09-22 15:49:38');
INSERT INTO `t_likes` VALUES ('172', '48', '181', '2019-09-22 16:04:58');
INSERT INTO `t_likes` VALUES ('173', '70', '182', '2019-09-22 17:41:22');
INSERT INTO `t_likes` VALUES ('175', '61', '189', '2019-09-25 19:28:26');
INSERT INTO `t_likes` VALUES ('176', '61', '188', '2019-09-25 19:29:05');
INSERT INTO `t_likes` VALUES ('177', '48', '151', '2019-09-25 20:41:30');
INSERT INTO `t_likes` VALUES ('180', '48', '183', '2019-09-25 21:47:49');
INSERT INTO `t_likes` VALUES ('181', '48', '185', '2019-09-26 13:10:45');
INSERT INTO `t_likes` VALUES ('182', '72', '190', '2019-10-02 17:23:19');
INSERT INTO `t_likes` VALUES ('184', '72', '189', '2019-10-02 17:23:31');
INSERT INTO `t_likes` VALUES ('185', '72', '192', '2019-10-02 17:30:48');
INSERT INTO `t_likes` VALUES ('186', '48', '192', '2019-10-02 17:31:27');
INSERT INTO `t_likes` VALUES ('187', '58', '185', '2019-10-06 16:50:39');
INSERT INTO `t_likes` VALUES ('189', '73', '195', '2019-10-10 14:48:03');
INSERT INTO `t_likes` VALUES ('190', '73', '196', '2019-10-10 14:48:41');
INSERT INTO `t_likes` VALUES ('191', '48', '196', '2019-10-10 15:20:24');
INSERT INTO `t_likes` VALUES ('192', '73', '164', '2019-10-10 16:28:46');
INSERT INTO `t_likes` VALUES ('193', '73', '197', '2019-10-10 17:20:24');
INSERT INTO `t_likes` VALUES ('194', '73', '194', '2019-10-10 17:43:24');
INSERT INTO `t_likes` VALUES ('195', '73', '193', '2019-10-10 17:43:25');
INSERT INTO `t_likes` VALUES ('196', '48', '198', '2019-10-11 09:32:43');
INSERT INTO `t_likes` VALUES ('197', '58', '198', '2019-10-11 09:52:52');
INSERT INTO `t_likes` VALUES ('198', '58', '183', '2019-10-11 09:58:46');
INSERT INTO `t_likes` VALUES ('199', '48', '146', '2019-10-11 10:08:05');
INSERT INTO `t_likes` VALUES ('200', '48', '145', '2019-10-11 10:16:55');
INSERT INTO `t_likes` VALUES ('201', '48', '120', '2019-10-11 10:37:14');
INSERT INTO `t_likes` VALUES ('202', '48', '118', '2019-10-11 10:38:31');
INSERT INTO `t_likes` VALUES ('203', '48', '115', '2019-10-11 10:44:50');
INSERT INTO `t_likes` VALUES ('205', '75', '201', '2019-10-11 15:07:09');
INSERT INTO `t_likes` VALUES ('206', '75', '200', '2019-10-11 15:07:12');
INSERT INTO `t_likes` VALUES ('207', '75', '202', '2019-10-11 15:08:19');
INSERT INTO `t_likes` VALUES ('208', '75', '146', '2019-10-11 15:11:04');
INSERT INTO `t_likes` VALUES ('209', '76', '204', '2019-10-11 17:57:36');
INSERT INTO `t_likes` VALUES ('210', '76', '205', '2019-10-11 17:59:18');
INSERT INTO `t_likes` VALUES ('213', '77', '207', '2019-10-12 12:32:22');
INSERT INTO `t_likes` VALUES ('214', '77', '205', '2019-10-12 12:42:06');
INSERT INTO `t_likes` VALUES ('216', '79', '213', '2019-10-12 16:06:25');
INSERT INTO `t_likes` VALUES ('217', '79', '210', '2019-10-12 16:19:54');
INSERT INTO `t_likes` VALUES ('218', '79', '209', '2019-10-12 16:19:56');
INSERT INTO `t_likes` VALUES ('219', '79', '216', '2019-10-12 16:23:19');
INSERT INTO `t_likes` VALUES ('222', '80', '216', '2019-10-12 18:08:50');

-- ----------------------------
-- Table structure for `t_location`
-- ----------------------------
DROP TABLE IF EXISTS `t_location`;
CREATE TABLE `t_location` (
  `id` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_location
-- ----------------------------
INSERT INTO `t_location` VALUES ('00', '神秘');
INSERT INTO `t_location` VALUES ('01', '北京');
INSERT INTO `t_location` VALUES ('02', '深圳');
INSERT INTO `t_location` VALUES ('03', '上海');
INSERT INTO `t_location` VALUES ('04', '重庆');
INSERT INTO `t_location` VALUES ('05', '天津');
INSERT INTO `t_location` VALUES ('06', '广东');
INSERT INTO `t_location` VALUES ('07', '河北');
INSERT INTO `t_location` VALUES ('08', '山西');
INSERT INTO `t_location` VALUES ('09', '内蒙古');
INSERT INTO `t_location` VALUES ('10', '辽宁');
INSERT INTO `t_location` VALUES ('11', '吉林');
INSERT INTO `t_location` VALUES ('12', '黑龙江');
INSERT INTO `t_location` VALUES ('13', '江苏');
INSERT INTO `t_location` VALUES ('14', '浙江');
INSERT INTO `t_location` VALUES ('15', '安徽');
INSERT INTO `t_location` VALUES ('16', '福建');
INSERT INTO `t_location` VALUES ('17', '江西');
INSERT INTO `t_location` VALUES ('18', '山东');
INSERT INTO `t_location` VALUES ('19', '河南');
INSERT INTO `t_location` VALUES ('20', '湖北');
INSERT INTO `t_location` VALUES ('21', '湖南');
INSERT INTO `t_location` VALUES ('22', '广西');
INSERT INTO `t_location` VALUES ('23', '海南');
INSERT INTO `t_location` VALUES ('24', '四川');
INSERT INTO `t_location` VALUES ('25', '贵州');
INSERT INTO `t_location` VALUES ('26', '云南');
INSERT INTO `t_location` VALUES ('27', '西藏');
INSERT INTO `t_location` VALUES ('28', '陕西');
INSERT INTO `t_location` VALUES ('29', '甘肃');
INSERT INTO `t_location` VALUES ('30', '青海');
INSERT INTO `t_location` VALUES ('31', '宁夏');
INSERT INTO `t_location` VALUES ('32', '新疆');
INSERT INTO `t_location` VALUES ('33', '香港');
INSERT INTO `t_location` VALUES ('34', '澳门');
INSERT INTO `t_location` VALUES ('35', '台湾');
INSERT INTO `t_location` VALUES ('0101', '东城区');
INSERT INTO `t_location` VALUES ('0102', '西城区');
INSERT INTO `t_location` VALUES ('0103', '崇文区');
INSERT INTO `t_location` VALUES ('0104', '宣武区');
INSERT INTO `t_location` VALUES ('0105', '朝阳区');
INSERT INTO `t_location` VALUES ('0106', '海淀区');
INSERT INTO `t_location` VALUES ('0107', '丰台区');
INSERT INTO `t_location` VALUES ('0108', '石景山');
INSERT INTO `t_location` VALUES ('0201', '罗湖');
INSERT INTO `t_location` VALUES ('0202', '福田');
INSERT INTO `t_location` VALUES ('0203', '南山');
INSERT INTO `t_location` VALUES ('0204', '盐田');
INSERT INTO `t_location` VALUES ('0205', '宝安');
INSERT INTO `t_location` VALUES ('0206', '龙岗');
INSERT INTO `t_location` VALUES ('0301', '宝山');
INSERT INTO `t_location` VALUES ('0302', '金山');
INSERT INTO `t_location` VALUES ('0303', '南市');
INSERT INTO `t_location` VALUES ('0304', '长宁');
INSERT INTO `t_location` VALUES ('0305', '静安');
INSERT INTO `t_location` VALUES ('0306', '青浦');
INSERT INTO `t_location` VALUES ('0307', '崇明');
INSERT INTO `t_location` VALUES ('0308', '卢湾');
INSERT INTO `t_location` VALUES ('0309', '松江');
INSERT INTO `t_location` VALUES ('0310', '奉贤');
INSERT INTO `t_location` VALUES ('0311', '浦东');
INSERT INTO `t_location` VALUES ('0312', '杨浦');
INSERT INTO `t_location` VALUES ('0313', '虹口');
INSERT INTO `t_location` VALUES ('0314', '普陀');
INSERT INTO `t_location` VALUES ('0315', '闸北');
INSERT INTO `t_location` VALUES ('0316', '黄浦');
INSERT INTO `t_location` VALUES ('0317', '闵行');
INSERT INTO `t_location` VALUES ('0318', '徐汇');
INSERT INTO `t_location` VALUES ('0319', '嘉定');
INSERT INTO `t_location` VALUES ('0320', '南汇');
INSERT INTO `t_location` VALUES ('0401', '渝中');
INSERT INTO `t_location` VALUES ('0402', '江北');
INSERT INTO `t_location` VALUES ('0403', '沙坪坝');
INSERT INTO `t_location` VALUES ('0404', '南岸');
INSERT INTO `t_location` VALUES ('0405', '九龙坡');
INSERT INTO `t_location` VALUES ('0406', '大渡口');
INSERT INTO `t_location` VALUES ('0501', '和平');
INSERT INTO `t_location` VALUES ('0502', '河北');
INSERT INTO `t_location` VALUES ('0503', '河西');
INSERT INTO `t_location` VALUES ('0504', '河东');
INSERT INTO `t_location` VALUES ('0505', '南开');
INSERT INTO `t_location` VALUES ('0506', '红桥');
INSERT INTO `t_location` VALUES ('0507', '塘沽');
INSERT INTO `t_location` VALUES ('0508', '汉沽');
INSERT INTO `t_location` VALUES ('0509', '大港');
INSERT INTO `t_location` VALUES ('0510', '东丽');
INSERT INTO `t_location` VALUES ('0511', '西青');
INSERT INTO `t_location` VALUES ('0512', '津南');
INSERT INTO `t_location` VALUES ('0513', '北辰');
INSERT INTO `t_location` VALUES ('0514', '武清');
INSERT INTO `t_location` VALUES ('0515', '滨海');
INSERT INTO `t_location` VALUES ('0601', '广州');
INSERT INTO `t_location` VALUES ('0602', '珠海');
INSERT INTO `t_location` VALUES ('0603', '中山');
INSERT INTO `t_location` VALUES ('0604', '佛山');
INSERT INTO `t_location` VALUES ('0605', '东莞');
INSERT INTO `t_location` VALUES ('0606', '清远');
INSERT INTO `t_location` VALUES ('0607', '肇庆');
INSERT INTO `t_location` VALUES ('0608', '阳江');
INSERT INTO `t_location` VALUES ('0609', '湛江');
INSERT INTO `t_location` VALUES ('0610', '韶关');
INSERT INTO `t_location` VALUES ('0611', '惠州');
INSERT INTO `t_location` VALUES ('0612', '河源');
INSERT INTO `t_location` VALUES ('0613', '汕尾');
INSERT INTO `t_location` VALUES ('0614', '汕头');
INSERT INTO `t_location` VALUES ('0615', '梅州');
INSERT INTO `t_location` VALUES ('0701', '石家庄');
INSERT INTO `t_location` VALUES ('0702', '唐山');
INSERT INTO `t_location` VALUES ('0703', '秦皇岛');
INSERT INTO `t_location` VALUES ('0704', '邯郸');
INSERT INTO `t_location` VALUES ('0705', '邢台');
INSERT INTO `t_location` VALUES ('0706', '张家口');
INSERT INTO `t_location` VALUES ('0707', '承德');
INSERT INTO `t_location` VALUES ('0708', '廊坊');
INSERT INTO `t_location` VALUES ('0709', '沧州');
INSERT INTO `t_location` VALUES ('0710', '保定');
INSERT INTO `t_location` VALUES ('0711', '衡水');
INSERT INTO `t_location` VALUES ('0801', '太原');
INSERT INTO `t_location` VALUES ('0802', '大同');
INSERT INTO `t_location` VALUES ('0803', '阳泉');
INSERT INTO `t_location` VALUES ('0804', '朔州');
INSERT INTO `t_location` VALUES ('0805', '长治');
INSERT INTO `t_location` VALUES ('0806', '临汾');
INSERT INTO `t_location` VALUES ('0807', '晋城');
INSERT INTO `t_location` VALUES ('0901', '呼和浩特');
INSERT INTO `t_location` VALUES ('0902', '包头');
INSERT INTO `t_location` VALUES ('0903', '乌海');
INSERT INTO `t_location` VALUES ('0904', '临河');
INSERT INTO `t_location` VALUES ('0905', '东胜');
INSERT INTO `t_location` VALUES ('0906', '集宁');
INSERT INTO `t_location` VALUES ('0907', '锡林浩特');
INSERT INTO `t_location` VALUES ('0908', '通辽');
INSERT INTO `t_location` VALUES ('0909', '赤峰');
INSERT INTO `t_location` VALUES ('0910', '海拉尔');
INSERT INTO `t_location` VALUES ('0911', '乌兰浩特');
INSERT INTO `t_location` VALUES ('1001', '沈阳');
INSERT INTO `t_location` VALUES ('1002', '大连');
INSERT INTO `t_location` VALUES ('1003', '鞍山');
INSERT INTO `t_location` VALUES ('1004', '锦州');
INSERT INTO `t_location` VALUES ('1005', '丹东');
INSERT INTO `t_location` VALUES ('1006', '盘锦');
INSERT INTO `t_location` VALUES ('1007', '铁岭');
INSERT INTO `t_location` VALUES ('1008', '抚顺');
INSERT INTO `t_location` VALUES ('1009', '营口');
INSERT INTO `t_location` VALUES ('1010', '辽阳');
INSERT INTO `t_location` VALUES ('1011', '阜新');
INSERT INTO `t_location` VALUES ('1012', '本溪');
INSERT INTO `t_location` VALUES ('1013', '朝阳');
INSERT INTO `t_location` VALUES ('1014', '葫芦岛');
INSERT INTO `t_location` VALUES ('1101', '长春');
INSERT INTO `t_location` VALUES ('1102', '吉林');
INSERT INTO `t_location` VALUES ('1103', '四平');
INSERT INTO `t_location` VALUES ('1104', '辽源');
INSERT INTO `t_location` VALUES ('1105', '通化');
INSERT INTO `t_location` VALUES ('1106', '白山');
INSERT INTO `t_location` VALUES ('1107', '松原');
INSERT INTO `t_location` VALUES ('1108', '白城');
INSERT INTO `t_location` VALUES ('1109', '延边');
INSERT INTO `t_location` VALUES ('1201', '哈尔滨');
INSERT INTO `t_location` VALUES ('1202', '齐齐哈尔');
INSERT INTO `t_location` VALUES ('1203', '牡丹江');
INSERT INTO `t_location` VALUES ('1204', '佳木斯');
INSERT INTO `t_location` VALUES ('1205', '大庆');
INSERT INTO `t_location` VALUES ('1206', '伊春');
INSERT INTO `t_location` VALUES ('1207', '黑河');
INSERT INTO `t_location` VALUES ('1208', '鸡西');
INSERT INTO `t_location` VALUES ('1209', '鹤岗');
INSERT INTO `t_location` VALUES ('1210', '双鸭山');
INSERT INTO `t_location` VALUES ('1211', '七台河');
INSERT INTO `t_location` VALUES ('1212', '绥化');
INSERT INTO `t_location` VALUES ('1213', '大兴安岭');
INSERT INTO `t_location` VALUES ('1301', '南京');
INSERT INTO `t_location` VALUES ('1302', '苏州');
INSERT INTO `t_location` VALUES ('1303', '无锡');
INSERT INTO `t_location` VALUES ('1304', '常州');
INSERT INTO `t_location` VALUES ('1305', '镇江');
INSERT INTO `t_location` VALUES ('1306', '连云港');
INSERT INTO `t_location` VALUES ('1307', '扬州');
INSERT INTO `t_location` VALUES ('1308', '徐州');
INSERT INTO `t_location` VALUES ('1309', '南通');
INSERT INTO `t_location` VALUES ('1310', '盐城');
INSERT INTO `t_location` VALUES ('1311', '淮阴');
INSERT INTO `t_location` VALUES ('1312', '泰州');
INSERT INTO `t_location` VALUES ('1313', '宿迁');
INSERT INTO `t_location` VALUES ('1401', '杭州');
INSERT INTO `t_location` VALUES ('1402', '湖州');
INSERT INTO `t_location` VALUES ('1403', '丽水');
INSERT INTO `t_location` VALUES ('1404', '温州');
INSERT INTO `t_location` VALUES ('1405', '绍兴');
INSERT INTO `t_location` VALUES ('1406', '舟山');
INSERT INTO `t_location` VALUES ('1407', '嘉兴');
INSERT INTO `t_location` VALUES ('1408', '金华');
INSERT INTO `t_location` VALUES ('1409', '台州');
INSERT INTO `t_location` VALUES ('1410', '衢州');
INSERT INTO `t_location` VALUES ('1411', '宁波');
INSERT INTO `t_location` VALUES ('1501', '合肥');
INSERT INTO `t_location` VALUES ('1502', '芜湖');
INSERT INTO `t_location` VALUES ('1503', '蚌埠');
INSERT INTO `t_location` VALUES ('1504', '滁州');
INSERT INTO `t_location` VALUES ('1505', '安庆');
INSERT INTO `t_location` VALUES ('1506', '六安');
INSERT INTO `t_location` VALUES ('1507', '黄山');
INSERT INTO `t_location` VALUES ('1508', '宣城');
INSERT INTO `t_location` VALUES ('1509', '淮南');
INSERT INTO `t_location` VALUES ('1510', '宿州');
INSERT INTO `t_location` VALUES ('1511', '马鞍山');
INSERT INTO `t_location` VALUES ('1512', '铜陵');
INSERT INTO `t_location` VALUES ('1513', '淮北');
INSERT INTO `t_location` VALUES ('1514', '阜阳');
INSERT INTO `t_location` VALUES ('1515', '池州');
INSERT INTO `t_location` VALUES ('1516', '巢湖');
INSERT INTO `t_location` VALUES ('1517', '亳州');
INSERT INTO `t_location` VALUES ('1601', '福州');
INSERT INTO `t_location` VALUES ('1602', '厦门');
INSERT INTO `t_location` VALUES ('1603', '泉州');
INSERT INTO `t_location` VALUES ('1604', '漳州');
INSERT INTO `t_location` VALUES ('1605', '龙岩');
INSERT INTO `t_location` VALUES ('1606', '南平');
INSERT INTO `t_location` VALUES ('1607', '宁德');
INSERT INTO `t_location` VALUES ('1608', '莆田');
INSERT INTO `t_location` VALUES ('1609', '三明');
INSERT INTO `t_location` VALUES ('1701', '南昌');
INSERT INTO `t_location` VALUES ('1702', '景德镇');
INSERT INTO `t_location` VALUES ('1703', '九江');
INSERT INTO `t_location` VALUES ('1704', '萍乡');
INSERT INTO `t_location` VALUES ('1705', '新余');
INSERT INTO `t_location` VALUES ('1706', '鹰潭');
INSERT INTO `t_location` VALUES ('1707', '赣州');
INSERT INTO `t_location` VALUES ('1708', '宜春');
INSERT INTO `t_location` VALUES ('1709', '吉安');
INSERT INTO `t_location` VALUES ('1710', '上饶');
INSERT INTO `t_location` VALUES ('1711', '抚州');
INSERT INTO `t_location` VALUES ('1801', '济南');
INSERT INTO `t_location` VALUES ('1802', '青岛');
INSERT INTO `t_location` VALUES ('1803', '淄博');
INSERT INTO `t_location` VALUES ('1804', '德州');
INSERT INTO `t_location` VALUES ('1805', '烟台');
INSERT INTO `t_location` VALUES ('1806', '潍坊');
INSERT INTO `t_location` VALUES ('1807', '济宁');
INSERT INTO `t_location` VALUES ('1808', '泰安');
INSERT INTO `t_location` VALUES ('1809', '临沂');
INSERT INTO `t_location` VALUES ('1810', '菏泽');
INSERT INTO `t_location` VALUES ('1811', '威海');
INSERT INTO `t_location` VALUES ('1812', '枣庄');
INSERT INTO `t_location` VALUES ('1813', '日照');
INSERT INTO `t_location` VALUES ('1814', '莱芜');
INSERT INTO `t_location` VALUES ('1815', '聊城');
INSERT INTO `t_location` VALUES ('1816', '滨州');
INSERT INTO `t_location` VALUES ('1817', '东营');
INSERT INTO `t_location` VALUES ('1901', '郑州');
INSERT INTO `t_location` VALUES ('1902', '开封');
INSERT INTO `t_location` VALUES ('1903', '洛阳');
INSERT INTO `t_location` VALUES ('1904', '平顶山');
INSERT INTO `t_location` VALUES ('1905', '安阳');
INSERT INTO `t_location` VALUES ('1906', '鹤壁');
INSERT INTO `t_location` VALUES ('1907', '新乡');
INSERT INTO `t_location` VALUES ('1908', '焦作');
INSERT INTO `t_location` VALUES ('1909', '濮阳');
INSERT INTO `t_location` VALUES ('1910', '许昌');
INSERT INTO `t_location` VALUES ('1911', '漯河');
INSERT INTO `t_location` VALUES ('1912', '三门峡');
INSERT INTO `t_location` VALUES ('1913', '南阳');
INSERT INTO `t_location` VALUES ('1914', '商丘');
INSERT INTO `t_location` VALUES ('1915', '周口');
INSERT INTO `t_location` VALUES ('1916', '驻马店');
INSERT INTO `t_location` VALUES ('1917', '信阳');
INSERT INTO `t_location` VALUES ('1918', '济源');
INSERT INTO `t_location` VALUES ('2001', '武汉');
INSERT INTO `t_location` VALUES ('2002', '黄石');
INSERT INTO `t_location` VALUES ('2003', '十堰');
INSERT INTO `t_location` VALUES ('2004', '荆州');
INSERT INTO `t_location` VALUES ('2005', '宜昌');
INSERT INTO `t_location` VALUES ('2006', '襄樊');
INSERT INTO `t_location` VALUES ('2007', '鄂州');
INSERT INTO `t_location` VALUES ('2008', '荆门');
INSERT INTO `t_location` VALUES ('2009', '孝感');
INSERT INTO `t_location` VALUES ('2010', '黄冈');
INSERT INTO `t_location` VALUES ('2011', '咸宁');
INSERT INTO `t_location` VALUES ('2012', '恩施');
INSERT INTO `t_location` VALUES ('2013', '随州');
INSERT INTO `t_location` VALUES ('2014', '仙桃');
INSERT INTO `t_location` VALUES ('2015', '天门');
INSERT INTO `t_location` VALUES ('2016', '潜江');
INSERT INTO `t_location` VALUES ('2017', '神农架');
INSERT INTO `t_location` VALUES ('2101', '长沙');
INSERT INTO `t_location` VALUES ('2102', '株州');
INSERT INTO `t_location` VALUES ('2103', '湘潭');
INSERT INTO `t_location` VALUES ('2104', '衡阳');
INSERT INTO `t_location` VALUES ('2105', '邵阳');
INSERT INTO `t_location` VALUES ('2106', '岳阳');
INSERT INTO `t_location` VALUES ('2107', '常德');
INSERT INTO `t_location` VALUES ('2108', '郴州');
INSERT INTO `t_location` VALUES ('2109', '益阳');
INSERT INTO `t_location` VALUES ('2110', '永州');
INSERT INTO `t_location` VALUES ('2111', '怀化');
INSERT INTO `t_location` VALUES ('2112', '娄底');
INSERT INTO `t_location` VALUES ('2113', '湘西');
INSERT INTO `t_location` VALUES ('2201', '南宁');
INSERT INTO `t_location` VALUES ('2202', '柳州');
INSERT INTO `t_location` VALUES ('2203', '桂林');
INSERT INTO `t_location` VALUES ('2204', '梧州');
INSERT INTO `t_location` VALUES ('2205', '北海');
INSERT INTO `t_location` VALUES ('2206', '防城港');
INSERT INTO `t_location` VALUES ('2207', '钦州');
INSERT INTO `t_location` VALUES ('2208', '贵港');
INSERT INTO `t_location` VALUES ('2209', '玉林');
INSERT INTO `t_location` VALUES ('2210', '贺州');
INSERT INTO `t_location` VALUES ('2211', '百色');
INSERT INTO `t_location` VALUES ('2212', '河池');
INSERT INTO `t_location` VALUES ('2301', '海口');
INSERT INTO `t_location` VALUES ('2302', '三亚');
INSERT INTO `t_location` VALUES ('2303', '通什');
INSERT INTO `t_location` VALUES ('2304', '琼海');
INSERT INTO `t_location` VALUES ('2305', '琼山');
INSERT INTO `t_location` VALUES ('2306', '文昌');
INSERT INTO `t_location` VALUES ('2307', '万宁');
INSERT INTO `t_location` VALUES ('2308', '东方');
INSERT INTO `t_location` VALUES ('2309', '儋州');
INSERT INTO `t_location` VALUES ('2401', '成都');
INSERT INTO `t_location` VALUES ('2402', '自贡');
INSERT INTO `t_location` VALUES ('2403', '攀枝花');
INSERT INTO `t_location` VALUES ('2404', '泸州');
INSERT INTO `t_location` VALUES ('2405', '德阳');
INSERT INTO `t_location` VALUES ('2406', '绵阳');
INSERT INTO `t_location` VALUES ('2407', '广元');
INSERT INTO `t_location` VALUES ('2408', '遂宁');
INSERT INTO `t_location` VALUES ('2409', '内江');
INSERT INTO `t_location` VALUES ('2410', '乐山');
INSERT INTO `t_location` VALUES ('2411', '南充');
INSERT INTO `t_location` VALUES ('2412', '宜宾');
INSERT INTO `t_location` VALUES ('2413', '广安');
INSERT INTO `t_location` VALUES ('2414', '达川');
INSERT INTO `t_location` VALUES ('2415', '巴中');
INSERT INTO `t_location` VALUES ('2416', '雅安');
INSERT INTO `t_location` VALUES ('2417', '眉山');
INSERT INTO `t_location` VALUES ('2418', '阿坝');
INSERT INTO `t_location` VALUES ('2419', '甘孜');
INSERT INTO `t_location` VALUES ('2420', '凉山');
INSERT INTO `t_location` VALUES ('2501', '贵阳');
INSERT INTO `t_location` VALUES ('2502', '六盘水');
INSERT INTO `t_location` VALUES ('2503', '遵义');
INSERT INTO `t_location` VALUES ('2504', '铜仁');
INSERT INTO `t_location` VALUES ('2505', '毕节');
INSERT INTO `t_location` VALUES ('2506', '安顺');
INSERT INTO `t_location` VALUES ('2507', '黔西南');
INSERT INTO `t_location` VALUES ('2508', '黔东南');
INSERT INTO `t_location` VALUES ('2509', '黔南');
INSERT INTO `t_location` VALUES ('2601', '昆明');
INSERT INTO `t_location` VALUES ('2602', '东川');
INSERT INTO `t_location` VALUES ('2603', '曲靖');
INSERT INTO `t_location` VALUES ('2604', '玉溪');
INSERT INTO `t_location` VALUES ('2605', '昭通');
INSERT INTO `t_location` VALUES ('2606', '思茅');
INSERT INTO `t_location` VALUES ('2607', '临沧');
INSERT INTO `t_location` VALUES ('2608', '保山');
INSERT INTO `t_location` VALUES ('2609', '丽江');
INSERT INTO `t_location` VALUES ('2610', '文山');
INSERT INTO `t_location` VALUES ('2611', '红河');
INSERT INTO `t_location` VALUES ('2612', '西双版纳');
INSERT INTO `t_location` VALUES ('2613', '楚雄');
INSERT INTO `t_location` VALUES ('2614', '大理');
INSERT INTO `t_location` VALUES ('2615', '德宏');
INSERT INTO `t_location` VALUES ('2616', '怒江');
INSERT INTO `t_location` VALUES ('2617', '迪庆');
INSERT INTO `t_location` VALUES ('2701', '拉萨');
INSERT INTO `t_location` VALUES ('2702', '那曲');
INSERT INTO `t_location` VALUES ('2703', '昌都');
INSERT INTO `t_location` VALUES ('2704', '山南');
INSERT INTO `t_location` VALUES ('2705', '日喀则');
INSERT INTO `t_location` VALUES ('2706', '阿里');
INSERT INTO `t_location` VALUES ('2707', '林芝');
INSERT INTO `t_location` VALUES ('2801', '西安');
INSERT INTO `t_location` VALUES ('2802', '铜川');
INSERT INTO `t_location` VALUES ('2803', '宝鸡');
INSERT INTO `t_location` VALUES ('2804', '咸阳');
INSERT INTO `t_location` VALUES ('2805', '渭南');
INSERT INTO `t_location` VALUES ('2806', '延安');
INSERT INTO `t_location` VALUES ('2807', '汉中');
INSERT INTO `t_location` VALUES ('2808', '榆林');
INSERT INTO `t_location` VALUES ('2809', '商洛');
INSERT INTO `t_location` VALUES ('2810', '安康');
INSERT INTO `t_location` VALUES ('2901', '兰州');
INSERT INTO `t_location` VALUES ('2902', '金昌');
INSERT INTO `t_location` VALUES ('2903', '白银');
INSERT INTO `t_location` VALUES ('2904', '天水');
INSERT INTO `t_location` VALUES ('2905', '嘉峪关');
INSERT INTO `t_location` VALUES ('2906', '定西');
INSERT INTO `t_location` VALUES ('2907', '平凉');
INSERT INTO `t_location` VALUES ('2908', '庆阳');
INSERT INTO `t_location` VALUES ('2909', '陇南');
INSERT INTO `t_location` VALUES ('2910', '武威');
INSERT INTO `t_location` VALUES ('2911', '张掖');
INSERT INTO `t_location` VALUES ('2912', '酒泉');
INSERT INTO `t_location` VALUES ('2913', '甘南');
INSERT INTO `t_location` VALUES ('2914', '临夏');
INSERT INTO `t_location` VALUES ('3001', '西宁');
INSERT INTO `t_location` VALUES ('3002', '海东');
INSERT INTO `t_location` VALUES ('3003', '海北');
INSERT INTO `t_location` VALUES ('3004', '黄南');
INSERT INTO `t_location` VALUES ('3005', '海南');
INSERT INTO `t_location` VALUES ('3006', '果洛');
INSERT INTO `t_location` VALUES ('3007', '玉树');
INSERT INTO `t_location` VALUES ('3008', '海西');
INSERT INTO `t_location` VALUES ('3101', '银川');
INSERT INTO `t_location` VALUES ('3102', '石嘴山');
INSERT INTO `t_location` VALUES ('3103', '银南');
INSERT INTO `t_location` VALUES ('3104', '固原');
INSERT INTO `t_location` VALUES ('3201', '乌鲁木齐');
INSERT INTO `t_location` VALUES ('3202', '克拉玛依');
INSERT INTO `t_location` VALUES ('3203', '石河子');
INSERT INTO `t_location` VALUES ('3204', '吐鲁番');
INSERT INTO `t_location` VALUES ('3205', '哈密');
INSERT INTO `t_location` VALUES ('3206', '和田');
INSERT INTO `t_location` VALUES ('3207', '阿克苏');
INSERT INTO `t_location` VALUES ('3208', '喀什');
INSERT INTO `t_location` VALUES ('3209', '克孜勒苏');
INSERT INTO `t_location` VALUES ('3210', '巴音郭楞');
INSERT INTO `t_location` VALUES ('3211', '昌吉');
INSERT INTO `t_location` VALUES ('3212', '博尔塔拉');
INSERT INTO `t_location` VALUES ('3213', '伊犁');

-- ----------------------------
-- Table structure for `t_mention`
-- ----------------------------
DROP TABLE IF EXISTS `t_mention`;
CREATE TABLE `t_mention` (
  `mention_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `repostCount` int(11) DEFAULT NULL,
  `commentCount` int(11) DEFAULT NULL,
  `replyCount` int(11) DEFAULT NULL,
  `likeCount` int(11) DEFAULT NULL,
  `fansCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`mention_id`),
  KEY `FK_at` (`user_id`),
  CONSTRAINT `t_mention_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_mention
-- ----------------------------
INSERT INTO `t_mention` VALUES ('16', '70', '3', '5', null, '3', '2');
INSERT INTO `t_mention` VALUES ('19', '48', '14', '27', '20', '32', '6');
INSERT INTO `t_mention` VALUES ('20', '49', '0', '0', '0', '0', '0');
INSERT INTO `t_mention` VALUES ('22', '51', '0', '0', '0', '0', '0');
INSERT INTO `t_mention` VALUES ('23', '52', '0', '0', '0', '0', '0');
INSERT INTO `t_mention` VALUES ('24', '53', '0', '0', '0', '0', '0');
INSERT INTO `t_mention` VALUES ('26', '55', '0', '0', '0', '0', '0');
INSERT INTO `t_mention` VALUES ('27', '56', '0', '0', '0', '0', '0');
INSERT INTO `t_mention` VALUES ('28', '57', '0', '0', '0', '0', '0');
INSERT INTO `t_mention` VALUES ('29', '58', '3', '2', '0', '16', '2');
INSERT INTO `t_mention` VALUES ('31', '60', '0', '1', '0', '5', '2');
INSERT INTO `t_mention` VALUES ('32', '61', '4', '1', '0', '7', '2');
INSERT INTO `t_mention` VALUES ('33', '62', '0', '0', '0', '0', '0');
INSERT INTO `t_mention` VALUES ('34', '63', '0', '0', '0', '0', '0');
INSERT INTO `t_mention` VALUES ('35', '64', '0', '0', '0', '0', '0');
INSERT INTO `t_mention` VALUES ('36', '65', '0', '0', '0', '0', '0');
INSERT INTO `t_mention` VALUES ('41', '71', '0', '0', '0', '0', '2');
INSERT INTO `t_mention` VALUES ('42', '72', '0', '1', '1', '2', '1');
INSERT INTO `t_mention` VALUES ('43', '73', '2', '2', '2', '6', '2');
INSERT INTO `t_mention` VALUES ('44', '74', '0', '0', '0', '0', '0');
INSERT INTO `t_mention` VALUES ('45', '75', '1', '2', '1', '1', '2');
INSERT INTO `t_mention` VALUES ('46', '76', '0', '0', '0', '0', '0');
INSERT INTO `t_mention` VALUES ('47', '77', '1', '0', '0', '0', '0');
INSERT INTO `t_mention` VALUES ('48', '78', '0', '1', '1', '0', '1');
INSERT INTO `t_mention` VALUES ('49', '79', '1', '1', '1', '2', '1');
INSERT INTO `t_mention` VALUES ('50', '80', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `t_relation`
-- ----------------------------
DROP TABLE IF EXISTS `t_relation`;
CREATE TABLE `t_relation` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `follow_id` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `follow_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`relation_id`),
  KEY `FK_follow` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_relation
-- ----------------------------
INSERT INTO `t_relation` VALUES ('122', '61', '57', '1', '2019-09-19 20:10:14');
INSERT INTO `t_relation` VALUES ('123', '61', '55', '1', '2019-09-19 20:10:58');
INSERT INTO `t_relation` VALUES ('134', '48', '60', '1', '2019-09-21 10:28:31');
INSERT INTO `t_relation` VALUES ('137', '58', '58', '1', '2019-09-21 10:40:29');
INSERT INTO `t_relation` VALUES ('142', '58', '48', '1', '2019-09-21 11:09:52');
INSERT INTO `t_relation` VALUES ('145', '58', '57', '1', '2019-09-21 11:14:27');
INSERT INTO `t_relation` VALUES ('147', '58', '55', '1', '2019-09-21 11:16:52');
INSERT INTO `t_relation` VALUES ('148', '58', '56', '1', '2019-09-21 11:27:24');
INSERT INTO `t_relation` VALUES ('149', '53', '53', '1', '2019-09-21 12:46:39');
INSERT INTO `t_relation` VALUES ('150', '64', '64', '1', '2019-09-21 15:51:53');
INSERT INTO `t_relation` VALUES ('152', '64', '61', '1', '2019-09-21 15:51:58');
INSERT INTO `t_relation` VALUES ('153', '64', '48', '1', '2019-09-21 16:55:34');
INSERT INTO `t_relation` VALUES ('166', '70', '60', '1', '2019-09-24 14:36:43');
INSERT INTO `t_relation` VALUES ('167', '70', '48', '1', '2019-09-24 14:36:45');
INSERT INTO `t_relation` VALUES ('168', '70', '70', '1', '2019-09-24 14:36:47');
INSERT INTO `t_relation` VALUES ('169', '71', '71', '1', '2019-09-25 10:49:08');
INSERT INTO `t_relation` VALUES ('170', '71', '48', '1', '2019-09-25 10:53:26');
INSERT INTO `t_relation` VALUES ('179', '48', '71', '1', '2019-09-25 13:18:38');
INSERT INTO `t_relation` VALUES ('181', '48', '70', '1', '2019-09-25 13:21:17');
INSERT INTO `t_relation` VALUES ('182', '48', '65', '1', '2019-09-25 13:21:33');
INSERT INTO `t_relation` VALUES ('183', '48', '64', '1', '2019-09-25 13:21:36');
INSERT INTO `t_relation` VALUES ('185', '48', '55', '1', '2019-09-25 13:22:23');
INSERT INTO `t_relation` VALUES ('186', '48', '57', '1', '2019-09-25 13:22:27');
INSERT INTO `t_relation` VALUES ('187', '48', '56', '1', '2019-09-25 13:22:42');
INSERT INTO `t_relation` VALUES ('188', '48', '51', '1', '2019-09-25 13:22:57');
INSERT INTO `t_relation` VALUES ('189', '48', '53', '1', '2019-09-25 13:23:03');
INSERT INTO `t_relation` VALUES ('191', '61', '64', '1', '2019-09-25 19:29:25');
INSERT INTO `t_relation` VALUES ('195', '48', '72', '1', '2019-10-02 17:31:33');
INSERT INTO `t_relation` VALUES ('196', '72', '61', '1', '2019-10-02 17:32:39');
INSERT INTO `t_relation` VALUES ('206', '48', '58', '1', '2019-10-06 16:51:07');
INSERT INTO `t_relation` VALUES ('207', '48', '48', '1', '2019-10-06 16:51:41');
INSERT INTO `t_relation` VALUES ('208', '48', '61', '1', '2019-10-06 17:01:06');
INSERT INTO `t_relation` VALUES ('209', '73', '73', '1', '2019-10-10 14:49:01');
INSERT INTO `t_relation` VALUES ('210', '48', '73', '1', '2019-10-10 15:04:38');
INSERT INTO `t_relation` VALUES ('211', '73', '53', '1', '2019-10-10 15:08:07');
INSERT INTO `t_relation` VALUES ('214', '73', '48', '1', '2019-10-10 15:16:34');
INSERT INTO `t_relation` VALUES ('215', '58', '75', '1', '2019-10-11 15:09:22');
INSERT INTO `t_relation` VALUES ('216', '75', '75', '1', '2019-10-11 15:10:44');
INSERT INTO `t_relation` VALUES ('217', '75', '48', '1', '2019-10-11 15:11:24');
INSERT INTO `t_relation` VALUES ('219', '75', '70', '1', '2019-10-11 15:11:54');
INSERT INTO `t_relation` VALUES ('220', '75', '64', '1', '2019-10-11 15:12:00');
INSERT INTO `t_relation` VALUES ('221', '75', '71', '1', '2019-10-11 15:12:01');
INSERT INTO `t_relation` VALUES ('225', '75', '73', '1', '2019-10-11 15:15:38');
INSERT INTO `t_relation` VALUES ('226', '75', '60', '1', '2019-10-11 15:15:47');
INSERT INTO `t_relation` VALUES ('227', '75', '65', '1', '2019-10-11 15:15:48');
INSERT INTO `t_relation` VALUES ('228', '75', '57', '1', '2019-10-11 15:15:48');
INSERT INTO `t_relation` VALUES ('229', '75', '56', '1', '2019-10-11 15:15:49');
INSERT INTO `t_relation` VALUES ('230', '75', '51', '1', '2019-10-11 15:15:49');
INSERT INTO `t_relation` VALUES ('231', '75', '55', '1', '2019-10-11 15:15:50');
INSERT INTO `t_relation` VALUES ('232', '75', '72', '1', '2019-10-11 15:15:51');
INSERT INTO `t_relation` VALUES ('233', '75', '61', '1', '2019-10-11 15:15:52');
INSERT INTO `t_relation` VALUES ('234', '75', '53', '1', '2019-10-11 15:15:53');
INSERT INTO `t_relation` VALUES ('236', '75', '58', '1', '2019-10-11 15:16:49');
INSERT INTO `t_relation` VALUES ('237', '76', '76', '1', '2019-10-11 17:58:03');
INSERT INTO `t_relation` VALUES ('238', '77', '76', '1', '2019-10-12 12:42:11');
INSERT INTO `t_relation` VALUES ('239', '78', '78', '1', '2019-10-12 15:34:54');
INSERT INTO `t_relation` VALUES ('240', '78', '77', '1', '2019-10-12 15:35:12');
INSERT INTO `t_relation` VALUES ('241', '78', '76', '1', '2019-10-12 15:35:18');
INSERT INTO `t_relation` VALUES ('243', '78', '73', '1', '2019-10-12 15:38:27');
INSERT INTO `t_relation` VALUES ('244', '78', '48', '1', '2019-10-12 15:38:27');
INSERT INTO `t_relation` VALUES ('245', '78', '64', '1', '2019-10-12 15:38:28');
INSERT INTO `t_relation` VALUES ('246', '78', '70', '1', '2019-10-12 15:38:29');
INSERT INTO `t_relation` VALUES ('247', '78', '71', '1', '2019-10-12 15:38:30');
INSERT INTO `t_relation` VALUES ('248', '78', '58', '1', '2019-10-12 15:38:31');
INSERT INTO `t_relation` VALUES ('250', '78', '75', '1', '2019-10-12 15:38:49');
INSERT INTO `t_relation` VALUES ('252', '78', '61', '1', '2019-10-12 15:38:52');
INSERT INTO `t_relation` VALUES ('253', '78', '72', '1', '2019-10-12 15:38:54');
INSERT INTO `t_relation` VALUES ('254', '78', '53', '1', '2019-10-12 15:38:55');
INSERT INTO `t_relation` VALUES ('255', '78', '57', '1', '2019-10-12 15:38:56');
INSERT INTO `t_relation` VALUES ('256', '78', '65', '1', '2019-10-12 15:38:56');
INSERT INTO `t_relation` VALUES ('257', '78', '60', '1', '2019-10-12 15:38:57');
INSERT INTO `t_relation` VALUES ('258', '78', '56', '1', '2019-10-12 15:38:58');
INSERT INTO `t_relation` VALUES ('259', '78', '51', '1', '2019-10-12 15:38:58');
INSERT INTO `t_relation` VALUES ('260', '78', '55', '1', '2019-10-12 15:39:00');
INSERT INTO `t_relation` VALUES ('261', '79', '79', '1', '2019-10-12 16:22:41');
INSERT INTO `t_relation` VALUES ('262', '79', '78', '1', '2019-10-12 16:24:33');
INSERT INTO `t_relation` VALUES ('264', '79', '56', '1', '2019-10-12 16:28:41');
INSERT INTO `t_relation` VALUES ('265', '79', '55', '1', '2019-10-12 16:28:42');
INSERT INTO `t_relation` VALUES ('266', '79', '60', '1', '2019-10-12 16:28:43');
INSERT INTO `t_relation` VALUES ('267', '79', '57', '1', '2019-10-12 16:28:44');
INSERT INTO `t_relation` VALUES ('268', '79', '65', '1', '2019-10-12 16:28:44');
INSERT INTO `t_relation` VALUES ('270', '79', '51', '1', '2019-10-12 16:28:49');
INSERT INTO `t_relation` VALUES ('271', '79', '61', '1', '2019-10-12 16:28:50');
INSERT INTO `t_relation` VALUES ('272', '79', '72', '1', '2019-10-12 16:28:51');
INSERT INTO `t_relation` VALUES ('273', '79', '53', '1', '2019-10-12 16:28:51');
INSERT INTO `t_relation` VALUES ('274', '79', '75', '1', '2019-10-12 16:28:52');
INSERT INTO `t_relation` VALUES ('275', '79', '58', '1', '2019-10-12 16:28:53');
INSERT INTO `t_relation` VALUES ('276', '79', '71', '1', '2019-10-12 16:28:53');
INSERT INTO `t_relation` VALUES ('277', '79', '73', '1', '2019-10-12 16:28:55');
INSERT INTO `t_relation` VALUES ('278', '79', '77', '1', '2019-10-12 16:28:56');
INSERT INTO `t_relation` VALUES ('279', '79', '64', '1', '2019-10-12 16:28:57');
INSERT INTO `t_relation` VALUES ('280', '79', '70', '1', '2019-10-12 16:28:57');
INSERT INTO `t_relation` VALUES ('281', '79', '48', '1', '2019-10-12 16:28:58');
INSERT INTO `t_relation` VALUES ('282', '79', '76', '1', '2019-10-12 16:28:59');

-- ----------------------------
-- Table structure for `t_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_reply`;
CREATE TABLE `t_reply` (
  `reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) DEFAULT NULL,
  `from_id` int(11) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `reply_content` varchar(100) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_reply
-- ----------------------------
INSERT INTO `t_reply` VALUES ('22', '96', '48', '48', '333', '2019-09-25 17:13:35');
INSERT INTO `t_reply` VALUES ('23', '96', '48', '48', '444', '2019-09-25 17:26:54');
INSERT INTO `t_reply` VALUES ('24', '96', '48', '48', 'ttt', '2019-09-25 17:27:12');
INSERT INTO `t_reply` VALUES ('25', '96', '48', '48', 'json', '2019-09-25 17:41:49');
INSERT INTO `t_reply` VALUES ('26', '96', '48', '48', 'josn', '2019-09-25 17:43:10');
INSERT INTO `t_reply` VALUES ('27', '96', '48', '48', 'jokn', '2019-09-25 18:28:54');
INSERT INTO `t_reply` VALUES ('28', '96', '48', '48', '444', '2019-09-25 18:46:20');
INSERT INTO `t_reply` VALUES ('29', '99', '48', '48', '3', '2019-09-25 18:47:15');
INSERT INTO `t_reply` VALUES ('30', '100', '61', '61', 'hellop', '2019-09-25 19:27:50');
INSERT INTO `t_reply` VALUES ('31', '101', '61', '61', '352140', '2019-09-25 19:28:47');
INSERT INTO `t_reply` VALUES ('32', '102', '61', '61', '3333', '2019-09-25 19:34:15');
INSERT INTO `t_reply` VALUES ('33', '96', '48', '48', '333', '2019-09-25 20:05:24');
INSERT INTO `t_reply` VALUES ('34', '96', '48', '48', '3', '2019-09-25 20:12:16');
INSERT INTO `t_reply` VALUES ('35', '99', '48', '48', '333', '2019-09-25 21:37:09');
INSERT INTO `t_reply` VALUES ('43', '112', '48', '48', '123', '2019-09-26 10:49:49');
INSERT INTO `t_reply` VALUES ('44', '102', '48', '61', '321', '2019-09-26 10:52:48');
INSERT INTO `t_reply` VALUES ('45', '98', '48', '48', '333', '2019-09-26 11:16:02');
INSERT INTO `t_reply` VALUES ('46', '98', '48', '48', '333', '2019-09-26 11:23:13');
INSERT INTO `t_reply` VALUES ('47', '111', '48', '48', '321', '2019-09-26 11:24:34');
INSERT INTO `t_reply` VALUES ('48', '113', '48', '48', '嘻嘻嘻', '2019-09-26 14:37:59');
INSERT INTO `t_reply` VALUES ('49', '113', '61', '48', '为什么打死答案', '2019-09-26 14:38:50');
INSERT INTO `t_reply` VALUES ('50', '98', '58', '48', '回复轮询测试', '2019-09-26 15:55:49');
INSERT INTO `t_reply` VALUES ('51', '114', '72', '72', '哈哈 还行吧', '2019-10-02 17:26:36');
INSERT INTO `t_reply` VALUES ('52', '116', '73', '48', '嘿嘿，谢谢', '2019-10-10 15:17:38');
INSERT INTO `t_reply` VALUES ('53', '116', '48', '73', '9999', '2019-10-10 15:17:57');
INSERT INTO `t_reply` VALUES ('54', '116', '73', '73', '加油', '2019-10-10 17:40:03');
INSERT INTO `t_reply` VALUES ('55', '118', '48', '48', '33', '2019-10-11 09:36:30');
INSERT INTO `t_reply` VALUES ('56', '127', '58', '75', '可以鸭！', '2019-10-11 15:09:07');
INSERT INTO `t_reply` VALUES ('57', '130', '76', '76', '123', '2019-10-11 17:59:14');
INSERT INTO `t_reply` VALUES ('58', '131', '77', '77', '你也好', '2019-10-12 11:50:57');
INSERT INTO `t_reply` VALUES ('59', '132', '78', '78', '谢谢！', '2019-10-12 15:36:37');
INSERT INTO `t_reply` VALUES ('60', '133', '79', '79', '还行', '2019-10-12 16:24:01');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `face` varchar(100) DEFAULT NULL COMMENT '头像',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `bir` date DEFAULT NULL COMMENT '出生日期',
  `province` varchar(10) DEFAULT NULL COMMENT '省',
  `city` varchar(10) DEFAULT NULL COMMENT '市',
  `area` varchar(10) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created_user` varchar(50) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_user` varchar(50) DEFAULT NULL,
  `modified_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('48', 'admin', 'c42b25f3e468b9698e2dd21e539e51ef', 'admin5210', '1f70b8ec-615c-45c5-b974-363ea2f9effe.jpg', '0', '2019-09-03', '08', '0802', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('49', '12345', 'c42b25f3e468b9698e2dd21e539e51ef', null, null, null, null, null, null, null, '1876213', '775159841@qq.com', null, null, null, null);
INSERT INTO `t_user` VALUES ('51', 'chenruixuan', 'c42b25f3e468b9698e2dd21e539e51ef', null, null, null, null, null, null, null, '18434762587', '1091993493@qq.com', null, null, null, null);
INSERT INTO `t_user` VALUES ('52', 'liangweizhen', 'c42b25f3e468b9698e2dd21e539e51ef', null, null, null, null, null, null, null, '13233448441', '215525640@qq.com', null, null, null, null);
INSERT INTO `t_user` VALUES ('53', 'peiyanb', 'c42b25f3e468b9698e2dd21e539e51ef', '98', 'b07cb580-3b32-4c14-ab2f-a3a8354d2b48.jpg', '1', null, '16', '1608', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('55', 'yangshendong', 'c42b25f3e468b9698e2dd21e539e51ef', '杨', '9e2aff06-e34a-42ec-b937-db93a1615eff.jpg', '1', null, '32', '3213', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('56', 'huangxiaozhu', 'c42b25f3e468b9698e2dd21e539e51ef', '98', '', '0', null, '24', '2414', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('57', 'cuixuechao', 'c42b25f3e468b9698e2dd21e539e51ef', 'cuixuec', '9b7becd2-c781-40ba-b355-24b06705507d.jpg', '1', null, '14', '1411', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('58', 'ceshi01', 'c42b25f3e468b9698e2dd21e539e51ef', '测试1', '6dfd355a-da92-44ed-9e05-e3e857f4ced1.jpg', '1', null, '14', '1411', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('60', 'ceshi02', 'c42b25f3e468b9698e2dd21e539e51ef', '98', 'c64a224a-fa10-4927-8060-782b8367b326.jpg', '1', null, '18', '1816', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('61', 'wangyuxiang', 'c42b25f3e468b9698e2dd21e539e51ef', 'asda', '3b8af24b-0a61-41c4-9259-cdf8b03199d0.jpg', '1', null, '15', '1516', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('62', 'mima123', 'd4bc4d91f4b9f4ff1da74f46195debc8', null, 'default.png', null, null, null, null, null, '15475698425', 'asddsa@qq.com', null, null, null, null);
INSERT INTO `t_user` VALUES ('63', 'mima1234', 'c42b25f3e468b9698e2dd21e539e51ef', null, 'default.png', null, null, null, null, null, '18431762767', '31@15', null, null, null, null);
INSERT INTO `t_user` VALUES ('64', 'ceshi03', 'c42b25f3e468b9698e2dd21e539e51ef', '5210', '363f7837-c237-4ee2-8dc4-799a58be0445.jpg', '1', null, '14', '1410', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('65', 'gaojiaxin', 'c42b25f3e468b9698e2dd21e539e51ef', '高加新', '0452b123-ff3e-4f87-81c9-4705bcb6f5ea.jpg', '1', null, '17', '1709', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('70', 'ceshi04', 'c42b25f3e468b9698e2dd21e539e51ef', null, 'default.png', null, null, '00', '00', null, '18434762767', '10919913493@qq.com', null, null, null, null);
INSERT INTO `t_user` VALUES ('71', 'ceshi05', 'c42b25f3e468b9698e2dd21e539e51ef', null, 'default.png', null, null, '00', '00', null, '18434722767', '10919923493@qq.com', null, null, null, null);
INSERT INTO `t_user` VALUES ('72', 'ylq123', 'c42b25f3e468b9698e2dd21e539e51ef', 'kojjkojno', 'b0ea9f1a-1c2d-422b-aea3-1e3d96b1696e.jpg', '0', null, '09', '0911', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('73', 'ceshi06', 'c42b25f3e468b9698e2dd21e539e51ef', '98', '446e0ef9-1280-4c6e-80aa-e4b4a08084b5.jpg', '1', null, '20', '2017', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('74', '测试人员001', 'c42b25f3e468b9698e2dd21e539e51ef', null, 'default.png', null, null, '00', '00', null, '18465357456', '109192493@qq.com', null, null, null, null);
INSERT INTO `t_user` VALUES ('75', '测试人员002', 'c42b25f3e468b9698e2dd21e539e51ef', '无敌', '2fd1bdfe-b561-44d0-a99a-109e9b39a5f6.jpg', '1', null, '04', '0404', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('76', 'crx123', 'c42b25f3e468b9698e2dd21e539e51ef', null, 'default.png', null, null, '00', '00', null, '18434762581', '1091993435@qq.com', null, null, null, null);
INSERT INTO `t_user` VALUES ('77', '测试人员003', 'c42b25f3e468b9698e2dd21e539e51ef', null, 'default.png', null, null, '00', '00', null, '15845687254', '7751598401@qq.com', null, null, null, null);
INSERT INTO `t_user` VALUES ('78', '测试人员004', 'c42b25f3e468b9698e2dd21e539e51ef', '测试人员3', 'd47d2e8f-df70-4116-a713-d2ba440d2514.jpg', '1', null, '15', '1515', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('79', '测试人员06', 'c42b25f3e468b9698e2dd21e539e51ef', '哈哈', 'd75c3d8e-ad9e-416d-a685-4aed58f515e1.jpg', '1', null, '01', '0101', null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('80', '答辩人员01', 'c42b25f3e468b9698e2dd21e539e51ef', '', '546dad72-1796-4a21-a2a6-a2ed2a4edafc.jpg', '1', null, '16', '1602', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_weibo`
-- ----------------------------
DROP TABLE IF EXISTS `t_weibo`;
CREATE TABLE `t_weibo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '微博id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `post_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发送时间',
  `content` varchar(100) NOT NULL COMMENT '文字内容',
  `pic1` varchar(50) DEFAULT NULL,
  `pic2` varchar(50) DEFAULT NULL,
  `pic3` varchar(50) DEFAULT NULL,
  `pic4` varchar(50) DEFAULT NULL,
  `pic5` varchar(50) DEFAULT NULL,
  `pic6` varchar(50) DEFAULT NULL,
  `pic7` varchar(50) DEFAULT NULL,
  `pic8` varchar(50) DEFAULT NULL,
  `pic9` varchar(50) DEFAULT NULL,
  `original` int(11) DEFAULT NULL COMMENT '原创为1 非原创为0',
  `repost_id` int(11) DEFAULT NULL COMMENT '转发自哪个',
  PRIMARY KEY (`id`),
  KEY `FK_Relationship_1` (`user_id`),
  CONSTRAINT `t_weibo_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_weibo
-- ----------------------------
INSERT INTO `t_weibo` VALUES ('13', '48', null, '测试微博2', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('14', '48', null, '十大', '', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('15', '48', null, '十大', '', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('25', '48', null, '发布测试1', '', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('26', '48', null, '发布测试1', '', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('27', '48', null, '发布测试1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('28', '48', null, '发1布测试1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('29', '48', null, '日日日', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('30', '48', null, '撒旦', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('31', '48', null, '小程序', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('32', null, null, '', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('33', '48', null, '的', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('34', '48', null, '123', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('35', '48', null, '123', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('36', '48', null, '十大', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('37', '48', null, '日日日', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('38', '48', null, '123', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('39', '48', null, '十大', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('45', '48', null, '日日日', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('46', '48', null, '日日日', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('47', null, null, '', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('48', '48', null, '十大', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('49', '48', null, '日日日', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('50', '48', null, '测试时间', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('51', '52', '2019-09-07 10:18:49', '测试时间2', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('52', '48', '2019-09-07 10:19:11', '测试时间排序3', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('53', '52', '2019-09-07 15:09:41', '十大', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('54', '52', '2019-09-07 15:11:13', '日日日', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('55', '52', '2019-09-07 15:12:13', '日日日', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('56', '48', '2019-09-07 15:52:57', '3333', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('57', '48', '2019-09-07 15:53:34', '发布测试1', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('58', '48', '2019-09-07 16:06:00', '测试时间2', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('59', '48', '2019-09-07 16:06:02', '', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('60', '48', '2019-09-07 16:51:21', '发布测试1', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('61', '48', '2019-09-07 16:51:30', '发布测试1', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('62', '48', '2019-09-07 17:46:15', '3123', null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO `t_weibo` VALUES ('63', '48', '2019-09-07 17:46:18', '3123', null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO `t_weibo` VALUES ('64', '48', '2019-09-07 17:47:44', '333', null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO `t_weibo` VALUES ('65', '48', '2019-09-07 17:49:47', '', null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO `t_weibo` VALUES ('66', '48', '2019-09-07 17:51:15', '3', null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO `t_weibo` VALUES ('67', '48', '2019-09-07 17:54:35', '测试转发', null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO `t_weibo` VALUES ('68', '48', '2019-09-07 18:10:34', '日日日', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('69', '48', '2019-09-07 18:10:45', '日日日', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('70', '48', '2019-09-07 18:17:10', '十大', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('71', '48', '2019-09-07 18:20:12', '发布测试1', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('72', '48', '2019-09-07 18:21:29', '日日日', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('73', '48', '2019-09-07 18:22:14', '发布测试1', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('74', '48', '2019-09-07 18:26:13', '3333', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('75', '48', '2019-09-07 18:26:17', '333123', null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO `t_weibo` VALUES ('76', '48', '2019-09-07 18:26:45', '31231', null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO `t_weibo` VALUES ('77', '48', '2019-09-07 18:26:52', '3333333333333333333', null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO `t_weibo` VALUES ('78', '48', '2019-09-07 18:27:59', '11111111111111', null, null, null, null, null, null, null, null, null, '0', '1');
INSERT INTO `t_weibo` VALUES ('79', '48', '2019-09-07 18:28:25', '发布测试1', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('81', '48', '2019-09-08 13:18:56', '转发id测试', null, null, null, null, null, null, null, null, null, '0', '80');
INSERT INTO `t_weibo` VALUES ('82', '48', '2019-09-08 13:25:46', '十大', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('83', '48', '2019-09-08 13:27:55', '日日日', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('84', '53', '2019-09-08 21:07:19', '大家好，我叫帅博', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('85', '53', '2019-09-08 21:07:51', '转发测试1', null, null, null, null, null, null, null, null, null, '0', '84');
INSERT INTO `t_weibo` VALUES ('86', '53', '2019-09-10 16:04:30', '3333', null, null, null, null, null, null, null, null, null, '0', '85');
INSERT INTO `t_weibo` VALUES ('87', '53', '2019-09-10 16:04:40', '434', null, null, null, null, null, null, null, null, null, '0', '86');
INSERT INTO `t_weibo` VALUES ('88', '48', '2019-09-10 16:13:04', 'zhuanfaces', null, null, null, null, null, null, null, null, null, '0', '83');
INSERT INTO `t_weibo` VALUES ('89', '48', '2019-09-10 16:23:43', '312', null, null, null, null, null, null, null, null, null, '0', '88');
INSERT INTO `t_weibo` VALUES ('90', '48', '2019-09-10 16:24:27', '765', null, null, null, null, null, null, null, null, null, '0', '89');
INSERT INTO `t_weibo` VALUES ('91', '48', '2019-09-10 18:18:59', '3', null, null, null, null, null, null, null, null, null, '0', '90');
INSERT INTO `t_weibo` VALUES ('92', '48', '2019-09-10 18:19:11', '321', null, null, null, null, null, null, null, null, null, '0', '90');
INSERT INTO `t_weibo` VALUES ('93', '48', '2019-09-10 18:31:39', '发布测试1', null, null, null, null, null, null, null, null, null, '0', '92');
INSERT INTO `t_weibo` VALUES ('94', '51', '2019-09-11 22:33:48', '321', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('95', '48', '2019-09-12 09:36:18', 'admin发布', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('96', '48', '2019-09-12 15:14:34', 'log4j测试', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('97', '48', '2019-09-12 15:45:59', '日日日', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('98', '48', '2019-09-12 15:46:30', '', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('99', '55', '2019-09-12 17:36:28', '大家好 ，我是杨', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('100', '48', '2019-09-13 11:07:21', '3333', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('101', '48', '2019-09-13 11:10:02', '3333', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('102', '48', '2019-09-13 11:10:28', '日日日', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('103', '48', '2019-09-13 11:11:37', '333', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('104', '48', '2019-09-13 11:12:53', '日日日', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('105', '53', '2019-09-14 13:13:31', '收藏测试', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('106', '48', '2019-09-14 16:41:02', '333', null, null, null, null, null, null, null, null, null, '0', '104');
INSERT INTO `t_weibo` VALUES ('107', '56', '2019-09-14 19:01:18', '大家好，我是黄', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('108', '56', '2019-09-14 19:01:24', '1', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('109', '56', '2019-09-14 19:01:26', '2', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('110', '56', '2019-09-14 19:01:29', '3', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('111', '57', '2019-09-14 21:30:32', '大家好我是崔', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('112', '57', '2019-09-14 21:30:38', '崔2', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('113', '57', '2019-09-14 21:30:45', '发布测试1', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('114', '58', '2019-09-15 10:32:41', '', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('115', '58', '2019-09-15 10:52:15', '312', null, null, null, null, null, null, null, null, null, '0', '114');
INSERT INTO `t_weibo` VALUES ('116', '58', '2019-09-15 10:58:53', '转发样式测试', null, null, null, null, null, null, null, null, null, '0', '114');
INSERT INTO `t_weibo` VALUES ('117', '58', '2019-09-15 12:41:02', '333', null, null, null, null, null, null, null, null, null, '0', '112');
INSERT INTO `t_weibo` VALUES ('118', '58', '2019-09-15 14:11:28', '321', null, null, null, null, null, null, null, null, null, '0', '114');
INSERT INTO `t_weibo` VALUES ('119', '58', '2019-09-15 15:06:09', '312', null, null, null, null, null, null, null, null, null, '0', '113');
INSERT INTO `t_weibo` VALUES ('120', '58', '2019-09-15 15:20:24', '3', null, null, null, null, null, null, null, null, null, '0', '109');
INSERT INTO `t_weibo` VALUES ('121', '48', '2019-09-15 16:30:02', '5210', '8db8db59-fabc-4050-b99b-0bdead13443f.jpg', 'e8586ffe-77db-4c31-af26-d86dfc6b022f.jpg', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('123', '48', '2019-09-15 16:41:15', '312', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('124', '48', '2019-09-15 16:41:25', '3333', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_weibo` VALUES ('126', '48', '2019-09-15 17:06:33', '图片测试', '7281029a-9607-4e49-8b98-f3490035a01c.jpg', '9472447a-3239-40ce-9c82-6c2a4033b8ca.jpg', '3b442e92-3857-41cd-9eae-60b58894cf5c.jpg', '40a4c16c-061f-40ed-b893-6f91e51be499.jpg', 'd75e9659-d173-48aa-b7bd-fd6426f6e843.jpg', 'b43bda3d-b115-4dbe-a409-f23d543e6aeb.jpg', '04498e22-2ebb-425d-aecb-e242949038b2.jpg', '63a23ced-048d-454e-a548-b176563912f3.jpg', 'aa217acc-6c07-4082-8bd1-eb863f21e034.jpg', '1', null);
INSERT INTO `t_weibo` VALUES ('128', '48', '2019-09-15 17:42:16', '图片测试2', '41f8c6dd-be30-4e91-8ad4-10614a110c30.jpg', '62e15677-0fbd-4443-9451-2cc9184c7321.jpg', null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('141', '48', '2019-09-16 15:54:26', '转发六张图片测试', null, null, null, null, null, null, null, null, null, '0', '126');
INSERT INTO `t_weibo` VALUES ('145', '58', '2019-09-16 16:13:05', '333', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('146', '58', '2019-09-16 17:07:42', '转发测试9', null, null, null, null, null, null, null, null, null, '0', '126');
INSERT INTO `t_weibo` VALUES ('147', '55', '2019-09-16 19:51:45', '888', '921a3cce-8f76-4879-b574-2f9fc1aec63f.jpg', '815a483a-1a8f-40ce-a41c-215dab8cd795.jpg', 'efbca562-eca8-4aed-a937-c83ccaf01118.jpg', null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('148', '55', '2019-09-16 19:52:30', '999', null, null, null, null, null, null, null, null, null, '0', '147');
INSERT INTO `t_weibo` VALUES ('149', '55', '2019-09-16 19:54:09', '个人主页测试', null, null, null, null, null, null, null, null, null, '0', '147');
INSERT INTO `t_weibo` VALUES ('150', '55', '2019-09-16 19:54:38', '个人主页', null, null, null, null, null, null, null, null, null, '0', '126');
INSERT INTO `t_weibo` VALUES ('151', '48', '2019-09-16 20:18:09', '999', null, null, null, null, null, null, null, null, null, '0', '147');
INSERT INTO `t_weibo` VALUES ('152', '57', '2019-09-18 11:22:12', 'dajxhwochciaxd', '47dfa361-b2ef-4dec-bb66-aa67916abe15.jpg', '8e0dbc04-804b-4590-bd59-365d20cace2d.jpg', 'b6c8dd1a-3375-487c-bb20-b6eca34ca0e6.jpg', null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('153', '57', '2019-09-18 11:24:41', '3211', null, null, null, null, null, null, null, null, null, '0', '152');
INSERT INTO `t_weibo` VALUES ('154', '57', '2019-09-18 11:25:00', 'qsjhdjkashdn', null, null, null, null, null, null, null, null, null, '0', '147');
INSERT INTO `t_weibo` VALUES ('157', '60', '2019-09-19 10:04:54', '默认头像测试001', '8ec1f548-da68-4046-bb3f-1b724941d0e2.jpg', null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('158', '60', '2019-09-19 10:34:48', '转发关注测试', null, null, null, null, null, null, null, null, null, '0', '152');
INSERT INTO `t_weibo` VALUES ('159', '61', '2019-09-19 20:08:51', '大家好我是王', '5c366518-0537-48c1-ae64-20ebfd49138a.jpg', '594fe903-ec64-4e98-b521-76254d9bb1ec.jpg', null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('160', '61', '2019-09-19 20:09:25', '12312312', null, null, null, null, null, null, null, null, null, '0', '159');
INSERT INTO `t_weibo` VALUES ('161', '48', '2019-09-20 11:34:13', '5210', null, null, null, null, null, null, null, null, null, '0', '160');
INSERT INTO `t_weibo` VALUES ('163', '48', '2019-09-20 11:36:44', '发布图片测试', '2f6e5cf8-61b1-4c8d-ac7d-24d2ee58b59a.jpg', 'a2053460-2a83-46b1-a344-e3e9e1615c6c.jpg', '6471b957-2f7b-4952-8a5d-bd5202b60c2a.jpg', '52788f64-d2e6-4e73-824e-6bf37949f442.jpg', '79e316b6-47c2-418a-bfb7-bc50e797ce74.jpg', 'caeb3a07-a14b-4eff-bff5-dc714ad44a99.jpg', 'ad7a3aef-ec92-40f6-af39-71fbaad9b65e.jpg', '24a6098a-ed7c-4a9c-8e80-0fe093175259.jpg', '79519ea1-30ac-45ef-9a3d-4b1e8437650c.jpg', '1', null);
INSERT INTO `t_weibo` VALUES ('164', '48', '2019-09-20 11:37:18', '转发图片测试', null, null, null, null, null, null, null, null, null, '0', '163');
INSERT INTO `t_weibo` VALUES ('165', '48', '2019-09-20 11:37:39', '转发他人图片测试', null, null, null, null, null, null, null, null, null, '0', '159');
INSERT INTO `t_weibo` VALUES ('166', '64', '2019-09-21 15:38:03', 'hello', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('167', '64', '2019-09-21 15:43:22', '321', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('168', '64', '2019-09-21 15:57:33', '3', '20c90c75-f986-4b03-9562-23799d5a0b23.jpg', null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('169', '64', '2019-09-21 15:57:37', '3', null, null, null, null, null, null, null, null, null, '0', '168');
INSERT INTO `t_weibo` VALUES ('170', '64', '2019-09-21 15:57:43', '4', 'ccfe50fa-3be6-47ae-a82d-a9ecb2d3984d.jpg', null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('171', '64', '2019-09-21 15:57:47', '4', null, null, null, null, null, null, null, null, null, '0', '170');
INSERT INTO `t_weibo` VALUES ('179', '48', '2019-09-21 17:26:59', '5', null, null, null, null, null, null, null, null, null, '0', '170');
INSERT INTO `t_weibo` VALUES ('180', '65', '2019-09-21 19:50:20', '大家好，我是高加薪', '2cfb0a99-b44f-4fca-bec3-513f13c7c3dc.jpg', '861f09cb-ef6d-4589-8e50-4b1da4c59161.jpg', 'd543d744-f9a1-4416-bf41-5084ef7c6b47.jpg', '80e2372a-a1ed-4251-81c3-96f21a1edb4b.jpg', '661ce8fd-c591-4a33-bbb2-53e3c20e9518.jpg', '6a6051e7-3d7b-453f-a8aa-ec842268652c.jpg', 'd8de0fa4-0e5b-4f55-a53f-f92cf6b5ee10.jpg', '51babd96-f7c9-42c5-b127-64e3068adc0d.jpg', '205b4f44-0bde-44f3-84b4-a5e5bdbfcda9.jpg', '1', null);
INSERT INTO `t_weibo` VALUES ('181', '70', '2019-09-22 12:00:55', '长轮询测试', 'f02ee764-f895-4785-9f25-112e13edc023.jpg', null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('182', '70', '2019-09-22 17:41:20', '点赞长轮询测试', 'fb6a8805-3f3a-4fa7-9ef6-8459766f0047.jpg', null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('183', '48', '2019-09-23 19:35:09', '转发测试111', null, null, null, null, null, null, null, null, null, '0', '179');
INSERT INTO `t_weibo` VALUES ('184', '70', '2019-09-23 20:24:44', '收到的转发测试', null, null, null, null, null, null, null, null, null, '0', '182');
INSERT INTO `t_weibo` VALUES ('185', '48', '2019-09-23 20:39:53', '他人转发测试', null, null, null, null, null, null, null, null, null, '0', '184');
INSERT INTO `t_weibo` VALUES ('186', '60', '2019-09-24 13:50:15', '转发2', null, null, null, null, null, null, null, null, null, '0', '185');
INSERT INTO `t_weibo` VALUES ('187', '60', '2019-09-24 13:50:39', '转发2', null, null, null, null, null, null, null, null, null, '0', '182');
INSERT INTO `t_weibo` VALUES ('188', '71', '2019-09-25 10:48:56', '关注和粉丝列表测试', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('189', '61', '2019-09-25 19:28:15', '爱上，打死了大家', '89802731-b597-42ef-aa98-18227534c58e.jpg', null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('190', '61', '2019-09-25 19:28:33', '啊实打实的', null, null, null, null, null, null, null, null, null, '0', '189');
INSERT INTO `t_weibo` VALUES ('191', '72', '2019-10-02 17:24:08', 'jdsalk', null, null, null, null, null, null, null, null, null, '0', '189');
INSERT INTO `t_weibo` VALUES ('192', '72', '2019-10-02 17:25:56', 'eafdasasd', '1b7e0814-d637-4d55-bbea-d99051f87c0a.jpg', '725be3c0-60d8-4608-bd4c-2b7ea6006931.jpg', '2dcfd727-4123-46b2-8faa-e983e07f5bb3.jpg', '6634c2d2-b610-4485-ad5d-2fb2f20f6667.jpg', 'a58cbe12-008d-45da-8de0-62032fa5dd04.jpg', '73a904b5-3026-4509-baf1-3adaec840dde.jpg', 'ce99201b-1a46-4578-ab36-655874b7e6a2.jpg', 'daf171d5-4cbe-4bd9-ac6e-5c5a086bfe58.jpg', '434b6adb-bb7c-4644-919f-9f162b26fc79.jpg', '1', null);
INSERT INTO `t_weibo` VALUES ('193', '73', '2019-10-10 14:46:41', '最终测试-无文字微博', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('194', '73', '2019-10-10 14:46:59', '最终测试-有图片微博', 'bf2903c8-1929-460c-bbcc-14be279ef631.jpg', null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('195', '73', '2019-10-10 14:47:51', '最终测试-点赞测试-有图片', '5020773a-3ff1-4832-b13f-64aafa0221cb.jpg', null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('196', '73', '2019-10-10 14:48:38', '最终测试-自己转发', null, null, null, null, null, null, null, null, null, '0', '195');
INSERT INTO `t_weibo` VALUES ('197', '73', '2019-10-10 16:43:27', '你这图片快乐', null, null, null, null, null, null, null, null, null, '0', '163');
INSERT INTO `t_weibo` VALUES ('198', '48', '2019-10-10 17:07:01', '99', null, null, null, null, null, null, null, null, null, '0', '195');
INSERT INTO `t_weibo` VALUES ('199', '74', '2019-10-10 18:00:54', '大家好，我是测试人员1，很高兴来到微博这个大家庭！', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('200', '74', '2019-10-10 18:09:45', '今天真是一个阳光明媚的日子！', '0a7c6c49-9c73-4d1c-b3c4-2d8308856564.jpg', '812bd228-9777-46c4-b507-50bbe7b5ac2e.jpg', '3a056d4b-e2bb-4bdb-81d8-add4c599f25c.jpg', 'cd5e62ce-8807-49c3-bc99-6220588cda1c.jpg', '7e5ea854-c3f2-4b81-9eb8-c7ac25ea4e72.jpg', '8669ee76-dd0f-4692-b283-fd331fd7f0ca.jpg', 'e207f7cf-ee02-48a3-b727-bbe94ebb5f40.jpg', 'cd745edd-1353-4713-b9bb-d87fe7c31ee3.jpg', 'ab73a017-4f08-4163-8efa-662b0c067591.jpg', '1', null);
INSERT INTO `t_weibo` VALUES ('201', '58', '2019-10-11 13:51:32', '风景', '233a3c36-db25-425e-a4b9-ead44c24fe19.jpg', null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('202', '75', '2019-10-11 15:08:16', '今日进士', '4dabccce-ee02-4aea-8cbd-609c0a5c7a76.jpg', '8b87fc6c-d851-47eb-9005-418370565d10.jpg', '261b1122-79cd-4492-9e58-c1de0b3da2aa.jpg', 'd286557e-c282-47e7-8251-7bea52658c9d.jpg', 'fa9b7cb8-3d96-46fc-9a4b-2ebfc07f5a74.jpg', 'ec7d0645-4ee9-4dd3-ab24-25c4a619ed7c.jpg', 'a87291b5-9a8c-4932-ad80-556313228398.jpg', '7ef46e28-1b34-4c9b-988e-cbe01b5772da.jpg', '5e046b56-6683-46a2-9a46-300c54ecb93b.jpg', '1', null);
INSERT INTO `t_weibo` VALUES ('203', '75', '2019-10-11 15:08:31', '进士可还行？', null, null, null, null, null, null, null, null, null, '0', '202');
INSERT INTO `t_weibo` VALUES ('204', '76', '2019-10-11 17:57:22', '大家好，我是陈瑞轩！', '61123f4f-81cb-4588-9516-5e6d2919c422.jpg', '8292413d-9f5c-45e4-b02e-55699e5f197a.jpg', 'e37426c8-0df9-4afa-86ca-fb7db3a5be67.jpg', '6a37fc05-05b5-4476-ad95-59a093be5a19.jpg', 'c8bcea77-e433-40ac-b7bb-23935ebc4d9f.jpg', 'b08c13b3-6b85-4b6d-b36a-83698d22dba7.jpg', '3733b6da-1a9d-4f4c-abd6-154b8e114d16.jpg', '952eac1f-8e66-43a0-94cd-941e2055f414.jpg', '4f7533e9-a2ae-44cf-b886-d4146b9d16ce.jpg', '1', null);
INSERT INTO `t_weibo` VALUES ('205', '76', '2019-10-11 17:57:50', '哈哈 还行吧', null, null, null, null, null, null, null, null, null, '0', '204');
INSERT INTO `t_weibo` VALUES ('206', '77', '2019-10-12 11:48:46', '最终测试', 'ea2bcd16-f3ff-455d-898c-cce619e54408.jpg', '66d06e88-b740-451a-976e-e7fa2a2b01e0.jpg', '5234a446-902b-403b-a909-d9084bc85868.jpg', '67380e9a-9232-4003-98dc-c7dd1923ef22.jpg', 'bd364573-fe60-4182-90a6-da812373d0a0.jpg', 'e76f509d-86c5-4a49-bdc2-6f434116bef7.jpg', '0eace670-72f1-402f-92e4-28565cb56641.jpg', '88a601b7-ee07-4f75-95da-25b0d930e9a9.jpg', '1dea83da-b2d7-448e-b699-14981b41cfef.jpg', '1', null);
INSERT INTO `t_weibo` VALUES ('207', '77', '2019-10-12 11:49:04', '转发最终测试', null, null, null, null, null, null, null, null, null, '0', '206');
INSERT INTO `t_weibo` VALUES ('209', '78', '2019-10-12 15:11:29', '今天是阴天', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('210', '78', '2019-10-12 15:13:21', '拍的不错', '0e72b9d7-7bf3-49bf-b7ff-1cd47d926f43.jpg', '977a812d-145d-4cc4-83c0-99c76be8db72.jpg', '48a305fe-7fbc-42e2-883a-03a51af6fe87.jpg', '09b42e1b-8984-490c-9033-6965679eeeed.jpg', '2ac2a9b0-e98e-4502-ae54-022db9595c08.jpg', 'c8d89437-f151-4157-8e90-e196899f2266.jpg', '1cfc1898-3100-4f2e-bb40-7cd19d8b57f2.jpg', '981605a2-5ae6-4729-980f-d1b7f58c1031.jpg', '1a3d683b-32a9-41a7-b7d7-ab7d81043005.jpg', '1', null);
INSERT INTO `t_weibo` VALUES ('213', '79', '2019-10-12 16:06:21', '今天天气不错', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('214', '79', '2019-10-12 16:10:18', '真的是不错', '7010221b-3790-4031-b667-3715f381f2e7.jpg', '03285976-e3b4-43ed-9896-f7e4627ca303.jpg', '8890f966-6339-4ab7-b653-401d96b75730.jpg', 'c1685a6c-3d89-4389-bd70-bdbf98c02f10.jpg', '414045b1-0557-4cb3-aa90-f692d248626d.jpg', '1c013dff-ee20-43c8-9cda-10f77c1dcaa5.jpg', 'a493cb29-f127-4392-bdd0-3a407f6765db.jpg', '3cedf0b5-bf88-4d25-ad89-c9e5e50467dc.jpg', '641a3911-2099-45a6-8590-767f92e9d7f1.jpg', '1', null);
INSERT INTO `t_weibo` VALUES ('216', '79', '2019-10-12 16:17:41', '转发测试', null, null, null, null, null, null, null, null, null, '0', '214');
INSERT INTO `t_weibo` VALUES ('217', '80', '2019-10-12 18:09:12', '今日答辩', null, null, null, null, null, null, null, null, null, '1', null);
INSERT INTO `t_weibo` VALUES ('218', '80', '2019-10-12 18:10:01', '今日答辩', '2e82725c-91fd-4800-bf76-157bcc052b3d.jpg', 'af8ed29c-4dcf-4605-b5a4-d2893ef0399e.jpg', '40505266-2600-417e-b137-b2e37a66b50a.jpg', '93892441-e197-4ff6-95dc-e252c5d8e000.jpg', '0b0697ea-87bb-4d73-b9ee-6dff3afe42bf.jpg', '60568c3b-9422-4a06-92cf-e946e8e7f004.jpg', '40364576-350a-4aed-9592-b9a46df6ed11.jpg', '6be3ddf8-97d3-4299-ad8a-646a3804d54b.jpg', 'acd6d715-275f-480e-b81a-5ad9f71221e9.jpg', '1', null);

-- ----------------------------
-- Procedure structure for `myproc`
-- ----------------------------
DROP PROCEDURE IF EXISTS `myproc`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `myproc`(OUT s int)
BEGIN
   SELECT COUNT(*) INTO s FROM t_user;
  END
;;
DELIMITER ;
