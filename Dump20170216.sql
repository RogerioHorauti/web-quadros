CREATE DATABASE  IF NOT EXISTS `quadros` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `quadros`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: quadros
-- ------------------------------------------------------
-- Server version	5.6.15-log

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
-- Table structure for table `agendamentos`
--

DROP TABLE IF EXISTS `agendamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agendamentos` (
  `idAgendamento` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(12) DEFAULT NULL,
  `hora` varchar(5) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `produtos_idProduto` int(11) NOT NULL,
  `usuarios_idUsuario` int(11) NOT NULL,
  `usuarios_cidades_idCidade` int(11) NOT NULL,
  PRIMARY KEY (`idAgendamento`,`produtos_idProduto`,`usuarios_idUsuario`,`usuarios_cidades_idCidade`),
  KEY `fk_agendamentos_produtos1_idx` (`produtos_idProduto`),
  KEY `fk_agendamentos_usuarios1_idx` (`usuarios_idUsuario`,`usuarios_cidades_idCidade`),
  CONSTRAINT `fk_agendamentos_produtos1` FOREIGN KEY (`produtos_idProduto`) REFERENCES `produtos` (`idProduto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_agendamentos_usuarios1` FOREIGN KEY (`usuarios_idUsuario`, `usuarios_cidades_idCidade`) REFERENCES `usuarios` (`idUsuario`, `cidades_idCidade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agendamentos`
--

LOCK TABLES `agendamentos` WRITE;
/*!40000 ALTER TABLE `agendamentos` DISABLE KEYS */;
INSERT INTO `agendamentos` VALUES (1,'17/06/2015','12:00','','',2,2,1),(2,'10/10/1010','10:00','','',3,2,1),(3,'','','','',2,1,1),(4,'18/06/2015','12:00','','',2,3,1),(5,'19/06/2015','13:00','','',3,3,1),(6,'20/20/2010','14:00','','',2,3,1),(7,'21/06/2015','15:00','','',3,3,1),(8,'01/06/2015','12:00','','',4,2,1),(9,'28/05/2015','13:00','','',5,2,1),(10,'10/10/2014','10:00','','',2,5,7),(11,'25/03/2015','16:00','','',13,5,7),(12,'19/12/2014','17:00','','',6,9,12),(13,'03/04/2015','19:00','','',11,9,12),(14,'17/07/2015','12:00','','',17,9,12),(15,'30/08/2015','13:00','','',16,6,2),(16,'14/02/2015','11:00','','',6,6,2),(17,'16/08/2015','09:00','','',9,6,2),(18,'17/04/2015','14:30','','',14,6,2);
/*!40000 ALTER TABLE `agendamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidades` (
  `idCidade` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  PRIMARY KEY (`idCidade`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidades`
--

LOCK TABLES `cidades` WRITE;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
INSERT INTO `cidades` VALUES (1,'São Paulo','SP'),(2,'São bernardo','SP'),(3,'Diadema','SP'),(5,'Niteroi','RJ'),(6,'Curitiba','PR'),(7,'Santos','SP'),(8,'Bauru','SP'),(9,'Guarujá','SP'),(10,'Belo Horizonte','MG'),(11,'Recife','PE'),(12,'São Luis','MA'),(13,'Natal','RN');
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `idProduto` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `obs` varchar(150) DEFAULT NULL,
  `imagem` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (2,'iDisco',10,1,'','','resources/imagens/DISCO.jpg'),(3,'Jesus',1000,1,'','','resources/imagens/jesucristo-orando.jpg'),(4,'Torre Eiffel',250,8,'','','resources/imagens/eiffel.jpg'),(5,'Monaliza',10000,1,'','','resources/imagens/Mona-Lisa.jpg'),(6,'Lingua',280,11,'','','resources/imagens/LINGUA.jpg'),(7,'Tubarão',100,10,'','','resources/imagens/tubarao2.jpg'),(8,'Surf',140,5,'','','resources/imagens/Surf.jpg'),(9,'Tulipas',90,2,'','','resources/imagens/tulips.jpg'),(10,'China',340,3,'','','resources/imagens/CHINA.jpg'),(11,'Nossa Senhora',220,2,'','','resources/imagens/nsa.jpg'),(12,'Michael Jackson',500,1,'','','resources/imagens/michaeljackson.jpg'),(13,'Hawai',300,4,'','','resources/imagens/Havai.jpg'),(14,'Beijo',80,5,'','','resources/imagens/beijo.jpg'),(15,'Britto',700,1,'','','resources/imagens/britto1.jpeg'),(16,'Cuba',360,1,'','','resources/imagens/CubaMorning.jpg'),(17,'Famosos Coca Cola',210,1,'','','resources/imagens/famosos-coca.jpg');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `perfil` char(1) DEFAULT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `dataNasc` varchar(12) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `telefone` varchar(16) DEFAULT NULL,
  `dataCadastro` varchar(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `dataUltimoAgendamento` varchar(12) DEFAULT NULL,
  `cidades_idCidade` int(11) NOT NULL,
  PRIMARY KEY (`idUsuario`,`cidades_idCidade`),
  KEY `fk_usuarios_cidades1_idx` (`cidades_idCidade`),
  CONSTRAINT `fk_usuarios_cidades1` FOREIGN KEY (`cidades_idCidade`) REFERENCES `cidades` (`idCidade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'2','Rogerio','222.222.222.22','22.222.222-2','25/09/1979','rua geraldo pacheco valente 431','Jardim Campo rande','2222-2222','','rogeriohorauti@gmail.com','rogerio','rogerio','',1),(2,'1','admin','','','','','','','','','admin','admin','',1),(3,'2','User','','','','','','','','','','','',1),(5,'2','Ricardo Lius Pedegrosa','111.111.111-11','11.111.111-1','20/03/1973','rua ribeirão bonito, 435','Moinho Velho','3207-2222','','ricardo@primehelp.com.br','ricardo','ricardo','',7),(6,'2','Sueli Amaral','333.333.333.33','33.333.333-3','02/02/1988','Av.Dom Pedro de Alcantara ','','3333-3333','','sueli@sueli.com.br','sueli','sueli','',2),(7,'1','Kazuo Horauti','444.444.444-44','44.444.444-4','19/09/1964','rua geraldo pacheco valente 431','Jardim Campo Grande','5631-2849','','kazuohorauti@hotmail.com','kazuo','kazuo','',9),(8,'1','Breno de Oliveira','555.555.555-55','55.555.555-5','06/01/1990','Barra da areia, 37','Jd. Vitória','5555-5555','','breno@breno.com.br','breno','breno','',5),(9,'2','Clarice Yumi Horauti','666.666.666-66','66.666.666-6','26/01/2010','Rua Cristina Gottsfritz Gonçalves, 130','Vila Anhanguera','6666-6666','','clarice@clarice.com.br','clarice','clarice','',12),(10,'1','Mauricio Ramos do Amaral','777.777.777-77','77.777.777-7','11/02/1970','Rua da Glória','Jd. Campo Belo','7777-7777','','mauricio@primehelp.com.br','mauricio','mauricio','',5),(13,'2','Graziela Garcia ','999.999.999-99','99.999.999-9','10/06/1988','Rua Melo Paiva 14a','Guaianases','9999-99999','','ggllgg@terra.com.br','grazi','grazi','',12);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-16  8:13:01
