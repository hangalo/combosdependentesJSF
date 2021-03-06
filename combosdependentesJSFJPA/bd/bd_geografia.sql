-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.51-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema bd_geografia
--

CREATE DATABASE IF NOT EXISTS bd_geografia;
USE bd_geografia;

--
-- Definition of table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
CREATE TABLE `municipio` (
  `id_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `nome_municipio` varchar(45) DEFAULT NULL,
  `id_provincia` int(11) NOT NULL,
  PRIMARY KEY (`id_municipio`),
  KEY `fk_municipio_provincia_idx` (`id_provincia`),
  CONSTRAINT `fk_municipio_provincia` FOREIGN KEY (`id_provincia`) REFERENCES `provincia` (`id_provincia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `municipio`
--

/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` (`id_municipio`,`nome_municipio`,`id_provincia`) VALUES 
 (1,'Ambriz',1),
 (2,'Bula Atumba',1),
 (3,'Dande',1),
 (4,'Dembos',1),
 (5,'Nambuangongo',1),
 (6,'Pango Aluquém',1),
 (7,'Balombo',2),
 (8,'Baia Farta',2),
 (9,'Benguela',2),
 (10,'Bocoio',2),
 (11,'Caimbambo',2),
 (12,'Catumbela',2),
 (13,'Chongoroi',2),
 (14,'Cubal',2),
 (15,'Ganda',2),
 (16,'Lobito',2),
 (17,'Andulo',3),
 (18,'Camacupa',3),
 (19,'Catabola',3),
 (20,'Chinguar',3),
 (21,'Chitembo',3),
 (22,'Cuemba',3),
 (23,'Cunhinga',3),
 (24,'Kuito',3),
 (25,'Nharea',3),
 (26,'Belize',4),
 (27,'Buco-Zau',4),
 (28,'Cabinda',4),
 (29,'Cacongo',4),
 (30,'Calai',5),
 (31,'Cuangar',5),
 (32,'Cuchi',5),
 (33,'Cuito Cuanavale',5),
 (34,'Dirico',5),
 (35,'Mavinga',5),
 (36,'Menongue',5),
 (37,'Nancova',5),
 (38,'Rivungo',5),
 (39,'Cahama',8),
 (40,'Cuanhama',8),
 (41,'Curoca',8),
 (42,'Cuvelai',8),
 (43,'Namacunde',8),
 (44,'Ombadja',8),
 (45,'Bailundo',9),
 (46,'Catchiungo',9),
 (47,'Caala',9),
 (48,'Ekuma',9),
 (49,'Huambo',9);
INSERT INTO `municipio` (`id_municipio`,`nome_municipio`,`id_provincia`) VALUES 
 (50,'Londuimbale',9),
 (51,'Longonjo',9),
 (52,'Mungo',9),
 (53,'Tchicala-Tchiloanga',9),
 (54,'Tchindjenje',9),
 (55,'Ucuma',9),
 (56,'Caconda',10),
 (57,'Cacula',10),
 (58,'Caluquembe',10),
 (59,'Gambos',10),
 (60,'Chibia',10),
 (61,'Chicomba',10),
 (62,'Chipindo',10),
 (63,'Cuvango',10),
 (64,'Humpata',10),
 (65,'Jamba',10),
 (66,'Lubango',10),
 (67,'Matala',10),
 (68,'Quilengues',10),
 (69,'Quipungo',10),
 (70,'Ambaca',6),
 (71,'Banga',6),
 (72,'Bolongongo',6),
 (73,'Cambambe',6),
 (74,'Cazengo',6),
 (75,'Golungo Alto',6),
 (76,'Gonguembo',6),
 (77,'Lucala',6),
 (78,'Quiculungo',6),
 (79,'Samba Caju',6),
 (80,'Cassongue',7),
 (81,'Conda',7),
 (82,'Ebo',7),
 (83,'Libolo',7),
 (84,'Mussende',7),
 (85,'Porto Amboin',7),
 (86,'Quibala',7),
 (87,'Quilenda',7),
 (88,'Seles',7),
 (89,'Sumbe',7),
 (90,'Waku Kungo',7),
 (91,'Belas',11),
 (92,'Cacuaco',11),
 (93,'Cazenga',11),
 (94,'Icolo e Bengo',11),
 (95,'Luanda',11),
 (96,'Quiçama',11);
INSERT INTO `municipio` (`id_municipio`,`nome_municipio`,`id_provincia`) VALUES 
 (97,'Viana',11),
 (98,'Cambulo',12),
 (99,'Capenda-Camulemba',12),
 (100,'Caungula',12),
 (101,'Chitato',12),
 (102,'Cuango',12),
 (103,'Cuilo',12),
 (104,'Lubalo',12),
 (105,'Lukapa',12),
 (106,'Xá-Muteba',12),
 (107,'Cacolo',13),
 (108,'Dala',13),
 (109,'Muconda',13),
 (110,'Saurimo',13),
 (111,'Cacuso',14),
 (112,'Calandula',14),
 (113,'Cambundi-Catembo',14),
 (114,'Cangandala',14),
 (115,'Caombo',14),
 (116,'Cuaba Nzogo',14),
 (117,'Cunda-Dia-Baze',14),
 (118,'Luquembo',14),
 (119,'Malange',14),
 (120,'Marimba',14),
 (121,'Massango',14),
 (122,'Mucari',14),
 (123,'Quela',14),
 (124,'Quirima',14),
 (125,'Alto Zambeze',15),
 (126,'Bundas',15),
 (127,'Camanongue',15),
 (128,'Léua',15),
 (129,'Luau',15),
 (130,'Luacano',15),
 (131,'Luchazes',15),
 (132,'Lumeje',15),
 (133,'Moxico',15),
 (134,'Bibala',16),
 (135,'Camucuio',16),
 (136,'Namibe',16),
 (137,'Tômbua',16),
 (138,'Virei',16),
 (139,'Alto Cauale',17),
 (140,'Ambuila',17);
INSERT INTO `municipio` (`id_municipio`,`nome_municipio`,`id_provincia`) VALUES 
 (141,'Bembe',17),
 (142,'Buengas',17),
 (143,'Bungo',17),
 (144,'Damba',17),
 (145,'Macocola',17),
 (146,'Mucaba',17),
 (147,'Negage',17),
 (148,'Puri',17),
 (149,'Quimbele',17),
 (150,'Quitexe',17),
 (151,'Sanza Pombo',17),
 (152,'Songo',17),
 (153,'Uige',17),
 (154,'Zombo',17),
 (155,'Cuimba',18),
 (156,'M\'Banza Kongo',18),
 (157,'Noqui',18),
 (158,'N\'Zeto',18),
 (159,'Soyo',18),
 (160,'Tomboco',18);
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;


--
-- Definition of table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
CREATE TABLE `provincia` (
  `id_provincia` int(11) NOT NULL AUTO_INCREMENT,
  `nome_provincia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_provincia`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `provincia`
--

/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` (`id_provincia`,`nome_provincia`) VALUES 
 (1,'Bengo'),
 (2,'Benguela'),
 (3,'Bié'),
 (4,'Cabinda'),
 (5,'Cuando Cubango'),
 (6,'Cuanza Norte'),
 (7,'Cuanza Sul'),
 (8,'Cunene'),
 (9,'Huambo'),
 (10,'Huila'),
 (11,'Luanda'),
 (12,'Lunda Norte'),
 (13,'Lunda Sul'),
 (14,'Malange'),
 (15,'Moxico'),
 (16,'Namibe'),
 (17,'Uige'),
 (18,'Zaire');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
