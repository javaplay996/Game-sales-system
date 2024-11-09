/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm933ag
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm933ag` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm933ag`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619495869482 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-27 11:48:29',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-04-27 11:48:29',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-04-27 11:48:29',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-04-27 11:48:29',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-04-27 11:48:29',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-04-27 11:48:29',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1619495869481,'2021-04-27 11:57:49',1619495830172,'广东省揭阳市榕城区西马街道西马路45号北市小学','陈一','12312312312','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'youxixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619495999483 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619496055362 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (51,'2021-04-27 11:48:29',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (52,'2021-04-27 11:48:29',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (53,'2021-04-27 11:48:29',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (54,'2021-04-27 11:48:29',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (55,'2021-04-27 11:48:29',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (56,'2021-04-27 11:48:29',6,6,'提问6','回复6',6);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619496022098,'2021-04-27 12:00:21',1619495830172,NULL,'这里可以进行相关的咨询',NULL,0);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619496055361,'2021-04-27 12:00:54',1619495830172,1,NULL,'1',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm933ag/upload/1619495755459.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm933ag/upload/1619495762770.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm933ag/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `dingdanpingjia` */

DROP TABLE IF EXISTS `dingdanpingjia`;

CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `youximingcheng` varchar(200) DEFAULT NULL COMMENT '游戏名称',
  `youxifenlei` varchar(200) DEFAULT NULL COMMENT '游戏分类',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619496129141 DEFAULT CHARSET=utf8 COMMENT='订单评价';

/*Data for the table `dingdanpingjia` */

insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`youximingcheng`,`youxifenlei`,`pingfen`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`) values (41,'2021-04-27 11:48:29','订单编号1','游戏名称1','游戏分类1','1','评价内容1','2021-04-27','用户名1','联系电话1','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`youximingcheng`,`youxifenlei`,`pingfen`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`) values (42,'2021-04-27 11:48:29','订单编号2','游戏名称2','游戏分类2','1','评价内容2','2021-04-27','用户名2','联系电话2','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`youximingcheng`,`youxifenlei`,`pingfen`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`) values (43,'2021-04-27 11:48:29','订单编号3','游戏名称3','游戏分类3','1','评价内容3','2021-04-27','用户名3','联系电话3','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`youximingcheng`,`youxifenlei`,`pingfen`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`) values (44,'2021-04-27 11:48:29','订单编号4','游戏名称4','游戏分类4','1','评价内容4','2021-04-27','用户名4','联系电话4','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`youximingcheng`,`youxifenlei`,`pingfen`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`) values (45,'2021-04-27 11:48:29','订单编号5','游戏名称5','游戏分类5','1','评价内容5','2021-04-27','用户名5','联系电话5','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`youximingcheng`,`youxifenlei`,`pingfen`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`) values (46,'2021-04-27 11:48:29','订单编号6','游戏名称6','游戏分类6','1','评价内容6','2021-04-27','用户名6','联系电话6','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`youximingcheng`,`youxifenlei`,`pingfen`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`) values (1619496129140,'2021-04-27 12:02:08','20214271202867458402','红月','奇幻类','5','游戏不错','2021-04-27','1','12312312312','是','感谢支持');

/*Table structure for table `discussyouxixinxi` */

DROP TABLE IF EXISTS `discussyouxixinxi`;

CREATE TABLE `discussyouxixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619495975947 DEFAULT CHARSET=utf8 COMMENT='游戏信息评论表';

/*Data for the table `discussyouxixinxi` */

insert  into `discussyouxixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-04-27 11:48:29',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussyouxixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (112,'2021-04-27 11:48:29',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussyouxixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (113,'2021-04-27 11:48:29',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussyouxixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (114,'2021-04-27 11:48:29',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussyouxixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (115,'2021-04-27 11:48:29',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussyouxixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (116,'2021-04-27 11:48:29',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussyouxixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619495975946,'2021-04-27 11:59:35',1619495745840,1619495830172,'1','这里可以发布评论','这里可以查看并回复评论');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619495808073 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-04-27 11:48:29','标题1','简介1','http://localhost:8080/ssm933ag/upload/1619495521014.jpg','<p>内容1</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (102,'2021-04-27 11:48:29','标题2','简介2','http://localhost:8080/ssm933ag/upload/1619495528865.jpg','<p>内容2</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (103,'2021-04-27 11:48:29','标题3','简介3','http://localhost:8080/ssm933ag/upload/1619495536645.jpg','<p>内容3</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (104,'2021-04-27 11:48:29','标题4','简介4','http://localhost:8080/ssm933ag/upload/1619495545095.jpg','<p>内容4</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (105,'2021-04-27 11:48:29','标题5','简介5','http://localhost:8080/ssm933ag/upload/1619495556484.jpg','<p>内容5</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (106,'2021-04-27 11:48:29','标题6','简介6','http://localhost:8080/ssm933ag/upload/1619495566574.jpg','<p>内容6</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1619495808072,'2021-04-27 11:56:47','新游戏上线','新游戏','http://localhost:8080/ssm933ag/upload/1619495796506.jpg','<p>公告内容jiojfgreioyrtjyht</p><p><img src=\"http://localhost:8080/ssm933ag/upload/1619495806749.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'youxixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1619496030211 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619496030210,'2021-04-27 12:00:29','20214271202867458402','youxixinxi',1619495830172,1619495745840,'红月','http://localhost:8080/ssm933ag/upload/1619495680699.jpg',1,399,399,399,399,1,'已完成','广东省揭阳市榕城区西马街道西马路45号北市小学','12312312312','陈一');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619495994785 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','pahkacaflz3n0n6pnrdxyzjfj1y7o3ov','2021-04-27 11:50:58','2021-04-27 13:02:24');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1619495830172,'1','yonghu','用户','jfq2xope6hjqitvizn228yqi7pl9lsvo','2021-04-27 11:57:15','2021-04-27 13:01:41');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-27 11:48:29');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1619495830173 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (11,'2021-04-27 11:48:29','用户1','123456','姓名1','http://localhost:8080/ssm933ag/upload/yonghu_touxiang1.jpg','男','13823888881',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (12,'2021-04-27 11:48:29','用户2','123456','姓名2','http://localhost:8080/ssm933ag/upload/yonghu_touxiang2.jpg','男','13823888882',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (13,'2021-04-27 11:48:29','用户3','123456','姓名3','http://localhost:8080/ssm933ag/upload/yonghu_touxiang3.jpg','男','13823888883',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (14,'2021-04-27 11:48:29','用户4','123456','姓名4','http://localhost:8080/ssm933ag/upload/yonghu_touxiang4.jpg','男','13823888884',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (15,'2021-04-27 11:48:29','用户5','123456','姓名5','http://localhost:8080/ssm933ag/upload/yonghu_touxiang5.jpg','男','13823888885',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (16,'2021-04-27 11:48:29','用户6','123456','姓名6','http://localhost:8080/ssm933ag/upload/yonghu_touxiang6.jpg','男','13823888886',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (1619495830172,'2021-04-27 11:57:10','1','11','陈一','http://localhost:8080/ssm933ag/upload/1619495843394.jpg','女','12312312312',1601);

/*Table structure for table `youxifenlei` */

DROP TABLE IF EXISTS `youxifenlei`;

CREATE TABLE `youxifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youxifenlei` varchar(200) NOT NULL COMMENT '游戏分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `youxifenlei` (`youxifenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1619495670043 DEFAULT CHARSET=utf8 COMMENT='游戏分类';

/*Data for the table `youxifenlei` */

insert  into `youxifenlei`(`id`,`addtime`,`youxifenlei`) values (21,'2021-04-27 11:48:29','游戏分类1');
insert  into `youxifenlei`(`id`,`addtime`,`youxifenlei`) values (22,'2021-04-27 11:48:29','游戏分类2');
insert  into `youxifenlei`(`id`,`addtime`,`youxifenlei`) values (23,'2021-04-27 11:48:29','游戏分类3');
insert  into `youxifenlei`(`id`,`addtime`,`youxifenlei`) values (24,'2021-04-27 11:48:29','游戏分类4');
insert  into `youxifenlei`(`id`,`addtime`,`youxifenlei`) values (25,'2021-04-27 11:48:29','游戏分类5');
insert  into `youxifenlei`(`id`,`addtime`,`youxifenlei`) values (26,'2021-04-27 11:48:29','游戏分类6');
insert  into `youxifenlei`(`id`,`addtime`,`youxifenlei`) values (1619495670042,'2021-04-27 11:54:29','奇幻类');

/*Table structure for table `youxixinxi` */

DROP TABLE IF EXISTS `youxixinxi`;

CREATE TABLE `youxixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youximingcheng` varchar(200) NOT NULL COMMENT '游戏名称',
  `youxifenlei` varchar(200) NOT NULL COMMENT '游戏分类',
  `youxifengmian` varchar(200) NOT NULL COMMENT '游戏封面',
  `youxibiaoqian` varchar(200) DEFAULT NULL COMMENT '游戏标签',
  `youxishipin` varchar(200) DEFAULT NULL COMMENT '游戏视频',
  `youxichangshang` varchar(200) DEFAULT NULL COMMENT '游戏厂商',
  `youxixiangqing` longtext COMMENT '游戏详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619495745841 DEFAULT CHARSET=utf8 COMMENT='游戏信息';

/*Data for the table `youxixinxi` */

insert  into `youxixinxi`(`id`,`addtime`,`youximingcheng`,`youxifenlei`,`youxifengmian`,`youxibiaoqian`,`youxishipin`,`youxichangshang`,`youxixiangqing`,`clicktime`,`clicknum`,`price`) values (31,'2021-04-27 11:48:29','游戏名称1','游戏分类1','http://localhost:8080/ssm933ag/upload/1619495466494.jpg','游戏标签1','','游戏厂商1','<p>游戏详情1</p>','2021-04-27 11:51:01',2,99.9);
insert  into `youxixinxi`(`id`,`addtime`,`youximingcheng`,`youxifenlei`,`youxifengmian`,`youxibiaoqian`,`youxishipin`,`youxichangshang`,`youxixiangqing`,`clicktime`,`clicknum`,`price`) values (32,'2021-04-27 11:48:29','游戏名称2','游戏分类2','http://localhost:8080/ssm933ag/upload/1619495476547.jpg','游戏标签2','','游戏厂商2','<p>游戏详情2</p>','2021-04-27 11:59:58',8,99.9);
insert  into `youxixinxi`(`id`,`addtime`,`youximingcheng`,`youxifenlei`,`youxifengmian`,`youxibiaoqian`,`youxishipin`,`youxichangshang`,`youxixiangqing`,`clicktime`,`clicknum`,`price`) values (33,'2021-04-27 11:48:29','游戏名称3','游戏分类3','http://localhost:8080/ssm933ag/upload/youxixinxi_youxifengmian3.jpg','游戏标签3','','游戏厂商3','游戏详情3','2021-04-27 11:48:29',3,99.9);
insert  into `youxixinxi`(`id`,`addtime`,`youximingcheng`,`youxifenlei`,`youxifengmian`,`youxibiaoqian`,`youxishipin`,`youxichangshang`,`youxixiangqing`,`clicktime`,`clicknum`,`price`) values (34,'2021-04-27 11:48:29','游戏名称4','游戏分类4','http://localhost:8080/ssm933ag/upload/youxixinxi_youxifengmian4.jpg','游戏标签4','','游戏厂商4','游戏详情4','2021-04-27 11:48:29',4,99.9);
insert  into `youxixinxi`(`id`,`addtime`,`youximingcheng`,`youxifenlei`,`youxifengmian`,`youxibiaoqian`,`youxishipin`,`youxichangshang`,`youxixiangqing`,`clicktime`,`clicknum`,`price`) values (35,'2021-04-27 11:48:29','游戏名称5','游戏分类5','http://localhost:8080/ssm933ag/upload/1619495486371.jpg','游戏标签5','','游戏厂商5','<p>游戏详情5</p>','2021-04-27 11:57:16',8,99.9);
insert  into `youxixinxi`(`id`,`addtime`,`youximingcheng`,`youxifenlei`,`youxifengmian`,`youxibiaoqian`,`youxishipin`,`youxichangshang`,`youxixiangqing`,`clicktime`,`clicknum`,`price`) values (36,'2021-04-27 11:48:29','游戏名称6','游戏分类6','http://localhost:8080/ssm933ag/upload/1619495496435.jpg','游戏标签6','','游戏厂商6','<p>游戏详情6</p>','2021-04-27 11:58:06',13,99.9);
insert  into `youxixinxi`(`id`,`addtime`,`youximingcheng`,`youxifenlei`,`youxifengmian`,`youxibiaoqian`,`youxishipin`,`youxichangshang`,`youxixiangqing`,`clicktime`,`clicknum`,`price`) values (1619495745840,'2021-04-27 11:55:45','红月','奇幻类','http://localhost:8080/ssm933ag/upload/1619495680699.jpg','独立游戏','http://localhost:8080/ssm933ag/upload/1619495720851.mp4','韩国游戏开发商JCE','<p>游戏介绍</p><p><img src=\"http://localhost:8080/ssm933ag/upload/1619495744036.jpg\"></p>','2021-04-27 12:00:29',4,399);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
