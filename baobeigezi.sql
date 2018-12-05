SET NAMES UTF8;
  DROP DATABASE IF EXISTS gz;
  CREATE DATABASE gz CHARSET=UTF8;
  use gz;
  CREATE TABLE gz_user(
      uid INT PRIMARY KEY AUTO_INCREMENT,
      uname VARCHAR(64),
      upwd VARCHAR(32),
      gender INT,
      avatar VARCHAR(128),
      eamil VARCHAR(26)
  );


CREATE TABLE gz_index_carousel(
 
	cid int(11) NOT NULL,
  
	img varchar(128) DEFAULT NULL,
  
	title varchar(64) DEFAULT NULL,
  
	href varchar(128) DEFAULT NULL

);


CREATE TABLE gz_shoppingcart_item(

  iid int(11) NOT NULL,
  
  user_id int(11) DEFAULT NULL,

  product_id int(11) DEFAULT NULL,

  count int(11) DEFAULT NULL,
 
  is_checked tinyint(1) DEFAULT NULL

);


CREATE TABLE gz_laptop_family(
 
	fid int(11) NOT NULL,
  
	fname varchar(32) DEFAULT NULL

);


CREATE TABLE gz_index_product(

  pid int(11) NOT NULL,

  title varchar(64) DEFAULT NULL,

  details varchar(128) DEFAULT NULL,

  pic varchar(128) DEFAULT NULL,

  price decimal(10,2) DEFAULT NULL,

  price_b decimal(10,2) DEFAULT NULL,	
  href varchar(128) DEFAULT NULL
  
);
CREATE TABLE gz_rec_yx(
 rid int(11) INT AUTO_INCREMENT PAIMARY KEY,
 title varchar(64) DEFAULT NULL,
 details varchar(128) DEFAULT NULL,
 price decimal(10,2) DEFAULT NULL,
 price_old decimal(10,2) DEFAULT NULL,
 img_url varchar(255)
);

INSERT INTO gz_rec_yx VALUES(null,'【格子优选】阿拉斯加鳕鱼肉 500g*2袋 【纯野生+无污染+补脑+无刺+低脂肪+校园餐】','纯野生+无污染+补脑+无刺+低脂肪+校园餐',399,null,"http://127.0.0.1:3000/img/rec/5ab89241d3044.jpg");
INSERT INTO gz_rec_yx VALUES(null,'【格子优选】阿拉斯加鳕鱼肉 500g 【纯野生+无污染+补脑+无刺+低脂肪+校园餐】',null,399,321,"http://127.0.0.1:3000/img/rec/5ab89241d3044.jpg");
INSERT INTO gz_rec_yx VALUES(null,'【格子优选】冷冻即食冰岛海参条500g/袋*2袋',null,439,141,"http://127.0.0.1:3000/img/rec/5ab880e50c804.jpg");
INSERT INTO gz_rec_yx VALUES(null,'【阿根廷进口】新鲜冷冻阿根廷红虾仁 剥壳大虾仁 300g*5袋 国内仓发货',null,380,200,"http://127.0.0.1:3000/img/rec/2017031615000057269989_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'【格子优选】阿拉斯加野生三文鱼250g*3袋',null,388.00,302.00,"http://127.0.0.1:3000/img/rec/2018012412003521934090_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'【格子优选】阿拉斯加野生三文鱼250g*2袋',null,198.00,262.00,"http://127.0.0.1:3000/img/rec/2018012412003521934090_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'【格子优选】阿拉斯加野生三文鱼250g',null,180.00,50.00,"http://127.0.0.1:3000/img/rec/2018012412003521934090_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'【冰岛进口】冷冻冰岛整条海参700g*2袋 国内仓发货',null,499.00,100.00,"http://127.0.0.1:3000/img/rec/201710319000773743525_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'【格子优选】冷冻冰岛海参宝500g',null,258.00,41.00,"http://127.0.0.1:3000/img/rec/2017031616002387156697_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'【冰岛进口】冷冻冰岛整条海参700g/袋 国内仓发货',null,299.00,100.00,"http://127.0.0.1:3000/img/rec/201710319000773743525_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'【格子优选】深海鳕鱼 50g鳕鱼肠500g/袋',null,179.00,271.00,"http://127.0.0.1:3000/img/rec/2017062111000263112896_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'【格子优选】冷冻冰岛海参宝500g*2袋',null,315.00,264.00,"http://127.0.0.1:3000/img/rec/2017031616002387156697_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'【格子优选】冷冻即食冰岛海参条500g/袋',null,218.00,70.00,"http://127.0.0.1:3000/img/rec/5ab880e50c804.jpg");
INSERT INTO gz_rec_yx VALUES(null,'【格子优选】扇贝柱 野生新鲜冷冻扇贝肉瑶柱海鲜 宝宝辅食500g',null,135.00,44.00,"http://127.0.0.1:3000/img/rec/2017062111004194556559_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'密斯特熊荆条蜂蜜580g/瓶 一等好密 天然成熟',null,65.00,3.00,"http://127.0.0.1:3000/img/rec/2017080310000172771164_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'密斯特熊荆条蜂蜜590g/瓶 中药蜜源 天然成熟',null,78.00,20.00,"http://127.0.0.1:3000/img/rec/201707269002336652678_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'密斯特熊蜂蜜便携装150g*6支 方便携带 天然成熟 晴天润滑',null,85.00,14.00,"http://127.0.0.1:3000/img/rec/2017071416000964438539_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'密斯特熊蜂蜜便携装150g*3支 方便携带 天然成熟 晴天润滑',null,39.00,19.20,"http://127.0.0.1:3000/img/rec/2017071415003032228965_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'密斯特熊蜂蜜便携装150g/支 方便携带 天然成熟 晴天润滑',null,19.00,9.20,"http://127.0.0.1:3000/img/rec/2017071415002512473951_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'拜尔(BAIR)儿童电动牙刷K5声波式软毛卡通自动牙刷宝宝 红色 【牙医推荐】小孩自动牙刷','牙医推荐',228.00,null,"http://127.0.0.1:3000/img/rec/5aa7a9013c6b5 (1).jpg");
INSERT INTO gz_rec_yx VALUES(null,'拜尔(BAIR)儿童电动牙刷K5声波式软毛卡通自动牙刷宝宝 蓝色 【牙医推荐】小孩自动牙刷',null,228.00,70.00,"http://127.0.0.1:3000/img/rec/5aa7a7f5652d1.jpg");
INSERT INTO gz_rec_yx VALUES(null,'拜尔（BAIR）成人电动牙刷X1 Plus  粉红色+天蓝色2只情侣组合',null,375.00,181.00,"http://127.0.0.1:3000/img/rec/5aa7a5b4829fb.jpg");
INSERT INTO gz_rec_yx VALUES(null,'拜尔（BAIR）成人电动牙刷X1 Plus 声波自动软毛防水 天蓝色 （主机+8个刷头+便携盒）',null,208.00,70.00,"http://127.0.0.1:3000/img/rec/5aa7a4d5ef40f.jpg");
INSERT INTO gz_rec_yx VALUES(null,'拜尔（BAIR）成人电动牙刷X1 Plus 声波自动软毛防水 粉红色 （主机+8个刷头+便携盒）',null,208.00,70.00,"http://127.0.0.1:3000/img/rec/5aa7a4d5ef40f.jpg");
INSERT INTO gz_rec_yx VALUES(null,'拜尔(BAIR)充电式儿童电动牙刷软刷毛  3岁以上 K3苹果绿  (呵护宝宝牙龈健康，让宝宝爱上刷牙）',null,168.00,90.00,"http://127.0.0.1:3000/img/rec/5a93c45ab5aa8.jpg");
INSERT INTO gz_rec_yx VALUES(null,'拜尔(BAIR)充电式儿童电动牙刷软刷毛  3岁以上 K3柠檬黄  (呵护宝宝牙龈健康，让宝宝爱上刷牙）',null,168.00,90.00,"http://127.0.0.1:3000/img/rec/5a93c431bc407.jpg");
INSERT INTO gz_rec_yx VALUES(null,'拜尔(BAIR)充电式儿童电动牙刷软刷毛  3岁以上 K3樱桃红  (呵护宝宝牙龈健康，让宝宝爱上刷牙）',null,168.00,90.00,"http://127.0.0.1:3000/img/rec/5a93c3a3145b5.jpg");
INSERT INTO gz_rec_yx VALUES(null,'小狗（puppy）小型静音强力家用除螨大功率吸尘机 D-9007（手柄无线操控 1700W吸力 4大吸头）',null,1399.00,2900.00,"http://127.0.0.1:3000/img/rec/5a93b2961d347.jpg");
INSERT INTO gz_rec_yx VALUES(null,'小狗（puppy）高端车载吸尘器 手持车用吸尘器 D-708（点烟器取电 120W大吸力 4米线长）',null,258.00,140.00,"http://127.0.0.1:3000/img/rec/5a93af509101e.jpg");
INSERT INTO gz_rec_yx VALUES(null,'小狗（puppy）无线吸尘器家用提手持式小型静音强力大功率充电无绳机D-531',null,980.00,2719.00,"http://127.0.0.1:3000/img/rec/5a82506d1a73b.jpg");
INSERT INTO gz_rec_yx VALUES(null,'小狗（puppy）家用除螨无线无绳手持立式充电小型吸尘器D-532',null,1380.00,2519.00,"http://127.0.0.1:3000/img/rec/5a95160b31f17.jpg");
INSERT INTO gz_rec_yx VALUES(null,'小狗（puppy）除螨仪紫外线家用强力杀菌除螨机床铺床上除螨虫吸尘器D-605',null,680.00,1910.00,"http://127.0.0.1:3000/img/rec/5a95169eceae7.jpg");
INSERT INTO gz_rec_yx VALUES(null,'小狗（puppy）除螨仪紫外线家用强力杀菌除螨机床铺床上除螨虫吸尘器D-605',null,980.00,1470.00,"http://127.0.0.1:3000/img/rec/5a82b19b144ee.jpg");
INSERT INTO gz_rec_yx VALUES(null,'小狗（puppy）吸尘器家用手持式地毯除螨虫小型迷你强力静音无耗材D-521',null,380.00,210.00,"http://127.0.0.1:3000/img/rec/5a82b75b57953.jpg");


CREATE TABLE gz_search_ugg(
 sid int(11) INT AUTO_INCREMENT PRIMARY KEY,
 title varchar(64) DEFAULT NULL,
 price decimal(10,2) DEFAULT NULL,
 price_old decimal(10,2) DEFAULT NULL,
 img_url varchar(255),
 img_logo varchar(255)
);
//第一行
INSERT INTO gz_search VALUES(null,'Aptamil/爱他美 奶粉白金版 800g（英国直邮/包邮包税）',348.00,478.00,"http://127.0.0.1:3000/img/search/2017111619004107167979_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015001465509544.png");
INSERT INTO gz_search VALUES(null,'A2白金系列婴幼儿奶粉1段900g*2  澳洲直邮【包邮包税】',486.00,560.00,"http://127.0.0.1:3000/img/search/2016082917002849993375_250x250.png","http://127.0.0.1:3000/img/search/2017041015002422782804.png");
INSERT INTO gz_search VALUES(null,'A2婴幼儿奶粉3段900g*2罐 澳洲直邮【包邮包税】',523.71,688.00,"http://127.0.0.1:3000/img/search/2016072810001210765341_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");
INSERT INTO gz_search VALUES(null,'A2白金系列婴幼儿奶粉3段900g*【3罐】包邮包税澳洲直邮',523.71,688.00,"http://127.0.0.1:3000/img/search/2016083117003754269784_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");
//第二行
INSERT INTO gz_search VALUES(null,'【荷兰直邮&免税包邮】荷兰牛栏奶粉3段  800g六桶装',1111.00,1320.00,"http://127.0.0.1:3000/img/search/2017030815001780391759_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015003982236986.png");
INSERT INTO gz_search VALUES(null,'德国直邮  泓乐Holle 有机婴儿配方奶粉 泓乐牛奶粉 2段 600g*4罐【包邮包税】',615.00,950.00,"http://127.0.0.1:3000/img/search/5baf25d4cd45d.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");
INSERT INTO gz_search VALUES(null,'德国直邮  泓乐Holle 有机婴儿配方奶粉 泓乐牛奶粉 1段 400g*4罐【包邮包税】',498.00,780.00,"http://127.0.0.1:3000/img/search/5baf24c26040e.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");
INSERT INTO gz_search VALUES(null,'包邮包税澳大利亚Caprilac成人羊奶粉大童/学生/中老年奶粉 1000g',227.00,280.00,"http://127.0.0.1:3000/img/search/2016082914002699305989_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");
//第三行
INSERT INTO gz_search VALUES(null,'德国直邮  泓乐Holle 有机婴儿配方奶粉泓乐牛奶粉 4段 600g*4罐【包邮包税】',615.00,950.00,"http://127.0.0.1:3000/img/search/5baf2791a4ab0.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");
INSERT INTO gz_search VALUES(null,'Olivia营养成长素成长奶粉 益智增高配方奶粉 480g*2 【2盒】  包邮包税新西兰直邮',192.00,319.00,"http://127.0.0.1:3000/img/search/2017041316000726041146_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");
INSERT INTO gz_search VALUES(null,'德国直邮  泓乐Holle 有机婴儿配方奶粉 泓乐牛奶粉 3段 600g*4罐【包邮包税】',615.00,950.00,"http://127.0.0.1:3000/img/search/5baf26e389c55.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");
INSERT INTO gz_search VALUES(null,' 【荷兰直邮&免税包邮】荷兰牛栏奶粉4段  800g（六罐装）',999.00,1111.00,"http://127.0.0.1:3000/img/search/2017030815003011324232_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015003982236986.png");
//第四行
INSERT INTO gz_search VALUES(null,'澳洲直邮【包邮包税】Aptamil爱他美白金版婴儿牛奶粉3段 900g*2  优质物流',459.00,600.00,"http://127.0.0.1:3000/img/search/2016080611002614814644_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");

INSERT INTO gz_search VALUES(null,'HIPP喜宝 有机奶粉 12+ 1岁以上 800G',232.00,300.00,"http://127.0.0.1:3000/img/search/5bd853b1c3d70.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");

INSERT INTO gz_search VALUES(null,'Cow Gate/牛栏 奶粉 3段 1-2岁 奶粉800g（英国直邮/包邮包税）',230.00,398.00,"http://127.0.0.1:3000/img/search/5bbd62dd02b74.jpg","http://127.0.0.1:3000/img/search/2017041015001465509544.png");

INSERT INTO gz_search VALUES(null,'HIPP/喜宝 配方有机益生菌奶粉 HA抗过敏免敏婴幼儿配方奶粉1段（0-6个月）500g*4罐 （德国直邮/包邮包税）',538.00,950.00,"http://127.0.0.1:3000/img/search/5baf340de7901.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");
//第五行
INSERT INTO gz_search VALUES(null,'德国直邮 HIPP 配方有机益生菌奶粉 HA抗过敏免敏婴幼儿配方奶粉pre段（0-6个月）500g*4罐【包邮包税】',628.00,950.00,"http://127.0.0.1:3000/img/search/5baf32f5c4242.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");

INSERT INTO gz_search VALUES(null,'丹麦直邮【4罐包邮】Arla Baby&Me;爱氏晨曦宝贝与我有机奶粉600g ',927.00,975.00,"http://127.0.0.1:3000/img/search/2017081013001498641065_250x250.jpg","http://127.0.0.1:3000/img/search/2017011710000392658415.png");

INSERT INTO gz_search VALUES(null,'HIPP喜宝 益生菌奶粉 PRE段 0-6个月 600G 效期19年5月',236.00,320.00,"http://127.0.0.1:3000/img/search/5bd853b1c3d70.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");

INSERT INTO gz_search VALUES(null,'德国直邮 HIPP 配方有机益生菌奶粉 HA抗过敏免敏婴幼儿配方奶粉pre段（0-6个月）500g*4罐【包邮包税】',628.00,950.00,"http://127.0.0.1:3000/img/search/5baf32f5c4242.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");
//第六行
INSERT INTO gz_search VALUES(null,'【荷兰直邮&免税包邮】荷兰Nutricia 官方授权 牛栏奶粉 5段 800g六桶装',999.00,1320.00,"http://127.0.0.1:3000/img/search/2017030815003011324232_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015003982236986.png");

INSERT INTO gz_search VALUES(null,'荷兰直邮【包邮包税】荷兰牛栏奶粉4段  800g 三桶装',488.00,880.00,"http://127.0.0.1:3000/img/search/2017050311002331577338_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015003982236986.png");

INSERT INTO gz_search VALUES(null,'Aptamil/爱他美 半水解奶粉HA 婴幼儿奶粉 pre段(0-3个月)800g*2罐 （德国直邮/包邮包税）',365.00,690.00,"http://127.0.0.1:3000/img/search/5bac7971b44f8.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");

INSERT INTO gz_search VALUES(null,'A2白金系列婴幼儿奶粉2段900g【3罐】包邮包税澳洲直邮',777.00,1200.00,"http://127.0.0.1:3000/img/search/5bda6fa2b9913.png","http://127.0.0.1:3000/img/search/2017041015002422782804.png");
//第七行
INSERT INTO gz_search VALUES(null,'Holle/泓乐 有机婴儿配方奶粉 泓乐羊奶粉 1段 400g*4罐 （德国直邮/包邮包税）',668.00,1150.00,"http://127.0.0.1:3000/img/search/5baf4ba7ec68b.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");

INSERT INTO gz_search VALUES(null,'6袋包邮包税澳洲直邮Devondale 德运脱脂高钙成人奶粉学生中老年奶粉儿童青少年补钙 1kg*6',499.49,599.00,"http://127.0.0.1:3000/img/search/5bcfe523021ef.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");

INSERT INTO gz_search VALUES(null,'英国直邮【包邮包税】雀巢奶粉NIDO 成人高钙全脂奶粉 900g',149.00,199.00,"http://127.0.0.1:3000/img/search/2017121118002259499048_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015001465509544.png");

INSERT INTO gz_search VALUES(null,'德国直邮  泓乐Holle 有机婴儿配方奶粉 泓乐羊奶粉 2段 400g*4罐【包邮包税】',768.00,1150.00,"http://127.0.0.1:3000/img/search/5baf4c3dda8ae.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");

//第八行
INSERT INTO gz_search VALUES(null,'澳洲直邮【包邮包税】爱他美婴儿牛奶粉金装3段 900g 2罐',453.00,550.00,"http://127.0.0.1:3000/img/search/2016080611002614814644_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");

INSERT INTO gz_search VALUES(null,'【2袋包邮包税澳洲直邮】Caprilac成人羊奶粉大童/学生/中老年奶粉 1000g*2',450.18,499.00,"http://127.0.0.1:3000/img/search/2016082914002699305989_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");

INSERT INTO gz_search VALUES(null,'澳洲直邮包邮包税德运全脂成人奶粉 1kg*2袋 ',185.10,220.00,"http://127.0.0.1:3000/img/search/5bcfe6c8d591d.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");

INSERT INTO gz_search VALUES(null,'HIPP/喜宝 益生菌奶粉 2+（2岁以上）600g   （德国直邮/包邮包税）',399.00,760.00,"http://127.0.0.1:3000/img/search/5badf1a31bcaf.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");




CREATE TABLE gz_shoppingcart_item(
  
iid int(11) INT AUTO_INCREMENT PRIMARY KEYL,
 
user_id int(11) DEFAULT NULL,

product_id int(11) DEFAULT NULL,
 
count int(11) DEFAULT NULL,
 
is_checked tinyint(1) DEFAULT NULL

)

INSERT INTO gz_phone_ VALUES(null,'Vanessa小鱼','非常好用啊','http://127.0.0.1:3000/img/shaidan/201810121602401474601503.jpg','http://127.0.0.1:3000/img/nav/201611261914381147441322.jpg');
INSERT INTO gz_phone_ VALUES(null,'Ollye','很好看啊,感觉很配','http://127.0.0.1:3000/img/shaidan/201810131837301185596525.jpg','http://127.0.0.1:3000/img/nav/201807301851451915860968.jpg');
INSERT INTO gz_phone_ VALUES(null,'sss11a','包装无损啊','http://127.0.0.1:3000/img/shop/20181021161606264277602.png','http://127.0.0.1:3000/img/nav/201810010655091408776902.jpg');
INSERT INTO gz_phone_ VALUES(null,'沁sasa','奶粉很棒,给宝宝买的口粮一定要安全','http://127.0.0.1:3000/img/shop/201806040906311510767945.jpg','http://127.0.0.1:3000/img/shop/icon07.png');
INSERT INTO gz_phone_ VALUES(null,'Vanessa小鱼','非常好用啊','http://127.0.0.1:3000/img/shaidan/201810121602401474601503.jpg','http://127.0.0.1:3000/img/nav/201611261914381147441322.jpg');
INSERT INTO gz_phone_ VALUES(null,'Ollye','很好看啊,感觉很配','http://127.0.0.1:3000/img/shaidan/201810131837301185596525.jpg','http://127.0.0.1:3000/img/nav/201807301851451915860968.jpg');
INSERT INTO gz_phone_ VALUES(null,'sss11a','包装无损啊','http://127.0.0.1:3000/img/shop/20181021161606264277602.png','http://127.0.0.1:3000/img/nav/201810010655091408776902.jpg');
INSERT INTO gz_phone_ VALUES(null,'沁sasa','奶粉很棒,给宝宝买的口粮一定要安全','http://127.0.0.1:3000/img/shop/201806040906311510767945.jpg','http://127.0.0.1:3000/img/shop/icon07.png');




INSERT INTO gz_phone_ VALUES(null,'Wdas左先森','本来期望值不高,但是这次网购的经历太让我难忘了,对此真的很开心,很喜欢这个商品,真的很推荐大家购买,给大家种草哦,如果给这次购物评个分的话我想会是满分吧，希望下次继续给我惊喜呢','http://127.0.0.1:3000/img/shaidan/201810121602401474601503.jpg','http://127.0.0.1:3000/img/nav/201611261914381147441322.jpg');
INSERT INTO gz_phone_ VALUES(null,'aaYOL','很好看啊,感觉很配,从颜色到外观真的很配，花了很平民的价钱就买到了心仪的手表,也是一种小幸运吧,希望下次买的物品还是如此高颜值哦','http://127.0.0.1:3000/img/shaidan/201810131837301185596525.jpg','http://127.0.0.1:3000/img/nav/201807301851451915860968.jpg');
INSERT INTO gz_phone_ VALUES(null,'sss11a','包装无损啊','http://127.0.0.1:3000/img/shop/20181021161606264277602.png','http://127.0.0.1:3000/img/nav/201810010655091408776902.jpg');
INSERT INTO gz_phone_ VALUES(null,'沁sasa','奶粉很棒,给宝宝买的口粮一定要安全','http://127.0.0.1:3000/img/shop/201806040906311510767945.jpg','http://127.0.0.1:3000/img/shop/icon07.png');
INSERT INTO gz_phone_ VALUES(null,'VPPoss','非常好用啊','http://127.0.0.1:3000/img/shaidan/201810121602401474601503.jpg','http://127.0.0.1:3000/img/nav/201611261914381147441322.jpg');
INSERT INTO gz_phone_ VALUES(null,'Ollye','很好看啊,感觉很配','http://127.0.0.1:3000/img/shaidan/201810131837301185596525.jpg','http://127.0.0.1:3000/img/nav/201807301851451915860968.jpg');
INSERT INTO gz_phone_ VALUES(null,'sdsss','包装无损啊','http://127.0.0.1:3000/img/shop/20181021161606264277602.png','http://127.0.0.1:3000/img/nav/201810010655091408776902.jpg');
INSERT INTO gz_phone_ VALUES(null,'沁sasa','奶粉很棒,给宝宝买的口粮一定要安全','http://127.0.0.1:3000/img/shop/201806040906311510767945.jpg','http://127.0.0.1:3000/img/shop/icon07.png');


INSERT INTO gz_phone_1 VALUES(null,'Wdas左先森','本来期望值不高,但是这次网购的经历太让我难忘了,对此真的很开心,很喜欢这个商品,真的很推荐大家购买,给大家种草哦,如果给这次购物评个分的话我想会是满分吧，希望下次继续给我惊喜呢','http://127.0.0.1:3000/img/shaidan/201810121602401474601503.jpg','http://127.0.0.1:3000/img/nav/201611261914381147441322.jpg');
INSERT INTO gz_phone_1 VALUES(null,'aaYOL','很好看啊,感觉很配,从颜色到外观真的很配，花了很平民的价钱就买到了心仪的手表,也是一种小幸运吧,希望下次买的物品还是如此高颜值哦','http://127.0.0.1:3000/img/shaidan/201810131837301185596525.jpg','http://127.0.0.1:3000/img/nav/201807301851451915860968.jpg');
INSERT INTO gz_phone_1 VALUES(3,'dsadsa','趁着打折便宜买了很多,以为发过来的包装这么多商品肯定不太仔细,但是工作人员真的很仔细的帮忙打包,让我的物品安全到手,很感谢啊','http://127.0.0.1:3000/img/shaidan/201810131837301185596525.jpg','http://127.0.0.1:3000/img/nav/201807301851451915860968.jpg');





CREATE TABLE gz_search_ugg(
 sid int(11) INT AUTO_INCREMENT PRIMARY KEY,
 title varchar(64) DEFAULT NULL,
 price decimal(10,2) DEFAULT NULL,
 price_old decimal(10,2) DEFAULT NULL,
 img_url varchar(255),
 img_logo varchar(255)
)


CREATE TABLE `gz_phoneshopcart` (

  `pid` int(11)  INT AUTO_INCREMENT PRIMARY KEY,
  
  `user_id` int(11) DEFAULT NULL,
 
  `product_id` int(11) NOT NULL,
  
  `count` int(11) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `img_url` varchar(255),
  `title` varchar(255)
)
