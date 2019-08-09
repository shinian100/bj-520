
-- #设置客户端连接服务器端的编码
SET NAMES UTF8;
-- #丢弃数据库如果存在
DROP DATABASE IF EXISTS bj520;
-- #创建数据库设置编码UTF8
CREATE DATABASE bj520 CHARSET=UTF8;
-- #进入数据库
USE bj520;
-- #创建客照欣赏表，通过展示客照显示公司的专业水平和实力


CREATE TABLE customerList(
   id INT PRIMARY KEY AUTO_INCREMENT, # 客户编号
   title VARCHAR(128),                #标题
   city varchar(12),
   subtitle  VARCHAR(512),             
   updateTime VARCHAR(32),      #更新时间
   img VARCHAR(120)                  #列表图片
);
/* 客户评价详情表*/
CREATE TABLE evaluation(
   did INT  PRIMARY KEY AUTO_INCREMENT,  
   cid INT,                      # 客户编号
   classnav  VARCHAR(64),    #用于导航的标题
   title VARCHAR(64),           #主标题 
   subtitle VARCHAR(256),        #副标题     主标题下的注释
   img VARCHAR(1024),            #图片
   details VARCHAR(2048),        #评价内容
   FOREIGN KEY(cid) REFERENCES customerList(id)
);
INSERT INTO customerList VALUES
(NULL,'深圳旅拍婚纱照的浪漫体验','深圳','毫无悬念的选择了铂爵旅拍，虽然广告有些脑残了，但是既然敢把口号喊得那么响，想必实力也不会太弱，所以我们也就没有过多犹豫地选择了他们家了。','2019/06/05','list1.jpg'),
(NULL,'青岛旅拍婚纱照的完美体验','青岛','一直都很向往青岛的风景，所以拍婚纱照的时候我们就将青岛选作了我们的旅拍城市。之后就是开始看各种婚纱摄影机构，想说要找一个中意的婚纱摄影机构真的不太容易，好在后面看到了铂爵旅拍，这事儿才总算定了。','2019/06/04','list2.jpg'),
(NULL,'铂爵旅拍大连婚纱照 浪漫温馨的婚纱摄影之旅','大连','看了朋友的婚纱照，果断选择了铂爵旅拍。因为跟对象是大连读书认识的，基本没什么悬念的选择了铂爵婚纱摄影大连店，关于摄影师的作品我们是交了订金之后刷抖音偶然刷到的，真的很喜欢他的风格。','2019/06/03','list3.jpg'),
(NULL,'深圳婚纱摄影 值得回味一生的旅拍体验','深圳','之前就有听过铂爵旅拍，因为广告词过于魔性了，但是有些东西不去体验是不知道的，这次拍摄很满意，在没有进行拍摄时创建微信群与我们沟通喜欢的妆容以及拍摄风格，真的很负责!','2019/06/02','list4.jpg'),
(NULL,'三亚旅拍婚纱摄影 一生难忘的纪念','三亚','拍婚纱照是筹备婚礼过程中一个非常重要的环节，所以当我们把拍婚纱照的计划提上来了以后也是和大多数新人一样开始了各种查找婚纱摄影机构，最终我们将目标定在了铂爵旅拍，然后也择定了我们一直都想去一探究竟的三亚拍摄。','2019/06/01','list5.jpg'),
(NULL,'感谢铂爵旅拍的辛苦付出给我们留下的美好回忆','厦门','看了很多宝宝对于选择婚纱摄影机构的纠结，我觉得我选择的很简单，闺蜜拍摄过她的婚纱照就是我喜欢的类型，推荐了她的客服给我，人家也是第一时间给我争取最大的优惠(闺蜜也跟我说了很多细节上的东西)就这样敲定了铂爵旅拍。','2019/05/31','list6.jpg'),
(NULL,'土耳其婚纱摄影 一次美好的旅拍经历','土耳其','“我要带你去浪漫的土耳其……”哈哈哈，真的实现了哈哈哈。旅拍婚纱照我们选择了铂爵旅拍，选择了土耳其，这一趟婚纱摄影之行真的是棒极了。拍个婚纱照跑到这么远来拍，我们也是佩服极了我们自己哈。','2019/05/30','list7.jpg'),
(NULL,'感谢铂爵旅拍给我们一生难忘的婚纱摄影经历','深圳','　感谢铂爵旅拍给我们的人生一次难忘的婚纱照旅拍经历，庆幸自己当初选择了铂爵旅拍，虽然也看过不少婚纱摄影机构，但都没有那种一眼就有怦然心动的感觉，直到看见了铂爵旅拍的客照……','2019/05/29','list8.jpg'),
(NULL,'丽江旅拍婚纱照 铭记一生的记忆','丽江','丽江旅拍婚纱照是一次非常美妙的旅行。在选定了铂爵旅拍，还没开拍之前我们也是多少有些担心的，毕竟都没有经验，拍婚纱照大多都是一生才这么一次的，不过好在无论是整个过程还是婚纱照最终呈现出来的效果都没有让我们失望哦。','2019/05/28','list9.jpg'),
(NULL,'土耳其旅拍婚纱照的浪漫记忆','土耳其','“我想要带你去浪漫的土耳其”每次一听到这歌，就对土耳其萌生起无限的向往，终于到我们要拍婚纱照的时候，毫不犹豫地将旅拍城市定在了土耳其，然后又在朋友的推荐下选择了铂爵旅拍……','2019/05/27','list10.jpg'),
(NULL,'普吉岛旅拍婚纱照的甜蜜回忆','吉普岛','一直害怕店大欺客，又害怕广告做那么大，会在过程中各种推销，又看了很多人的评价，好的有，坏的也有，越想越害怕，但是完全是我想多了，至少我们所选择的铂爵旅拍并没有让我们失望哦。','2019/05/26','list11.jpg'),
(NULL,'深圳旅拍婚纱照 一次惊喜的婚纱摄影之旅','深圳','选择一见钟情的婚纱摄影机构，在喜欢的城市拍摄这一生最重要的纪念照。深圳婚纱照拍摄的这趟旅程非常值得，非常感谢铂爵旅拍带给我们的惊喜。','2019/05/25','list12.jpg'),
(NULL,'丽江旅拍婚纱照 一生难忘的纪念','丽江','选择一见钟情的婚纱摄影机构，在喜欢的城市拍摄这一生最重要的纪念照。深圳婚纱照拍摄的这趟旅程非常值得，非常感谢铂爵旅拍带给我们的惊喜。','2019/05/24','list13.jpg');
INSERT INTO evaluation VALUES
(NULL,1,'深圳婚纱照评价','深圳旅拍婚纱照的浪漫体验','更新：2019-06-05 10:24:34 客户：张先生 郭小姐 /拍摄地： 深圳','one1.jpg,one2.jpg,one3.jpg,one4.jpg,one5.jpg,one6.jpg','　毫无悬念的选择了铂爵旅拍，虽然广告有些脑残了，但是既然敢把口号喊得那么响，想必实力也不会太弱，所以我们也就没有过多犹豫地选择了他们家了。|刚拍完的结婚照，个人很满意。感谢铂爵旅拍!刚来的时候，服务态度就特别好，但是挑衣服的时候挑了很久还是没挑到很好看的，最后就随便挑了一套!因为我自己提前准备了一套结婚嫁衣，所以我对这次的拍照充满期待。|　到了晚上，摄影师陈剑锋，还有铂爵旅拍造型师紫菜 ，两位大人物加入了我们的结婚群里，问我有没有喜欢的风格。我说有很多，因为我个人对照片质量追求比较高，所以我提前有准备。希望有个难忘的婚纱照拍摄之旅。|　第二天早上，见到我的真人造型师，真人很漂亮。我心想，这下行了。真人那么漂亮绝对也会把我化得美美哒!结果真没让我失望，化我最喜欢的小清新风格!|　到了目的地，摄影师很认真地教我们面部表情如何表达。真的很有耐心。|经历了昨天12个小时的努力，我们终于拍出了美美哒照片。真的很喜欢，再次感谢铂爵旅拍。'),
(NULL,2,'青岛婚纱照评价','青岛旅拍婚纱照的完美体验',' 更新：2019-06-04 11:03:30 客户：郑先生 李小姐 /拍摄地： 青岛','two1.jpg,two2.jpg,two3.jpg,two4.jpg,two5.jpg','一直都很向往青岛的风景，所以拍婚纱照的时候我们就将青岛选作了我们的旅拍城市。之后就是开始看各种婚纱摄影机构，想说要找一个中意的婚纱摄影机构真的不太容易，好在后面看到了铂爵旅拍，这事儿才总算定了。|每一个工作人员都非常的热心。造型师给我画了美美的妆，每一个细节都非常的在意，睫毛每一根都是贴上去的，非常的细心。出来的妆面也是我喜欢的自然的感觉。|　摄影师很幽默，总能用他特有的方式让我一个平时不爱拍照的人都可以表现得自然放松。|每一张完美的照片离不开这个团队的每一个人的努力。关于铂爵旅拍的工作人员是否能认真尽责给新人们提供服务这个问题大家是不用担心的哈。|最后，我还要感谢铂爵旅拍工作人员的倾心服务，让我们收获了这么完美的婚纱照。'),
(NULL,3,'大连婚纱照评价','铂爵旅拍大连婚纱照 浪漫温馨的婚纱摄影之旅',' 更新：2019-06-03 18:06:17 客户：李先生 赵小姐 /拍摄地： 大连','three1.jpg,three2.jpg,three3.jpg,three4.jpg,three5.jpg,three6.jpg','看了朋友的婚纱照，果断选择了铂爵旅拍。因为跟对象是大连读书认识的，基本没什么悬念的选择了铂爵婚纱摄影大连店，关于摄影师的作品我们是交了订金之后刷抖音偶然刷到的，真的很喜欢他的风格。|选摄影师那天我们一直等到晚上十二点，运气很好抢到了辰air的档期。一个月之后到店，礼服师瑶瑶帮我们选了适合的礼服，拍摄前一晚辰sir的团队很认真的问了我们喜欢的风格和妆容。|第二天的拍摄全程高能，造型师康易珍帮我们更换的礼服都超级惊艳，妆容也非常漂亮，拍摄过程一直细心的帮我补妆，涂防晒，递外套，超贴心有没有!|还有大连铂爵许华锦—华仔，全程打光，拎东西，一句有我在不用怕，超有安全感。|　辰sir不愧是我们费老劲儿选的摄影师，一直跟我们说有什么需求一定跟他讲，基本有求必应，超给力。|在铂爵旅拍拍摄的这些照片都美美哒，超多张，在选片的时候每一张都舍不得删了……'),
(NULL,4,'深圳婚纱照评价','深圳婚纱摄影 值得回味一生的旅拍体验','更新：2019-06-02 09:19:00 客户：周先生 李小姐 /拍摄地： 深圳','four1.jpg,four2.jpg,four3.jpg,four4.jpg,four5.jpg','之前就有听过铂爵旅拍，因为广告词过于魔性了，但是有些东西不去体验是不知道的，这次拍摄很满意，在没有进行拍摄时创建微信群与我们沟通喜欢的妆容以及拍摄风格，真的很负责!|感谢摄影唐老师—唐本琪，很认真很认真的一个摄影师，拍摄前也会帮你去搭配衣服，会开些玩笑，让整个拍摄过程都很轻松。大概是每一个摄影师真的都有一双发现美的眼睛，所以每次选取的拍摄角度也都恰到好处。|　感谢造型师梦涵的耐心和细致，给我化的妆容很好看哟，和拍摄场景很搭调哦，她也很会搭配衣服哦，帮我们选出来的服装都很适合我们哦。梦涵是个非常活泼的小姐姐，全程跟妆很负责，十分感谢。|选片的时候最纠结了，主要是因为每张婚纱照都拍得特好，所以总是这张那张不知道该选择哪张好。|对于这次拍摄本来是不抱希望，但结果很让人满意，十分感谢这次为我们婚纱照的拍摄而忙碌的几位老师，把我们拍得美美哒，感谢铂爵旅拍。'),
(NULL,5,'三亚婚纱照评价','三亚旅拍婚纱摄影 一生难忘的纪念','更新：2019-06-01 09:18:00 客户：赵先生 姚小姐 /拍摄地： 三亚','five1.jpg,five2.jpg,five3.jpg,five4.jpg,five5.jpg','拍婚纱照是筹备婚礼过程中一个非常重要的环节，所以当我们把拍婚纱照的计划提上来了以后也是和大多数新人一样开始了各种查找婚纱摄影机构，最终我们将目标定在了铂爵旅拍，然后也择定了我们一直都想去一探究竟的三亚拍摄。|是铂爵旅拍给我们安排的化妆师陪我们完成了拍摄服装的选款，不然当我看到那么多的婚纱礼服时，我也是傻傻分不清，不知道该选择哪一件才好。|铂爵旅拍专业的工作人员陪同我们去海边拍完了婚纱照，感觉挺不错的，首先拍摄的摄影师那是绝对专业，还有一起陪同的化妆师和助理小姐姐也是既专业而且很用心很耐心的引导我们进入拍摄场景(情绪)。|拍摄过程中，不止摄影师、化妆师等主要工作人员很忙，小助理也不例外，各种事儿都要兼顾，都要面面俱到，真的很佩服他们。|在三亚近40度的天气里拍摄婚纱照，不只是我们，相信团队里的工作人员也是一样的辛苦和疲累，感谢铂爵旅拍给我们安排的这支摄影团队，妥妥的五星好评。'),
(NULL,6,'厦门婚纱照评价','感谢铂爵旅拍的辛苦付出给我们留下的美好回忆',' 更新：2019-05-31 10:10:03 客户：窦先生 王小姐 /拍摄地： 厦门','six1.jpg,six2.jpg,six3.jpg,six4.jpg,six2.jpg','看了很多宝宝对于选择婚纱摄影机构的纠结，我觉得我选择的很简单，闺蜜拍摄过她的婚纱照就是我喜欢的类型，推荐了她的客服给我，人家也是第一时间给我争取最大的优惠(闺蜜也跟我说了很多细节上的东西)就这样敲定了铂爵旅拍。|　在我们拍摄前半个月，就先有专门的管家跟我们联系让我们在铂爵旅拍会员公众号上选择摄影老师，一眼就看中了鹿sir，他拍摄的风格都是我超喜欢的那种。|满怀期待从内蒙飞往厦门啦(一直也很想去鼓浪屿)，贴心的管家早早的登记了我们的抵达时间，接我们到门店。拍摄那天老天爷好像偷偷跟我们开了个玩笑，拍到下午三四点突然就哗哗哗的下起了大雨，没办法只能暂停我们的拍摄行程，好在我的摄影老师鹿sir第二天本身安排了休息，但还是特地过来给我们拍完最后的行程。|补拍那天似乎是想要给我们美美的回忆，天气异常的好，化妆老师也说我那天状态超好的，给我画的妆超美。选片的时候我家龙哥哥都说没想到这么好看。|鹿sir抓拍得超自然，感谢鹿sir和其他工作人员，是大家的努力才让我们拥有这么棒的婚纱照拍摄体验。');



CREATE TABLE city_carousel(
   did INT  PRIMARY KEY AUTO_INCREMENT,  
   nameEng  VARCHAR(64),    #英文标题
   nameCHI VARCHAR(64),     #中文标题 
   car_img VARCHAR(10)     #图片路径字符串
);
INSERT INTO city_carousel VALUES
(NULL,'SANYA','三亚','1.jpg'),(NULL,'XIAMEN','厦门','2.jpg'),(NULL,'LIJIANG','丽江','3.jpg'),
(NULL,'DALI','大理','4.jpg'),(NULL,'QINDAO','青岛','5.jpg'),(NULL,'DALIAN','大连','6.jpg'),
(NULL,'GUILIN','桂林','7.jpg'),(NULL,'SHENZHEN','深圳','8.jpg'),(NULL,'HONGKONG','香港','9.jpg'),
(NULL,'MACAO','澳门','10.jpg'),(NULL,'BEIJING','北京','11.jpg'),(NULL,'HANGZHOU','杭州','12.jpg'),
(NULL,'SHANGGRI-LA','香格里拉','13.jpg'),(NULL,'BALI','巴厘岛','14.jpg'),(NULL,'PHUKET','普吉岛','15.jpg'),
(NULL,'MALDIVES','马尔代夫','16.jpg'),(NULL,'JAPAN','日本','17.jpg'),(NULL,'EUROPE','欧洲','18.jpg'),
(NULL,'EUROPE','欧洲','19.jpg'),(NULL,'PARIS','巴黎','20.jpg'),(NULL,'BRAGG','布拉格','21.jpg');



-- #创建客照欣赏表，通过展示客照显示公司的专业水平和实力
CREATE TABLE customerPhoto(
  cid INT PRIMARY KEY NOT NULL AUTO_INCREMENT, #某月某季的ID，为此季度的唯一标识，由系统自动生成
  pname VARCHAR(256),
  ptime VARCHAR(256),
  pics VARCHAR(1024)    #某月某季的照片
);



INSERT INTO customerPhoto VALUES(NULL,"augfourth","8月第4季最新客照","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg");
INSERT INTO customerPhoto VALUES(NULL,"mayfourth","5月第4季最新客照","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg");
INSERT INTO customerPhoto VALUES(NULL,"maythird","5月第3季最新客照","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg");
INSERT INTO customerPhoto VALUES(NULL,"maysecond","5月第2季最新客照","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg");
INSERT INTO customerPhoto VALUES(NULL,"mayfirst","5月第1季最新客照","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg");
INSERT INTO customerPhoto VALUES(NULL,"aprfourth","4月第4季最新客照","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg,28.jpg,29.jpg");
INSERT INTO customerPhoto VALUES(NULL,"aprthird","4月第3季最新客照","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg,28.jpg,29.jpg,30.jpg,31.jpg,32.jpg");
INSERT INTO customerPhoto VALUES(NULL,"aprsecond","4月第2季最新客照","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg,28.jpg,29.jpg");
INSERT INTO customerPhoto VALUES(NULL,"aprfirst","4月第1季最新客照","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg,16.jpg,17.jpg,18.jpg,19.jpg,20.jpg,21.jpg,22.jpg,23.jpg,24.jpg,25.jpg,26.jpg,27.jpg,28.jpg,29.jpg,30.jpg");

/*旅拍城市列表*/
CREATE TABLE travel_image(
   tid      INT PRIMARY KEY  AUTO_INCREMENT,
   del  VARCHAR(64),
   address    VARCHAR(64),
   href     VARCHAR(256),
   pics     VARCHAR(1024)
);
INSERT INTO travel_image VALUES(NULL,"sanya","三亚","26","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");
INSERT INTO travel_image VALUES(NULL,"xiamen","厦门","27","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");
INSERT INTO travel_image VALUES(NULL,"lijiang","丽江","22","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");
INSERT INTO travel_image VALUES(NULL,"dali","大理","19","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");
INSERT INTO travel_image VALUES(NULL,"qingdao","青岛","25","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");
INSERT INTO travel_image VALUES(NULL,"dalian","大连","20","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");
INSERT INTO travel_image VALUES(NULL,"guilin","桂林","21","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");
INSERT INTO travel_image VALUES(NULL,"sz","深圳","28","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");
INSERT INTO travel_image VALUES(NULL,"xg","香港","30","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");
INSERT INTO travel_image VALUES(NULL,"aomen","澳门","546","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");
INSERT INTO travel_image VALUES(NULL,"beijing","北京","417","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");
INSERT INTO travel_image VALUES(NULL,"hangzhou","杭州","350","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");
INSERT INTO travel_image VALUES(NULL,"xianggelila","香格里拉","31","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");
INSERT INTO travel_image VALUES(NULL,"balidao","巴厘岛","18","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");
INSERT INTO travel_image VALUES(NULL,"pujidao","普吉岛","24","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");
INSERT INTO travel_image VALUES(NULL,"maerdaifu","马尔代夫","23","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");
INSERT INTO travel_image VALUES(NULL,"rb","日本","351","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");
INSERT INTO travel_image VALUES(NULL,"oz","欧洲","352","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");
INSERT INTO travel_image VALUES(NULL,"bl","巴黎","544","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");
INSERT INTO travel_image VALUES(NULL,"blg","布拉格","545","1.jpg,2.jpg,3.jpg,4.jpg,5.jpg,6.jpg,7.jpg,8.jpg,9.jpg,10.jpg,11.jpg,12.jpg,13.jpg,14.jpg,15.jpg");