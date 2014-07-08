<?php
 
$installer = $this;
 
$installer->startSetup();
 
$trans = Mage::helper('job'); 
 
$installer->run("
 
DROP TABLE IF EXISTS {$this->getTable('list_location')};
CREATE TABLE {$this->getTable('list_location')} (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL default ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (1,'Hồ Chí Minh');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (2,'Hà Nội');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (3,'Hải Phòng');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (4,'Thừa Thiên-Huế');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (5,'Đà Nẵng');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (6,'Cần Thơ');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (7,'An Giang');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (8,'BR - Vũng Tàu');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (9,'Bắc Cạn');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (10,'Bắc Giang');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (11,'Bạc Liêu');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (12,'Bắc Ninh');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (13,'Bến Tre');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (14,'Bình Định');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (15,'Bình Dương');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (16,'Bình Phước');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (17,'Bình Thuận');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (18,'Cà Mau');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (19,'Cao Bằng');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (20,'Đắk Lắk');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (21,'Đắk Nông');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (22,'Điện Biên');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (23,'Đồng Nai');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (24,'Đồng Tháp');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (25,'Gia Lai');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (26,'Hà Giang');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (27,'Hà Nam');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (29,'Hà Tĩnh');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (30,'Hải Dương');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (31,'Hậu Giang');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (32,'Hòa Bình');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (33,'Hưng Yên');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (34,'Khánh Hòa');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (35,'Kiên Giang');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (36,'Kon Tum');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (37,'Lai Châu');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (38,'Lâm Đồng');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (39,'Lạng Sơn');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (40,'Lào Cai');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (41,'Long An');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (42,'Nam Định');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (43,'Nghệ An');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (44,'Ninh Bình');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (45,'Ninh Thuận');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (46,'Phú Thọ');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (47,'Phú Yên');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (48,'Quảng Bình');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (49,'Quảng Nam');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (50,'Quảng Ngãi');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (51,'Quảng Ninh');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (52,'Quảng Trị');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (53,'Sóc Trăng');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (54,'Sơn La');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (55,'Tây Ninh');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (56,'Thái Bình');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (57,'Thái Nguyên');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (58,'Thanh Hóa');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (59,'Tiền Giang');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (60,'Trà Vinh');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (61,'Tuyên Quang');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (62,'Vĩnh Long');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (63,'Vĩnh Phúc');
INSERT INTO {$this->getTable('list_location')} (id,name) VALUES (64,'Yên Bái');
	
    ");
	

 
$installer->endSetup();