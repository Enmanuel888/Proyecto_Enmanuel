-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: all_day_village
-- ------------------------------------------------------
-- Server version	8.0.36

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
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chef`
--

DROP TABLE IF EXISTS `chef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chef` (
  `id_chef` int NOT NULL AUTO_INCREMENT COMMENT 'id del chef',
  `nombre` varchar(50) DEFAULT NULL COMMENT 'nombre del chef',
  `especialidad` varchar(50) DEFAULT NULL COMMENT 'especialidad culinaria del chef',
  `menu` varchar(45) DEFAULT NULL,
  `tarifas` float DEFAULT NULL COMMENT 'precio que cobra el chef',
  `disponibilidad` varchar(10) DEFAULT NULL COMMENT 'disponibilidad del chef',
  PRIMARY KEY (`id_chef`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef`
--

LOCK TABLES `chef` WRITE;
/*!40000 ALTER TABLE `chef` DISABLE KEYS */;
INSERT INTO `chef` VALUES (11,'raul','carne',NULL,500,'Lunes'),(13,'odalis','carne','arroz,carne,habichuela',1000,'lunes '),(14,'odalis','carne','arroz,carne,habichuela',1000,'domingo '),(15,'odalis','carne','arroz,carne,habichuela',5000,'domingo '),(16,'ismael','pollo','arroz,carne,habichuela,ensalda',3000,'domingo '),(17,'ismael','pollo','arroz,carne,habichuela,ensalda',3000,'viernes '),(18,'joseph','ensalda','arroz,carne,habichuela,ensalda',2500,'martes ');
/*!40000 ALTER TABLE `chef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL COMMENT 'ID del cliente',
  `nombres` varchar(30) DEFAULT NULL COMMENT 'Nombres  del cliente',
  `apellidos` varchar(30) DEFAULT NULL COMMENT 'Apellidos del cliented',
  `correo` varchar(40) DEFAULT NULL COMMENT 'Correo o Gmail del cliente',
  `telefono` char(12) DEFAULT NULL COMMENT 'numero de telefono del cliente',
  `direccion` float DEFAULT NULL COMMENT 'Direccion del cliente',
  `id_hitorial_reserva` int DEFAULT NULL COMMENT 'foreing key de historial reserva',
  `id_valoracion` int DEFAULT NULL COMMENT 'foreing key de valoracion',
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `id_compra` int NOT NULL COMMENT 'id de la compra realizada',
  PRIMARY KEY (`id_compra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

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
  `id_servicio` int DEFAULT NULL COMMENT 'foreign key de servicio',
  `Factura_id_factura` int NOT NULL COMMENT 'id de la factura',
  `Servicio_id_servicio` int NOT NULL COMMENT 'id del servicio',
  KEY `Factura_id_factura` (`Factura_id_factura`),
  KEY `Servicio_id_servicio` (`Servicio_id_servicio`),
  CONSTRAINT `detalle_fact_factura_factura_id_factura` FOREIGN KEY (`Factura_id_factura`) REFERENCES `factura` (`id_factura`) ON UPDATE CASCADE,
  CONSTRAINT `detalle_fact_servicio_servicio_id_servicio` FOREIGN KEY (`Servicio_id_servicio`) REFERENCES `servicio` (`id_servicio`) ON UPDATE CASCADE
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
  `Empleados_id_empleado` int NOT NULL COMMENT 'ID del empleado',
  PRIMARY KEY (`id_dis_personal_24`),
  KEY `Empleados_id_empleado` (`Empleados_id_empleado`),
  CONSTRAINT `dis_personal_24_empleados_empleados_id_empleado` FOREIGN KEY (`Empleados_id_empleado`) REFERENCES `empleados` (`id_empleado`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dis_personal_24`
--

LOCK TABLES `dis_personal_24` WRITE;
/*!40000 ALTER TABLE `dis_personal_24` DISABLE KEYS */;
/*!40000 ALTER TABLE `dis_personal_24` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL COMMENT 'ID del empleado',
  `nombre` varchar(50) DEFAULT NULL COMMENT 'nombre del empleado',
  `cargo` varchar(30) DEFAULT NULL COMMENT 'cargo que el empleado desempeña en la empresa',
  `correo` varchar(50) DEFAULT NULL COMMENT 'Direcciond',
  `telefono` char(12) DEFAULT NULL COMMENT 'Numero telefonico del empleado',
  `horario_laboral` time DEFAULT NULL COMMENT 'horario laboral del empleado',
  `experiencia_laboral` varchar(100) DEFAULT NULL COMMENT 'experiencia laboral',
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
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
  KEY `Villa_id_villa` (`Villa_id_villa`),
  CONSTRAINT `estadistica_uso_villa_villa_id_villa` FOREIGN KEY (`Villa_id_villa`) REFERENCES `villa` (`id_villa`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadistica_uso`
--

LOCK TABLES `estadistica_uso` WRITE;
/*!40000 ALTER TABLE `estadistica_uso` DISABLE KEYS */;
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
  `id_cliente` int DEFAULT NULL COMMENT 'este es el foreign key de la tabla cliente',
  `Cliente_id_cliente` int NOT NULL COMMENT 'ID del cliente',
  `Villa_id_villa` int NOT NULL COMMENT 'id de la villa',
  PRIMARY KEY (`id_estancia_cliente`),
  KEY `Cliente_id_cliente` (`Cliente_id_cliente`),
  KEY `Villa_id_villa` (`Villa_id_villa`),
  CONSTRAINT `estancia_cliente_cliente_cliente_id_cliente` FOREIGN KEY (`Cliente_id_cliente`) REFERENCES `cliente` (`id_cliente`) ON UPDATE CASCADE,
  CONSTRAINT `estancia_cliente_villa_villa_id_villa` FOREIGN KEY (`Villa_id_villa`) REFERENCES `villa` (`id_villa`) ON UPDATE CASCADE
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
  `metodo_pago` varchar(30) DEFAULT NULL COMMENT 'metodo de pago utilizado',
  `fecha_pago` date DEFAULT NULL COMMENT 'fecha de pago',
  `monto_total` float DEFAULT NULL COMMENT 'monto total a pagar',
  `id_reserva` int DEFAULT NULL COMMENT 'foreign key de la tabla reserva',
  `id_detalle_fact` int DEFAULT NULL COMMENT 'foreign key del detalle factura',
  `Cliente_id_cliente` int NOT NULL COMMENT 'ID del cliente',
  `Reserva_id_reserva` int NOT NULL COMMENT 'llave primaria de la reserva',
  `Solicitud_Especial_id_solicitud` int NOT NULL COMMENT 'id de las silcitud',
  `Metodo_pago_id_metodo_pago` int NOT NULL COMMENT 'id del metodo de pago',
  `Banco_id_banco` int NOT NULL COMMENT 'id del banco',
  PRIMARY KEY (`id_factura`),
  KEY `Cliente_id_cliente` (`Cliente_id_cliente`),
  KEY `Reserva_id_reserva` (`Reserva_id_reserva`),
  KEY `Solicitud_Especial_id_solicitud` (`Solicitud_Especial_id_solicitud`),
  KEY `Metodo_pago_id_metodo_pago` (`Metodo_pago_id_metodo_pago`),
  KEY `Banco_id_banco` (`Banco_id_banco`),
  CONSTRAINT `factura_banco_banco_id_banco` FOREIGN KEY (`Banco_id_banco`) REFERENCES `banco` (`id_banco`) ON UPDATE CASCADE,
  CONSTRAINT `factura_cliente_cliente_id_cliente` FOREIGN KEY (`Cliente_id_cliente`) REFERENCES `cliente` (`id_cliente`) ON UPDATE CASCADE,
  CONSTRAINT `factura_metodo_pago_metodo_pago_id_metodo_pago` FOREIGN KEY (`Metodo_pago_id_metodo_pago`) REFERENCES `metodo_pago` (`id_metodo_pago`) ON UPDATE CASCADE,
  CONSTRAINT `factura_reserva_reserva_id_reserva` FOREIGN KEY (`Reserva_id_reserva`) REFERENCES `reserva` (`id_reserva`) ON UPDATE CASCADE,
  CONSTRAINT `factura_solicitud_especial_solicitud_especial_id_solicitud` FOREIGN KEY (`Solicitud_Especial_id_solicitud`) REFERENCES `solicitud_especial` (`id_solicitud`) ON UPDATE CASCADE
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
  `Villa_id_villa` int NOT NULL COMMENT 'id de la villa',
  PRIMARY KEY (`id_inspeccion_propiedad`),
  KEY `Villa_id_villa` (`Villa_id_villa`),
  CONSTRAINT `inspeccion_propiedad_villa_villa_id_villa` FOREIGN KEY (`Villa_id_villa`) REFERENCES `villa` (`id_villa`) ON UPDATE CASCADE
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
/*!40000 ALTER TABLE `metodo_pago` ENABLE KEYS */;
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
  `Proveedores_id_proveedores` int NOT NULL COMMENT 'id de los proveedores',
  `Almacen_id_almacen` int NOT NULL COMMENT 'este es el id del almacen',
  PRIMARY KEY (`id_producto`),
  KEY `Proveedores_id_proveedores` (`Proveedores_id_proveedores`),
  KEY `Almacen_id_almacen` (`Almacen_id_almacen`),
  CONSTRAINT `producto_almacen_almacen_id_almacen` FOREIGN KEY (`Almacen_id_almacen`) REFERENCES `almacen` (`id_almacen`) ON UPDATE CASCADE,
  CONSTRAINT `producto_proveedores_proveedores_id_proveedores` FOREIGN KEY (`Proveedores_id_proveedores`) REFERENCES `proveedores` (`id_proveedores`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
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
  `Banco_id_banco` int NOT NULL COMMENT 'id del banco',
  PRIMARY KEY (`id_proveedores`),
  KEY `Banco_id_banco` (`Banco_id_banco`),
  CONSTRAINT `proveedores_banco_banco_id_banco` FOREIGN KEY (`Banco_id_banco`) REFERENCES `banco` (`id_banco`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `id_reserva` int NOT NULL COMMENT 'llave primaria de la reserva',
  `fecha_llegada` date DEFAULT NULL COMMENT 'fecha de inicio reserva',
  `fecha_salida` date DEFAULT NULL COMMENT 'fecha del fin de periodo',
  `villa_seleccionada` varchar(100) DEFAULT NULL COMMENT 'aqui se va a seleccionar la villa',
  `numeros_personas` float DEFAULT NULL COMMENT 'numero de personas en la villa',
  `servicios_adicionales` varchar(100) DEFAULT NULL COMMENT 'servicios adicionales de la reserva',
  `estado_reserva` varchar(100) DEFAULT NULL COMMENT 'este es el estado de la reserva si esta en proceso, pendiente, o no iniciado',
  `precio_total` float DEFAULT NULL COMMENT 'este es el precio total de la reserca',
  `id_solicitud_especial` int DEFAULT NULL COMMENT 'este es el foreign key de la tabla solicitud especial',
  `Villa_id_villa` int NOT NULL COMMENT 'id de la villa',
  `Cliente_id_cliente` int NOT NULL COMMENT 'ID del cliente',
  PRIMARY KEY (`id_reserva`),
  KEY `Villa_id_villa` (`Villa_id_villa`),
  KEY `Cliente_id_cliente` (`Cliente_id_cliente`),
  CONSTRAINT `reserva_cliente_cliente_id_cliente` FOREIGN KEY (`Cliente_id_cliente`) REFERENCES `cliente` (`id_cliente`) ON UPDATE CASCADE,
  CONSTRAINT `reserva_villa_villa_id_villa` FOREIGN KEY (`Villa_id_villa`) REFERENCES `villa` (`id_villa`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `id_servicio` int NOT NULL COMMENT 'id del servicio',
  `nombre` varchar(100) DEFAULT NULL COMMENT 'nombre del servicio',
  `categoria_servicio` varchar(100) DEFAULT NULL COMMENT 'tipo del servicio que solicita',
  `precio` decimal(10,2) DEFAULT NULL COMMENT 'precio del servicio',
  `duracion_estimada` time DEFAULT NULL COMMENT 'duracion estimada en la villa',
  `descripcion` text COMMENT 'descripcion detallada del servicio',
  `estado` varchar(50) DEFAULT NULL COMMENT 'estado del servicio',
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
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
  `Usuario_id_usuario` int NOT NULL COMMENT 'id del usuario',
  `Servicio_id_servicio` int NOT NULL COMMENT 'id del servicio',
  `Estancia_cliente_id_estancia_cliente` int NOT NULL COMMENT 'id de la instancia del cliente',
  PRIMARY KEY (`id_solicitud`),
  KEY `Usuario_id_usuario` (`Usuario_id_usuario`),
  KEY `Servicio_id_servicio` (`Servicio_id_servicio`),
  KEY `Estancia_cliente_id_estancia_cliente` (`Estancia_cliente_id_estancia_cliente`),
  CONSTRAINT `solicitud_especial_estancia_cliente_estancia_cliente_id_estanc3` FOREIGN KEY (`Estancia_cliente_id_estancia_cliente`) REFERENCES `estancia_cliente` (`id_estancia_cliente`) ON UPDATE CASCADE,
  CONSTRAINT `solicitud_especial_servicio_servicio_id_servicio` FOREIGN KEY (`Servicio_id_servicio`) REFERENCES `servicio` (`id_servicio`) ON UPDATE CASCADE,
  CONSTRAINT `solicitud_especial_usuario_usuario_id_usuario` FOREIGN KEY (`Usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud_especial`
--

LOCK TABLES `solicitud_especial` WRITE;
/*!40000 ALTER TABLE `solicitud_especial` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitud_especial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL COMMENT 'id del usuario',
  `correo` varchar(50) DEFAULT NULL COMMENT 'correo del empleado',
  `Contraseña` varchar(50) DEFAULT NULL COMMENT 'contraseña del usuario',
  `id_cliente` int DEFAULT NULL COMMENT 'foreign key del cliente',
  `id_empleado` int DEFAULT NULL COMMENT 'foreign key de empleado',
  `Cliente_id_cliente` int NOT NULL COMMENT 'ID del cliente',
  `Empleados_id_empleado` int NOT NULL COMMENT 'ID del empleado',
  PRIMARY KEY (`id_usuario`),
  KEY `Cliente_id_cliente` (`Cliente_id_cliente`),
  KEY `Empleados_id_empleado` (`Empleados_id_empleado`),
  CONSTRAINT `usuario_cliente_cliente_id_cliente` FOREIGN KEY (`Cliente_id_cliente`) REFERENCES `cliente` (`id_cliente`) ON UPDATE CASCADE,
  CONSTRAINT `usuario_empleados_empleados_id_empleado` FOREIGN KEY (`Empleados_id_empleado`) REFERENCES `empleados` (`id_empleado`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
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
  `Usuario_id_usuario` int NOT NULL COMMENT 'id del usuario',
  `Villa_id_villa` int NOT NULL COMMENT 'id de la villa',
  `Servicio_id_servicio` int NOT NULL COMMENT 'id del servicio',
  PRIMARY KEY (`id_valoracion`),
  KEY `Usuario_id_usuario` (`Usuario_id_usuario`),
  KEY `Villa_id_villa` (`Villa_id_villa`),
  KEY `Servicio_id_servicio` (`Servicio_id_servicio`),
  CONSTRAINT `valoracion_cliente_servicio_servicio_id_servicio` FOREIGN KEY (`Servicio_id_servicio`) REFERENCES `servicio` (`id_servicio`) ON UPDATE CASCADE,
  CONSTRAINT `valoracion_cliente_usuario_usuario_id_usuario` FOREIGN KEY (`Usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE,
  CONSTRAINT `valoracion_cliente_villa_villa_id_villa` FOREIGN KEY (`Villa_id_villa`) REFERENCES `villa` (`id_villa`) ON UPDATE CASCADE
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
  `id_villa` int NOT NULL COMMENT 'id de la villa',
  `tipo_villa` varchar(50) DEFAULT NULL COMMENT 'tipo de villa que tenemos disponibles',
  `ubicacion` varchar(100) DEFAULT NULL COMMENT 'ubicacion de las villas',
  `Capaciadad` float DEFAULT NULL COMMENT 'capacidad de las personas de una villa',
  `descripcion` text COMMENT 'descripcion',
  `servicios_comodidades` varchar(100) DEFAULT NULL COMMENT 'servicios y comodidades de la villa',
  `precio` float DEFAULT NULL COMMENT 'precio de la villa',
  `Producto_id_producto` int NOT NULL COMMENT 'id de los productos',
  PRIMARY KEY (`id_villa`),
  KEY `Producto_id_producto` (`Producto_id_producto`),
  CONSTRAINT `villa_producto_producto_id_producto` FOREIGN KEY (`Producto_id_producto`) REFERENCES `producto` (`id_producto`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `villa`
--

LOCK TABLES `villa` WRITE;
/*!40000 ALTER TABLE `villa` DISABLE KEYS */;
/*!40000 ALTER TABLE `villa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 15:02:05
