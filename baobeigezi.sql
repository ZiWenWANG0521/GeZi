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

INSERT INTO gz_rec_yx VALUES(null,'��������ѡ������˹�������� 500g*2�� ����Ұ��+����Ⱦ+����+�޴�+��֬��+У԰�͡�','��Ұ��+����Ⱦ+����+�޴�+��֬��+У԰��',399,null,"http://127.0.0.1:3000/img/rec/5ab89241d3044.jpg");
INSERT INTO gz_rec_yx VALUES(null,'��������ѡ������˹�������� 500g ����Ұ��+����Ⱦ+����+�޴�+��֬��+У԰�͡�',null,399,321,"http://127.0.0.1:3000/img/rec/5ab89241d3044.jpg");
INSERT INTO gz_rec_yx VALUES(null,'��������ѡ���䶳��ʳ����������500g/��*2��',null,439,141,"http://127.0.0.1:3000/img/rec/5ab880e50c804.jpg");
INSERT INTO gz_rec_yx VALUES(null,'������͢���ڡ������䶳����͢��Ϻ�� ���Ǵ�Ϻ�� 300g*5�� ���ڲַ���',null,380,200,"http://127.0.0.1:3000/img/rec/2017031615000057269989_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'��������ѡ������˹��Ұ��������250g*3��',null,388.00,302.00,"http://127.0.0.1:3000/img/rec/2018012412003521934090_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'��������ѡ������˹��Ұ��������250g*2��',null,198.00,262.00,"http://127.0.0.1:3000/img/rec/2018012412003521934090_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'��������ѡ������˹��Ұ��������250g',null,180.00,50.00,"http://127.0.0.1:3000/img/rec/2018012412003521934090_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'���������ڡ��䶳������������700g*2�� ���ڲַ���',null,499.00,100.00,"http://127.0.0.1:3000/img/rec/201710319000773743525_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'��������ѡ���䶳�������α�500g',null,258.00,41.00,"http://127.0.0.1:3000/img/rec/2017031616002387156697_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'���������ڡ��䶳������������700g/�� ���ڲַ���',null,299.00,100.00,"http://127.0.0.1:3000/img/rec/201710319000773743525_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'��������ѡ������� 50g���㳦500g/��',null,179.00,271.00,"http://127.0.0.1:3000/img/rec/2017062111000263112896_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'��������ѡ���䶳�������α�500g*2��',null,315.00,264.00,"http://127.0.0.1:3000/img/rec/2017031616002387156697_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'��������ѡ���䶳��ʳ����������500g/��',null,218.00,70.00,"http://127.0.0.1:3000/img/rec/5ab880e50c804.jpg");
INSERT INTO gz_rec_yx VALUES(null,'��������ѡ���ȱ��� Ұ�������䶳�ȱ����������� ������ʳ500g',null,135.00,44.00,"http://127.0.0.1:3000/img/rec/2017062111004194556559_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'��˹���ܾ�������580g/ƿ һ�Ⱥ��� ��Ȼ����',null,65.00,3.00,"http://127.0.0.1:3000/img/rec/2017080310000172771164_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'��˹���ܾ�������590g/ƿ ��ҩ��Դ ��Ȼ����',null,78.00,20.00,"http://127.0.0.1:3000/img/rec/201707269002336652678_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'��˹���ܷ��۱�Яװ150g*6֧ ����Я�� ��Ȼ���� ������',null,85.00,14.00,"http://127.0.0.1:3000/img/rec/2017071416000964438539_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'��˹���ܷ��۱�Яװ150g*3֧ ����Я�� ��Ȼ���� ������',null,39.00,19.20,"http://127.0.0.1:3000/img/rec/2017071415003032228965_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'��˹���ܷ��۱�Яװ150g/֧ ����Я�� ��Ȼ���� ������',null,19.00,9.20,"http://127.0.0.1:3000/img/rec/2017071415002512473951_250x250.jpg");
INSERT INTO gz_rec_yx VALUES(null,'�ݶ�(BAIR)��ͯ�綯��ˢK5����ʽ��ë��ͨ�Զ���ˢ���� ��ɫ ����ҽ�Ƽ���С���Զ���ˢ','��ҽ�Ƽ�',228.00,null,"http://127.0.0.1:3000/img/rec/5aa7a9013c6b5 (1).jpg");
INSERT INTO gz_rec_yx VALUES(null,'�ݶ�(BAIR)��ͯ�綯��ˢK5����ʽ��ë��ͨ�Զ���ˢ���� ��ɫ ����ҽ�Ƽ���С���Զ���ˢ',null,228.00,70.00,"http://127.0.0.1:3000/img/rec/5aa7a7f5652d1.jpg");
INSERT INTO gz_rec_yx VALUES(null,'�ݶ���BAIR�����˵綯��ˢX1 Plus  �ۺ�ɫ+����ɫ2ֻ�������',null,375.00,181.00,"http://127.0.0.1:3000/img/rec/5aa7a5b4829fb.jpg");
INSERT INTO gz_rec_yx VALUES(null,'�ݶ���BAIR�����˵綯��ˢX1 Plus �����Զ���ë��ˮ ����ɫ ������+8��ˢͷ+��Я�У�',null,208.00,70.00,"http://127.0.0.1:3000/img/rec/5aa7a4d5ef40f.jpg");
INSERT INTO gz_rec_yx VALUES(null,'�ݶ���BAIR�����˵綯��ˢX1 Plus �����Զ���ë��ˮ �ۺ�ɫ ������+8��ˢͷ+��Я�У�',null,208.00,70.00,"http://127.0.0.1:3000/img/rec/5aa7a4d5ef40f.jpg");
INSERT INTO gz_rec_yx VALUES(null,'�ݶ�(BAIR)���ʽ��ͯ�綯��ˢ��ˢë  3������ K3ƻ����  (�ǻ����������������ñ�������ˢ����',null,168.00,90.00,"http://127.0.0.1:3000/img/rec/5a93c45ab5aa8.jpg");
INSERT INTO gz_rec_yx VALUES(null,'�ݶ�(BAIR)���ʽ��ͯ�綯��ˢ��ˢë  3������ K3���ʻ�  (�ǻ����������������ñ�������ˢ����',null,168.00,90.00,"http://127.0.0.1:3000/img/rec/5a93c431bc407.jpg");
INSERT INTO gz_rec_yx VALUES(null,'�ݶ�(BAIR)���ʽ��ͯ�綯��ˢ��ˢë  3������ K3ӣ�Һ�  (�ǻ����������������ñ�������ˢ����',null,168.00,90.00,"http://127.0.0.1:3000/img/rec/5a93c3a3145b5.jpg");
INSERT INTO gz_rec_yx VALUES(null,'С����puppy��С�;���ǿ�����ó������������� D-9007���ֱ����߲ٿ� 1700W���� 4����ͷ��',null,1399.00,2900.00,"http://127.0.0.1:3000/img/rec/5a93b2961d347.jpg");
INSERT INTO gz_rec_yx VALUES(null,'С����puppy���߶˳��������� �ֳֳ��������� D-708��������ȡ�� 120W������ 4���߳���',null,258.00,140.00,"http://127.0.0.1:3000/img/rec/5a93af509101e.jpg");
INSERT INTO gz_rec_yx VALUES(null,'С����puppy�������������������ֳ�ʽС�;���ǿ�����ʳ��������D-531',null,980.00,2719.00,"http://127.0.0.1:3000/img/rec/5a82506d1a73b.jpg");
INSERT INTO gz_rec_yx VALUES(null,'С����puppy�����ó������������ֳ���ʽ���С��������D-532',null,1380.00,2519.00,"http://127.0.0.1:3000/img/rec/5a95160b31f17.jpg");
INSERT INTO gz_rec_yx VALUES(null,'С����puppy�������������߼���ǿ��ɱ�����������̴��ϳ�����������D-605',null,680.00,1910.00,"http://127.0.0.1:3000/img/rec/5a95169eceae7.jpg");
INSERT INTO gz_rec_yx VALUES(null,'С����puppy�������������߼���ǿ��ɱ�����������̴��ϳ�����������D-605',null,980.00,1470.00,"http://127.0.0.1:3000/img/rec/5a82b19b144ee.jpg");
INSERT INTO gz_rec_yx VALUES(null,'С����puppy�������������ֳ�ʽ��̺������С������ǿ�������޺Ĳ�D-521',null,380.00,210.00,"http://127.0.0.1:3000/img/rec/5a82b75b57953.jpg");


CREATE TABLE gz_search_ugg(
 sid int(11) INT AUTO_INCREMENT PRIMARY KEY,
 title varchar(64) DEFAULT NULL,
 price decimal(10,2) DEFAULT NULL,
 price_old decimal(10,2) DEFAULT NULL,
 img_url varchar(255),
 img_logo varchar(255)
);
//��һ��
INSERT INTO gz_search VALUES(null,'Aptamil/������ �̷۰׽�� 800g��Ӣ��ֱ��/���ʰ�˰��',348.00,478.00,"http://127.0.0.1:3000/img/search/2017111619004107167979_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015001465509544.png");
INSERT INTO gz_search VALUES(null,'A2�׽�ϵ��Ӥ�׶��̷�1��900g*2  ����ֱ�ʡ����ʰ�˰��',486.00,560.00,"http://127.0.0.1:3000/img/search/2016082917002849993375_250x250.png","http://127.0.0.1:3000/img/search/2017041015002422782804.png");
INSERT INTO gz_search VALUES(null,'A2Ӥ�׶��̷�3��900g*2�� ����ֱ�ʡ����ʰ�˰��',523.71,688.00,"http://127.0.0.1:3000/img/search/2016072810001210765341_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");
INSERT INTO gz_search VALUES(null,'A2�׽�ϵ��Ӥ�׶��̷�3��900g*��3�ޡ����ʰ�˰����ֱ��',523.71,688.00,"http://127.0.0.1:3000/img/search/2016083117003754269784_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");
//�ڶ���
INSERT INTO gz_search VALUES(null,'������ֱ��&��˰���ʡ�����ţ���̷�3��  800g��Ͱװ',1111.00,1320.00,"http://127.0.0.1:3000/img/search/2017030815001780391759_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015003982236986.png");
INSERT INTO gz_search VALUES(null,'�¹�ֱ��  ����Holle �л�Ӥ���䷽�̷� ����ţ�̷� 2�� 600g*4�ޡ����ʰ�˰��',615.00,950.00,"http://127.0.0.1:3000/img/search/5baf25d4cd45d.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");
INSERT INTO gz_search VALUES(null,'�¹�ֱ��  ����Holle �л�Ӥ���䷽�̷� ����ţ�̷� 1�� 400g*4�ޡ����ʰ�˰��',498.00,780.00,"http://127.0.0.1:3000/img/search/5baf24c26040e.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");
INSERT INTO gz_search VALUES(null,'���ʰ�˰�Ĵ�����Caprilac�������̷۴�ͯ/ѧ��/�������̷� 1000g',227.00,280.00,"http://127.0.0.1:3000/img/search/2016082914002699305989_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");
//������
INSERT INTO gz_search VALUES(null,'�¹�ֱ��  ����Holle �л�Ӥ���䷽�̷�����ţ�̷� 4�� 600g*4�ޡ����ʰ�˰��',615.00,950.00,"http://127.0.0.1:3000/img/search/5baf2791a4ab0.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");
INSERT INTO gz_search VALUES(null,'OliviaӪ���ɳ��سɳ��̷� ���������䷽�̷� 480g*2 ��2�С�  ���ʰ�˰������ֱ��',192.00,319.00,"http://127.0.0.1:3000/img/search/2017041316000726041146_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");
INSERT INTO gz_search VALUES(null,'�¹�ֱ��  ����Holle �л�Ӥ���䷽�̷� ����ţ�̷� 3�� 600g*4�ޡ����ʰ�˰��',615.00,950.00,"http://127.0.0.1:3000/img/search/5baf26e389c55.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");
INSERT INTO gz_search VALUES(null,' ������ֱ��&��˰���ʡ�����ţ���̷�4��  800g������װ��',999.00,1111.00,"http://127.0.0.1:3000/img/search/2017030815003011324232_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015003982236986.png");
//������
INSERT INTO gz_search VALUES(null,'����ֱ�ʡ����ʰ�˰��Aptamil�������׽��Ӥ��ţ�̷�3�� 900g*2  ��������',459.00,600.00,"http://127.0.0.1:3000/img/search/2016080611002614814644_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");

INSERT INTO gz_search VALUES(null,'HIPPϲ�� �л��̷� 12+ 1������ 800G',232.00,300.00,"http://127.0.0.1:3000/img/search/5bd853b1c3d70.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");

INSERT INTO gz_search VALUES(null,'Cow Gate/ţ�� �̷� 3�� 1-2�� �̷�800g��Ӣ��ֱ��/���ʰ�˰��',230.00,398.00,"http://127.0.0.1:3000/img/search/5bbd62dd02b74.jpg","http://127.0.0.1:3000/img/search/2017041015001465509544.png");

INSERT INTO gz_search VALUES(null,'HIPP/ϲ�� �䷽�л��������̷� HA����������Ӥ�׶��䷽�̷�1�Σ�0-6���£�500g*4�� ���¹�ֱ��/���ʰ�˰��',538.00,950.00,"http://127.0.0.1:3000/img/search/5baf340de7901.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");
//������
INSERT INTO gz_search VALUES(null,'�¹�ֱ�� HIPP �䷽�л��������̷� HA����������Ӥ�׶��䷽�̷�pre�Σ�0-6���£�500g*4�ޡ����ʰ�˰��',628.00,950.00,"http://127.0.0.1:3000/img/search/5baf32f5c4242.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");

INSERT INTO gz_search VALUES(null,'����ֱ�ʡ�4�ް��ʡ�Arla Baby&Me;���ϳ��ر��������л��̷�600g ',927.00,975.00,"http://127.0.0.1:3000/img/search/2017081013001498641065_250x250.jpg","http://127.0.0.1:3000/img/search/2017011710000392658415.png");

INSERT INTO gz_search VALUES(null,'HIPPϲ�� �������̷� PRE�� 0-6���� 600G Ч��19��5��',236.00,320.00,"http://127.0.0.1:3000/img/search/5bd853b1c3d70.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");

INSERT INTO gz_search VALUES(null,'�¹�ֱ�� HIPP �䷽�л��������̷� HA����������Ӥ�׶��䷽�̷�pre�Σ�0-6���£�500g*4�ޡ����ʰ�˰��',628.00,950.00,"http://127.0.0.1:3000/img/search/5baf32f5c4242.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");
//������
INSERT INTO gz_search VALUES(null,'������ֱ��&��˰���ʡ�����Nutricia �ٷ���Ȩ ţ���̷� 5�� 800g��Ͱװ',999.00,1320.00,"http://127.0.0.1:3000/img/search/2017030815003011324232_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015003982236986.png");

INSERT INTO gz_search VALUES(null,'����ֱ�ʡ����ʰ�˰������ţ���̷�4��  800g ��Ͱװ',488.00,880.00,"http://127.0.0.1:3000/img/search/2017050311002331577338_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015003982236986.png");

INSERT INTO gz_search VALUES(null,'Aptamil/������ ��ˮ���̷�HA Ӥ�׶��̷� pre��(0-3����)800g*2�� ���¹�ֱ��/���ʰ�˰��',365.00,690.00,"http://127.0.0.1:3000/img/search/5bac7971b44f8.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");

INSERT INTO gz_search VALUES(null,'A2�׽�ϵ��Ӥ�׶��̷�2��900g��3�ޡ����ʰ�˰����ֱ��',777.00,1200.00,"http://127.0.0.1:3000/img/search/5bda6fa2b9913.png","http://127.0.0.1:3000/img/search/2017041015002422782804.png");
//������
INSERT INTO gz_search VALUES(null,'Holle/���� �л�Ӥ���䷽�̷� �������̷� 1�� 400g*4�� ���¹�ֱ��/���ʰ�˰��',668.00,1150.00,"http://127.0.0.1:3000/img/search/5baf4ba7ec68b.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");

INSERT INTO gz_search VALUES(null,'6�����ʰ�˰����ֱ��Devondale ������֬�߸Ƴ����̷�ѧ���������̷۶�ͯ�����겹�� 1kg*6',499.49,599.00,"http://127.0.0.1:3000/img/search/5bcfe523021ef.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");

INSERT INTO gz_search VALUES(null,'Ӣ��ֱ�ʡ����ʰ�˰��ȸ���̷�NIDO ���˸߸�ȫ֬�̷� 900g',149.00,199.00,"http://127.0.0.1:3000/img/search/2017121118002259499048_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015001465509544.png");

INSERT INTO gz_search VALUES(null,'�¹�ֱ��  ����Holle �л�Ӥ���䷽�̷� �������̷� 2�� 400g*4�ޡ����ʰ�˰��',768.00,1150.00,"http://127.0.0.1:3000/img/search/5baf4c3dda8ae.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");

//�ڰ���
INSERT INTO gz_search VALUES(null,'����ֱ�ʡ����ʰ�˰��������Ӥ��ţ�̷۽�װ3�� 900g 2��',453.00,550.00,"http://127.0.0.1:3000/img/search/2016080611002614814644_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");

INSERT INTO gz_search VALUES(null,'��2�����ʰ�˰����ֱ�ʡ�Caprilac�������̷۴�ͯ/ѧ��/�������̷� 1000g*2',450.18,499.00,"http://127.0.0.1:3000/img/search/2016082914002699305989_250x250.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");

INSERT INTO gz_search VALUES(null,'����ֱ�ʰ��ʰ�˰����ȫ֬�����̷� 1kg*2�� ',185.10,220.00,"http://127.0.0.1:3000/img/search/5bcfe6c8d591d.jpg","http://127.0.0.1:3000/img/search/2017041015002422782804.png");

INSERT INTO gz_search VALUES(null,'HIPP/ϲ�� �������̷� 2+��2�����ϣ�600g   ���¹�ֱ��/���ʰ�˰��',399.00,760.00,"http://127.0.0.1:3000/img/search/5badf1a31bcaf.jpg","http://127.0.0.1:3000/img/search/2017041015001193438623.png");




CREATE TABLE gz_shoppingcart_item(
  
iid int(11) INT AUTO_INCREMENT PRIMARY KEYL,
 
user_id int(11) DEFAULT NULL,

product_id int(11) DEFAULT NULL,
 
count int(11) DEFAULT NULL,
 
is_checked tinyint(1) DEFAULT NULL

)

INSERT INTO gz_phone_ VALUES(null,'VanessaС��','�ǳ����ð�','http://127.0.0.1:3000/img/shaidan/201810121602401474601503.jpg','http://127.0.0.1:3000/img/nav/201611261914381147441322.jpg');
INSERT INTO gz_phone_ VALUES(null,'Ollye','�ܺÿ���,�о�����','http://127.0.0.1:3000/img/shaidan/201810131837301185596525.jpg','http://127.0.0.1:3000/img/nav/201807301851451915860968.jpg');
INSERT INTO gz_phone_ VALUES(null,'sss11a','��װ����','http://127.0.0.1:3000/img/shop/20181021161606264277602.png','http://127.0.0.1:3000/img/nav/201810010655091408776902.jpg');
INSERT INTO gz_phone_ VALUES(null,'��sasa','�̷ۺܰ�,��������Ŀ���һ��Ҫ��ȫ','http://127.0.0.1:3000/img/shop/201806040906311510767945.jpg','http://127.0.0.1:3000/img/shop/icon07.png');
INSERT INTO gz_phone_ VALUES(null,'VanessaС��','�ǳ����ð�','http://127.0.0.1:3000/img/shaidan/201810121602401474601503.jpg','http://127.0.0.1:3000/img/nav/201611261914381147441322.jpg');
INSERT INTO gz_phone_ VALUES(null,'Ollye','�ܺÿ���,�о�����','http://127.0.0.1:3000/img/shaidan/201810131837301185596525.jpg','http://127.0.0.1:3000/img/nav/201807301851451915860968.jpg');
INSERT INTO gz_phone_ VALUES(null,'sss11a','��װ����','http://127.0.0.1:3000/img/shop/20181021161606264277602.png','http://127.0.0.1:3000/img/nav/201810010655091408776902.jpg');
INSERT INTO gz_phone_ VALUES(null,'��sasa','�̷ۺܰ�,��������Ŀ���һ��Ҫ��ȫ','http://127.0.0.1:3000/img/shop/201806040906311510767945.jpg','http://127.0.0.1:3000/img/shop/icon07.png');




INSERT INTO gz_phone_ VALUES(null,'Wdas����ɭ','��������ֵ����,������������ľ���̫����������,�Դ���ĺܿ���,��ϲ�������Ʒ,��ĺ��Ƽ���ҹ���,������ֲ�Ŷ,�������ι��������ֵĻ�����������ְɣ�ϣ���´μ������Ҿ�ϲ��','http://127.0.0.1:3000/img/shaidan/201810121602401474601503.jpg','http://127.0.0.1:3000/img/nav/201611261914381147441322.jpg');
INSERT INTO gz_phone_ VALUES(null,'aaYOL','�ܺÿ���,�о�����,����ɫ�������ĺ��䣬���˺�ƽ��ļ�Ǯ���������ǵ��ֱ�,Ҳ��һ��С���˰�,ϣ���´������Ʒ������˸���ֵŶ','http://127.0.0.1:3000/img/shaidan/201810131837301185596525.jpg','http://127.0.0.1:3000/img/nav/201807301851451915860968.jpg');
INSERT INTO gz_phone_ VALUES(null,'sss11a','��װ����','http://127.0.0.1:3000/img/shop/20181021161606264277602.png','http://127.0.0.1:3000/img/nav/201810010655091408776902.jpg');
INSERT INTO gz_phone_ VALUES(null,'��sasa','�̷ۺܰ�,��������Ŀ���һ��Ҫ��ȫ','http://127.0.0.1:3000/img/shop/201806040906311510767945.jpg','http://127.0.0.1:3000/img/shop/icon07.png');
INSERT INTO gz_phone_ VALUES(null,'VPPoss','�ǳ����ð�','http://127.0.0.1:3000/img/shaidan/201810121602401474601503.jpg','http://127.0.0.1:3000/img/nav/201611261914381147441322.jpg');
INSERT INTO gz_phone_ VALUES(null,'Ollye','�ܺÿ���,�о�����','http://127.0.0.1:3000/img/shaidan/201810131837301185596525.jpg','http://127.0.0.1:3000/img/nav/201807301851451915860968.jpg');
INSERT INTO gz_phone_ VALUES(null,'sdsss','��װ����','http://127.0.0.1:3000/img/shop/20181021161606264277602.png','http://127.0.0.1:3000/img/nav/201810010655091408776902.jpg');
INSERT INTO gz_phone_ VALUES(null,'��sasa','�̷ۺܰ�,��������Ŀ���һ��Ҫ��ȫ','http://127.0.0.1:3000/img/shop/201806040906311510767945.jpg','http://127.0.0.1:3000/img/shop/icon07.png');


INSERT INTO gz_phone_1 VALUES(null,'Wdas����ɭ','��������ֵ����,������������ľ���̫����������,�Դ���ĺܿ���,��ϲ�������Ʒ,��ĺ��Ƽ���ҹ���,������ֲ�Ŷ,�������ι��������ֵĻ�����������ְɣ�ϣ���´μ������Ҿ�ϲ��','http://127.0.0.1:3000/img/shaidan/201810121602401474601503.jpg','http://127.0.0.1:3000/img/nav/201611261914381147441322.jpg');
INSERT INTO gz_phone_1 VALUES(null,'aaYOL','�ܺÿ���,�о�����,����ɫ�������ĺ��䣬���˺�ƽ��ļ�Ǯ���������ǵ��ֱ�,Ҳ��һ��С���˰�,ϣ���´������Ʒ������˸���ֵŶ','http://127.0.0.1:3000/img/shaidan/201810131837301185596525.jpg','http://127.0.0.1:3000/img/nav/201807301851451915860968.jpg');
INSERT INTO gz_phone_1 VALUES(3,'dsadsa','���Ŵ��۱������˺ܶ�,��Ϊ�������İ�װ��ô����Ʒ�϶���̫��ϸ,���ǹ�����Ա��ĺ���ϸ�İ�æ���,���ҵ���Ʒ��ȫ����,�ܸ�л��','http://127.0.0.1:3000/img/shaidan/201810131837301185596525.jpg','http://127.0.0.1:3000/img/nav/201807301851451915860968.jpg');





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
