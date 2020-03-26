/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020-03-26 11:14:16                          */
/*==============================================================*/
DROP DATABASE IF EXISTS dzw;

CREATE DATABASE dzw;

USE dzw;


DROP TABLE IF EXISTS Relationship_12;

DROP TABLE IF EXISTS address;

DROP TABLE IF EXISTS artisan_set;

DROP TABLE IF EXISTS brand;

DROP TABLE IF EXISTS car;

DROP TABLE IF EXISTS car_brand;

DROP TABLE IF EXISTS car_file;

DROP TABLE IF EXISTS CLIENT;

DROP TABLE IF EXISTS functions;

DROP TABLE IF EXISTS item;

DROP TABLE IF EXISTS item_type;

DROP TABLE IF EXISTS maintain;

DROP TABLE IF EXISTS maintain_item;

DROP TABLE IF EXISTS post;

DROP TABLE IF EXISTS supplier;

DROP TABLE IF EXISTS supply_unit;

DROP TABLE IF EXISTS USER;

DROP TABLE IF EXISTS work_car;

DROP TABLE IF EXISTS 技工星级表;

/*==============================================================*/
/* Table: Relationship_12                                       */
/*==============================================================*/
CREATE TABLE Relationship_12
(
   post_id              INT NOT NULL,
   function_id          INT NOT NULL,
   PRIMARY KEY (post_id, function_id)
);

/*==============================================================*/
/* Table: address                                               */
/*==============================================================*/
CREATE TABLE address
(
   address_id           INT NOT NULL AUTO_INCREMENT,
   address_name         VARCHAR(10),
   address_fid          INT,
   Attribute_101        VARCHAR(10),
   Attribute_102        VARCHAR(10),
   Attribute_103        VARCHAR(10),
   PRIMARY KEY (address_id)
);

/*==============================================================*/
/* Table: artisan_set                                           */
/*==============================================================*/
CREATE TABLE artisan_set
(
   artisan_set_id       INT NOT NULL AUTO_INCREMENT,
   artisan_set_name     VARCHAR(10),
   artisan_set_money    FLOAT,
   artisan_set_fid      INT,
   PRIMARY KEY (artisan_set_id)
);

/*==============================================================*/
/* Table: brand                                                 */
/*==============================================================*/
CREATE TABLE brand
(
   brand_id             INT NOT NULL AUTO_INCREMENT,
   brand_name           VARCHAR(10),
   Attribute_79         VARCHAR(10),
   Attribute_80         VARCHAR(20),
   Attribute_81         VARCHAR(30),
   Attribute_82         VARCHAR(40),
   PRIMARY KEY (brand_id)
);

/*==============================================================*/
/* Table: car                                                   */
/*==============================================================*/
CREATE TABLE car
(
   car_id               INT NOT NULL AUTO_INCREMENT,
   client_id            INT,
   car_card             VARCHAR(12),
   car_model            VARCHAR(20),
   car_putdate          DATE,
   car_outdate          DATE,
   car_status           VARCHAR(10),
   car_name             VARCHAR(5),
   car_phone            VARCHAR(16),
   car_type             INT,
   Attribute_36         VARCHAR(10),
   Attribute_39         VARCHAR(10),
   PRIMARY KEY (car_id)
);

/*==============================================================*/
/* Table: car_brand                                             */
/*==============================================================*/
CREATE TABLE car_brand
(
   car_brand_id         INT NOT NULL AUTO_INCREMENT,
   car_brand_name       VARCHAR(10),
   Attribute_74         VARCHAR(20),
   Attribute_75         VARCHAR(20),
   Attribute_76         VARCHAR(20),
   PRIMARY KEY (car_brand_id)
);

/*==============================================================*/
/* Table: car_file                                              */
/*==============================================================*/
CREATE TABLE car_file
(
   car_file_id          INT NOT NULL AUTO_INCREMENT,
   car_brand_id         INT,
   car_file_name        VARCHAR(10),
   car_file_type        VARCHAR(15),
   car_file_put_money   INT,
   car_file_out_money   INT,
   Attribute_71         VARCHAR(20),
   Attribute_72         VARCHAR(20),
   Attribute_73         VARCHAR(20),
   PRIMARY KEY (car_file_id)
);

/*==============================================================*/
/* Table: client                                                */
/*==============================================================*/
CREATE TABLE CLIENT
(
   client_id            INT NOT NULL AUTO_INCREMENT,
   client_name          VARCHAR(5),
   client_card          INT,
   client_pwd           VARCHAR(10),
   card_date            DATE,
   client_money         FLOAT,
   client_money_sum     FLOAT,
   client_fete_date     DATE,
   client_address       VARCHAR(50),
   client_type          INT,
   Attribute_139        VARCHAR(20),
   PRIMARY KEY (client_id)
);

/*==============================================================*/
/* Table: functions                                             */
/*==============================================================*/
CREATE TABLE functions
(
   function_id          INT NOT NULL AUTO_INCREMENT,
   function_name        VARCHAR(10),
   function_url         VARCHAR(100),
   function_date        DATE,
   function_fid         INT,
   `function_code`      VARCHAR(10),
   PRIMARY KEY (function_id),
   KEY AK_Identifier_2 (function_name)
);

/*==============================================================*/
/* Table: item                                                  */
/*==============================================================*/
CREATE TABLE item
(
   item_id              INT NOT NULL AUTO_INCREMENT,
   item_type_id         INT,
   item_divide          VARCHAR(10),
   item_name            VARCHAR(20),
   item_time            FLOAT,
   item_money           FLOAT,
   item_type            INT,
   item_brand_name      VARCHAR(20),
   Attribute_93         VARCHAR(20),
   Attribute_94         VARCHAR(20),
   PRIMARY KEY (item_id)
);

/*==============================================================*/
/* Table: item_type                                             */
/*==============================================================*/
CREATE TABLE item_type
(
   item_type_id         INT NOT NULL AUTO_INCREMENT,
   item_type_name       VARCHAR(20),
   item_type_fid        INT,
   Attribute_96         VARCHAR(10),
   Attribute_97         VARCHAR(10),
   PRIMARY KEY (item_type_id)
);

/*==============================================================*/
/* Table: maintain                                              */
/*==============================================================*/
CREATE TABLE maintain
(
   maintain_id          VARCHAR(20) NOT NULL,
   car_id               INT,
   artisan_set_id       INT,
   artisan_id           INT,
   maintain_car_card    VARCHAR(12),
   maintain_car_model   VARCHAR(20),
   maintain_car_name    VARCHAR(5),
   maintain_car_pohne   VARCHAR(16),
   maintain_status      VARCHAR(5),
   maintain_mark        VARCHAR(100),
   maintain_type        INT,
   maintain_money       FLOAT,
   maintain_received    FLOAT,
   maintain_date        DATE,
   Attribute_58         VARCHAR(20),
   Attribute_140        VARCHAR(20),
   PRIMARY KEY (maintain_id)
);

/*==============================================================*/
/* Table: maintain_item                                         */
/*==============================================================*/
CREATE TABLE maintain_item
(
   maintain_item_id     INT NOT NULL AUTO_INCREMENT,
   maintain_id          VARCHAR(20),
   maintain_item_name   VARCHAR(20),
   maintain_item_money  FLOAT,
   maintain_time        FLOAT,
   maintain_item_mark   VARCHAR(50),
   maintain_item_reced  FLOAT,
   PRIMARY KEY (maintain_item_id)
);

/*==============================================================*/
/* Table: post                                                  */
/*==============================================================*/
CREATE TABLE post
(
   post_id              INT NOT NULL AUTO_INCREMENT,
   post_name            VARCHAR(10),
   post_date            DATE,
   post_fid             INT,
   PRIMARY KEY (post_id)
);

/*==============================================================*/
/* Table: supplier                                              */
/*==============================================================*/
CREATE TABLE supplier
(
   supplier_id          INT NOT NULL AUTO_INCREMENT,
   supply_unit_id       INT,
   supplier_name        VARCHAR(5),
   supplier_duty        VARCHAR(10),
   supplier_phone       VARCHAR(15),
   supplier_address     VARCHAR(50),
   Attribute_118        VARCHAR(20),
   Attribute_119        VARCHAR(20),
   PRIMARY KEY (supplier_id)
);

/*==============================================================*/
/* Table: supply_unit                                           */
/*==============================================================*/
CREATE TABLE supply_unit
(
   supply_unit_id       INT NOT NULL AUTO_INCREMENT,
   address_id           INT,
   supply_unit_name     VARCHAR(30),
   supply_unit_coding   VARCHAR(10),
   supply_unit_address  VARCHAR(50),
   supply_unit_product  VARCHAR(20),
   supply_unit_mark     VARCHAR(100),
   Attribute_110        VARCHAR(10),
   Attribute_111        VARCHAR(20),
   Attribute_112        VARCHAR(30),
   PRIMARY KEY (supply_unit_id)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
CREATE TABLE USER
(
   user_id              INT NOT NULL AUTO_INCREMENT,
   artisan_id           INT,
   artisan_set_id       INT,
   post_id              INT,
   user_name            VARCHAR(10),
   user_pwd             VARCHAR(10),
   user_date            DATE,
   user_address         VARCHAR(100),
   user_educ            VARCHAR(20),
   user_school          VARCHAR(30),
   user_entry           DATE,
   user_dimiss          DATE,
   user_pay             FLOAT,
   user_status          VARCHAR(10),
   user_store2          VARCHAR(20),
   user_store3          VARCHAR(30),
   user_store4          VARCHAR(40),
   user_store1          VARCHAR(10),
   PRIMARY KEY (user_id)
);

/*==============================================================*/
/* Table: work_car                                              */
/*==============================================================*/
CREATE TABLE work_car
(
   work_car_id          INT NOT NULL AUTO_INCREMENT,
   work_car_name        VARCHAR(5),
   work_car_card        VARCHAR(12),
   work_car_model       VARCHAR(10),
   work_car_put_date    DATE,
   work_car_out_date    DATE,
   work_car_phone       VARCHAR(15),
   work_car_mileage     FLOAT,
   work_car_fete_date   DATE,
   Attribute_129        VARCHAR(20),
   Attribute_137        VARCHAR(20),
   PRIMARY KEY (work_car_id)
);

/*==============================================================*/
/* Table: 技工星级表                                                 */
/*==============================================================*/
CREATE TABLE artisan
(
   artisan_id           INT NOT NULL AUTO_INCREMENT,
   artisan_name         VARCHAR(10),
   artisan_money        FLOAT,
   PRIMARY KEY (artisan_id)
);

ALTER TABLE Relationship_12 ADD CONSTRAINT FK_Relationship_12 FOREIGN KEY (post_id)
      REFERENCES post (post_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE Relationship_12 ADD CONSTRAINT FK_Relationship_13 FOREIGN KEY (function_id)
      REFERENCES functions (function_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE car ADD CONSTRAINT FK_Relationship_4 FOREIGN KEY (client_id)
      REFERENCES CLIENT (client_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE car_file ADD CONSTRAINT FK_Relationship_9 FOREIGN KEY (car_brand_id)
      REFERENCES car_brand (car_brand_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE item ADD CONSTRAINT FK_Relationship_14 FOREIGN KEY (item_type_id)
      REFERENCES item_type (item_type_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE maintain ADD CONSTRAINT FK_Relationship_5 FOREIGN KEY (car_id)
      REFERENCES car (car_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE maintain ADD CONSTRAINT FK_Relationship_7 FOREIGN KEY (artisan_id)
      REFERENCES artisan (artisan_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE maintain ADD CONSTRAINT FK_Relationship_8 FOREIGN KEY (artisan_set_id)
      REFERENCES artisan_set (artisan_set_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE maintain_item ADD CONSTRAINT FK_Relationship_6 FOREIGN KEY (maintain_id)
      REFERENCES maintain (maintain_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE supplier ADD CONSTRAINT FK_Relationship_10 FOREIGN KEY (supply_unit_id)
      REFERENCES supply_unit (supply_unit_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE supply_unit ADD CONSTRAINT FK_Relationship_11 FOREIGN KEY (address_id)
      REFERENCES address (address_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE USER ADD CONSTRAINT FK_Relationship_1 FOREIGN KEY (post_id)
      REFERENCES post (post_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE USER ADD CONSTRAINT FK_Relationship_2 FOREIGN KEY (artisan_id)
      REFERENCES artisan (artisan_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE USER ADD CONSTRAINT FK_Relationship_3 FOREIGN KEY (artisan_set_id)
      REFERENCES artisan_set (artisan_set_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
      
  ALTER DATABASE dzw DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
  
ALTER TABLE `artisan` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `address` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `artisan_set` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `brand` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `car` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `car_brand` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `car_file` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `client` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `functions` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `item` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `item_type` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `maintain` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `maintain_item` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `post` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `relationship_12` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `supplier` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `supply_unit` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `user` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE `work_car` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;

