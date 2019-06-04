/*
Navicat MySQL Data Transfer

Source Server         : rzj
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : zol

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2019-05-18 11:59:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `hqualityrlist`
-- ----------------------------
DROP TABLE IF EXISTS `hqualityrlist`;
CREATE TABLE `hqualityrlist` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `imgsrc` varchar(160) NOT NULL,
  `dt` varchar(160) NOT NULL,
  `dd` varchar(160) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hqualityrlist
-- ----------------------------
INSERT INTO `hqualityrlist` VALUES ('1', 'https://article-fd.zol-img.com.cn/t_s154x154/g2/M00/0A/03/ChMlWly65JyIDP-3AAJDjEk8W0QAAJivwDpAUoAAkOk167.jpg', '\r\n                                        明基PD2500Q 25英寸显示器专业设计绘图2K超清智慧调光窄边旋转升降壁挂IPS屏电脑液晶屏幕HMDI 8-bit                                        \r\n                 ', ' \r\n                                    产品类型:LED显示器，广视角显示器 产品定位:设计制图 屏幕尺寸:25英寸 最佳分辨率:2560x1440 屏幕比例:16:9（宽屏） 面板类型:IPS 背光...\r\n                                    ');
INSERT INTO `hqualityrlist` VALUES ('2', 'https://article-fd.zol-img.com.cn/t_s154x154/g2/M00/00/07/ChMlWVzYVwSIItbaAAICCf8Ws54AAJ7ogI5oAQAAgIh728.jpg', '\r\n                                        Midea/美的 KFR-72LW/DY-YA400(D3)3匹家用冷暖立式柜机客厅空调                                        \r\n                                ', '\r\n                                    美的 KFR-72LW/DY-YA400(D3)，该机造型优雅、圆润，洁白的机身搭配圆弧曲线，十分美观，占地近0.152平方米,释放更多室内空间，一改老式空调方...\r\n                                    ');
INSERT INTO `hqualityrlist` VALUES ('3', 'https://article-fd.zol-img.com.cn/t_s154x154/g2/M00/00/01/ChMlWlzV2_-IZWyNAAMYRju0yMQAAJ6OAJ474EAAxhe244.jpg', '\r\n                                        美的8公斤kg变频滚筒洗衣机全自动家用大容量Midea/ MG80V330WDX                                        \r\n                                    ', 'https://article-fd.zol-img.com.cn/t_s154x154/g2/M00/0A/03/ChMlWly65JyIDP-3AAJDjEk8W0QAAJivwDpAUoAAkOk167.jpg');
INSERT INTO `hqualityrlist` VALUES ('4', 'https://article-fd.zol-img.com.cn/t_s154x154/g2/M00/0A/03/ChMlWly65JyIDP-3AAJDjEk8W0QAAJivwDpAUoAAkOk167.jpg', '\r\n                                        明基PD2500Q 25英寸显示器专业设计绘图2K超清智慧调光窄边旋转升降壁挂IPS屏电脑液晶屏幕HMDI 8-bit                  ', ' \r\n                                    产品类型:LED显示器，广视角显示器 产品定位:设计制图 屏幕尺寸:25英寸 最佳分辨率:2560x1440 屏幕比例:16:9（宽屏） 面板类型:IPS 背光...');
INSERT INTO `hqualityrlist` VALUES ('5', 'https://article-fd.zol-img.com.cn/t_s154x154/g2/M00/00/07/ChMlWVzYVwSIItbaAAICCf8Ws54AAJ7ogI5oAQAAgIh728.jpg', ' \r\n                                    产品类型:LED显示器，广视角显示器 产品定位:设计制图 屏幕尺寸:25英寸 最佳分辨率:2560x1440 屏幕比例:16:9（宽屏） 面板类型:IPS 背光...', ' \r\n                                    产品类型:LED显示器，广视角显示器 产品定位:设计制图 屏幕尺寸:25英寸 最佳分辨率:2560x1440 屏幕比例:16:9（宽屏） 面板类型:IPS 背光...');
INSERT INTO `hqualityrlist` VALUES ('6', 'https://article-fd.zol-img.com.cn/t_s154x154/g2/M00/00/07/ChMlWVzYVwSIItbaAAICCf8Ws54AAJ7ogI5oAQAAgIh728.jpg', ' \r\n                                    产品类型:LED显示器，广视角显示器 产品定位:设计制图 屏幕尺寸:25英寸 最佳分辨率:2560x1440 屏幕比例:16:9（宽屏） 面板类型:IPS 背光...', ' \r\n                                    产品类型:LED显示器，广视角显示器 产品定位:设计制图 屏幕尺寸:25英寸 最佳分辨率:2560x1440 屏幕比例:16:9（宽屏） 面板类型:IPS 背光...');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(11) NOT NULL,
  `verification` int(4) NOT NULL,
  `password` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('11', '18257340943', '1111', 'e594ca9d5ce4aafd5b83067d5e420883', '2019-05-13 10:46:20');

-- ----------------------------
-- Table structure for `zolpic`
-- ----------------------------
DROP TABLE IF EXISTS `zolpic`;
CREATE TABLE `zolpic` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT COMMENT '数据的编号',
  `url` varchar(200) NOT NULL COMMENT '图片的路径',
  `titile` varchar(50) NOT NULL COMMENT '标题',
  `price` float(8,2) unsigned NOT NULL,
  `sailnumber` int(4) NOT NULL,
  `urls` varchar(999) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zolpic
-- ----------------------------
INSERT INTO `zolpic` VALUES ('1', 'https://mercrt-fd.zol-img.com.cn/t_s154x154/g2/M00/0F/02/ChMlWlzRUBOIE8kPAACn4r6RhV4AAJ2dwF_vywAAKf6339.jpg', '七彩虹（Colorful）iGame GeForce RTX 2080 Ti Advanced OC', '8399.00', '12', 'https://mercrt-fd.zol-img.com.cn/t_s154x154/g2/M00/0F/02/ChMlWlzRUBOIE8kPAACn4r6RhV4AAJ2dwF_vywAAKf6339.jpg,http://i3mercrt.fd.zol-img.com.cn/t_s400x400/g5/M00/00/06/ChMkJ1vGwt6IYCsnAAGFMnxHeU4AAsiZQL2itgAAYVK769.jpg');
INSERT INTO `zolpic` VALUES ('2', 'https://mercrt-fd.zol-img.com.cn/t_s154x154/g5/M00/00/04/ChMkJ1wy2FWIEHZSAAFogz7X64kAAuPSwEZUHkAAWib941.jpg', '[新品现货 顺丰速发]荣耀V20 8GB+128GB 麒麟980芯片 魅眼全视屏 幻夜黑 现货 行货', '2859.00', '25', 'https://mercrt-fd.zol-img.com.cn/t_s154x154/g5/M00/00/04/ChMkJ1wy2FWIEHZSAAFogz7X64kAAuPSwEZUHkAAWib941.jpg\",http://i4mercrt.fd.zol-img.com.cn/t_s400x400/g5/M00/00/04/ChMkJlwy2GGIKYpLAAF1QGa2d30AAuPSwFEjzYAAXVY424.jpg');
INSERT INTO `zolpic` VALUES ('3', 'https://mercrt-fd.zol-img.com.cn/t_s154x154/g2/M00/0F/02/ChMlWlzRTe-IchZbAABxdmM2UlgAAJ2dQH_3vMAAHGO484.jpg', 'AMD Ryzen 5 2400G处理器搭载Radeon RX Vega11 Graphic 黑色', '2099.00', '25', 'https://mercrt-fd.zol-img.com.cn/t_s400x400/g2/M00/06/08/ChMlWlyrIGWIEoDkAAESqsZNK1gAAJT7wDlt6AAARLC385.jpg');
INSERT INTO `zolpic` VALUES ('4', 'https://mercrt-fd.zol-img.com.cn/t_s154x154/g5/M00/0E/0F/ChMkJ1omYnKIRPu4AAEXuVHrOVIAAi2hACYYuUAARfR401.jpg', '【顺丰包邮】OPPO R11s Plus 全面屏双摄 全网通6G+64G 双卡双待手机 金色 行货6', '1719.00', '25', 'https://mercrt-fd.zol-img.com.cn/t_s154x154/g5/M00/0E/0F/ChMkJ1omYnKIRPu4AAEXuVHrOVIAAi2hACYYuUAARfR401.jpg');
INSERT INTO `zolpic` VALUES ('5', 'https://mercrt-fd.zol-img.com.cn/t_s216x216/g2/M00/03/01/ChMlWlydp8-INgfTAABWtFu3ldYAAJGWAC8BCYAAFbM538.jpg', 'AOC Q27P1U AOC Q27P1U', '1459.00', '25', 'https://mercrt-fd.zol-img.com.cn/t_s216x216/g2/M00/03/01/ChMlWlydp8-INgfTAABWtFu3ldYAAJGWAC8BCYAAFbM538.jpg');
