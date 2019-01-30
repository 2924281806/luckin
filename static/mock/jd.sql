/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50703
Source Host           : localhost:3306
Source Database       : myigou

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2017-04-02 23:40:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `addressinfo` varchar(400) DEFAULT NULL,
  `isdefault` varchar(11) DEFAULT NULL,
  `user_phone` varchar(20) DEFAULT NULL,
  `addressarea` varchar(400) DEFAULT NULL,
  `sname` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('2', '1', 'dsa', '0', '18389379755', '广东深圳罗湖区', '澈澈');
INSERT INTO `address` VALUES ('4', '1', 'vsdscd', '0', '18389379226', '江苏苏州金阊区', 'chacha');
INSERT INTO `address` VALUES ('7', '1', 'dsa', '1', '18308596034', '重庆重庆沙坪坝区', 'picture');
INSERT INTO `address` VALUES ('8', '1', 'csacsacsa', '0', '18389379777', '广西桂林七星区', 'qiuqaaaaa');
INSERT INTO `address` VALUES ('10', '3', 'csaca', '1', '18389379755', '海南海口秀英区', 'huangche');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(100) NOT NULL AUTO_INCREMENT,
  `category_pid` int(11) DEFAULT NULL,
  `category_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('3', '100001', '女装');
INSERT INTO `category` VALUES ('4', '100001', '男装');
INSERT INTO `category` VALUES ('5', '100001', '童装');
INSERT INTO `category` VALUES ('6', '100002', '皮鞋');
INSERT INTO `category` VALUES ('7', '100002', '运动鞋');


-- ----------------------------
-- Table structure for `collect`
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `collect_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`collect_id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `collect_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `collect_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collect
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_cart`
-- ----------------------------
DROP TABLE IF EXISTS `goods_cart`;
CREATE TABLE `goods_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `goods_num` int(11) DEFAULT NULL,
  `created` varchar(200) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `goods_cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `goods_cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_cart
-- ----------------------------
INSERT INTO `goods_cart` VALUES ('11', '1', '11', '1', '2016-04-04 02:34:14', null);
INSERT INTO `goods_cart` VALUES ('12', '3', '107', '1', '2016-04-11 11:53:21', null);
INSERT INTO `goods_cart` VALUES ('14', '3', '12', '1', '2016-04-11 11:53:57', null);
INSERT INTO `goods_cart` VALUES ('15', '3', '154', '1', '2016-04-11 13:52:06', null);

-- ----------------------------
-- Table structure for `lhg_city`
-- ----------------------------
DROP TABLE IF EXISTS `lhg_city`;
CREATE TABLE `lhg_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `fename` varchar(2) NOT NULL DEFAULT '',
  `ename` varchar(40) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `level` int(3) NOT NULL DEFAULT '0',
  `region` int(11) NOT NULL COMMENT '1是(北部沿海)2是(东部沿海)3是(南部沿海)4是(西部沿海)5是(中部内陆)',
  `map_x` varchar(50) NOT NULL DEFAULT '',
  `map_y` varchar(50) NOT NULL DEFAULT '',
  `map_z` varchar(5) NOT NULL DEFAULT '',
  `orders` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `city_id` int(11) NOT NULL DEFAULT '0',
  `city_area` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `name` (`name`),
  KEY `ename` (`ename`),
  KEY `pid` (`pid`),
  KEY `orders` (`orders`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=3240 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lhg_city
-- ----------------------------

INSERT INTO `lhg_city` VALUES ('3237', '南部沿海', '', '', '3234', '1', '0', '', '', '', '0', '5', '0', '0', '0');
INSERT INTO `lhg_city` VALUES ('3238', '西部沿海', '', '', '3234', '1', '0', '', '', '', '0', '5', '0', '0', '0');
INSERT INTO `lhg_city` VALUES ('3239', '中部内陆', '', '', '3234', '1', '0', '', '', '', '0', '5', '0', '0', '0');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `ocount` int(11) DEFAULT NULL,
  `total_price` decimal(8,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `stauts` int(11) DEFAULT NULL,
  `flag` varchar(11) DEFAULT NULL,
  `buid_time` varchar(200) DEFAULT NULL,
  `orderno` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`),
  KEY `address_id` (`address_id`),
  KEY `cart_id` (`cart_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`cart_id`) REFERENCES `goods_cart` (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('3', '150', '128.00', '3', '384.00', '1', '2', '11', '0', 'add_order', '2016-04-04 07:21:25', '9563402100');
INSERT INTO `orders` VALUES ('4', '11', '155.00', '2', '310.00', '1', '2', '11', '0', 'add_order', '2016-04-04 07:21:25', '5963401800');
INSERT INTO `orders` VALUES ('5', '122', '5598.00', '1', '5598.00', '1', '2', '11', '0', 'add_order', '2016-04-04 07:21:25', '8462301700');
INSERT INTO `orders` VALUES ('6', '106', '149.00', '1', '149.00', '1', '2', '11', '0', 'add_order', '2016-04-04 07:21:25', '7452390600');
INSERT INTO `orders` VALUES ('7', '113', '179.00', '2', '358.00', '3', '10', '11', '1', 'add_order', '2016-04-11 13:47:30', '5673821900');
INSERT INTO `orders` VALUES ('8', '12', '399.00', '1', '399.00', '3', '10', '11', '1', 'add_order', '2016-04-11 13:47:30', '0369541800');
INSERT INTO `orders` VALUES ('9', '107', '169.00', '1', '169.00', '3', '10', '11', '1', 'add_order', '2016-04-11 13:47:30', '5827901600');
INSERT INTO `orders` VALUES ('10', '154', '149.00', '1', '149.00', '3', '10', '11', '0', 'add_order', '2016-04-11 13:52:32', '3017856200');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `product_price` decimal(8,2) DEFAULT NULL,
  `product_img_url` varchar(400) DEFAULT NULL,
  `product_uprice` decimal(8,2) DEFAULT NULL,
  `product_num` varchar(100) DEFAULT NULL,
  `product_detail` text,
  `product_comment_num` int(8) DEFAULT NULL,
  `product_hot` int(11) DEFAULT NULL,
  `product_special` int(11) DEFAULT NULL,
  `product_search_hot` int(8) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `shop` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('3', '3', '1', '素缕2015冬装新款文艺百搭羊毛毛呢外套女九分袖短款SL546031栐', '379.00', 'https://gd1.alicdn.com/bao/uploaded/i1/2254228937/TB2pqExhpXXXXXkXXXXXXXXXXXX_!!2254228937.jpg', '329.00', '100', '素缕 2015冬装新款文艺百搭羊毛毛呢外套女九分袖短款SL546031栐 面料自然肌理 精致小短款 微喇设计 优雅易搭配', '51', '1', '0', '0');
INSERT INTO `product` VALUES ('4', '3', '2', 'S家原创设计欧洲站女装街头风斗篷立领个性短款棉衣a字蓬蓬棉服女', '596.00', 'https://gd1.alicdn.com/bao/uploaded/i1/TB100kJKFXXXXbIXVXXXXXXXXXX_!!0-item_pic.jpg', '298.00', '100', '品牌: sibyl of no.17\n 货号: C1510074\n 服装版型: 斗篷型\n 厚薄: 常规\n 风格: 街头\n 街头: 欧美\n 衣长: 短款\n 袖长: 长袖\n 领子: 立领\n 袖型: 其他\n 衣门襟: 单排扣\n 图案: 形状\n 面料材质: 其他\n 成分含量: 91%(含)-95%(含)\n 填充物: 其他\n 适用年龄: 25-29周岁\n 年份/季节: 2015年冬季\n 颜色分类: 白色 黑色\n 尺码: S M L\n', '503', '1', '0', '1');
INSERT INTO `product` VALUES ('239', '15', '418', 'Changhong/长虹 KFR-72LW/DHIF(W2-J)+2立式冷暖客厅3匹柜机空调', '4899.00', 'https://img.alicdn.com/bao/uploaded/i1/TB1QniHLpXXXXatXXXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg', '3899.00', '100', '\n 证书编号：2011010703482141\n 证书状态：有效\n 申请人名称：四川长虹电器股份有限公司\n 制造商名称：四川长虹电器股份有限公司\n 产品名称：分体热泵型落地式房间空调器、分体冷风型落地式房间空调器\n 3C产品型号：见附件\n 产品名称：Changhong/长虹 KFR-72L...\n 长虹空调型号: KFR-72LW/DHIF(W2-J)+2\n 空调类型: 柜机\n 冷暖类型: 冷暖电辅\n 空调功率: 3匹\n 适用面积: 28m^2（含）-45m^2（含）\n 工作方式: 定速\n 能效等级: 三级\n        ', '15', '0', '1', '1');
INSERT INTO `product` VALUES ('243', null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `product_image`
-- ----------------------------
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image` (
  `image_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` int(100) DEFAULT NULL,
  `image_url` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=922 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_image
-- ----------------------------

INSERT INTO `product_image` VALUES ('894', '233', 'https://img.alicdn.com/imgextra/i2/TB1vdGmHFXXXXbOXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg');
INSERT INTO `product_image` VALUES ('895', '233', 'https://img.alicdn.com/imgextra/i2/1666865507/TB2qCdGcFXXXXaGXpXXXXXXXXXX_!!1666865507.jpg_430x430q90.jpg');
INSERT INTO `product_image` VALUES ('896', '233', 'https://img.alicdn.com/imgextra/i1/1666865507/TB2YJNJcFXXXXXmXpXXXXXXXXXX_!!1666865507.jpg_430x430q90.jpg');
INSERT INTO `product_image` VALUES ('897', '234', 'https://img.alicdn.com/bao/uploaded/i3/TB12hd9LpXXXXbWXpXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg');
INSERT INTO `product_image` VALUES ('898', '234', 'https://img.alicdn.com/imgextra/i2/1838142851/TB2dzxKcFXXXXa2XXXXXXXXXXXX_!!1838142851.jpg_430x430q90.jpg');
INSERT INTO `product_image` VALUES ('899', '234', 'https://img.alicdn.com/imgextra/i1/1838142851/TB2EQ0ObVXXXXauXpXXXXXXXXXX_!!1838142851.jpg_430x430q90.jpg');
INSERT INTO `product_image` VALUES ('900', '234', 'https://img.alicdn.com/imgextra/i1/1838142851/TB2N0R0bVXXXXXoXXXXXXXXXXXX_!!1838142851.jpg_430x430q90.jpg');
INSERT INTO `product_image` VALUES ('901', '234', 'https://img.alicdn.com/imgextra/i2/1838142851/TB2k4pObVXXXXaWXpXXXXXXXXXX_!!1838142851.jpg_430x430q90.jpg');
INSERT INTO `product_image` VALUES ('902', '235', 'https://img.alicdn.com/bao/uploaded/i4/TB1MG9iLpXXXXXRXXXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg');
INSERT INTO `product_image` VALUES ('903', '235', 'https://img.alicdn.com/imgextra/i2/TB1ayrZJFXXXXbYXXXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg');
INSERT INTO `product_image` VALUES ('904', '235', 'https://img.alicdn.com/imgextra/i2/1838142851/TB2KCc3fVXXXXaxXpXXXXXXXXXX_!!1838142851.jpg_430x430q90.jpg');
INSERT INTO `product_image` VALUES ('905', '235', 'https://img.alicdn.com/imgextra/i2/1838142851/TB2TBiWgXXXXXaTXXXXXXXXXXXX_!!1838142851.jpg_430x430q90.jpg');
INSERT INTO `product_image` VALUES ('906', '235', 'https://img.alicdn.com/imgextra/i1/1838142851/TB2UDYPfVXXXXXbXpXXXXXXXXXX_!!1838142851.jpg_430x430q90.jpg');
INSERT INTO `product_image` VALUES ('907', '236', 'https://img.alicdn.com/bao/uploaded/i1/TB1YSd6LpXXXXXNXFXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg');

-- ----------------------------
-- Table structure for `shop`
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `shop_id` int(100) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(200) DEFAULT NULL,
  `shop_address` varchar(400) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=419 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('1', '素缕旗舰店', '山东济南', '3');
INSERT INTO `shop` VALUES ('2', 'S家原创设计女装', '四川成都', '3');
INSERT INTO `shop` VALUES ('414', '静熙旗舰店 ', '福建莆田', null);
INSERT INTO `shop` VALUES ('415', '光度旗舰店 ', '福建泉州', null);
INSERT INTO `shop` VALUES ('416', '松下空调旗舰店', '电器城佛山', null);
INSERT INTO `shop` VALUES ('417', '格力官方旗舰店 ', '浙江杭州', null);
INSERT INTO `shop` VALUES ('418', '长虹空调旗舰店 ', '电器城佛山', null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `login_password` varchar(100) NOT NULL,
  `pay_password` varchar(100) DEFAULT NULL,
  `user_number` varchar(40) NOT NULL,
  `user_photo` varchar(200) DEFAULT NULL,
  `verification_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'huangche', 'huangche', '123456', '18389379755', null, null);
INSERT INTO `user` VALUES ('2', 'huangche123', 'http://127.0.0.1:8080/back/images/userphone.jpg', null, '18269287753', null, null);
INSERT INTO `user` VALUES ('3', 'rootcat007', 'cdd733aad2d0b134c537011af33613f1', null, '18389378862', null, null);
INSERT INTO `user` VALUES ('4', 'xiaoyanzi', '7c0d49184b57774a3d73cb591e20d30d', null, '18889409793', null, null);
