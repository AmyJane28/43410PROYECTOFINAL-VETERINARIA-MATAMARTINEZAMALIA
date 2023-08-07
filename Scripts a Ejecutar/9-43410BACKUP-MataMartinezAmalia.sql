-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: veterinariaentrega
-- ------------------------------------------------------
-- Server version	8.0.33
-- Las tablas incluidas en el backup son: Clientes, factura, kardex, mascotas, personal, servicio, log_auditoria, log_auditoria_2, log_auditoria_3
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'GIBRAN','Hernández Ortiz','Juanito@yahoo.com','Calle Convento de Churubusco 9867','Saltillo','Coahuila',58321,'8444448899','1986-06-18'),(2,'Ezequiel','Ulloa Montes','Ezequiel@hotmail.com','Avenida Francisco I. Madero 458','Saltillo','Coahuila',58987,'8445217896','1988-02-03'),(3,'Laura','Prima Gutiérrez','Lauris@hotmail.com','Calle Jose Maria Morelos 687','Saltillo','Coahuila',58879,'8443692587','1996-09-22'),(4,'Sofia','Medrano Flores','Sofi@gmail.com','Avenida Miguel Hidalgo 529','Ramos Arizpe','Coahuila',63014,'8427844512','1990-12-12'),(5,'CAROLINA','Herrera Ulloa','Cata@gmail.com','Avenida Altar456','Ramos Arizpe','Coahuila',63964,'8424578390','1982-12-04'),(6,'Fidencio','Flores Mata','Fide@gmail.com','Calle Xilotepec 781','Ramos Arizpe','Coahuila',63001,'8423812004','1983-11-19'),(7,'Sonia','Federico Blanco','Sonia@hotmail.com','Avenida Revolución 10247','Saltillo','Coahuila',58007,'8440120306','1980-02-03'),(8,'Cristina','Martínez Ávalos','Cris@hotmail.com','Calle 5 de Mayo 843','Saltillo','Coahuila',58471,'8443015879','1980-12-11'),(9,'Luisa','Hidrogo Alonso','Luisa@hotmail.com','Calle Zaragoza 807','Ramos Arizpe','Coahuila',63800,'8423018090','1990-11-19'),(10,'Cristian','Medellin Alto','Cristian_08@yahoo.com','Calle Manuel Zamora Gutierrez','Ramos Arizpe','Coahuila',63284,'8423001778','1987-10-19'),(11,'Francisco','Medrano Jaramillo','Fran@yahoo.com','Calle Tuxpan 7895','Ramos Arizpe','Coahuila',63097,'8420001234','1989-09-07'),(12,'Gustavo','Jaramillo Valencia','Gus@hotmail.com','Calle Rio Grande 1010','Saltillo','Coahuila',58741,'8442310203','1993-11-09'),(13,'Valeria','Villalobos Aldama','Vale@hotmail.com','Calle Miguel Rebolledo 78941','Saltillo','Coahuila',58012,'8443020100','1980-09-20'),(14,'Adrián','Alverde Rios','adrian@hotmail.com','Avenida Francisco I. Madero 400','Saltillo','Coahuila',58987,'8448446568','1984-02-28'),(15,'Juana','Villaseñor Cazares','Juana@yahoo.com','Calle Xilotepec 781','Ramos Arizpe','Coahuila',63001,'8428410203','1987-11-11'),(16,'LUIS','CUELLAR LOPEZ','CUELLAR@HOTMAIL.COM','AVENIDA SUR 857','RAMOS ARIZPE','COAHUILA',63304,'8422221415','1989-01-01'),(17,'ENRIQUE','LOPEZ LOPEZ','LOPEZLOPEZ@HOTMAIL.COM','AVENIDA SUR 877','RAMOS ARIZPE','COAHUILA',63304,'8422781415','1989-01-02');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,'2023-06-07',1,1,1,'Vacuna Rabia',25.00,25.00,3.00,28.00),(2,'2023-06-01',2,2,1,'Vacunas Bordetella',25.00,25.00,3.00,28.00),(3,'2023-05-28',3,3,1,'Vacunas DA2PPV (4 en 1)',25.00,25.00,3.00,28.00),(4,'2023-06-03',4,4,12,'Peluquería Baño y recorte de pelo',30.00,30.00,4.00,34.00),(5,'2023-05-07',5,5,2,'Citas médicas y de bienestar',25.00,25.00,3.00,28.00),(6,'2023-05-16',6,6,12,'Peluquería Baño y recorte de pelo',30.00,30.00,4.00,34.00),(7,'2023-06-02',7,7,1,'Vacunas DA2PPV (4 en 1)',25.00,25.00,3.00,28.00),(8,'2023-06-02',8,8,12,'Peluquería Baño y recorte de pelo',30.00,30.00,4.00,34.00),(9,'2023-06-03',9,9,2,'Citas médicas y de bienestar',25.00,25.00,3.00,28.00),(10,'2023-06-03',10,10,1,'Vacunas Baño y recorte de pelo',25.00,25.00,3.00,28.00),(11,'2023-05-29',11,11,12,'Peluquería Baño y recorte de pelo',30.00,30.00,4.00,34.00),(12,'2023-05-30',12,12,12,'Peluquería Baño y recorte de pelo',30.00,30.00,4.00,34.00),(13,'2023-05-22',13,13,12,'Peluquería Baño y recorte de pelo',30.00,30.00,4.00,34.00),(14,'2023-05-30',14,14,1,'Vacunas Bordetella',25.00,25.00,3.00,28.00),(15,'2023-05-27',15,15,1,'Vacunas Rabia',25.00,25.00,3.00,28.00);
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kardex`
--

LOCK TABLES `kardex` WRITE;
/*!40000 ALTER TABLE `kardex` DISABLE KEYS */;
INSERT INTO `kardex` VALUES (1,1,'Nala','2023-06-07',1,'Vacunas','Rabia','2023-07-07',1,'Ernesto Rodriguez Alfaro','Goza de buena salud'),(2,2,'Kiara','2023-06-01',1,'Vacunas','Bordetella','2023-07-01',1,'Ernesto Rodriguez Alfaro','Goza de buena salud'),(3,3,'Lobo','2023-05-28',1,'Vacunas','DA2PPV (4 en 1)','2023-06-28',6,'Gonzalo Gutierrez Solis','Goza de buena salud'),(4,4,'Loba','2023-06-03',12,'Peluquería','Baño y recorte de pelo','2023-07-03',9,'Adrian Monte Luca','Goza de buena salud'),(5,5,'Terry','2023-05-07',2,'Citas médicas y de bienestar','El can se encontraba con tos y estornudos','2023-06-07',6,'Gonzalo Gutierrez Solis','Goza de buena salud'),(6,6,'Jerry','2023-05-16',12,'Peluquería','Baño y recorte de pelo','2023-06-16',3,'Griselda Martinez Meza','Goza de buena salud'),(7,7,'Firu','2023-06-02',1,'Vacunas','DA2PPV (4 en 1)','2023-07-02',6,'Gonzalo Gutierrez Solis','Goza de buena salud'),(8,8,'Zeke','2023-06-02',12,'Peluquería','Baño y recorte de pelo','2023-07-02',3,'Griselda Martinez Meza','Goza de buena salud'),(9,9,'Dulce','2023-06-03',2,'Citas médicas y de bienestar','El can se encontraba con vómito','2023-07-03',6,'Gonzalo Gutierrez Solis','Goza de buena salud'),(10,10,'Blanquita','2023-06-03',1,'Vacunas','DA2PPV (4 en 1)','2023-07-03',1,'Ernesto Rodriguez Alfaro','Goza de buena salud'),(11,11,'Gordo','2023-05-29',12,'Peluquería','Baño y recorte de pelo','2023-06-29',9,'Adrian Monte Luca','Goza de buena salud'),(12,12,'Arya','2023-05-30',12,'Peluquería','Baño y recorte de pelo','2023-06-30',9,'Adrian Monte Luca','Goza de buena salud'),(13,13,'Balto','2023-05-22',12,'Peluquería','Baño y recorte de pelo','2023-06-22',3,'Griselda Martinez Meza','Goza de buena salud'),(14,14,'Chocolate','2023-05-30',1,'Vacunas','Bordetella','2023-06-30',6,'Gonzalo Gutierrez Solis','Goza de buena salud'),(15,15,'Toronto','2023-05-27',1,'Vacunas','Rabia','2023-06-27',1,'Ernesto Rodriguez Alfaro','Goza de buena salud');
/*!40000 ALTER TABLE `kardex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_auditoria`
--

LOCK TABLES `log_auditoria` WRITE;
/*!40000 ALTER TABLE `log_auditoria` DISABLE KEYS */;
INSERT INTO `log_auditoria` VALUES (1,'INSERT','CLIENTES','root@localhost','2023-06-21'),(2,'INSERT','CLIENTES','root@localhost','2023-06-21');
/*!40000 ALTER TABLE `log_auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_auditoria_2`
--

LOCK TABLES `log_auditoria_2` WRITE;
/*!40000 ALTER TABLE `log_auditoria_2` DISABLE KEYS */;
INSERT INTO `log_auditoria_2` VALUES (1,'ENRIQUE','LOPEZ LOPEZ','8422781415','INSERT','CLIENTES','root@localhost','2023-06-21','21:23:11'),(2,'Catalina-CAROLINA','Herrera Ulloa-Herrera Ulloa','8424578390','UPDATE','CLIENTES','root@localhost','2023-06-21','21:25:27');
/*!40000 ALTER TABLE `log_auditoria_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_auditoria_3`
--

LOCK TABLES `log_auditoria_3` WRITE;
/*!40000 ALTER TABLE `log_auditoria_3` DISABLE KEYS */;
INSERT INTO `log_auditoria_3` VALUES (1,'ANTIGUO_NOMBRE: Loba - NUEVO_NOMBRE: SUSY','ANTIGUO_PROPIETARIO: Sofia Medrano Flores - NUEVO_PROPIETARIO: Sofia Medrano Flores','UPDATE','MASCOTAS','root@localhost','2023-06-21','22:28:01');
/*!40000 ALTER TABLE `log_auditoria_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mascotas`
--

LOCK TABLES `mascotas` WRITE;
/*!40000 ALTER TABLE `mascotas` DISABLE KEYS */;
INSERT INTO `mascotas` VALUES (1,'Nala','Husky','F','Gris con blanco',12,60,20.00,'FCMV0119-A',1400317401,'Goza de buena salud','2022-06-07',1,'Juan Hernández Ortiz'),(2,'Kiara','Antiguo Pastor Ingles','F','Gris con blanco',5,61,12.00,'FCMV0619-A',1400317402,'Goza de buena salud','2023-01-07',2,'Ezequiel Ulloa Montes'),(3,'Lobo','Pasto Alemán','M','Negro con beige',3,65,4.00,'FCMB0119-A',1400317403,'Goza de buena salud','2023-03-09',3,'Catalina Herrera Ulloa'),(4,'SUSY','Husky','F','Café con blanco',2,30,4.00,'FCMV0179-A',1400317404,'Goza de buena salud','2023-04-18',4,'Sofia Medrano Flores'),(5,'Terry','Labrador retriever','M','Negro  ',14,57,30.00,'FCMV0719-B',1400317405,'Goza de buena salud','2022-04-19',5,'Catalina Herrera Ulloa'),(6,'Jerry','Pomerania','M','Café  ',24,30,2.00,'FCMG0189-C',1400317406,'Goza de buena salud','2021-06-07',6,'Fidencio Flores Mata'),(7,'Firu','Golden retriever','M','Café  ',12,56,30.00,'FCMV1119-A',1400317407,'Goza de buena salud','2022-06-07',7,'Sonia Federico Blanco'),(8,'Zeke','Buldog francés','M','Negro  ',7,33,12.00,'FCMV0969-A',1400317408,'Goza de buena salud','2022-11-07',8,'Cristina Martínez Ávalos'),(9,'Dulce','Beagle','F','Café con blanco',6,33,8.00,'FCMX0119-B',1400317409,'Goza de buena salud','2023-01-07',9,'Luisa Hidrogo Alonso'),(10,'Blanquita','Labrador retriever','F','Beige',9,55,23.00,'FCMV3119-C',1400317410,'Goza de buena salud','2022-09-10',10,'Cristian Medellin Alto'),(11,'Gordo','Rottweiler','M','Negro  ',8,60,45.00,'FCMX1109-A',1400317411,'Goza de buena salud','2022-10-09',11,'Francisco Medrano Jaramillo'),(12,'Arya','Chihuahua','F','Blanco',10,15,2.00,'FCMM3119-A',1400317412,'Goza de buena salud','2022-08-04',12,'Gustavo Jaramillo Valencia'),(13,'Balto','San Bernardo','M','Café con blanco',11,75,80.00,'FCMK0119-C',1400317413,'Goza de buena salud','2022-07-23',13,'Valeria Villalobos Aldama'),(14,'Chocolate','Dálmata','M','Negro con blanco',13,60,25.00,'FCMS0719-C',1400317414,'Goza de buena salud','2022-05-28',14,'Adrián Alverde Rios'),(15,'Toronto','Bolder Collie','M','Negro con blanco',12,53,18.00,'FCMW0119-A',1400317415,'Goza de buena salud','2022-06-07',15,' Juana Villaseñor Cazares'),(16,'PATO','Antiguo Pastor Ingles','M','Gris con blanco',5,63,13.00,'FCMV0619-D',1400317416,'Goza de buena salud','2023-01-01',2,'Ezequiel Ulloa Montes');
/*!40000 ALTER TABLE `mascotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1,'Ernesto','Rodriguez Alfaro','Calle Dr Jose Maria Coss 1205','Saltillo','Coahuila',44226,'Ernesto@gmail.com','8446828242','Veterinario'),(2,'Guadalupe','Ordonez Calafia','Calle Emiliano Zapata 254','Saltillo','Coahuila',45100,'Lupe@yahoo.com.mx','8448369227','Recepcionista'),(3,'Griselda','Martinez Meza','Calle Magisterio 457','Saltillo','Coahuila',44270,'Gris@hotmail.com','8446324789','Estilista'),(4,'Juana Maria','Dolores Mundo','Calle Tres Culturas 567','Saltillo','Coahuila',22700,'Maria@gmail.com','8446384512','Almacen'),(5,'Luz','Pena Gonzales','Calle Cuarta 894','Saltillo','Coahuila',44789,'Luz@gmail.com','8442101223','Estilista'),(6,'Gonzalo','Gutierrez Solis','Calle Francisco Villa 524','Saltillo','Coahuila',44256,'Gonza@yahoo.com','8446231558','Veterinario'),(7,'Martina','Maldonado Cazares','Calle Maclovio Herrera 908','Saltillo','Coahuila',44750,'Martina@hotmail.com','8445178998','Cajero'),(8,'Rubi','Hidalgo Lujo','Calle Emiliano Zapata 800','Saltillo','Coahuila',45100,'Rubi@hotmail.com','8446398754','Cajero'),(9,'Adrian ','Monte Luca','Calle Benito Juarez 100','Saltillo','Coahuila',26020,'AdrianMo@hotmail.com','8447894545','Estilista'),(10,'ULISES','MALDONADO SIFUENTES','CALLE SUR 780','SALTILLO','COAHUILA',45780,'ULISIFUENTES@HOTMAIL.COM','8447502369','VETERINARIO');
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,'Vacunas','Diferentes vacunas para felinos y caninos',25.00),(2,'Citas médicas y de bienestar','Servicios veterinarios asequibles',25.00),(3,'Examen médico','Examen médico',30.00),(4,'Cremación comunitaria','Servicio de eutanacia, no se devuelven las cenizas',160.00),(5,'Cremación individual','Servicio de eutanacia, se devuelven las cenizas después de una o dos semanas',220.00),(6,'Esterilización Canina de 2 a 55 libras.','Esterilización Canina de 2 a 55 libras. Los precios incluyen analgésicos posquirúrgicos y los servicios están sujetos al examen veterinario',150.00),(7,'Esterilización Canina de 56-100 libras.','Esterilización Canina de 56-100 libras. Los precios incluyen analgésicos posquirúrgicos y los servicios están sujetos al examen veterinario',200.00),(8,'Castración Canino de 2 a 55 libras.','Castración Canino de 2 a 55 libras. Los precios incluyen analgésicos posquirúrgicos y los servicios están sujetos al examen veterinario',105.00),(9,'Castración Canino de 56-100 libras','Castración Canino de 56-100 libras. Los precios incluyen analgésicos posquirúrgicos y los servicios están sujetos al examen veterinario',120.00),(10,'Castración Felino.','Castración Felino. Los precios incluyen analgésicos posquirúrgicos y los servicios están sujetos al examen veterinario',65.00),(11,'Esterilización Felina.','Esterilización Felina. Los precios incluyen analgésicos posquirúrgicos y los servicios están sujetos al examen veterinario',85.00),(12,'Peluquería','Servicio de peluquería canina y felina ofrece una amplia variedad de cortes de pelo y baños, tanto estéticos como terapéuticos',30.00),(13,'Ecografía','Ofrece información sobre el estado de los órganos internos de manera no invasiva, inmediata y precisa.',30.00),(14,'Dermatología','Cuida la piel de la mascota',30.00),(15,'Oftalmología','Cuida y revisa la visión de la mascota',30.00);
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-10 17:37:35
