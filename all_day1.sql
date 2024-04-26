-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: all_day_village
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `almacen`
--

DROP TABLE IF EXISTS `almacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacen` (
  `id_almacen` int NOT NULL COMMENT 'este es el id del almacen',
  `tipo_suministro` text COMMENT 'este es el apartado para poner todos los suministros necesarios para la villa',
  `cantidad_disponible` float DEFAULT NULL COMMENT 'este es el apartado en donde estara la cantidad que disponemos de los productos en el almacen',
  `punto_reposicion` int DEFAULT NULL COMMENT 'este es el prunto de repocision de la tabla almacen',
  PRIMARY KEY (`id_almacen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen`
--

LOCK TABLES `almacen` WRITE;
/*!40000 ALTER TABLE `almacen` DISABLE KEYS */;
INSERT INTO `almacen` VALUES (1,'Alimentos no perecederos',50,10),(2,'Artículos de limpieza',200,50),(3,'Suministros para mantenimiento de piscina',100,20),(4,'Productos de higiene personal',85,50),(5,'Bebidas y refrescos',200,80);
/*!40000 ALTER TABLE `almacen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banco`
--

DROP TABLE IF EXISTS `banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banco` (
  `id_banco` int NOT NULL COMMENT 'id del banco',
  `nombre` varchar(100) DEFAULT NULL COMMENT 'nombre del banco',
  `cuenta_num` int DEFAULT NULL COMMENT 'numero de cuenta',
  `tipo_cuenta` varchar(50) DEFAULT NULL COMMENT 'tipo de cuenta bancaria',
  PRIMARY KEY (`id_banco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco`
--

LOCK TABLES `banco` WRITE;
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
INSERT INTO `banco` VALUES (1,'Banco de Reservas',1234567890,'Corriente'),(2,'Banco Popular Dominicano',98765432,'Ahorro'),(3,'Banco BHD León',543216780,'Corriente'),(4,'Banreservas',98765432,'Ahorro'),(5,'Banco del Progreso',12345678,'Corriente');
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chef`
--

DROP TABLE IF EXISTS `chef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chef` (
  `id_chef` int NOT NULL COMMENT 'id del chef',
  `nombre` varchar(50) DEFAULT NULL COMMENT 'nombre del chef',
  `especialidad` varchar(50) DEFAULT NULL COMMENT 'especialidad culinaria del chef',
  `menu` text COMMENT 'menu que tienen disponible',
  `tarifas` float DEFAULT NULL COMMENT 'precio que cobra el chef',
  `disponibilidad` varchar(40) DEFAULT NULL COMMENT 'disponibilidad del chef',
  PRIMARY KEY (`id_chef`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef`
--

LOCK TABLES `chef` WRITE;
/*!40000 ALTER TABLE `chef` DISABLE KEYS */;
INSERT INTO `chef` VALUES (1,'Juan Pérez','Cocina Dominicana','1. Bandeja de Mangú\n2. Pollo Guisado\n3. Tres Golpes',3000,'Disponible'),(2,'María Rodríguez','Cocina Italiana','1. Bruschetta\n2. Risotto de Champiñones\n3. Tiramisú',2000,'No disponible'),(3,'Pedro Gómez','Cocina Mexicana','1. Guacamole\n2. Tacos al Pastor\n3. Flan de Coco',2005,'Disponible'),(4,'Ana Martínez','Cocina Asiática','1. Sushi Variado\n2. Pad Thai\n3. Tempura de Vegetales',3000,'No disponible'),(5,'Luis García','Cocina Mediterránea','1. Ensalada Griega\n2. Paella de Mariscos\n3. Tarta de Santiago',3500,'Disponible');
/*!40000 ALTER TABLE `chef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contrasena` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` double DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_valoracion` int DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `id_valoracion_idx` (`id_valoracion`),
  CONSTRAINT `id_valoracion` FOREIGN KEY (`id_valoracion`) REFERENCES `valoracion_cliente` (`id_valoracion`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Enmanuel','Rubio Mora','jim3jrb12@gmail.com','123456',8098141427,'Barrio obrero',NULL,'2024-04-25 17:38:37',NULL),(4,'Ana','López Pérez','ana@example.com','contraseña123',123456789,'Calle Principal 123','2024-04-23 15:44:41','2024-04-23 15:44:41',NULL),(5,'Juan','García Martínez','juan@example.com','clave456',987654321,'Avenida Central 456','2024-04-23 15:44:41','2024-04-23 15:44:41',NULL),(6,'María','Rodríguez González','maria@example.com','p4ssw0rd',567890123,'Calle Secundaria 789','2024-04-23 15:44:41','2024-04-23 15:44:41',NULL),(7,'Pedro','Sánchez Martín','pedro@example.com','password789',345678901,'Avenida Principal 012','2024-04-23 15:44:41','2024-04-23 15:44:41',NULL),(8,'Laura','Pérez López','laura@example.com','securepassword',901234567,'Calle Central 345','2024-04-23 15:44:41','2024-04-23 15:44:41',NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `clientes_AFTER_INSERT` AFTER INSERT ON `clientes` FOR EACH ROW BEGIN
insert into users(id_users, nombre, correo, contrasena, tipo_user, id_cliente) values
(0,new.nombre,new.correo,new.contrasena,"user",new.id_cliente);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `clientes_BEFORE_DELETE` BEFORE DELETE ON `clientes` FOR EACH ROW BEGIN
 delete from users where correo = old.correo;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `detalle_fact`
--

DROP TABLE IF EXISTS `detalle_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_fact` (
  `id_cliente` int DEFAULT NULL COMMENT 'foreign key',
  `id_fact` int DEFAULT NULL COMMENT 'foreign key',
  `subtotal` float DEFAULT NULL COMMENT 'subtotal del detalle factura',
  `id_factura` int NOT NULL COMMENT 'id de la factura',
  `id_servicio` int NOT NULL COMMENT 'id del servicio',
  KEY `Factura_id_factura` (`id_factura`),
  KEY `id_serv_idx` (`id_servicio`),
  CONSTRAINT `id_fact` FOREIGN KEY (`id_factura`) REFERENCES `factura` (`id_factura`),
  CONSTRAINT `id_serv` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_fact`
--

LOCK TABLES `detalle_fact` WRITE;
/*!40000 ALTER TABLE `detalle_fact` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_fact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dis_personal_24`
--

DROP TABLE IF EXISTS `dis_personal_24`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dis_personal_24` (
  `id_dis_personal_24` int NOT NULL COMMENT 'id de la disponibilidad del personal',
  `nombre` varchar(50) DEFAULT NULL COMMENT 'nombre de la persona',
  `horario_dis` time DEFAULT NULL COMMENT 'horacio de la disponibilidad del empleado',
  `contacto_emergencia` char(12) DEFAULT NULL COMMENT 'contacto de emergencia del empleado',
  `id_empleado` int DEFAULT NULL COMMENT 'foreign key de la tabla de empleados',
  PRIMARY KEY (`id_dis_personal_24`),
  KEY `id_emp_idx` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dis_personal_24`
--

LOCK TABLES `dis_personal_24` WRITE;
/*!40000 ALTER TABLE `dis_personal_24` DISABLE KEYS */;
INSERT INTO `dis_personal_24` VALUES (1,'Juan Pérez','08:00:00','8091234567',1),(2,'María Rodríguez','16:00:00','8092345678',2),(3,'Carlos Martínez','00:00:00','8093456789',3),(4,'Ana García','12:00:00','8094567890',4),(5,'Pedro López','20:00:00','8095678901',5);
/*!40000 ALTER TABLE `dis_personal_24` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL AUTO_INCREMENT COMMENT 'ID del empleado',
  `nombre` varchar(50) DEFAULT NULL COMMENT 'nombre del empleado',
  `cargo` varchar(30) DEFAULT NULL COMMENT 'cargo que el empleado desempeña en la empresa',
  `correo` varchar(50) DEFAULT NULL COMMENT 'Direcciond',
  `telefono` char(12) DEFAULT NULL COMMENT 'Numero telefonico del empleado',
  `horario_laboral` varchar(50) DEFAULT NULL COMMENT 'horario laboral del empleado',
  `experiencia_laboral` varchar(100) DEFAULT NULL COMMENT 'experiencia laboral',
  `contrasena` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (5,'Juan','Recepcionista','Juan@gmail.com','8098908654','07:00:00','2 anos en comput','1234'),(6,'Luis Alfredo','Mantenimiento','luis@gmail.com','8095098996','07:00:00','2 años en zona franca','1234'),(7,'Carlos Rodríguez','Recepcionista','carlos@example.com','8091234567','08:00:00 - 16:00:00','Experiencia en atención al cliente y gestión de reserva','password123'),(8,'Laura Martínez','Cocinera','laura@example.com','8092345678','12:00:00 - 20:00:00','Experiencia en cocina tradicional dominicana.','securepass'),(9,'Ana Gómez','Limpieza','ana@example.com','8093456789','07:00:00 - 15:00:00','Experiencia en limpieza y mantenimiento de villas.','cleaning123'),(10,'Juan Pérez','Mantenimiento','juan@example.com','8094567890','09:00:00 - 17:00:00','Experiencia en mantenimiento general y reparaciones.','maintenance456'),(11,'María García','Conserje','maria@example.com','8095678901','16:00:00 - 00:00:00','Experiencia en atención al cliente y seguridad.','guestcare789'),(12,'Steven Manuel','Mantenimiento','luis@gmail.com','8095098996','7:00','2 años en zona franca','1234');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadistica_uso`
--

DROP TABLE IF EXISTS `estadistica_uso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadistica_uso` (
  `id_estadistica` int NOT NULL COMMENT 'id de la estadistica',
  `fecha` date DEFAULT NULL COMMENT 'fecha de estadisticas',
  `numero de reservas` float DEFAULT NULL COMMENT 'nuemro de reservas',
  `ingresos totales` float DEFAULT NULL COMMENT 'ingresos totales',
  `ocupacion_promedio` varchar(100) DEFAULT NULL COMMENT 'ocupacion pormedio de la villa',
  `puntuacion_promedio` float DEFAULT NULL COMMENT 'puntuacion promedio',
  `Villa_id_villa` int NOT NULL COMMENT 'id de la villa',
  PRIMARY KEY (`id_estadistica`),
  KEY `Villa_id_villa` (`Villa_id_villa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadistica_uso`
--

LOCK TABLES `estadistica_uso` WRITE;
/*!40000 ALTER TABLE `estadistica_uso` DISABLE KEYS */;
INSERT INTO `estadistica_uso` VALUES (1,'2024-04-01',15,7500,'80%',4.5,1),(2,'2024-04-02',20,10000,'90%',4.8,2),(3,'2024-04-03',18,9000,'85%',4.6,3),(4,'2024-04-04',22,11000,'95%',4.9,4),(5,'2024-04-05',25,12500,'100%',5,5);
/*!40000 ALTER TABLE `estadistica_uso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estancia_cliente`
--

DROP TABLE IF EXISTS `estancia_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estancia_cliente` (
  `id_estancia_cliente` int NOT NULL COMMENT 'id de la instancia del cliente',
  `fecha_llegada` date DEFAULT NULL COMMENT 'esta es la fecha de llegada del cliente',
  `fecha_salida` date DEFAULT NULL COMMENT 'esta es  la salida del cliente',
  `numero_personas` float DEFAULT NULL COMMENT 'este es el numero de las peronas que estaran en estancia',
  `id_solicitud_especial` int DEFAULT NULL COMMENT 'este es el foreign key de la tabla solicitud especial',
  `id_cliente` int NOT NULL COMMENT 'ID del cliente',
  `id_villa` int NOT NULL COMMENT 'id de la villa',
  PRIMARY KEY (`id_estancia_cliente`),
  KEY `Cliente_id_cliente` (`id_cliente`),
  KEY `id_solucitud_especial_idx` (`id_solicitud_especial`),
  KEY `id_vi_idx` (`id_villa`),
  CONSTRAINT `id_cli` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `id_solicitud` FOREIGN KEY (`id_solicitud_especial`) REFERENCES `solicitud_especial` (`id_solicitud`),
  CONSTRAINT `id_vi` FOREIGN KEY (`id_villa`) REFERENCES `villa` (`id_villa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estancia_cliente`
--

LOCK TABLES `estancia_cliente` WRITE;
/*!40000 ALTER TABLE `estancia_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `estancia_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `id_factura` int NOT NULL COMMENT 'id de la factura',
  `fecha_pago` date DEFAULT NULL COMMENT 'fecha de pago',
  `monto_total` float DEFAULT NULL COMMENT 'monto total a pagar',
  `id_cliente` int NOT NULL COMMENT 'ID del cliente',
  `id_reserva` int NOT NULL COMMENT 'llave primaria de la reserva',
  `id_solicitud` int NOT NULL COMMENT 'id de las silcitud',
  `id_metodo_pago` int NOT NULL COMMENT 'id del metodo de pago',
  `id_banco` int NOT NULL COMMENT 'id del banco',
  PRIMARY KEY (`id_factura`),
  KEY `Cliente_id_cliente` (`id_cliente`),
  KEY `Solicitud_Especial_id_solicitud` (`id_solicitud`),
  KEY `Metodo_pago_id_metodo_pago` (`id_metodo_pago`),
  KEY `Banco_id_banco` (`id_banco`),
  KEY `id_reser_idx` (`id_reserva`),
  CONSTRAINT `id_banco` FOREIGN KEY (`id_banco`) REFERENCES `banco` (`id_banco`),
  CONSTRAINT `id_clien` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `id_met` FOREIGN KEY (`id_metodo_pago`) REFERENCES `metodo_pago` (`id_metodo_pago`),
  CONSTRAINT `id_reser` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id_reserva`),
  CONSTRAINT `id_soli` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud_especial` (`id_solicitud`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspeccion_propiedad`
--

DROP TABLE IF EXISTS `inspeccion_propiedad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inspeccion_propiedad` (
  `id_inspeccion_propiedad` int NOT NULL COMMENT 'id de la inspeccion de la propiedad',
  `fecha_inspeccion` date DEFAULT NULL COMMENT 'fecha de la inspeccionde la propiedad',
  `resultados_inspeccion` text COMMENT 'en este apartado van a estar los resultados de la inspeccion de la propiedad',
  `notas adicionales` text COMMENT 'en este apartado va a estar las anotaciones de la inspeccion de la propiedad',
  `id_empleado` int DEFAULT NULL COMMENT 'este es el foreign key de la tabla empledo',
  `id_almacen` int DEFAULT NULL COMMENT 'este es el foreign key del almacen',
  `id_villa` int NOT NULL COMMENT 'id de la villa',
  PRIMARY KEY (`id_inspeccion_propiedad`),
  KEY `id_emplea_idx` (`id_empleado`),
  KEY `id_almacen_idx` (`id_almacen`),
  KEY `id_vill_idx` (`id_villa`),
  CONSTRAINT `id_almacen` FOREIGN KEY (`id_almacen`) REFERENCES `almacen` (`id_almacen`),
  CONSTRAINT `id_emplea` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`),
  CONSTRAINT `id_vill` FOREIGN KEY (`id_villa`) REFERENCES `villa` (`id_villa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspeccion_propiedad`
--

LOCK TABLES `inspeccion_propiedad` WRITE;
/*!40000 ALTER TABLE `inspeccion_propiedad` DISABLE KEYS */;
/*!40000 ALTER TABLE `inspeccion_propiedad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metodo_pago`
--

DROP TABLE IF EXISTS `metodo_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metodo_pago` (
  `id_metodo_pago` int NOT NULL COMMENT 'id del metodo de pago',
  `forma` varchar(100) DEFAULT NULL COMMENT 'forma de pago',
  PRIMARY KEY (`id_metodo_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodo_pago`
--

LOCK TABLES `metodo_pago` WRITE;
/*!40000 ALTER TABLE `metodo_pago` DISABLE KEYS */;
INSERT INTO `metodo_pago` VALUES (1,'Tarjeta de crédito'),(2,'Transferencia bancaria'),(3,'PayPal'),(4,'Efectivo'),(5,'Cheque');
/*!40000 ALTER TABLE `metodo_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (7,'2014_10_12_000000_create_users_table',1),(8,'2014_10_12_100000_create_password_resets_table',1),(9,'2019_08_19_000000_create_failed_jobs_table',1),(10,'2019_12_14_000001_create_personal_access_tokens_table',1),(11,'2024_04_20_163344_create_pruebas_table',1),(12,'2024_04_20_233600_create_clientes_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id_producto` int NOT NULL COMMENT 'id de los productos',
  `nombre` varchar(255) DEFAULT NULL COMMENT 'nombre de los productos',
  `descripcion` text COMMENT 'descripcion detallada del producto',
  `categoria_producto` int DEFAULT NULL COMMENT 'categoria de producto',
  `precio` float DEFAULT NULL COMMENT 'precio del producto',
  `stock` int DEFAULT NULL COMMENT 'cantidad de producto',
  `id_proveedores` int NOT NULL COMMENT 'id de los proveedores',
  `id_almacen` int NOT NULL COMMENT 'este es el id del almacen',
  PRIMARY KEY (`id_producto`),
  KEY `Proveedores_id_proveedores` (`id_proveedores`),
  KEY `Almacen_id_almacen` (`id_almacen`),
  CONSTRAINT `id_almac` FOREIGN KEY (`id_almacen`) REFERENCES `almacen` (`id_almacen`),
  CONSTRAINT `id_provee` FOREIGN KEY (`id_proveedores`) REFERENCES `proveedores` (`id_proveedores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Sillas Playeras','Conjunto de sillas de playa plegables y resistentes.',1,250,50,1,1),(2,'Sombrillas Tropicales','Sombrillas grandes con estampados tropicales para protección solar.',1,350,30,2,2),(3,'Neveras Portátiles','Neveras pequeñas y portátiles para mantener bebidas frías durante el día.',2,500,20,3,3),(4,'Juegos de Toallas','Juegos de toallas de baño en colores tropicales.',3,400,40,4,4),(5,'Parrillas Portátiles','Parrillas pequeñas y portátiles para hacer barbacoas en la playa.',2,600,15,5,5);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id_proveedores` int NOT NULL COMMENT 'id de los proveedores',
  `nombre` varchar(50) DEFAULT NULL COMMENT 'nombre del proveedor',
  `telefono` char(12) DEFAULT NULL COMMENT 'numero del proveedor',
  `id_almacen` int DEFAULT NULL COMMENT 'foreign key del almacen',
  `id_banco` int NOT NULL COMMENT 'id del banco',
  PRIMARY KEY (`id_proveedores`),
  KEY `Banco_id_banco` (`id_banco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Proveedor Dominicano S.A.','8091234567',1,1),(2,'Suministros del Caribe','8092345678',2,2),(3,'Distribuidora Taino','8093456789',3,3),(4,'Comercializadora Cibao','8094567890',4,4),(5,'Suplidora Los Haitises','8095678901',5,5);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincia` (
  `id_provincia` int NOT NULL COMMENT 'id de la provincia',
  `descripcion` text COMMENT 'descripcion de la provincia',
  PRIMARY KEY (`id_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (1,'Santo Domingo'),(2,'Santiago'),(3,'La Altagracia'),(4,'Puerto Plata'),(5,'La Romana');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pruebas`
--

DROP TABLE IF EXISTS `pruebas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pruebas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pruebas`
--

LOCK TABLES `pruebas` WRITE;
/*!40000 ALTER TABLE `pruebas` DISABLE KEYS */;
/*!40000 ALTER TABLE `pruebas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `id_reserva` int NOT NULL AUTO_INCREMENT COMMENT 'llave primaria de la reserva',
  `fecha_llegada` date DEFAULT NULL COMMENT 'fecha de inicio reserva',
  `fecha_salida` date DEFAULT NULL COMMENT 'fecha del fin de periodo',
  `numeros_personas` float DEFAULT NULL COMMENT 'numero de personas en la villa',
  `servicios_adicionales` varchar(100) DEFAULT NULL COMMENT 'servicios adicionales de la reserva',
  `estado_reserva` varchar(100) DEFAULT NULL COMMENT 'este es el estado de la reserva si esta en proceso, pendiente, o no iniciado',
  `precio_total` float DEFAULT NULL COMMENT 'este es el precio total de la reserca',
  `id_solicitud_especial` int DEFAULT NULL COMMENT 'este es el foreign key de la tabla solicitud especial',
  `id_villa` int DEFAULT NULL COMMENT 'id de la villa',
  `id_cliente` int DEFAULT NULL COMMENT 'ID del cliente',
  PRIMARY KEY (`id_reserva`),
  KEY `Cliente_id_cliente` (`id_cliente`),
  KEY `id_solic_idx` (`id_solicitud_especial`),
  KEY `id_vis_idx` (`id_villa`),
  CONSTRAINT `id_clients` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `id_solic` FOREIGN KEY (`id_solicitud_especial`) REFERENCES `solicitud_especial` (`id_solicitud`),
  CONSTRAINT `id_vis` FOREIGN KEY (`id_villa`) REFERENCES `villa` (`id_villa`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,'2024-05-15','2024-05-21',4,'Chef privado, Transporte aeropuert','Confirmada',2500,1,1,1),(7,'2024-05-01','2024-05-07',4,'Limpieza diaria','Confirmada',3500,1,1,1),(8,'2024-06-15','2024-06-20',2,'Chef privado, Transporte aeropuerto','Confirmada',2400,2,2,4),(9,'2024-07-10','2024-07-15',5,'Tours locales','Pendiente',3000,3,3,5),(10,'2024-08-01','2024-08-05',3,'Equipo de snorkel','Confirmada',1800,4,4,6);
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!50001 DROP VIEW IF EXISTS `reservas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reservas` AS SELECT 
 1 AS `id_reserva`,
 1 AS `fecha_llegada`,
 1 AS `fecha_salida`,
 1 AS `numeros_personas`,
 1 AS `servicios_adicionales`,
 1 AS `precio_total`,
 1 AS `estado_reserva`,
 1 AS `descripcion_solicitud`,
 1 AS `tipo_villa`,
 1 AS `ubicacion_villa`,
 1 AS `nombre_cliente`,
 1 AS `correo_cliente`,
 1 AS `telefono_cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `id_servicio` int NOT NULL AUTO_INCREMENT COMMENT 'id del servicio',
  `nombre` varchar(100) DEFAULT NULL COMMENT 'nombre del servicio',
  `categoria_servicio` varchar(100) DEFAULT NULL COMMENT 'tipo del servicio que solicita',
  `precio` decimal(10,2) DEFAULT NULL COMMENT 'precio del servicio',
  `duracion_estimada` time DEFAULT NULL COMMENT 'duracion estimada en la villa',
  `descripcion` text COMMENT 'descripcion detallada del servicio',
  `estado` varchar(50) DEFAULT NULL COMMENT 'estado del servicio',
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,'Limpieza diaria','Mantenimiento',500.00,'04:00:00','Servicio de limpieza diaria de la villa.','Disponible'),(2,'Catering','Alimentación',4000.00,'08:00:00','Servicio de catering para eventos especiales.','Disponible'),(3,'Excursión a la playa','Entretenimiento',1000.00,'06:00:00','Excursión guiada a las playas locales.','Disponible'),(4,'Masaje relajante','Bienestar',800.00,'02:00:00','Masaje profesional para relajación y bienestar','Ocupado');
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud_especial`
--

DROP TABLE IF EXISTS `solicitud_especial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud_especial` (
  `id_solicitud` int NOT NULL COMMENT 'id de las silcitud',
  `descripcion` text COMMENT 'descripcion de  solicitud',
  `estado_solicitud` varchar(20) DEFAULT NULL COMMENT 'estado de solicitud de la reserva',
  `detalle_adicional` text COMMENT 'detalles adicionales tipo comentarios',
  `id_cliente` int NOT NULL COMMENT 'id del usuario',
  `id_servicio` int NOT NULL COMMENT 'id del servicio',
  PRIMARY KEY (`id_solicitud`),
  KEY `id_clis_idx` (`id_cliente`),
  KEY `id_servicia_idx` (`id_servicio`),
  CONSTRAINT `id_clis` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `id_servicia` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud_especial`
--

LOCK TABLES `solicitud_especial` WRITE;
/*!40000 ALTER TABLE `solicitud_especial` DISABLE KEYS */;
INSERT INTO `solicitud_especial` VALUES (1,'Necesito un chef privado para una cena especial','Pendiente','La cena es para celebrar un aniversario y debe ser vegetariana',1,1),(2,'Decoración para aniversario','Completado','Decoración con flores y velas',4,2),(3,'Transporte desde el aeropuerto','Pendiente','Necesita silla de bebé en el vehículo',5,3),(4,'Reserva de tours locales','En proceso','Interesado en tour de vinos',6,4),(5,'Solicitud de equipo de snorkel','Completado','Equipo para dos adultos y dos niños',7,1);
/*!40000 ALTER TABLE `solicitud_especial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id_users` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tipo_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_empleado` int DEFAULT NULL,
  PRIMARY KEY (`id_users`),
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  KEY `id_clien` (`id_cliente`),
  KEY `id_empleado_idx` (`id_empleado`),
  CONSTRAINT `id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `id_empleado` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Enmanuel','jim3jrb12@gmail.com','2024-04-26 14:02:16','contraseña123',NULL,NULL,NULL,'admin',1,NULL),(3,'Ana','ana@example.com',NULL,'contraseña123',NULL,NULL,NULL,'user',4,NULL),(4,'Juan','juan@example.com',NULL,'clave456',NULL,NULL,NULL,'user',5,NULL),(5,'María','maria@example.com',NULL,'p4ssw0rd',NULL,NULL,NULL,'user',6,NULL),(6,'Pedro','pedro@example.com',NULL,'password789',NULL,NULL,NULL,'user',7,NULL),(7,'Laura','laura@example.com',NULL,'securepassword',NULL,NULL,NULL,'user',8,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valoracion_cliente`
--

DROP TABLE IF EXISTS `valoracion_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valoracion_cliente` (
  `id_valoracion` int NOT NULL COMMENT 'id de la valoracion del cliente',
  `encuesta` text COMMENT 'encuesta de satisfaccion del cliente',
  `puntuacion` float DEFAULT NULL COMMENT 'puntuacion del cliente',
  `id_estancia` int DEFAULT NULL COMMENT 'foreign key de la estacia',
  `id_cli` int NOT NULL COMMENT 'id del usuario',
  `id_villa` int NOT NULL COMMENT 'id de la villa',
  `id_servicio` int NOT NULL COMMENT 'id del servicio',
  PRIMARY KEY (`id_valoracion`),
  KEY `Usuario_id_usuario` (`id_cli`),
  KEY `id_estans_idx` (`id_estancia`),
  KEY `id_sers_idx` (`id_servicio`),
  KEY `id_villag_idx` (`id_villa`),
  CONSTRAINT `id_clies` FOREIGN KEY (`id_cli`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `id_estans` FOREIGN KEY (`id_estancia`) REFERENCES `estancia_cliente` (`id_estancia_cliente`),
  CONSTRAINT `id_sers` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`),
  CONSTRAINT `id_villag` FOREIGN KEY (`id_villa`) REFERENCES `villa` (`id_villa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valoracion_cliente`
--

LOCK TABLES `valoracion_cliente` WRITE;
/*!40000 ALTER TABLE `valoracion_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `valoracion_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `villa`
--

DROP TABLE IF EXISTS `villa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `villa` (
  `id_villa` int NOT NULL AUTO_INCREMENT COMMENT 'id de la villa',
  `tipo_villa` varchar(50) DEFAULT NULL COMMENT 'tipo de villa que tenemos disponibles',
  `ubicacion` varchar(100) DEFAULT NULL COMMENT 'ubicacion de las villas',
  `capacidad` float DEFAULT NULL COMMENT 'capacidad de las personas de una villa',
  `descripcion` text COMMENT 'descripcion',
  `servicios_comodidades` varchar(100) DEFAULT NULL COMMENT 'servicios y comodidades de la villa',
  `precio` float DEFAULT NULL COMMENT 'precio de la villa',
  `id_producto` int DEFAULT NULL COMMENT 'id de los productos',
  PRIMARY KEY (`id_villa`),
  KEY `Producto_id_producto` (`id_producto`),
  CONSTRAINT `id_products` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `villa`
--

LOCK TABLES `villa` WRITE;
/*!40000 ALTER TABLE `villa` DISABLE KEYS */;
INSERT INTO `villa` VALUES (1,'Villa Tropical','Punta Cana',8,'Villa de lujo ubicada en la costa de Punta Cana con vistas al mar Caribe.','Piscina privada, acceso directo a la playa, aire acondicionado, cocina totalmente equipada.',500,1),(2,'Villa Exótica','Bayahibe',10,'Villa exuberante ubicada en Bayahibe con jardines tropicales y vistas panorámicas.','Jacuzzi al aire libre, gimnasio privado, desayuno incluido, servicio de limpieza diaria.',6000,2),(3,'Villa Colonial','Santo Domingo',6,'Villa colonial restaurada ubicada en el corazón de Santo Domingo, cerca de las principales atracciones.','Patio interior, terraza con vistas a la ciudad, decoración tradicional dominicana.',450,3),(4,'Villa Montañosa','Jarabacoa',12,'Villa acogedora situada en las montañas de Jarabacoa con acceso a ríos y cascadas cercanas.','Chimenea interior, senderos naturales privados, zona de barbacoa al aire libre.',550,4),(5,'Villa Costera','Puerto Plata',10,'Villa contemporánea junto al mar en Puerto Plata con impresionantes vistas al océano Atlántico.','Piscina infinita, acceso privado a la playa, sala de juegos, Wi-Fi gratuito.',700,5);
/*!40000 ALTER TABLE `villa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `reservas`
--

/*!50001 DROP VIEW IF EXISTS `reservas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reservas` AS select `r`.`id_reserva` AS `id_reserva`,`r`.`fecha_llegada` AS `fecha_llegada`,`r`.`fecha_salida` AS `fecha_salida`,`r`.`numeros_personas` AS `numeros_personas`,`r`.`servicios_adicionales` AS `servicios_adicionales`,`r`.`precio_total` AS `precio_total`,`r`.`estado_reserva` AS `estado_reserva`,`s`.`descripcion` AS `descripcion_solicitud`,`v`.`tipo_villa` AS `tipo_villa`,`v`.`ubicacion` AS `ubicacion_villa`,`c`.`nombre` AS `nombre_cliente`,`c`.`correo` AS `correo_cliente`,`c`.`telefono` AS `telefono_cliente` from (((`reserva` `r` join `solicitud_especial` `s` on((`r`.`id_solicitud_especial` = `s`.`id_solicitud`))) join `clientes` `c` on((`r`.`id_cliente` = `c`.`id_cliente`))) join `villa` `v` on((`r`.`id_villa` = `v`.`id_villa`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 14:47:44
