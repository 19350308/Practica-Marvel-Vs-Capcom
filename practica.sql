-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: practica
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuarios` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(255) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellidos` varchar(255) NOT NULL,
  `Edad` int NOT NULL,
  `Genero` char(1) NOT NULL,
  `Contrasena` varchar(255) NOT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  `Activo` char(1) NOT NULL,
  `Creado` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Modificado` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (1,'Miranda@gmail.com','Lalito Mirandita','Miranda Morita',22,'M','1234','2001-12-12','S','2022-11-12 19:26:00','2022-11-17 11:00:14'),(2,'Fernando@gmail.com','Jose Fernando','Navarrete Valladares',20,'M','1234','2000-01-03','S','2022-11-12 19:29:33','2022-11-12 19:29:33'),(3,'Jose@gmail.com','Jose Antonio','Rendon Cruz',21,'F','$2a$10$WIFfHcjt/8VtntXn1m4MvOWdPP92.KV37h.0ERhNWUAnevYR1pBhC','1999-05-05','N','2022-11-13 01:32:23','2022-11-13 02:12:40');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personajes`
--

DROP TABLE IF EXISTS `personajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personajes` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `heroe` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `universo` varchar(30) NOT NULL,
  `habilidad` varchar(30) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `activo` char(1) NOT NULL,
  `creado` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modificado` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personajes`
--

LOCK TABLES `personajes` WRITE;
/*!40000 ALTER TABLE `personajes` DISABLE KEYS */;
INSERT INTO `personajes` VALUES (1,'SpiderMan','Peter Parker','Marvel','Trepar','Mutado','S','2022-11-12 17:58:53','2022-11-15 10:12:28'),(2,'Ryu','Mauricio','Capcom','Hayoken','Humano','S','2022-11-12 18:03:35','2022-11-15 10:12:28'),(3,'Capitan America','Steven Rogers','Marvel','Escudo','Mutado','S','2022-11-12 18:06:46','2022-11-15 10:12:28'),(4,'ChunLi','Chun Ri','Capcom','Artes Marciales','Humana','S','2022-11-13 08:54:30','2022-11-13 08:54:30'),(5,'MegaMan','RockMan','Capcom','Buster','Androide','S','2022-11-13 08:58:22','2022-11-15 10:12:28'),(6,'Wolverine','James Logan','X-Men','Mutado','Humano','S','2022-11-13 10:24:57','2022-11-15 10:12:28'),(7,'Miranda','Code02','Marvel','Ser Guapo','Humano','N','2022-11-14 08:27:45','2022-11-15 10:13:26'),(8,'Morrigan','Darks','Capcom','Enamorar','SemiHumano','N','2022-11-15 10:17:20','2022-11-15 10:18:19');
/*!40000 ALTER TABLE `personajes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-18 10:44:13
