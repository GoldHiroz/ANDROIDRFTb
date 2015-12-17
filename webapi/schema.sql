-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: rft
-- ------------------------------------------------------
-- Server version	5.5.46-0+deb7u1

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
-- Table structure for table `feladatok`
--

DROP TABLE IF EXISTS `feladatok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feladatok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `kategoriaid` int(11) DEFAULT NULL,
  `tipus` int(11) DEFAULT NULL,
  `nev` varchar(20) DEFAULT NULL,
  `leiras` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feladatok`
--

LOCK TABLES `feladatok` WRITE;
/*!40000 ALTER TABLE `feladatok` DISABLE KEYS */;
/*!40000 ALTER TABLE `feladatok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `felhasznalok`
--

DROP TABLE IF EXISTS `felhasznalok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `felhasznalok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `felhasznalok`
--

LOCK TABLES `felhasznalok` WRITE;
/*!40000 ALTER TABLE `felhasznalok` DISABLE KEYS */;
/*!40000 ALTER TABLE `felhasznalok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jelzesek`
--

DROP TABLE IF EXISTS `jelzesek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jelzesek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `feladat` int(11) DEFAULT NULL,
  `ido` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jelzesek`
--

LOCK TABLES `jelzesek` WRITE;
/*!40000 ALTER TABLE `jelzesek` DISABLE KEYS */;
/*!40000 ALTER TABLE `jelzesek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategoriak`
--

DROP TABLE IF EXISTS `kategoriak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategoriak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(20) DEFAULT NULL,
  `leiras` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategoriak`
--

LOCK TABLES `kategoriak` WRITE;
/*!40000 ALTER TABLE `kategoriak` DISABLE KEYS */;
/*!40000 ALTER TABLE `kategoriak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipus`
--

DROP TABLE IF EXISTS `tipus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipus`
--

LOCK TABLES `tipus` WRITE;
/*!40000 ALTER TABLE `tipus` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-17  1:09:49
