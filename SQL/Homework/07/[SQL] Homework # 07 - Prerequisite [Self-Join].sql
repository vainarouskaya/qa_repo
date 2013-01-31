-- Create database db_test

CREATE DATABASE IF NOT EXISTS db_test;

-- Go to database db_test

USE db_test;

-- Delete table managers

DROP TABLE IF EXISTS managers;

-- Create table managers

CREATE TABLE managers (
    EMPID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    EMPNAME char(35) NOT NULL default '',
    MGRID int(11) NULL
    );

-- Dumping data for table managers

INSERT INTO managers VALUES (0001,'Lewis  Schneider',null);
INSERT INTO managers VALUES (0002,'Flick  Reese',0001);
INSERT INTO managers VALUES (0003,'Kmanagers  Agg',0001);
INSERT INTO managers VALUES (0004,'Marjorie  Guess',0001);
INSERT INTO managers VALUES (0005,'Jericho  Rifler',0001);
INSERT INTO managers VALUES (0006,'Davina  Tomey',0002);
INSERT INTO managers VALUES (0007,'Kelly  Sidower',0002);
INSERT INTO managers VALUES (0008,'Piers  Hoenshell',0002);
INSERT INTO managers VALUES (0009,'Mckenzie  Herndon',0002);
INSERT INTO managers VALUES (0010,'Zeke  Cross',0002);
INSERT INTO managers VALUES (0011,'Whitaker  Sanders',0003);
INSERT INTO managers VALUES (0012,'Yorick  Gaskins',0003);
INSERT INTO managers VALUES (0013,'Sophia  Yates',0003);
INSERT INTO managers VALUES (0014,'Marsha  Shaw',0003);
INSERT INTO managers VALUES (0015,'Skylar  Ritter',0003);
INSERT INTO managers VALUES (0016,'Esmeralda  Flickinger',0003);
INSERT INTO managers VALUES (0017,'Nikolas  Fulton',0003);
INSERT INTO managers VALUES (0018,'Ginnie  Sandys',0003);
INSERT INTO managers VALUES (0019,'Clem  Burns',0004);
INSERT INTO managers VALUES (0020,'Marian  Sloan',0004);
INSERT INTO managers VALUES (0021,'Addie  James',0004);
INSERT INTO managers VALUES (0022,'Mackenzie  Richter',0004);
INSERT INTO managers VALUES (0023,'Crofton  Poehl',0005);
INSERT INTO managers VALUES (0024,'Laurissa  Buttermore',0005);
INSERT INTO managers VALUES (0025,'Tonia  Fox',0005);
INSERT INTO managers VALUES (0026,'Eleanora  Finlay',0005);
INSERT INTO managers VALUES (0027,'Ysabel  Williamson',0005);
INSERT INTO managers VALUES (0028,'Alys  Moberly',0005);
INSERT INTO managers VALUES (0029,'Arnold  Wise',0005);
INSERT INTO managers VALUES (0030,'Ashlynn  Hoenshell',0005);
INSERT INTO managers VALUES (0031,'Dale  Stafford',0020);
INSERT INTO managers VALUES (0032,'Hughie  Quirin',0020);
INSERT INTO managers VALUES (0033,'Keshaun  Newbern',0020);
INSERT INTO managers VALUES (0034,'Morgana  Hiles',0020);
INSERT INTO managers VALUES (0035,'Phoenix  Cox',0020);
INSERT INTO managers VALUES (0036,'Phyllida  Drennan',0020);
INSERT INTO managers VALUES (0037,'Griffin  Cady',0020);
INSERT INTO managers VALUES (0038,'Zachariah  Drumm',0020);
INSERT INTO managers VALUES (0039,'Sybella  Huey',0020);
INSERT INTO managers VALUES (0040,'Lesleigh  Reddish',0020);
INSERT INTO managers VALUES (0041,'Jenn  Ring',0019);
INSERT INTO managers VALUES (0042,'Martie  Doverspike',0019);
INSERT INTO managers VALUES (0043,'Douglas  Simmons',0024);
INSERT INTO managers VALUES (0044,'Marlon  Davis',0024);
INSERT INTO managers VALUES (0045,'Ernestine  Johnston',0024);
INSERT INTO managers VALUES (0046,'Jeanie  Mcindoe',0026);
INSERT INTO managers VALUES (0047,'Zubin  Shotts',0026);
INSERT INTO managers VALUES (0048,'Tia  Kooser',0026);
INSERT INTO managers VALUES (0049,'Edwyn  Summy',0026);
INSERT INTO managers VALUES (0050,'Tristand  Tomlinson',0030);
