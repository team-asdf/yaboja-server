-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: yaboja
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents` (
  `idx` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` longtext,
  `content` longtext,
  `url` longtext,
  `cnt` int(11) DEFAULT NULL,
  `source` longtext,
  `keyword` longtext,
  `image` longtext,
  `createdAt` date DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (1,'Serverless microservice architecture에서의 inter-communication caching','빙글은 8월에 진행된 서비스 리뉴얼과 함께, 기존의 Ruby on rails 기반의 monolithic 앱에서 구현되어 있던 서비스 로직을 상당부분 Serverless 기반의 microservice architecture로 옮겼다.그걸 하면서도 정말 많은걸 배웠고, 그 과정에서 필요했던 다양한 도구들 (Lambda용 http api framework라던가...','https://medium.com/vingle-tech-blog/serverless-microservice-architecture%EC%97%90%EC%84%9C%EC%9D%98-inter-communication-caching-80a43c979121?source=---------8---------------------',0,'medium','serverless,microservice,architecture',NULL,'2017-10-22'),(2,'코드 밖에서 디버깅하기','보통 개발자들이 가장 두려워하는 상황은 문제도, 에러도 없이 예상하지 못 한 버그나 결과가 나올 때라고 생각합니다.이번에 겪은 일도 위와 같았습니다. 분명히 문제는 계속해서 발생하는데, 어디를 찾아봐도 에러나 문제가 될만한 부분을 찾기가 어려웠습니다.이를 디버깅하면서얻은 교훈은 코드 밖에서 발생하는 버그도 존재한다는 것이었습니다. (엄밀히 말하면 잘못된 코...','https://medium.com/vingle-tech-blog/%EC%BD%94%EB%93%9C-%EB%B0%96%EC%97%90%EC%84%9C-%EB%94%94%EB%B2%84%EA%B9%85%ED%95%98%EA%B8%B0-c05f034193e?source=---------9---------------------',0,'medium','Tag,flow',NULL,'2017-03-30'),(3,'Real-time Service Configuration으로 Consul을 신주소 서비스에 적용한 사례','안녕하세요. 배민프론트서버개발팀 박제현입니다.주소 검색 서비스를 개선하면서 Real-time Service Configuration으로 consul을 적용한 사례를 공유하고자 합니다.먼저 제가 속한 팀부터 소개해볼까 합니다.저희 팀에는 고객과 밀접하게 운영되고 있는 서비스가 많다 보니 쉽게 개선하기 어려운 레거시 시스템이 많은데요.맘 같아서는 쉽게 수정해서...','http://woowabros.github.io/tools/2018/10/08/location-service-with-rcs.html',0,'woowabros','php',NULL,'2018-10-08'),(4,'JDBC로 실행되는 SQL에 자동으로 프로젝트 정보 주석 남기기','이 글은 Java기반에서 JDBC와 이를 기반으로 한 Persistence Framework를 이용해 SQL을 실행할 수 있는 개발자를 대상으로 모든 JDBC를 통해 실행되는 SQL 구문에 애플리케이션 정보를 주석으로 넣는 법을 설명합니다.보통 Monolithic 아키텍처로 프로젝트를 진행하게 되면 모든 데이터를 하나의 데이터베이스에 다 넣는 방식으로 개발...','http://woowabros.github.io/tools/2018/08/16/jdbc-log-sql-projectinfo.html',0,'woowabros','sql',NULL,'2018-08-16'),(5,'파이썬으로 Linear Regression 해보기','안녕하세요.우아한형제들 데이터서비스팀에서 섹시미 막내를 맡고 있는 김세환입니다.데이터를 보다보면 예측모델을 만들게 되는 경우가 많은데요,  대부분의 경우 모델을 만들기 위한 함수들이 라이브러리 형태로 구현이 되어있다보니, 이런 라이브러리를 가져다 쓰는 것이 일반적입니다. 이 때문에 모델을 만드는 데 있어 그 내용은 놓치고 지나가기 쉽습니다.이 포스트에서는...','http://woowabros.github.io/study/2018/08/01/linear_regression_qr.html',0,'woowabros','vector',NULL,'2018-08-01'),(6,'AWS에서 서버(EC2) 패킷 미러링 하기','Public cloud의 문제점중 하나는, 가시성 확보가 어렵다 이다. 보안을 위해서 여러 Layer의 가시성 확보가 필요한대, 특히 Network 트래픽 데이터에 대해서는 필수이다. on-premise 환경에서는 TAP hardware 장비등을 이용하여 가시성 확보가 가능 했지만, Public cloud에서는 hardware를 사용할 수 없기때문에 다른...','http://woowabros.github.io/security/2018/06/29/aws-network-mirror.html',0,'woowabros','aws',NULL,'2018-06-29'),(7,'라이더스 개발팀 모바일에서 CI/CD 도입','이 글은 CI/CD를 안드로이드에 도입하게 되면서 정리한 내용입니다.   구축 및 운영하고자 하시는 분에게 경험을 공유하고자 합니다.안녕하세요 라이더스 개발팀 장인수 입니다.우선 라이더스 개발팀이 하는 일을 소개 합니다. 저희 라이더스 개발팀은 배달되지 않는 음식점의 음식을 민트색 헬멧을 쓴 라이더 분들이 오토바이를 이용하여 음식을 픽업 후 고객님에게 배달...','http://woowabros.github.io/experience/2018/06/26/bros-cicd.html',0,'woowabros','jenkins',NULL,'2018-06-26'),(8,'Big browsers to pull support plug for TLS 1.0 and 1.1 encryption protocols in early \'20','The makers of the four biggest browsers all said Monday that their applications will drop support for the TLS (Transport Layer Security) 1.0 and 1.1 encryption protocols in early 2020.\'In March of 202...','https://www.computerworld.com/article/3313589/web-browsers/big-browsers-to-pull-support-plug-for-tls-10-and-11-encryption-protocols-in-early-20.html',0,'computerworld','tls',NULL,'2018-10-16');
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm`
--

DROP TABLE IF EXISTS `fcm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm` (
  `idx` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tokens` int(11) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm`
--

LOCK TABLES `fcm` WRITE;
/*!40000 ALTER TABLE `fcm` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `langlists`
--

DROP TABLE IF EXISTS `langlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `langlists` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `popular` varchar(5) DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=698 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `langlists`
--

LOCK TABLES `langlists` WRITE;
/*!40000 ALTER TABLE `langlists` DISABLE KEYS */;
INSERT INTO `langlists` VALUES (1,'A# .NET','false'),(2,'A# (Axiom)','false'),(3,'A-0 System','false'),(4,'A+','false'),(5,'A++','false'),(6,'ABAP','false'),(7,'ABC','false'),(8,'ABC ALGOL','false'),(9,'ABSET','false'),(10,'ABSYS','false'),(11,'ACC','false'),(12,'Accent','false'),(13,'Ace DASL','false'),(14,'ACL2','false'),(15,'ACT-III','false'),(16,'Action!','false'),(17,'ActionScript','false'),(18,'Actor','false'),(19,'Ada','false'),(20,'Adenine','false'),(21,'Agda','false'),(22,'Agilent VEE','false'),(23,'Agora','false'),(24,'AIMMS','false'),(25,'Aldor','false'),(26,'Alef','false'),(27,'ALF','false'),(28,'ALGOL 58','false'),(29,'ALGOL 60','false'),(30,'ALGOL 68','false'),(31,'ALGOL W','false'),(32,'Alice','false'),(33,'Alma-0','false'),(34,'AmbientTalk','false'),(35,'Amiga E','false'),(36,'AMOS','false'),(37,'AMPL','false'),(38,'AngelScript','false'),(39,'Apex','false'),(40,'APL','false'),(41,'App Inventor for Android\'s visual block language','false'),(42,'AppleScript','false'),(43,'APT','false'),(44,'Arc','false'),(45,'ARexx','false'),(46,'Argus','false'),(47,'AspectJ','false'),(48,'Assembly language','false'),(49,'ATS','false'),(50,'Ateji PX','false'),(51,'AutoHotkey','false'),(52,'Autocoder','false'),(53,'AutoIt','false'),(54,'AutoLISP / Visual LISP','false'),(55,'Averest','false'),(56,'AWK','false'),(57,'Axum','false'),(58,'Active Server Pages','false'),(59,'C','true'),(60,'C--','false'),(61,'C++','true'),(62,'C*','false'),(63,'C#','true'),(64,'C/AL','false'),(65,'Caché ObjectScript','false'),(66,'C Shell (csh)','false'),(67,'Caml','false'),(68,'Cayenne','false'),(69,'CDuce','false'),(70,'Cecil','false'),(71,'Cesil','false'),(72,'Céu','false'),(73,'Ceylon','false'),(74,'CFEngine','false'),(75,'Cg','false'),(76,'Ch','false'),(77,'Chapel','false'),(78,'Charity','false'),(79,'Charm','false'),(80,'CHILL','false'),(81,'CHIP-8','false'),(82,'chomski','false'),(83,'ChucK','false'),(84,'Cilk','false'),(85,'Citrine','false'),(86,'CL (IBM)','false'),(87,'Claire','false'),(88,'Clarion','false'),(89,'Clean','false'),(90,'Clipper','false'),(91,'CLIPS','false'),(92,'CLIST','false'),(93,'Clojure','false'),(94,'CLU','false'),(95,'CMS-2','false'),(96,'COBOL – ISO/IEC 1989','false'),(97,'CobolScript – COBOL Scripting language','false'),(98,'Cobra','false'),(99,'CoffeeScript','false'),(100,'ColdFusion','false'),(101,'COMAL','false'),(102,'Combined Programming Language (CPL)','false'),(103,'COMIT','false'),(104,'Common Intermediate Language (CIL)','false'),(105,'Common Lisp (also known as CL)','false'),(106,'COMPASS','false'),(107,'Component Pascal','false'),(108,'Constraint Handling Rules (CHR)','false'),(109,'COMTRAN','false'),(110,'Cool','false'),(111,'Coq','false'),(112,'Coral 66','false'),(113,'CorVision','false'),(114,'COWSEL','false'),(115,'CPL','false'),(116,'Cryptol','false'),(117,'Crystal','false'),(118,'Csound','false'),(119,'CSP','false'),(120,'CUDA','false'),(121,'Cuneiform','false'),(122,'Curl','false'),(123,'Curry','false'),(124,'Cybil','false'),(125,'Cyclone','false'),(126,'Cython','false'),(127,'D','false'),(128,'DASL (Datapoint\'s Advanced Systems Language)','false'),(129,'Dart','false'),(130,'Darwin','false'),(131,'DataFlex','false'),(132,'Datalog','false'),(133,'DATATRIEVE','false'),(134,'dBase','false'),(135,'dc','false'),(136,'DCL','false'),(137,'Delphi','false'),(138,'DinkC','false'),(139,'DIBOL','false'),(140,'Dog','false'),(141,'Draco','false'),(142,'DRAKON','false'),(143,'Dylan','false'),(144,'DYNAMO','false'),(145,'DAX (Data Analysis Expressions)','false'),(146,'E','false'),(147,'Ease','false'),(148,'Easy PL/I','false'),(149,'EASYTRIEVE PLUS','false'),(150,'eC','false'),(151,'ECMAScript','false'),(152,'Edinburgh IMP','false'),(153,'EGL','false'),(154,'Eiffel','false'),(155,'ELAN','false'),(156,'Elixir','false'),(157,'Elm','false'),(158,'Emacs Lisp','false'),(159,'Emerald','false'),(160,'Epigram','false'),(161,'EPL (Easy Programming Language)','false'),(162,'EPL (Eltron Programming Language)','false'),(163,'Erlang','false'),(164,'es','false'),(165,'Escher','false'),(166,'ESPOL','false'),(167,'Esterel','false'),(168,'Etoys','false'),(169,'Euclid','false'),(170,'Euler','false'),(171,'Euphoria','false'),(172,'EusLisp Robot Programming Language','false'),(173,'CMS EXEC (EXEC)','false'),(174,'EXEC 2','false'),(175,'Executable UML','false'),(176,'F','false'),(177,'F#','false'),(178,'F*','false'),(179,'Factor','false'),(180,'Falcon','false'),(181,'Fantom','false'),(182,'FAUST','false'),(183,'FFP','false'),(184,'Fjölnir','false'),(185,'FL','false'),(186,'Flavors','false'),(187,'Flex','false'),(188,'FlooP','false'),(189,'FLOW-MATIC','false'),(190,'FOCAL','false'),(191,'FOCUS','false'),(192,'FOIL','false'),(193,'FORMAC','false'),(194,'@Formula','false'),(195,'Forth','false'),(196,'Fortran – ISO/IEC 1539','false'),(197,'Fortress','false'),(198,'FoxBase','false'),(199,'FoxPro','false'),(200,'FP','false'),(201,'Franz Lisp','false'),(202,'F-Script','false'),(203,'G','false'),(204,'Game Maker Language','false'),(205,'GameMonkey Script','false'),(206,'GAMS','false'),(207,'GAP','false'),(208,'G-code','false'),(209,'GDScript','false'),(210,'Genie','false'),(211,'GDL','false'),(212,'GJ','false'),(213,'GEORGE','false'),(214,'GLSL','false'),(215,'GNU E','false'),(216,'GM','false'),(217,'Go','false'),(218,'Go!','false'),(219,'GOAL','false'),(220,'Gödel','false'),(221,'Golo','false'),(222,'GOM (Good Old Mad)','false'),(223,'Google Apps Script','false'),(224,'Gosu','false'),(225,'GOTRAN','false'),(226,'GPSS','false'),(227,'GraphTalk','false'),(228,'GRASS','false'),(229,'Groovy','false'),(230,'Hack','false'),(231,'HAGGIS','false'),(232,'HAL/S','false'),(233,'Halide (programming language)','false'),(234,'Hamilton C shell','false'),(235,'Harbour','false'),(236,'Hartmann pipelines','false'),(237,'Haskell','false'),(238,'Haxe','false'),(239,'Hermes','false'),(240,'High Level Assembly','false'),(241,'HLSL','false'),(242,'HolyC','false'),(243,'Hop','false'),(244,'Hopscotch','false'),(245,'Hope','false'),(246,'Hugo','false'),(247,'Hume','false'),(248,'HyperTalk','false'),(249,'Hexa','false'),(250,'Io','false'),(251,'Icon (programming language)','false'),(252,'IBM Basic assembly language','false'),(253,'IBM BASICA','false'),(254,'IBM HAScript','false'),(255,'IBM Informix-4GL','false'),(256,'IBM RPG','false'),(257,'IDL','false'),(258,'Idris','false'),(259,'J','false'),(260,'J#','false'),(261,'J++','false'),(262,'JADE','false'),(263,'JAL','false'),(264,'Janus (concurrent constraint programming language)','false'),(265,'Janus (time-reversible computing programming language)','false'),(266,'JASS','false'),(267,'Java','true'),(268,'JavaFX Script','false'),(269,'JavaScript','true'),(270,'JCL','false'),(271,'JEAN','false'),(272,'Join Java','false'),(273,'JOSS','false'),(274,'Joule','false'),(275,'JOVIAL','false'),(276,'Joy','false'),(277,'JScript','false'),(278,'JScript .NET','false'),(279,'JSON','false'),(280,'jq','false'),(281,'Julia','false'),(282,'Jython','false'),(283,'K','false'),(284,'Kaleidoscope','false'),(285,'Karel','false'),(286,'Karel++','false'),(287,'KEE','false'),(288,'Kixtart','false'),(289,'Klerer-May System','false'),(290,'KIF','false'),(291,'Kojo','false'),(292,'Kotlin','false'),(293,'KRC','false'),(294,'KRL','false'),(295,'KRL (KUKA Robot Language)','false'),(296,'KRYPTON','false'),(297,'ksh','false'),(298,'Kodu','false'),(299,'Kv','false'),(300,'LabVIEW','false'),(301,'Ladder','false'),(302,'Lagoona','false'),(303,'LANSA','false'),(304,'Lasso','false'),(305,'LaTeX','false'),(306,'Lava','false'),(307,'LC-3','false'),(308,'Leda','false'),(309,'Legoscript','false'),(310,'LIL','false'),(311,'LilyPond','false'),(312,'Limbo','false'),(313,'Limnor','false'),(314,'LINC','false'),(315,'Lingo','false'),(316,'LIS','false'),(317,'LISA','false'),(318,'Lisp – ISO/IEC 13816','false'),(319,'Lite-C','false'),(320,'Lithe','false'),(321,'Little b','false'),(322,'LLL','false'),(323,'Logo','false'),(324,'Logtalk','false'),(325,'LotusScript','false'),(326,'LPC','false'),(327,'LSE','false'),(328,'LSL','false'),(329,'LiveCode','false'),(330,'LiveScript','false'),(331,'Lua','false'),(332,'Lucid','false'),(333,'Lustre','false'),(334,'LYaPAS','false'),(335,'Lynx','false'),(336,'M (alternative name for the MUMPS programming language)','false'),(337,'M2001','false'),(338,'M4','false'),(339,'M#','false'),(340,'Machine code','false'),(341,'MAD (Michigan Algorithm Decoder)','false'),(342,'MAD/I','false'),(343,'Magik','false'),(344,'Magma','false'),(345,'make','false'),(346,'Maude system','false'),(347,'Maple','false'),(348,'MAPPER (now part of BIS)','false'),(349,'MARK-IV (now VISION:BUILDER)','false'),(350,'Mary','false'),(351,'MASM Microsoft Assembly x86','false'),(352,'MATH-MATIC','false'),(353,'Mathematica','false'),(354,'MATLAB','false'),(355,'Maxima (see also Macsyma)','false'),(356,'Max (Max Msp – Graphical Programming Environment)','false'),(357,'MaxScript internal language 3D Studio Max','false'),(358,'Maya (MEL)','false'),(359,'MDL','false'),(360,'Mercury','false'),(361,'Mesa','false'),(362,'Metafont','false'),(363,'MetaQuotes Language (MQL4/MQL5)','false'),(364,'MHEG-5 (Interactive TV programming language)','false'),(365,'Microcode','false'),(366,'MicroScript','false'),(367,'MIIS','false'),(368,'Milk (programming language)','false'),(369,'MIMIC','false'),(370,'Mirah','false'),(371,'Miranda','false'),(372,'MIVA Script','false'),(373,'ML','false'),(374,'Model 204','false'),(375,'Modelica','false'),(376,'Modula','false'),(377,'Modula-2','false'),(378,'Modula-3','false'),(379,'Mohol','false'),(380,'MOO','false'),(381,'Mortran','false'),(382,'Mouse','false'),(383,'MPD','false'),(384,'Mathcad','false'),(385,'MSIL – deprecated name for CIL','false'),(386,'MSL','false'),(387,'MUMPS','false'),(388,'MuPAD','false'),(389,'Mutan','false'),(390,'Mystic Programming Language (MPL)','false'),(391,'NASM','false'),(392,'Napier88','false'),(393,'Neko','false'),(394,'Nemerle','false'),(395,'nesC','false'),(396,'NESL','false'),(397,'Net.Data','false'),(398,'NetLogo','false'),(399,'NetRexx','false'),(400,'NewLISP','false'),(401,'NEWP','false'),(402,'Newspeak','false'),(403,'NewtonScript','false'),(404,'Nial','false'),(405,'Nice','false'),(406,'Nickle (NITIN)','false'),(407,'Nim','false'),(408,'NPL','false'),(409,'Not eXactly C (NXC)','false'),(410,'Not Quite C (NQC)','false'),(411,'NSIS','false'),(412,'Nu','false'),(413,'NWScript','false'),(414,'NXT-G','false'),(415,'o:XML','false'),(416,'Oak','false'),(417,'Oberon','false'),(418,'OBJ2','false'),(419,'Object Lisp','false'),(420,'ObjectLOGO','false'),(421,'Object REXX','false'),(422,'Object Pascal','false'),(423,'Objective-C','true'),(424,'Objective-J','false'),(425,'Obliq','false'),(426,'OCaml','false'),(427,'occam','false'),(428,'occam-π','false'),(429,'Octave','false'),(430,'OmniMark','false'),(431,'Onyx','false'),(432,'Opa','false'),(433,'Opal','false'),(434,'OpenCL','false'),(435,'OpenEdge ABL','false'),(436,'OPL','false'),(437,'OpenVera','false'),(438,'OPS5','false'),(439,'OptimJ','false'),(440,'Orc','false'),(441,'ORCA/Modula-2','false'),(442,'Oriel','false'),(443,'Orwell','false'),(444,'Oxygene','false'),(445,'Oz','false'),(446,'P','false'),(447,'P4','false'),(448,'P′′','false'),(449,'ParaSail (programming language)','false'),(450,'PARI/GP','false'),(451,'Pascal – ISO 7185','false'),(452,'PCASTL','false'),(453,'PCF','false'),(454,'PEARL','false'),(455,'PeopleCode','false'),(456,'Perl','true'),(457,'PDL','false'),(458,'Perl 6','false'),(459,'Pharo','false'),(460,'PHP','true'),(461,'Pico','false'),(462,'Picolisp','false'),(463,'Pict','false'),(464,'Pig (programming tool)','false'),(465,'Pike','false'),(466,'PIKT','false'),(467,'PILOT','false'),(468,'Pipelines','false'),(469,'Pizza','false'),(470,'PL-11','false'),(471,'PL/0','false'),(472,'PL/B','false'),(473,'PL/C','false'),(474,'PL/I – ISO 6160','false'),(475,'PL/M','false'),(476,'PL/P','false'),(477,'PL/SQL','false'),(478,'PL360','false'),(479,'PLANC','false'),(480,'munoz','false'),(481,'Plankalkül','false'),(482,'Planner','false'),(483,'PLEX','false'),(484,'PLEXIL','false'),(485,'Plus','false'),(486,'POP-11','false'),(487,'POP-2','false'),(488,'PostScript','false'),(489,'PortablE','false'),(490,'Powerhouse','false'),(491,'PowerBuilder – 4GL GUI application generator from Sybase','false'),(492,'PowerShell','false'),(493,'PPL','false'),(494,'Processing','false'),(495,'Processing.js','false'),(496,'Prograph','false'),(497,'PROIV','false'),(498,'Prolog','false'),(499,'PROMAL','false'),(500,'Promela','false'),(501,'PROSE modeling language','false'),(502,'PROTEL','false'),(503,'ProvideX','false'),(504,'Pro*C','false'),(505,'Pure','false'),(506,'PureBasic','false'),(507,'Pure Data','false'),(508,'Python','true'),(509,'Q (equational programming language)','false'),(510,'Q (programming language from Kx Systems)','false'),(511,'Q# (Microsoft programming language)','false'),(512,'Qalb','false'),(513,'QtScript','false'),(514,'QuakeC','false'),(515,'QPL','false'),(516,'R','false'),(517,'R++','false'),(518,'Racket','false'),(519,'RAPID','false'),(520,'Rapira','false'),(521,'Ratfiv','false'),(522,'Ratfor','false'),(523,'rc','false'),(524,'REBOL','false'),(525,'Red','false'),(526,'Redcode','false'),(527,'REFAL','false'),(528,'Reia','false'),(529,'REXX','false'),(530,'Ring','false'),(531,'Rlab','false'),(532,'ROOP','false'),(533,'RPG','false'),(534,'RPL','false'),(535,'RSL','false'),(536,'RTL/2','false'),(537,'Ruby','true'),(538,'RuneScript','false'),(539,'Rust','false'),(540,'S','false'),(541,'S2','false'),(542,'S3','false'),(543,'S-Lang','false'),(544,'S-PLUS','false'),(545,'SA-C','false'),(546,'SabreTalk','false'),(547,'SAIL','false'),(548,'SALSA','false'),(549,'SAM76','false'),(550,'SAS','false'),(551,'SASL','false'),(552,'Sather','false'),(553,'Sawzall','false'),(554,'SBL','false'),(555,'Scala','false'),(556,'Scheme','false'),(557,'Scilab','false'),(558,'Script.NET','false'),(559,'Sed','false'),(560,'Seed7','false'),(561,'Self','false'),(562,'SenseTalk','false'),(563,'SequenceL','false'),(564,'Serpent','false'),(565,'SETL','false'),(566,'SIMPOL','false'),(567,'SIGNAL','false'),(568,'SiMPLE','false'),(569,'SIMSCRIPT','false'),(570,'Simula','false'),(571,'Simulink','false'),(572,'Singularity','false'),(573,'SISAL','false'),(574,'SLIP','false'),(575,'SMALL','false'),(576,'Scratch','false'),(577,'Smalltalk','false'),(578,'SML','false'),(579,'Strongtalk','false'),(580,'Snap!','false'),(581,'SNOBOL (SPITBOL)','false'),(582,'Snowball','false'),(583,'SOL','false'),(584,'Solidity','false'),(585,'SOPHAEROS','false'),(586,'SPARK','false'),(587,'Speedcode','false'),(588,'SPIN','false'),(589,'SP/k','false'),(590,'SPS','false'),(591,'SQL','false'),(592,'SQR','false'),(593,'Squeak','false'),(594,'Squirrel','false'),(595,'SR','false'),(596,'S/SL','false'),(597,'Starlogo','false'),(598,'Strand','false'),(599,'Stata','false'),(600,'Stateflow','false'),(601,'Subtext','false'),(602,'SuperCollider','false'),(603,'SuperTalk','false'),(604,'Swift (Apple programming language)','false'),(605,'Swift (parallel scripting language)','false'),(606,'SYMPL','false'),(607,'SystemVerilog','false'),(608,'T','false'),(609,'TACL','false'),(610,'TACPOL','false'),(611,'TADS','false'),(612,'TAL','false'),(613,'Tcl','false'),(614,'Tea','false'),(615,'TECO','false'),(616,'TELCOMP','false'),(617,'TeX','false'),(618,'TEX','false'),(619,'Titanum','false'),(620,'TIE','false'),(621,'TMG, compiler-compiler','false'),(622,'Tom','false'),(623,'TOM','false'),(624,'Toi','false'),(625,'Topspeed','false'),(626,'TPU','false'),(627,'Trac','false'),(628,'TTM','false'),(629,'T-SQL','false'),(630,'Transcript','false'),(631,'TTCN','false'),(632,'Turing','false'),(633,'TUTOR','false'),(634,'TXL','false'),(635,'TypeScript','false'),(636,'Tynker','false'),(637,'Ubercode','false'),(638,'UCSD Pascal','false'),(639,'Umple','false'),(640,'Unicon','false'),(641,'Uniface','false'),(642,'UNITY','false'),(643,'Unix shell','false'),(644,'UnrealScript','false'),(645,'Vala','false'),(646,'Verilog','false'),(647,'VHDL','false'),(648,'Vim script','false'),(649,'Viper','false'),(650,'Visual Basic','false'),(651,'Visual Basic .NET','false'),(652,'Visual DataFlex','false'),(653,'Visual DialogScript','false'),(654,'Visual Fortran','false'),(655,'Visual FoxPro','false'),(656,'Visual J++','false'),(657,'Visual J#','false'),(658,'Visual LISP','false'),(659,'Visual Objects','false'),(660,'Visual Prolog','false'),(661,'VSXu','false'),(662,'WATFIV, WATFOR','false'),(663,'WebAssembly','false'),(664,'WebDNA','false'),(665,'WebQL','false'),(666,'Whiley','false'),(667,'Winbatch','false'),(668,'Wolfram Language','false'),(669,'Wyvern','false'),(670,'X++','false'),(671,'X10','false'),(672,'xBase++','false'),(673,'XBL','false'),(674,'XC (exploits XMOS architecture)','false'),(675,'xHarbour','false'),(676,'XL','false'),(677,'Xojo','false'),(678,'XOTcl','false'),(679,'XOD (programming language)','false'),(680,'XPL','false'),(681,'XPL0','false'),(682,'XQuery','false'),(683,'XSB','false'),(684,'XSharp','false'),(685,'XSLT','false'),(686,'Xtend','false'),(687,'Yorick','false'),(688,'YQL','false'),(689,'Yoix','false'),(690,'Z notation','false'),(691,'Zebra, ZPL, ZPL2','false'),(692,'Zeno','false'),(693,'ZetaLisp','false'),(694,'ZOPL','false'),(695,'Zsh','false'),(696,'ZPL','false'),(697,'Z++','false');
/*!40000 ALTER TABLE `langlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `idx` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `logs` longtext,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-02 11:13:33
