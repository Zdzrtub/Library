/*
MySQL Backup
Source Server Version: 5.7.26
Source Database: tsg
Date: 2022/12/19 08:51:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `denglu`
-- ----------------------------
DROP TABLE IF EXISTS `denglu`;
CREATE TABLE `denglu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `名称` varchar(255) DEFAULT NULL,
  `账号` varchar(11) DEFAULT NULL,
  `密码` varchar(25) DEFAULT NULL,
  `邮箱` varchar(255) DEFAULT NULL,
  `身份证` varchar(18) DEFAULT NULL,
  `人生格言` text,
  `头像` varchar(255) DEFAULT NULL,
  `年龄` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `guanli`
-- ----------------------------
DROP TABLE IF EXISTS `guanli`;
CREATE TABLE `guanli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `密码` varchar(255) DEFAULT NULL,
  `账号` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `jieshu`
-- ----------------------------
DROP TABLE IF EXISTS `jieshu`;
CREATE TABLE `jieshu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `图书名称` varchar(255) DEFAULT NULL,
  `身份证` varchar(255) DEFAULT NULL,
  `电话号` varchar(255) DEFAULT NULL,
  `状态` varchar(255) DEFAULT NULL,
  `时间` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `rxtushu`
-- ----------------------------
DROP TABLE IF EXISTS `rxtushu`;
CREATE TABLE `rxtushu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `图书名称` varchar(255) DEFAULT NULL,
  `作者` varchar(255) DEFAULT NULL,
  `发布时间` varchar(255) DEFAULT NULL,
  `图书封面` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sxtushu`
-- ----------------------------
DROP TABLE IF EXISTS `sxtushu`;
CREATE TABLE `sxtushu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `图书名称` varchar(255) DEFAULT NULL,
  `作者` varchar(255) DEFAULT NULL,
  `发布时间` varchar(255) DEFAULT NULL,
  `图书封面` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tushu`
-- ----------------------------
DROP TABLE IF EXISTS `tushu`;
CREATE TABLE `tushu` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `图书名称` varchar(255) DEFAULT NULL,
  `作者` varchar(255) DEFAULT NULL,
  `发布时间` varchar(255) DEFAULT NULL,
  `图书封面` varchar(255) DEFAULT NULL,
  `第一段` text,
  `第二段` text,
  `第三段` text,
  `第四段` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `xw`
-- ----------------------------
DROP TABLE IF EXISTS `xw`;
CREATE TABLE `xw` (
  `numb` int(11) NOT NULL AUTO_INCREMENT,
  `新闻名` varchar(255) DEFAULT NULL,
  `新闻内容第一段` text,
  `新闻内容第二段` text,
  `新闻内容第三段` text,
  `新闻内容第四段` text,
  `发布时间` varchar(255) DEFAULT NULL,
  `链接` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`numb`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `denglu` VALUES ('1','小威','15218085573','15218085573','1780066854@','441422200202025875','不积跬步无以至千里','小威.png','18'), ('14','小明','15016241158','zxcvbnm123','1780066854@163.com','441422200202024811','加油!!','小明.png','23');
INSERT INTO `guanli` VALUES ('1','zxcvbnm123','123456789');
INSERT INTO `jieshu` VALUES ('75','宇宙超度指南','441422200202024811','15016241158','已归还','2022-12-25'), ('74','红楼梦','441422200202025875','15218085573','已归还','2022-12-25'), ('71','语言的魅力','441422200202025875','15218085573','借书','2022-12-18'), ('70','万历十五年','441422200202025875','15218085573','借书','2022-12-11'), ('69','数学传奇','441422200202025875','15218085573','已归还','2022-12-23'), ('68','红楼梦','441422200202025875','15218085573','已归还','2022-12-21'), ('67',' 互联网与民主','441422200202025875','15218085573','已归还','2022-12-13');
INSERT INTO `rxtushu` VALUES ('1','红楼梦','曹雪芹','1791','hlm.png'), ('2','皮囊','蔡崇达','2014','pn.png'), ('3','万历十五年','黄仁宇','1981','wlswn.png'), ('4','月亮与六便士','威廉·萨默塞特·毛姆','1919','ylylbs.png'), ('5','追风筝的人','卡勒德·胡赛尼','2003','zfzdr.png');
INSERT INTO `sxtushu` VALUES ('1','爪哇史颂','普腊班扎','2022','zwss.png'), ('2','数学传奇','蔡天新','2022','sxcq.png'), ('3','语言的魅力','汪惠迪','2022','yydml.png'), ('4','物权法通义','郭明瑞','2022','wqfty.png'), ('5','互联网与民主','史蒂芬·科尔曼','2022','hlwymz.png');
INSERT INTO `tushu` VALUES ('1','红楼梦','曹雪芹','1791','hlm.png','《红楼梦》是一部百科全书式的长篇小说。以宝黛爱情悲剧为主线，以四大家族的荣辱兴衰为背景，描绘出18世纪中国封建社会的方方面面，以及封建专制下新兴资本主义民主思想的萌动。结构宏大、情节委婉、细节精致，人物形象栩栩如生，声口毕现，堪称中国古代小说中的经 典。','由红楼梦研究所校注、人民文学出版社出版的《红楼梦》以庚辰（1760）本《脂砚斋重评石头记》为底本，以甲戌（1754）本、已卯（1759）本、蒙古王府本、戚蓼生序本、舒元炜序本、郑振铎藏本、红楼梦稿本、列宁格勒藏本（俄藏本）、程甲本、程乙本等众多版本为参校本，是一个博采众长、非常适合大众阅读的本子；同时，对底本的重要修改，皆出校记，读者可因以了解《红楼梦》的不同版本状况。','红学所的校注本已印行二十五年，其间1994年曾做过一次修订，又十几年过去，2008年推出修订第三版，体现了新的校注成果和科研成果。.',NULL), ('2','皮囊','蔡崇达','2014','pn.png','一部有着小说阅读质感的散文集，也是一本“认心又认人”的书。','作者蔡崇达，本着对故乡亲人的情感，用一种客观、细致、冷静的方式，讲述了一系列刻在骨肉间故事。一个福建渔业小镇上的风土人情和时代变迁，在这些温情而又残酷的故事中一一体现。用《皮囊》这个具有指向本质意味的书名，来 表达作者对父母、家乡的缅怀，对朋友命运的关切，同时也回答那些我们始终要回答的问题。\r\n\r\n作者蔡崇达，本着对故乡亲人的情感，用一种客观、细致、冷静的方式，讲述了一系列刻在骨肉间故事。一个福建渔业小镇上的风土人情和时代变迁，在这些温情而又残酷的故事中一一体现。用《皮囊》这个具有指向本质意味的书名，来 表达作者对父母、家乡的缅怀，对朋友命运的关切，同时也回答那些我们始终要回答的问题。\r\n\r\n作者蔡崇达，本着对故乡亲人的情感，用一种客观、细致、冷静的方式，讲述了一系列刻在骨肉间故事。一个福建渔业小镇上的风土人情和时代变迁，在这些温情而又残酷的故事中一一体现。用《皮囊》这个具有指向本质意味的书名，来 表达作者对父母、家乡的缅怀，对朋友命运的关切，同时也回答那些我们始终要回答的问题。','书中收录有《皮囊》《母亲的房子》《残疾》《重症病房里的圣诞节》《我的神明朋友》《张美丽》《阿小和阿小》《天才文展》《厚朴》《海是藏不住的》《愿每个城市都不被阉割》《我们始终要回答的问题》《回家》《火车伊要开往叨位》等14篇作品。\r\n\r\n书中收录有《皮囊》《母亲的房子》《残疾》《重症病房里的圣诞节》《我的神明朋友》《张美丽》《阿小和阿小》《天才文展》《厚朴》《海是藏不住的》《愿每个城市都不被阉割》《我们始终要回答的问题》《回家》《火车伊要开往叨位》等14篇作品。\r\n\r\n书中收录有《皮囊》《母亲的房子》《残疾》《重症病房里的圣诞节》《我的神明朋友》《张美丽》《阿小和阿小》《天才文展》《厚朴》《海是藏不住的》《愿每个城市都不被阉割》《我们始终要回答的问题》《回家》《火车伊要开往叨位》等14篇作品。\r\n\r\n书中收录有《皮囊》《母亲的房子》《残疾》《重症病房里的圣诞节》《我的神明朋友》《张美丽》《阿小和阿小》《天才文展》《厚朴》《海是藏不住的》《愿每个城市都不被阉割》《我们始终要回答的问题》《回家》《火车伊要开往叨位》等14篇作品。','其中《皮囊》一文中的阿太，一位99岁的老太太，没文化，是个神婆。她却教给作者具有启示力量的生活态度：“肉体是拿来用的，不是拿来伺候的。”\r\n\r\n《母亲的房子》里，母亲想要建一座房子，...'), ('3','万历十五年','黄仁宇','1981','wlswn.png','万历十五年，亦即公元1587年，在西欧历史上为西班牙舰队全部出动征英的前一年；而在中国，这平平淡淡的一年中，发生了若干为历史学家所易于忽视的事件。这些事件，表面看来虽似末端小节，但实质上却是以前发生大事的症结，也是将在以后掀起波澜的机缘。在历史学家黄仁宇的眼中，其间的关系因果，恰为历史的重点，而我们的大历史之旅，也自此开始……','《万历十五年》是黄仁宇的成名之作，也是他的代表作之一。这本书融会了他数十年人生经历与治学体会，首次以“大历史观”分析明代社会之症结，观察现代中国之来路，给人启发良多。英文原本推出后，被美国多所大学采用为教科书，并两次获得美国书卷奖历史类好书的提名。',NULL,NULL), ('4','月亮与六便士','威廉·萨默塞特·毛姆','1919','ylylbs.png','“满地都是六便士，他却抬头看见了月亮。”','银行家查尔斯，人到中年，事业有成，为了追求内心隐秘的绘画梦想，突然抛妻别子，弃家出走。他深知：人的每一种身份都是一种自我绑架，唯有失去是通向自由之途。','在异国他乡，他贫病交加，对梦想却愈发坚定执着。他说：我必须画画，就像溺水的人必须挣扎。\r\n\r\n在经历种种离奇遭遇后，他来到南太平洋的一座孤岛，同当地一位姑娘结婚生子，成功创作出一系列惊世杰作。就在此时，他被绝症和双目失明击倒，临死之前，他做出了让所有人震惊的决定……','人世漫长得转瞬即逝，有人见尘埃，有人见星辰。查尔斯就是那个终其一生在追逐星辰的人。'), ('5','追风筝的人','卡勒德·胡赛尼','2003','zfzdr.png','12岁的阿富汗富家少爷阿米尔与仆人哈桑情同手足。然而，在一场风筝比赛后，发生了一件悲惨不堪的事，阿米尔为自己的懦弱感到自责和痛苦，逼走了哈桑，不久，自己也跟随父亲逃往美国。','成年后的阿米尔始终无法原谅自己当年对哈桑的背叛。为了赎罪，阿米尔再度踏上暌违二十多年的故乡，希望能为不幸的好友尽最后一点心力，却发现一个惊天谎言，儿时的噩梦再度重演，阿米尔该如何抉择？','故事如此残忍而又美丽，作者以温暖细腻的笔法勾勒人性的本质与救赎，读来令人荡气回肠。',NULL), ('6','爪哇史颂','普腊班扎','2022','zwss.png','14世纪马来世界的一部著名的经典诗史\r\n\r\n研究东南亚历史的一部重要文本\r\n\r\n2103年入选联合国教科文组织《世界记忆遗产名录》','在马来群岛历史的相关研究中，《爪哇史颂》占有独特的地位。这部作品产生于爪哇，是对14—15世纪时统治着爪哇及马来群岛的大部分地区的满者伯夷帝国最伟大的国王哈奄·武禄（公元1350年—1389年）的诗颂。《爪哇史颂》与《马来纪年》一道，为我们研究这个时代的历史提供了重要信息。《爪哇史颂》最早版本存放于印度尼西亚龙目岛马塔兰皇宫，书写于棕榈叶上。1894年荷兰军队入侵时被带回荷兰，由荷兰学者J.L.A.布兰德斯翻译研究。最初存放于莱顿大学图书馆，后1973年朱莉安娜女王访问印度尼西亚时归还印尼，现存于印度尼西亚国家图书馆。2013年，《爪哇史颂》入选联合国教科文组织《世界记忆遗产名录》。','《爪哇史颂》是印度尼西亚满者伯夷王朝的一位宫廷诗...',NULL), ('7','数学传奇','蔡天新','2022','sxcq.png','本书记载了数学史上各个时期的代表性人物，他们的内心世界、成长经历和成材环境，他们的贡献、思想、个性和生活观念。这些伟大的数学家，有的在人文领域也有杰出贡献，如毕达哥拉斯、海亚姆、笛卡尔、帕斯卡尔、莱布尼茨、庞加莱，有的则个人经历富有传奇色彩，如费尔马、牛顿、欧拉、高斯、希尔伯特、拉曼纽扬、爱多士。此外，本书还就数学与文学、诗歌以及政治的关系，做了深入地探讨。','此次修订，添加了六篇新文章，它们是甲辑的《阿基米德：数学之神》和《冯•诺伊曼：因为他，世界更加美好》，乙辑的《秦九韶，道古桥和“数书九章”》和《罗庚与省身：两位同时代的数学大师》，丙辑《忆潘师》和《我的一生可以看作一个圆——西子湖畔访杨振宁》。同时，也对旧作进行了全面润色，尤以《高斯：离群索居的王子》和《数学家与政治家》等篇充实得最多。',NULL,NULL), ('8','语言的魅力','汪惠迪','2022','yydml.png','本书收录作者2010年至今撰写的71篇文章，分为“语言生活”“字词天地”“华语华文”“书评”“人物评介”五个部分。文章多以全球华语为视角，以国家通用语言文字为规范标准，通过横向比较或多边互动，一事一议或一词一议，评述中国大陆、台湾地区、港澳特区以及新加坡、马来西亚等华语区现实语文生活和虚拟语文生活中异彩纷呈的语用现象，以提高人们使用现代汉语的水平，促进国家通用语言文字的规范化。同时，也为中文国际教育的推广及新时代社会语言学的建设提供了若干语文生活中接地气的鲜活事例。',NULL,NULL,NULL), ('9','物权法通义','郭明瑞','2022','wqfty.png','《物权法通义》包括绪论和本论。绪论阐述物权法的概念和特点、物权法与民法总则的关系、物权法与债权法的关系、物权法与婚姻家庭法的关系。本论以物权法的立法体例为线索，按照物权法的编章节，根据物权法的理论体系、制度原理、最新的研究成果、研究资料和司法实务经验，阐述物权法原理，对物权法条文从法解释学的角度逐条闸明，以求准确理解物权法，正确适用物权法。','《物权法通义》既可作为法律专业学习物权法的教学用书，也可作为研习和适用物权法的参考书，还可作为普通人维护自身物权权益的指导书。',NULL,NULL), ('10','互联网与民主','史蒂芬·科尔曼','2022','hlwymz.png','自20世纪90年代初以来，互联网一直被学术界以革命性的方式接触——作为一种具有革命性动态的媒介，它引发了重大的技术变革，并带来了政治和社会变化。史蒂芬•科尔曼的书提出了一个至关重要的问题：互联网能加强民主吗？科尔曼以两个让民众认为代议制民主有意义的问题为引，即民众感受到其在民主中的地位，以及协调的问题，指出以互联网为代表的数字传播技术不会缔造或取代政治现实，而只能为创造一个比目前所拥有的更为丰富的民主而努力。作者直面互联网的无处不在与西方民主的逻辑对立，研究了在互联网出现之前的远距离通信技术——电视，是如何被作为促进民主的媒介看待的，分析了在已巩固的民主制度下，传统的政治沟通做法在互联网时代所发生的种种改变，并在认同民主的某些特征有可能在将来继续存在的同时，呼吁更加不拘一格且充满想象力的思考出现。最后，作者总结了民主能力建设的四个方面，即公民需要什么样的能力来成为自主、广识、善思和高效的社会行动者，以推动民主向更加包容、文明和审慎的方面发展。',NULL,NULL,NULL), ('17','恐龙研究指南','达伦·奈什','2022','klyjzn.png','恐龙是曾经存在过的最壮观的动物群之一。其中许多都是非常奇异的生物，至今仍吸引着我们，激发我们的想象力：超级掠食者暴龙、背具骨板的剑龙、长颈长尾的梁龙和长有羽毛的小盗龙。','本书主要讨论恐龙是如何兴起和消失的，有哪些演化分支，如何生活，其中一些类群又是如何演化出羽毛并最终演化成鸟类一直存活到今天的。作者主要从演化史、解剖学、生态学、生理学等角度来探讨这些问题。','',''), ('18','破镜',' 呼延云','2022','破镜.png','夏夜，一场“恐怖座谭”上，在酒吧驻唱的歌女小青讲述了一个“镜子杀人”的故事：一位妻子和闺蜜合谋杀害了丈夫，后来这位丈夫的鬼魂一次又一次破镜而出，最终报仇雪恨……','在场的樊一帆和杨薇认为小青是在影射她俩，一番争吵之后，小青离去。杨薇实在讲不出故事，便提出换一个方式代替，她当着众人给自己独居的屋子打了个电话，谁知在本该空无一人的房间里，电话却被接听了……','杨薇急忙回家查看，众人紧随其后，但当他们冲进房间时，杨薇已经被杀，犯罪现场和小青讲述的故事中一模一样：也是利刃插心、血流成河，地板上也残留着一地破碎的镜片……',''), ('19','胖子美食家',' 索文','2022','胖子美食家.png','本书为网易“人间theLivings”栏目作者索文的美食故事结集。他是个湖南人，中年吃货，南人北胃。他觉得，在过往的岁月中，每一样味道都值得回味。面食不像米饭与炒菜一样汇集成一日三餐，因不常吃，而更显珍贵，他每吃到一样，都觉得是一种缘分。','烧麦、糖盒子、馄饨、疙瘩汤……一些清淡，一些浓厚，互为补充。味觉里寄托的情感，就像他对于食物的态度，米饭如常，面食如稠。食物的故事里不仅只有美味，更有牵挂的人与情。','',''), ('20','着魔','赫尔曼·布洛赫','2022','着魔.png','《着魔》是曾获诺贝尔文学奖提名、被誉为“中欧最伟大的四位小说家”之一的奥地利作家赫尔曼·布洛赫的长篇小说代表作。故事发生在“一战”后十年，讲述了一个流浪汉来到一个小山村后，用他致命的、有害的思想污染了整个村庄，导致全体村民陷入着魔状态，继而引发了一系列邪恶事件……','《着魔》对群众的盲从心理进行了深刻尖锐的剖析，并对欧洲的文化弊端进行了省思，被认为是关于纳粹崛起的最经典的作品之一，可与托马斯·曼的《魔山》相媲美。迄今为止已经被翻译为英语、法语、日语、匈牙利语、捷克语和波兰语等多种语言，本次是首次翻译为中文。','',''), ('21','她们和她们','安小庆 / 林松果 / 李斐然','2022','她们和她们.png','《人物》杂志女性报道集\r\n\r\n12个真实的女性故事 （9篇深度人物报道+3篇作者独家自述）\r\n\r\n讲述这个时代女性的命运和心灵\r\n\r\n从乡村到都市，从不惑到耄耋\r\n\r\n她们遭遇困境，她们奋力挣扎，她们经历苦难而保有天真\r\n\r\n她们的故事是永恒的故事，也是人性的故事\r\n\r\n从无声到有声，从陌生到相逢，从一个人抵达另一个人\r\n\r\n这些散发着光与热的文字， 让共鸣发生，让理解实现','这当然是一部女性之书。女性写作者，在书写女性故事的同时，也勾勒了自我生命的轮廓。第一次，《人物》杂志把作者推到台前，请她们袒露自己的人生。我们不想再让她们以客观的名义隐于背后。我们见过她们生命的火光，如何照亮了她们的采访和写作。她们以自己为武器，去撬开主人公生活的外壳，寻找女性精神底层的共振，去完成一个故事。','——张寒（《人物》杂志主编）','女人的故事，属于女性的生命的篇章。娓娓道来中的张力，平实默契间的低吟。女性笔下的女性，你的素描，我的心影。沉稳从容的文字，如细密的网打捞起平凡、疼与欣悦的时刻。'), ('22','白门五甲1',' 戍阳','2022','白门五甲1.png','国漫之光，十年一剑，首次出版。改变读者对国内彩漫主流市场认知的标杆性黑白漫作品。\r\n\r\n◎ 腾讯动漫唯一独家签约黑白漫作品，3亿点击量、10万收藏、2.5万读者热评、9.9分高口碑推荐。\r\n\r\n◎ 屡次获奖、走出国门。《白门五甲》曾于2019年收录进《从水墨中来》展览合集中，并于同年在日本神户、大阪、奈良三地参展。',' 极具温度与国韵的快意江湖之佳作。热血群像、人物塑造鲜活、作画细腻流畅、不俗的主题，深刻的立意……是读者无悔追十年，千呼万唤求出版的宝藏作品。','《白门五甲》以西游记神州大陆为背景，其固有百年一现的“神宝”，传说得到它的人就能实现一个愿望。这次神宝将出现于车迟国，趋之若鹜的江湖刺客与各国使节蠢蠢欲动，齐聚车迟国皇都。主角未羊本是负责守卫神宝安全的十二暗军护卫之一，其也对神宝虎视眈眈，由“赤刀客”引起的“神宝争夺战”一触即发。由此一场儿女情长的快意江湖也拉开帷幕。本作出场人物众多、个性鲜明丰满，剧情荡气回肠，忽明忽暗的线索引人入胜，是近年来罕见的国风佳作。',''), ('23','为了活下去的思想','上野千鹤子','2022','为了活下去的思想.png','战争究竟有什么样的吸引力?\r\n\r\n女性能和男性一样成为士兵吗?\r\n\r\n女性主义所追求的平等是女性也要和男性一样参战吗?','9·11事件揭开了21世纪的帷幕，历经了史无前例的“战争与破坏的20世纪”后，我们又在新世纪目睹了如此不近情理的暴力。而在国家与暴力的新的结合之中，又增加了性别这一变量。我们不得不面对“男女共同参与暴力”这一难题。','为了活下去的思想》是日本女性主义理论第一人上野千鹤子，围绕国家、暴力、性别等议题进行思考的总结式作品。她从本世纪的 9·11 事件开始，追溯到上世纪的慰安妇诉讼以及之后爆发的海湾战争，在这些暴力事件中，思考性别这一不确定因素在国家和暴力体系的新构成中是如何发挥作用的。她发出了“逃出去，活下去！”的呼号，进一步确认与阐释了“女性主义是让弱者以弱者的姿态受到尊重的思想。”','本书是上野千鹤子继父权制与资本主义》之后又一女性主义力作。'), ('24','热夜之梦',' 乔治 R·R·马丁','2022','热夜之梦.png','19世纪，南北战争前夕，密西西比河上梭巡着所有行船人的梦想。无数蒸汽船在这条大动脉水道上竞相追逐，争夺金钱和荣誉，汽笛长鸣，白烟滚滚。','就在一场雪难几乎摧毁了阿布纳·马什船长的航船事业之际，他收到一位神秘人的来信，信中许诺的黄金和一艘可以创造历史的宏伟新船让马什船长难以抗拒。','前来寻求合作的约书亚·约克想穿越壮阔的密西西比河，希望马什可以助他一臂之力，唯一的要求就是尊重他的隐私，不怀疑他的决定，无论他的行为显得多么离奇、武断或反常。','尽管马什本能地觉察到这项提案中充满了危险的秘密，但他还是决定孤注一掷。他们建造了一艘完美符合马什船长全部梦想的汽船“热夜之梦”。直到新船首航，马什才意识到发生了什么。一路行来，“热夜之梦”号将密西西比搅成一条血河；而它自身，也渐渐变成一条血船。\r\n\r\n广阔的大河、骇人的传说、沸沸扬扬的废奴运动，无不笼罩在迷雾氤氲的血色月光中。而在这片血色中，诞生了人类伟大的情感：友谊与希望。'), ('27','宇宙超度指南','李诞','2022-12-8','宇宙超度指南.png','这是一本短篇故事集，讲述的是一个有关宇宙超度的故事。在书中拟定的世界里，人类以光年为单位穿梭宇宙，有些人活在自己像城市一样的飞船里，也有人活在各种奇怪的行星上，和当地的外星人一起。名叫空舟和澈丹的师徒，乘坐自己的小飞船，从一处到另一处，超度各式各样的死者，当然，要收一点点钱，这是他们在宇宙中经营的生意。他们的飞船，叫奈何船，他们的顾客，称他们为度魂僧。','','','');
INSERT INTO `xw` VALUES ('1','关于疫情防控','44645656565654564',NULL,NULL,NULL,'2022/10/10','xinwen1.php'), ('2','本馆开馆时间','256455656565333',NULL,NULL,NULL,'2022/10/18','xinwen2.php'), ('3','111111111','qweqweqweqweqweqwe',NULL,NULL,NULL,'2022/10/25','xinwen3.php'), ('4','22222','2222222',NULL,NULL,NULL,'2022/11/6','xinwen4.php'), ('5','333333','333333333',NULL,NULL,NULL,'2022/11/8','xinwen5.php'), ('6','4444444','444444444',NULL,NULL,NULL,'2022/11/8','xinwen6.php'), ('7','5555555555','555555555555',NULL,NULL,NULL,'2022/11/30','xinwen7.php'), ('8','关于本馆开发时间以及疫情期间本馆的防疫措施123123123132131','都不要来',NULL,NULL,NULL,'2022/12/8','xinwen8.php'), ('9','全城联动，让书回家——喜迎二十大 阅读助力抗疫','在党的二十大即将胜利召开之际，为了进一步鼓励深圳市民的阅读热情，满足疫情防控期间市民的精神文化需求，让市民无忧阅读，助力抗疫，全市实现统一服务的图书馆在10月1日—10月31日举办“全城联动，让书回家——喜迎二十大 阅读助力抗疫” 活动。活动期间，读者归还过期文献（含图书、期刊和音像制品），免逾期滞还费。','咨询电话：82841211，82841212',NULL,NULL,'2022/12/9',NULL), ('10','关于Z市图书馆恢复开放及国庆节开放时间和服务范围的通知','Z市图书馆10月1日起恢复正常开放。根据疫情防控要求，为避免现场人员聚集，场馆采取提前预约入馆方式，读者需在深圳图书馆微信服务号进行预约，到馆后使用手机扫描“场所码”，查验健康码、行程卡，凭24小时核酸检测阴性证明，体温检测正常后，持本人读者证进入场馆。','主馆舍一至六楼服务区同时在馆人数不超过2000人，少儿服务区同时在馆人数不超过200人，达到上限后将实施“出一进一”动态管理。在馆期间，请您全程规范佩戴口罩，与他人保持安全距离，做好个人防护，出馆时也需持证登记。我们将根据疫情防控形势动态调整措施并及时公布，感谢您对我们工作的配合和支持。','网上图书馆和自助图书馆24小时开放，祝各位读者节日快乐！','咨询电话：82841211、82841212、82841217、82841222（少儿区）','2022/12/9',NULL), ('11','关于Z市图书馆恢复开放的通知','Z市图书馆10月14日（周五）起恢复正常开放。根据疫情防控要求，为避免现场人员聚集，场馆采取提前预约入馆方式，读者需在深圳图书馆微信服务号进行预约，到馆后使用手机扫描“场所码”，查验健康码、行程卡，凭24小时核酸检测阴性证明，经体温检测正常后，持本人读者证进入场馆。来（返）深人员按“国务院客户端”的入深政策执行。','在馆期间，请您全程规范佩戴口罩，与他人保持安全距离，做好个人防护，感谢您对我们工作的配合和支持。','咨询电话：82841211、82841212',NULL,'2022/12/9',NULL), ('12','《光明日报》：第三届“中国儿童阅读发展论坛”召开，公共图书馆少儿服务取得长足发展','近日，由文化和旅游部公共服务司指导、国家图书馆主办、国家图书馆少年儿童馆承办的“中国儿童阅读发展论坛”在国家图书馆召开。论坛以“公共图书馆与儿童友好城市建设”为主题，多位图书馆界及高校专家学者围绕儿童优先与阅读生态构建等话题，着重探讨如何通过城市公共文化事业的优先规划、文化资源的优先配置，推动儿童优先原则融入儿童阅读领域。','国家图书馆馆长熊远明在主旨报告中介绍，我国公共图书馆少年儿童服务近十年来取得了长足的发展与进步，呈现出蓬勃发展的良好态势。2010年以来，全国各级公共图书馆少儿阅览室和独立建制少儿馆的数量显著增加。截至2020年底，我国独立建制少儿馆已经增加到146家，建成分馆1319家，各地公共图书馆普遍提供少儿阅览服务。通过总分馆建设，图书馆少年儿童服务覆盖人群和地域得到明显改善，特别是西部地区少年儿童服务得到明显改善。截至2020年底，我国东部地区少儿馆分馆达795家，中部地区和西部地区分别为301家和223家。截至2020年，我国少年儿童图书馆文献存藏总量近5748万册，较2010年增长了近1.7倍，当年购置的报刊总数约4.06万种，较2010年增长41.9%。文献提供类型更为多样化，除普通纸本图书外，视听文献、电子图书等类型也逐渐成为文献资源的重要组成部分。','熊远明介绍，“十四五”规划和《中国儿童发展纲要（2021—2030年）》颁布实施以来，中央和地方一系列关于保障少年儿童权益的举措陆续出台，我国少年儿童服务进入新的发展阶段。文化和旅游部印发的《“十四五”公共文化服务体系建设规划》和国家发展改革委等部门印发的《关于推进儿童友好城市建设的指导意见》针对儿童阅读与儿童权益保障提出了明确要求，将拓展儿童阅读空间、推动未成年人阅读，作为保障儿童权利，推动儿童友好城市建设的重要内容。未来，公共图书馆将在建设儿童友好城市，提高少年儿童的文化素养、促进少年儿童健康成长方面继续发挥积极作用。',NULL,'2022/12/9',NULL), ('13','《中国文化报(数字报)》：城市书房：阅读微光映照社会文明','建——“小而美”，城市现代公共文化服务“新配置”\r\n\r\n　　自2014年至今，“全民阅读”连续九次被写入政府工作报告，建设“书香中国”逐渐成为全民行动自觉。各地积极办活动、建设施，营造良好的阅读环境，其中成效极为显著的便是城市书房。\r\n\r\n　　作为一种新型公共文化空间，城市书房开进了大街小巷、商圈乃至景区，以其创意和个性，吸引人们驻足，在拓展阅读空间的同时，也体现着不同地域的文化特色，推动着公共文化服务高质量发展。\r\n\r\n　　2014年，为丰富公共文化服务供给，浙江温州建成全国首家城市书房，并首次实行24小时不打烊免费自助型阅读服务。城市书房的昼夜陪伴让城乡“人人享有”图书馆变成现实，促进了当地“15分钟文化圈”建设，更是制定出全国首个24小时自助图书馆地方标准《城市书房服务规范》，成为公共图书馆创新发挥效能的实践样本。截至2022年9月，温州已建成136家城市书房，每年开展读书沙龙、展览等各类活动500余场次，累计接待读者1506.28万人次。\r\n\r\n　　浙江宁波鄞州区探索出“图书馆+”新模式，破圈共建大大提升资源利用效率。鄞州区图书馆以“图书馆+社会组织”“图书馆+政府”“图书馆+社区”“图书馆+商业”等合作形式推出12家“堇”系列城市书房。其中，与鄞州区网络社会组织联合会合作共建的“鄞光溢彩·堇书房”颜值与功能双双在线，成为热门打卡点；与逸东酒店联合打造鄞州区首家文旅融合“图书馆+酒店”堇书吧颇受游客欢迎；在环球银泰城等商业街区布点智能借阅柜，提高服务效率。\r\n\r\n　　辽宁沈阳立足文化特色，在设计阶段就结合所属区域的生产生活风格，营造不同的文化氛围。有的书房依河而建，有的坐落在商业街，有的则建在文创小镇，让市民就近享受阅读乐趣。河南不少城市书房采用媒体集团与中小学联合建设模式，将校园阅读做出新特色，大大激发了学生的阅读热情，从小抓起，培养青少年爱读书、会读书、读好书的良好习惯。\r\n\r\n　　从图书馆、书店到城市书房，变化的是服务方式和阅读理念，不变的是文化服务的温度和深度。如今，城市书房的惠民底色更加鲜明，在一方小小天地间，阅读、艺术、文化、游览、休闲等功能有机相融，以文化综合体延伸阅读场景，融入百姓生活，展现出勃勃生机。\r\n\r\n　　用——转角就到，精神充电站惬意体验多\r\n\r\n　　一座城市书房，一座精神粮仓。很多地区的居民认为，美好生活的标配应该加一条：转角就到的阅读空间。追求便利、讲求品质、要求多元，当内心需求与现实供给恰好匹配，就有了城市书房广阔的发展空间。通过不断延展阅读触角，城市书房有助于实现全民阅读服务网络的全覆盖，推动公共文化服务均等化建设。\r\n\r\n　　在江苏扬州，城市书房数量每年递增，以现代化的风格、开阔的空间以及丰厚的藏书，营造浓厚的阅读氛围，吸引市民走进这里阅读。正是在这里，林浩天完成了自学编程的“小目标”。一年多以来，林浩天每天抽出时间，来家门口的城市书房学习一会儿，起初是半小时，再是一小时，现在养成了每天两小时的学习习惯。“城市书房的书籍更新频率高，而且还有志愿者不定期收集我们的需求。这样的好地方自然能拉近人们与阅读和学习的关系，持续产出新鲜感和吸引力，让阅读变成一种生活方式。”\r\n\r\n　　纵览全国各地城市书房，还有一个群体人数激增，那就是不同年龄段的学生。“00后”的余岁是一名大二学生，没开学时她会到离家最近的城市书房复习功课、读课外书，有时也找个安静角落上网课，效率很高。现在，她还计划申请做城市书房的志愿者，把自己的收获分享给他人，用行动守护阅读习惯。\r\n\r\n　　今年10岁的彭湃也是城市书房的常客。几乎每天放学，他都愿意来城市书房做作业，之后就读一些科普类、故事类书籍，不再担心父母接自己时间晚了，反而更喜爱这个“第二课堂”。\r\n\r\n　　城市书房并不只有阅读一项功能，实际上，一些地区经过迭代发展，已探索出城市书房2.0版本，在融合图书、文创、休闲等功能之外，举办丰富多彩的文化活动，吸引更多居民来此打卡体验。','管——城市书房进入有法可依新阶段\r\n\r\n　　日前，江苏省人大常委会第三十二次会议批准通过的一项新法规——《扬州市城市书房条例》，引发社会各界广泛关注。作为我国首部以城市书房为主题的地方性法规，该条例明确了建设、管理、运行以及服务内容和要求，确立了城市书房的法律地位，是城市书房相关工作进入法治化新时代的一大体现。\r\n\r\n　　综观《扬州市城市书房条例》各法条，有以下显著特点：一是围绕城市书房的建设和使用，理顺了政府主导、社会参与、人民权益之间的法律关系，清晰地规定了政府统筹指导、规划建设、常态管理、评价奖惩的主导地位，为城市书房沿着正确方向发展提供了基本保障；二是围绕城市书房的专业标准和服务质量，理顺了公共图书馆与参与城市管理运营的社会力量之间的法律关系，清晰地规定了公共图书馆专业指导、资源保障、人员培训、服务优化、平台支撑的专业及行业职责，增强了城市书房日常服务高质量的稳定性和可靠性；三是围绕城市书房建设运营中可能遇到的问题和矛盾，理顺了倡导和反对、允许和禁止、奖励和惩罚之间法律关系，清晰地规定了城市书房保持长期健康运营的底线，增强了正面预期强度和负面因素防范化解的刚性。\r\n\r\n　　国家文化和旅游公共服务体系建设专家委员会委员、上海社科院研究员巫志南分析了城市书房如雨后春笋般在全国各地快速生长的原因：这是由城市书房特性决定的。“首先，城市书房规模适中、灵活布局，不贪大求洋，唯求便利、舒适、实用，街心闹市、镇角村口、小区校旁、景点园区皆可安身，可新建，也可在城市微更新中盘活用好各种闲置设施。再者，城市书房的日常管理运营，注重社会参与和专业服务，大量引入社会专业组织管理和服务，既提升了效能，又降低了政府日常运营成本。”巫志南还提到，市场机制与公益性质的平衡也是城市书房“热”起来的重要原因。城市书房遵循《中华人民共和国公共文化服务保障法》相关规定，实行场地设施免费开放、基本服务免费提供，在此基础上，允许管理运营主体配套提供群众有实际需求的增值服务，增强了社会适应性和运营的持续度。这样一来，城市书房可在基本配置之外，根据所在区域和受众需求特点进行适应性调整，容纳各种体现群众创造性的志愿服务，更加贴近基层，适应群众需求。',NULL,NULL,'2022/12/9',NULL);
