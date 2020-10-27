/*
Navicat MySQL Data Transfer

Source Server         : centos
Source Server Version : 50726
Source Host           : 47.107.174.92:3306
Source Database       : vueblog

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-10-27 15:34:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for m_blog
-- ----------------------------
DROP TABLE IF EXISTS `m_blog`;
CREATE TABLE `m_blog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` longtext,
  `created` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of m_blog
-- ----------------------------
INSERT INTO `m_blog` VALUES ('6', '1', '标题测试1231231', 'description摘要1231231231', 'content -0009990123', '2020-08-08 15:07:08', '0');
INSERT INTO `m_blog` VALUES ('7', '1', '标题测试1231231', 'description摘要1231231231', 'content -0009990123', '2020-08-08 15:07:48', '0');
INSERT INTO `m_blog` VALUES ('8', '1', '标题测试1231231', 'description摘要1231231231', 'content -0009990123', '2020-08-08 15:12:59', '0');
INSERT INTO `m_blog` VALUES ('9', '1', '标题测试1231231', 'description摘要1231231231', 'content -0009990123', '2020-08-08 15:19:25', '0');
INSERT INTO `m_blog` VALUES ('11', '1', '标题测试1231231', 'description摘要1231231231', 'content -0009990123', '2020-08-08 15:34:55', '0');
INSERT INTO `m_blog` VALUES ('12', '1', '强123123', '测试一下', '你啊阿斯顿\n委屈委屈\n 请问qw额我\n 恶趣味请问qw额q为\nqw \n 请问qwe\n![图片.png](1)\n我去恶趣味请问\nqweqwe ', '2020-08-08 23:53:45', '0');
INSERT INTO `m_blog` VALUES ('13', '1', '测试ONE', '你还啊驱蚊器额外', '测试美女是存在哪里~\n大王的委屈委屈我[阿瓦达](baidu.com)```language\n\n```\npublic static void main \n();\n```\n\n\n![1.jpg](1)\n', '2020-08-09 00:00:31', '0');
INSERT INTO `m_blog` VALUES ('14', '1', '测试123', '你好JAVA', 'qweqweqweqwe\n![](http://picture.gsyj.xyz/uploads/thumb/2a7e990e1045aa892710e876307ad6f4@2x.jpeg)', '2020-08-09 16:49:47', '0');
INSERT INTO `m_blog` VALUES ('15', '1', '12请问', '12请问', '### 请问嘻嘻嘻', '2020-10-20 16:38:29', '0');
INSERT INTO `m_blog` VALUES ('16', '1', 'qweqweqw', '123123123', 'qweqweqweqw123123', '2020-10-20 19:03:52', '0');
INSERT INTO `m_blog` VALUES ('17', '1', 'tuty', 'tyutyu', 'tyutyut', '2020-10-22 11:46:07', '0');
INSERT INTO `m_blog` VALUES ('18', '1', 'tyutyu', 'tyutyut', 'utyutyuty', '2020-10-22 11:46:22', '0');
INSERT INTO `m_blog` VALUES ('19', '1', 'uyuyu', 'uyuyuy', '### yuyuyuyuyu', '2020-10-22 11:50:44', '0');
INSERT INTO `m_blog` VALUES ('20', '2', 'qiang6666', 'qiang6666', '# 你好世界\n## 真好:\n\n```java\npublic static void main()\n{\n System.out.pringln(\"hello,world\");\n}\n\n```\n\n![QBlog.png](1)', '2020-10-22 14:58:15', '0');
INSERT INTO `m_blog` VALUES ('21', '1', '关于AJAX', 'AJAX = Asynchronous JavaScript and XML（异步的 JavaScript 和 XML）。\nAJAX 不是新的编程语言，而是一种使用现有标准的新方法。\nAJAX 最大的优点是在不重新加载整个页面的情况下，可以与服务器交换数据并更新部分网页内容。\nAJAX 不需要任何浏览器插件，但需要用户允许JavaScript在浏览器上执行。', '::: hljs-center\n\n# AJAX\n\n:::\n### 模拟ajax提交信息\n#### 用iframe标签\n```html\n<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n    <meta charset=\"UTF-8\">\n    <title>text ajax</title>\n</head>\n<body>\n<script type=\"text/javascript\">\n    function load(){\n        var targetUrl=document.getElementById(\"url\").value;\n        console.log(targetUrl);\n        document.getElementById(\"ifPosition\").src=targetUrl;\n    }\n</script>\n<div>\n    <p>输入网址</p>\n    <p>\n        <input type=\"text\" id=\"url\" value=\"baidu.com\"/>\n        <input type=\"button\" value=\"提交\" onclick=\"load()\"/>\n    </p>\n</div>\n<div>\n    <h3>页面加载</h3>\n    <iframe style=\"width: 100%;height: 500px\" id=\"ifPosition\">\n	</iframe>\n</div>\n</body>\n</html>\n\n```\n\n###使用Jquery封装的ajax\n\n\n\n```html\n<body>\n    <form action=\"\" id=\"f1\">\n        <p><input type=\"text\" name=\"username\"></p>\n        <p><input type=\"text\" name=\"password\"></p>\n        <button type=\"button\">提交</button>\n    </form>\n</body>\n<script src=\'https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js\'></script>\n<script>\n    window.onload = (() => {\n      document.querySelector(\"button\").addEventListener(\"click\", (ele) => {\n            $.ajax({\n                url: \"http://127.0.0.1:8000/\",\n                type: \"post\",\n                dataType: \'JSON\',\n                data:$(\"#f1\").serialize(),\n                success: (data) => {\n                    console.log(data);\n\n                },\n                error:()=>{\n                    console.log(\"失败\");\n                }\n            })\n        })\n    })\n</script>\n```', '2020-10-23 22:08:38', '0');
INSERT INTO `m_blog` VALUES ('22', '1', '关于缓存穿透', '缓存技术可以用来减轻数据库的压力，提升访问效率。目前在企业项目中对缓存也是越来越重视。但是缓存不是说随随便便加入项目就可以了。将缓存整合到项目中，这才是第一步。而缓存带来的穿透问题，进而导致的雪蹦问题都是我们迫切需要解决的问题。\n来源地址：https://www.php.cn/redis/423813.html', '# 缓存穿透的原理\n![原理](https://img.php.cn/upload/image/752/127/743/1561197106310662.png)\n\n1.先从缓存中获取数据，如果能取到，则直接返回数据给用户，这样来减少数据库的压力。\n\n2.如果缓存中没有数据，就会访问数据库。\n这个时候就会存在一个问题，\n\n![p1](https://img.php.cn/upload/image/744/702/235/1561197120587592.png)\n\n\n缓存就像是数据库的一道防火墙，将请求比较频繁的数据放到缓存中，从而减轻数据库的压力。 但是如果有人恶意攻击，那就很轻松的穿透你的缓存，将所有的压力都给数据库。比如上图，你缓存的key都是正整数，但是我偏偏使用负数作为key访问你的缓存，这样就会导致穿透缓存，将压力直接给数据库。\n# 缓存穿透的原因\n\n缓存穿透的问题，肯定是再大并发情况下。依此为前提，我们分析缓存穿透的原因如下：\n\n1、恶意攻击，猜测你的key命名方式，然后估计使用一个你缓存中不会有的key进行访问。\n\n2、第一次数据访问，这时缓存中还没有数据，则并发场景下，所有的请求都会压到数据库。\n\n3、数据库的数据也是空，这样即使访问了数据库，也是获取不到数据，那么缓存中肯定也没有对应的数据。这样也会导致穿透。\n# 解决方案\n![p2](https://img.php.cn/upload/image/141/253/523/1561197128410174.png)\n\n\n1、再web服务器启动时，提前将有可能被频繁并发访问的数据写入缓存。—这样就规避大量的请求在第3步出现排队阻塞。\n\n2、规范key的命名，并且统一缓存查询和写入的入口。这样，在入口处，对key的规范进行检测。–这样保存恶意的key被拦截。\n\n3、Synchronized双重检测机制，这时我们就需要使用同步（Synchronized）机制，在同步代码块前查询一下缓存是否存在对应的key，然后同步代码块里面再次查询缓存里是否有要查询的key。 这样“双重检测”的目的，还是避免并发场景下导致的没有意义的数据库的访问（也是一种严格避免穿透的方案）。\n这一步会导致排队，但是第一步中我们说过，为了避免大量的排队，可以提前将可以预知的大量请求提前写入缓存。\n\n4、不管数据库中是否有数据，都在缓存中保存对应的key，值为空就行。–这样是为了避免数据库中没有这个数据，导致的平凡穿透缓存对数据库进行访问。\n\n5、第4步中的空值如果太多，也会导致内存耗尽。导致不必要的内存消耗。这样就要定期的清理空值的key。避免内存被恶意占满。导致正常的功能不能缓存数据。\n', '2020-10-26 11:48:49', '0');
INSERT INTO `m_blog` VALUES ('23', '1', 'Redis缓存击穿', '查询一个数据库中不存在的数据，如商品详情，每次都会访问DB,如果有人恶意破坏，很可能直接对DB造成过大的压力。', '# 缓存击穿\n\n当通过某个key去查询数据的时候，如果对应的数据都不存在，就将这个key对应的value的值设置一个默认值，如\'null\',并设置缓存的失效时间，这时在缓存失效前，所有通过key来访问都被缓存挡住了。\n\n# 缓存失效\n\n## 描述\n\n在高并发的环境下，如果此时key对应的缓存失效，此时有多个进程就会去同时去查询DB，然后再去同时设置缓存。这个时候如果这个key是系统中的热点key或者同时失效的数量比较多时，DB访问量会瞬间增大，造成过大的压力。后面key对应的数据在DB中存在时，缓存失效后，通过这个key在去访问数据，就能拿到新的value。\n\n## 解决\n\n将系统中key的缓存失效时间均匀错开，防止同一时间点有大量的key对应的缓存失效。\n重新设计缓存的使用方式，当我们通过key去查询数据时，首先查询缓存，如果此时缓存中查询不到，就通过分布式锁进行加锁，取得锁的进程查询DB并设置缓存；然后等解锁后返回缓存数据或者再次查询DB.\n\n## 热点key\n\n## 描述\n缓存中的某些Key(可能对应用与某个促销商品)对应的value存储在集群中一台机器，使得所有流量涌向同一机器，成为系统的瓶颈，该问题的挑战在于它无法通过增加机器容量来解决。\n## 解决\n客户端热点key缓存：将热点key对应value并缓存在客户端本地，并且设置一个失效时间。对于每次读请求，将首先检查key是否存在于本地缓存中，如果存在则直接返回，如果不存在再去访问分布式缓存的机器。\n将热点key分散为多个子key，然后存储到缓存集群的不同机器上，这些子key对应的value都和热点key是一样的。当通过热点key去查询数据时，通过某种hash算法随机选择一个子key，然后再去访问缓存机器，将热点分散到了多个子key上。\n', '2020-10-26 17:30:46', '0');

-- ----------------------------
-- Table structure for m_user
-- ----------------------------
DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `status` int(5) NOT NULL,
  `created` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `UK_USERNAME` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO `m_user` VALUES ('1', 'qiang', 'http://picture.gsyj.xyz/uploads/thumb/342ee01b48bdc0ba35d4b4e3615ca517@2x.jpeg', '970561372@qq.com', 'fcdb06a72af0516502e5fdccc9181ee0', '0', '2020-08-08 01:31:01', null);
INSERT INTO `m_user` VALUES ('2', 'qiang666', 'http://picture.gsyj.xyz/uploads/thumb/342ee01b48bdc0ba35d4b4e3615ca517@2x.jpeg', '123123', 'de10c11acb9c3cf9f58d6dc2a0ced59a', '0', '2020-08-09 17:00:43', null);
