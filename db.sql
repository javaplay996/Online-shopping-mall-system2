/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm0246o
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm0246o` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm0246o`;

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
) ENGINE=InnoDB AUTO_INCREMENT=1619149137713 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2022-11-02 11:20:46',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2022-11-02 11:20:46',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2022-11-02 11:20:46',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2022-11-02 11:20:46',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2022-11-02 11:20:46',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2022-11-02 11:20:46',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1619149137712,'2022-11-02 11:38:57',1619149087928,'广东省梅州市梅江区江南街道梅新路103号楼作新小学','陈一','12312312312','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619149347293 DEFAULT CHARSET=utf8 COMMENT='购物车表';

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
) ENGINE=InnoDB AUTO_INCREMENT=1619149316445 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (71,'2022-11-02 11:20:46',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (72,'2022-11-02 11:20:46',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (73,'2022-11-02 11:20:46',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (74,'2022-11-02 11:20:46',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (75,'2022-11-02 11:20:46',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (76,'2022-11-02 11:20:46',6,6,'提问6','回复6',6);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619149250303,'2022-11-02 11:40:50',1619149087928,NULL,'请问现在下单什么时候发货',NULL,0);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619149316444,'2022-11-02 11:41:55',1619149087928,1,NULL,'明天',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm0246o/upload/1619148712449.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm0246o/upload/1619148721537.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm0246o/upload/1619149064513.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `dingdanpingjia` */

DROP TABLE IF EXISTS `dingdanpingjia`;

CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619149455223 DEFAULT CHARSET=utf8 COMMENT='订单评价';

/*Data for the table `dingdanpingjia` */

insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (41,'2022-11-02 11:20:46','订单编号1','商品名称1','商品分类1','1','http://localhost:8080/ssm0246o/upload/dingdanpingjia_tianjiatupian1.jpg','评价内容1','2022-11-02','用户名1','手机1','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (42,'2022-11-02 11:20:46','订单编号2','商品名称2','商品分类2','1','http://localhost:8080/ssm0246o/upload/1619148372945.jpg','评价内容2','2022-11-02','用户名2','手机2','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (43,'2022-11-02 11:20:46','订单编号3','商品名称3','商品分类3','1','http://localhost:8080/ssm0246o/upload/dingdanpingjia_tianjiatupian3.jpg','评价内容3','2022-11-02','用户名3','手机3','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (44,'2022-11-02 11:20:46','订单编号4','商品名称4','商品分类4','1','http://localhost:8080/ssm0246o/upload/1619148382192.jpg','评价内容4','2022-11-02','用户名4','手机4','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (45,'2022-11-02 11:20:46','订单编号5','商品名称5','商品分类5','1','http://localhost:8080/ssm0246o/upload/1619148389784.jpg','评价内容5','2022-11-02','用户名5','手机5','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (46,'2022-11-02 11:20:46','订单编号6','商品名称6','商品分类6','1','http://localhost:8080/ssm0246o/upload/dingdanpingjia_tianjiatupian6.jpg','评价内容6','2022-11-02','用户名6','手机6','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (1619149455222,'2022-11-02 11:44:14','20214231141071083083','楼上芒果干','休闲食品','5','http://localhost:8080/ssm0246o/upload/1619149444885.jpg','物流很快，很不错的芒果干','2021-04-26','1','12312312312','是','感谢支持');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2022-11-02 11:20:46',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (132,'2022-11-02 11:20:46',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (133,'2022-11-02 11:20:46',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (134,'2022-11-02 11:20:46',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (135,'2022-11-02 11:20:46',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (136,'2022-11-02 11:20:46',6,6,'用户名6','评论内容6','回复内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=1619149054271 DEFAULT CHARSET=utf8 COMMENT='商品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (121,'2022-11-02 11:20:46','标题1','简介1','http://localhost:8080/ssm0246o/upload/1619148439023.jpg','<p>内容1</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (122,'2022-11-02 11:20:46','标题2','简介2','http://localhost:8080/ssm0246o/upload/1619148446620.jpg','<p>内容2</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (123,'2022-11-02 11:20:46','标题3','简介3','http://localhost:8080/ssm0246o/upload/1619148458777.jpg','<p>内容3</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (124,'2022-11-02 11:20:46','标题4','简介4','http://localhost:8080/ssm0246o/upload/1619148469298.jpg','<p>内容4</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (125,'2022-11-02 11:20:46','标题5','简介5','http://localhost:8080/ssm0246o/upload/1619148481101.jpg','<p>内容5</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (126,'2022-11-02 11:20:46','标题6','简介6','http://localhost:8080/ssm0246o/upload/1619148491340.jpg','<p>内容6</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1619149054270,'2022-11-02 11:37:34','商品优惠资讯','商品优惠','http://localhost:8080/ssm0246o/upload/1619149030224.jpg','<p>全场商品参与618优惠活动，具体详见商品详情页</p><p><img src=\"http://localhost:8080/ssm0246o/upload/1619149052974.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
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
) ENGINE=InnoDB AUTO_INCREMENT=1619149354012 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619149261295,'2022-11-02 11:41:00','20214231141071083083','shangpinxinxi',1619149087928,1619149016724,'楼上芒果干','http://localhost:8080/ssm0246o/upload/1619149000131.jpg',4,40,40,160,160,1,'已完成','广东省梅州市梅江区江南街道梅新路103号楼作新小学','12312312312','陈一');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619149354011,'2022-11-02 11:42:33','20214231142347700443','shangpinxinxi',1619149087928,35,'商品名称5','http://localhost:8080/ssm0246o/upload/1619148340418.jpg',2,139,139,278,278,1,'已支付','广东省梅州市梅江区江南街道梅新路103号楼作新小学','12312312312','陈一');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1619148982855 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2022-11-02 11:20:46','休闲食品');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (22,'2022-11-02 11:20:46','化妆品');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (23,'2022-11-02 11:20:46','宠物用品');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (24,'2022-11-02 11:20:46','电子产品');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (25,'2022-11-02 11:20:46','电器');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (26,'2022-11-02 11:20:46','服装');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (1619148982854,'2022-11-02 11:36:22','体育用品');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619149016725 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`guige`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (31,'2022-11-02 11:20:46','商品名称1','休闲食品','http://localhost:8080/ssm0246o/upload/1619148254032.jpg','品牌1','规格1','<p>商品详情1</p>','2022-11-02 11:24:05',2,99.9,1,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`guige`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (32,'2022-11-02 11:20:46','商品名称2','化妆品','http://localhost:8080/ssm0246o/upload/1619148891356.jpg','品牌2','规格2','<p>商品详情2</p>','2022-11-02 11:34:44',4,99.9,2,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`guige`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (33,'2022-11-02 11:20:46','商品名称3','宠物用品','http://localhost:8080/ssm0246o/upload/1619148313747.jpg','品牌3','规格3','<p>商品详情3</p>','2022-11-02 11:24:34',4,99.9,3,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`guige`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (34,'2022-11-02 11:20:46','商品名称4','服装','http://localhost:8080/ssm0246o/upload/1619148326097.jpg','品牌4','规格4','<p>商品详情4</p>','2022-11-02 11:25:17',5,99.9,4,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`guige`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (35,'2022-11-02 11:20:46','商品名称5','电器','http://localhost:8080/ssm0246o/upload/1619148340418.jpg','品牌5','规格5','<p>商品详情5</p>','2022-11-02 11:42:39',22,139,5,0);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`guige`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (36,'2022-11-02 11:20:46','商品名称6','电子产品','http://localhost:8080/ssm0246o/upload/1619148938280.jpg','品牌6','规格6','<p>商品详情6</p>','2022-11-02 11:38:23',12,99.9,6,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`guige`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (1619149016724,'2022-11-02 11:36:56','楼上芒果干','休闲食品','http://localhost:8080/ssm0246o/upload/1619149000131.jpg','楼上','454g','<p>商品介绍</p><p><img src=\"http://localhost:8080/ssm0246o/upload/1619149015182.jpg\"></p>','2022-11-02 11:41:08',7,40,5,46);

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
) ENGINE=InnoDB AUTO_INCREMENT=1619149227549 DEFAULT CHARSET=utf8 COMMENT='收藏表';

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','77v3rrtr065f60koyhmuybkxsr2gf47z','2022-11-02 11:22:26','2022-11-02 12:22:26');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1,'abo','users','管理员','jg340z7x7sve1fzb51qe5tb8noepgl0l','2022-11-02 11:23:13','2022-11-02 12:48:14');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1619148757383,'1','yonghu','用户','25of2vcgg1g8zpdkxk7k2fk4oahm28ej','2022-11-02 11:32:58','2022-11-02 12:32:58');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1619149087928,'1','yonghu','用户','sv1wchtj5yk13b8aacyb3w1w95jy39vy','2022-11-02 11:38:22','2022-11-02 12:49:09');

/*Table structure for table `tuihuoshenqing` */

DROP TABLE IF EXISTS `tuihuoshenqing`;

CREATE TABLE `tuihuoshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongjine` int(11) DEFAULT NULL COMMENT '总金额',
  `tuihuoyuanyin` varchar(200) DEFAULT NULL COMMENT '退货原因',
  `shangchuanpingzheng` varchar(200) DEFAULT NULL COMMENT '上传凭证',
  `tuihuofangshi` varchar(200) DEFAULT NULL COMMENT '退货方式',
  `shenqingshijian` date DEFAULT NULL COMMENT '申请时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619149657343 DEFAULT CHARSET=utf8 COMMENT='退货申请';

/*Data for the table `tuihuoshenqing` */

insert  into `tuihuoshenqing`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`zongjine`,`tuihuoyuanyin`,`shangchuanpingzheng`,`tuihuofangshi`,`shenqingshijian`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (51,'2022-11-02 11:20:46','订单编号1','商品名称1','商品分类1',1,1,'七天无理由','http://localhost:8080/ssm0246o/upload/1619148410507.jpg','上门取件','2022-11-02','用户名1','手机1','是','');
insert  into `tuihuoshenqing`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`zongjine`,`tuihuoyuanyin`,`shangchuanpingzheng`,`tuihuofangshi`,`shenqingshijian`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (52,'2022-11-02 11:20:46','订单编号2','商品名称2','商品分类2',2,2,'七天无理由','http://localhost:8080/ssm0246o/upload/tuihuoshenqing_shangchuanpingzheng2.jpg','上门取件','2022-11-02','用户名2','手机2','是','');
insert  into `tuihuoshenqing`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`zongjine`,`tuihuoyuanyin`,`shangchuanpingzheng`,`tuihuofangshi`,`shenqingshijian`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (53,'2022-11-02 11:20:46','订单编号3','商品名称3','商品分类3',3,3,'七天无理由','http://localhost:8080/ssm0246o/upload/tuihuoshenqing_shangchuanpingzheng3.jpg','上门取件','2022-11-02','用户名3','手机3','是','');
insert  into `tuihuoshenqing`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`zongjine`,`tuihuoyuanyin`,`shangchuanpingzheng`,`tuihuofangshi`,`shenqingshijian`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (54,'2022-11-02 11:20:46','订单编号4','商品名称4','商品分类4',4,4,'七天无理由','http://localhost:8080/ssm0246o/upload/tuihuoshenqing_shangchuanpingzheng4.jpg','上门取件','2022-11-02','用户名4','手机4','是','');
insert  into `tuihuoshenqing`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`zongjine`,`tuihuoyuanyin`,`shangchuanpingzheng`,`tuihuofangshi`,`shenqingshijian`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (55,'2022-11-02 11:20:46','订单编号5','商品名称5','商品分类5',5,5,'七天无理由','http://localhost:8080/ssm0246o/upload/1619148423231.jpg','上门取件','2022-11-02','用户名5','手机5','是','');
insert  into `tuihuoshenqing`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`zongjine`,`tuihuoyuanyin`,`shangchuanpingzheng`,`tuihuofangshi`,`shenqingshijian`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (56,'2022-11-02 11:20:46','订单编号6','商品名称6','商品分类6',6,6,'七天无理由','http://localhost:8080/ssm0246o/upload/tuihuoshenqing_shangchuanpingzheng6.jpg','上门取件','2022-11-02','用户名6','手机6','是','');
insert  into `tuihuoshenqing`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`zongjine`,`tuihuoyuanyin`,`shangchuanpingzheng`,`tuihuofangshi`,`shenqingshijian`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (1619149657342,'2022-11-02 11:47:37','20214231141071083083','楼上芒果干','休闲食品',4,160,'七天无理由','http://localhost:8080/ssm0246o/upload/1619149682886.jpg','上门取件','2022-11-02','1','12312312312','是','同意退货');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2022-11-02 11:20:46');

/*Table structure for table `xiaoshoutongji` */

DROP TABLE IF EXISTS `xiaoshoutongji`;

CREATE TABLE `xiaoshoutongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `zongjine` int(11) DEFAULT NULL COMMENT '总金额',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619149504984 DEFAULT CHARSET=utf8 COMMENT='销售统计';

/*Data for the table `xiaoshoutongji` */

insert  into `xiaoshoutongji`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`guige`,`shuliang`,`jiage`,`zongjine`,`goumairiqi`,`beizhu`) values (61,'2022-11-02 11:20:46','商品名称1','商品分类1','品牌1','规格1',1,1,1,'2022-11-02','备注1');
insert  into `xiaoshoutongji`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`guige`,`shuliang`,`jiage`,`zongjine`,`goumairiqi`,`beizhu`) values (62,'2022-11-02 11:20:46','商品名称2','商品分类2','品牌2','规格2',2,2,4,'2021-04-26','备注2');
insert  into `xiaoshoutongji`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`guige`,`shuliang`,`jiage`,`zongjine`,`goumairiqi`,`beizhu`) values (63,'2022-11-02 11:20:46','商品名称3','商品分类3','品牌3','规格3',3,3,3,'2022-11-02','备注3');
insert  into `xiaoshoutongji`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`guige`,`shuliang`,`jiage`,`zongjine`,`goumairiqi`,`beizhu`) values (64,'2022-11-02 11:20:46','商品名称4','商品分类4','品牌4','规格4',4,4,4,'2022-11-02','备注4');
insert  into `xiaoshoutongji`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`guige`,`shuliang`,`jiage`,`zongjine`,`goumairiqi`,`beizhu`) values (65,'2022-11-02 11:20:46','商品名称5','商品分类5','品牌5','规格5',5,5,5,'2022-11-02','备注5');
insert  into `xiaoshoutongji`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`guige`,`shuliang`,`jiage`,`zongjine`,`goumairiqi`,`beizhu`) values (66,'2022-11-02 11:20:46','商品名称6','商品分类6','品牌6','规格6',6,6,6,'2022-11-02','备注6');
insert  into `xiaoshoutongji`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`guige`,`shuliang`,`jiage`,`zongjine`,`goumairiqi`,`beizhu`) values (1619149504983,'2022-11-02 11:45:04','楼上芒果干','休闲食品','楼上','454g',5,40,200,'2022-11-02','销售');

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
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1619149087929 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`sfsh`,`shhf`,`money`) values (11,'2022-11-02 11:20:46','用户1','123456','姓名1','http://localhost:8080/ssm0246o/upload/yonghu_touxiang1.jpg','男','13823888881','是','',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`sfsh`,`shhf`,`money`) values (12,'2022-11-02 11:20:46','用户2','123456','姓名2','http://localhost:8080/ssm0246o/upload/yonghu_touxiang2.jpg','男','13823888882','是','',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`sfsh`,`shhf`,`money`) values (13,'2022-11-02 11:20:46','用户3','123456','姓名3','http://localhost:8080/ssm0246o/upload/yonghu_touxiang3.jpg','男','13823888883','是','',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`sfsh`,`shhf`,`money`) values (14,'2022-11-02 11:20:46','用户4','123456','姓名4','http://localhost:8080/ssm0246o/upload/yonghu_touxiang4.jpg','男','13823888884','是','',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`sfsh`,`shhf`,`money`) values (15,'2022-11-02 11:20:46','用户5','123456','姓名5','http://localhost:8080/ssm0246o/upload/yonghu_touxiang5.jpg','男','13823888885','是','',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`sfsh`,`shhf`,`money`) values (16,'2022-11-02 11:20:46','用户6','123456','姓名6','http://localhost:8080/ssm0246o/upload/yonghu_touxiang6.jpg','男','13823888886','是','',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`sfsh`,`shhf`,`money`) values (1619149087928,'2022-11-02 11:38:07','1','11','陈一','http://localhost:8080/ssm0246o/upload/1619149110886.jpg','女','12312312312','是',NULL,1562);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
