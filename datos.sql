/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.4.20-MariaDB : Database - sinergia
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sinergia` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `sinergia`;

/*Table structure for table `departamentos` */

DROP TABLE IF EXISTS `departamentos`;

CREATE TABLE `departamentos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `departamentos` */

insert  into `departamentos`(`id`,`nombre`,`created_at`,`updated_at`) values 
(1,'Amazonas',NULL,NULL),
(2,'Cundinamarca',NULL,NULL),
(3,'Huila',NULL,NULL),
(4,'Valle del Cauca',NULL,NULL),
(5,'Tolima',NULL,NULL);

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `generos` */

DROP TABLE IF EXISTS `generos`;

CREATE TABLE `generos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `generos` */

insert  into `generos`(`id`,`nombre`,`created_at`,`updated_at`) values 
(1,'Masculino',NULL,NULL),
(2,'Femeino',NULL,NULL);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(10,'2014_10_12_000000_create_users_table',1),
(11,'2014_10_12_100000_create_password_resets_table',1),
(12,'2019_08_19_000000_create_failed_jobs_table',1),
(13,'2019_12_14_000001_create_personal_access_tokens_table',1),
(14,'2021_09_29_205108_create_departamentos_table',1),
(15,'2021_09_29_205230_create_municipios_table',1),
(16,'2021_09_29_205716_create_tipos_documentos_table',1),
(17,'2021_09_29_205731_create_generos_table',1),
(18,'2021_09_29_205747_create_pacientes_table',1),
(19,'2021_09_29_215232_producto',1);

/*Table structure for table `municipios` */

DROP TABLE IF EXISTS `municipios`;

CREATE TABLE `municipios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `departamento_id` bigint(20) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `municipios_departamento_id_foreign` (`departamento_id`),
  CONSTRAINT `municipios_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `municipios` */

insert  into `municipios`(`id`,`departamento_id`,`nombre`,`created_at`,`updated_at`) values 
(1,5,'Ibague','2021-09-29 16:45:42','2021-09-29 16:45:42'),
(2,5,'Libano','2021-09-29 16:45:42','2021-09-29 16:45:42'),
(3,4,'Cali','2021-09-29 16:45:42','2021-09-29 16:45:42'),
(4,4,'Palmira','2021-09-29 16:45:42','2021-09-29 16:45:42'),
(5,3,'Pitalito','2021-09-29 16:45:42','2021-09-29 16:45:42'),
(6,3,'Neiva','2021-09-29 16:45:42','2021-09-29 16:45:42'),
(7,2,'Girardot','2021-09-29 16:45:42','2021-09-29 16:45:42'),
(8,2,'Bogota','2021-09-29 16:45:42','2021-09-29 16:45:42'),
(9,1,'Leticia','2021-09-29 16:45:42','2021-09-29 16:45:42'),
(10,1,'Puerto Nariño','2021-09-29 16:45:42','2021-09-29 16:45:42');

/*Table structure for table `pacientes` */

DROP TABLE IF EXISTS `pacientes`;

CREATE TABLE `pacientes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tipos_documentos_id` bigint(20) unsigned NOT NULL,
  `numero_documento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero_id` bigint(20) unsigned NOT NULL,
  `nombre1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departamentos_id` bigint(20) unsigned NOT NULL,
  `municipios_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pacientes_tipos_documentos_id_foreign` (`tipos_documentos_id`),
  KEY `pacientes_genero_id_foreign` (`genero_id`),
  KEY `pacientes_departamentos_id_foreign` (`departamentos_id`),
  KEY `pacientes_municipios_id_foreign` (`municipios_id`),
  CONSTRAINT `pacientes_departamentos_id_foreign` FOREIGN KEY (`departamentos_id`) REFERENCES `departamentos` (`id`),
  CONSTRAINT `pacientes_genero_id_foreign` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`),
  CONSTRAINT `pacientes_municipios_id_foreign` FOREIGN KEY (`municipios_id`) REFERENCES `municipios` (`id`),
  CONSTRAINT `pacientes_tipos_documentos_id_foreign` FOREIGN KEY (`tipos_documentos_id`) REFERENCES `tipos_documentos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pacientes` */

insert  into `pacientes`(`id`,`tipos_documentos_id`,`numero_documento`,`genero_id`,`nombre1`,`nombre2`,`apellido1`,`apellido2`,`departamentos_id`,`municipios_id`,`created_at`,`updated_at`) values 
(1,1,'123123123',1,'David',NULL,'Ortega',NULL,1,2,NULL,NULL),
(2,2,'4124125',2,'Maria',NULL,'Reyes',NULL,1,1,NULL,NULL),
(3,1,'1231234',1,'Camilo',NULL,'Marin',NULL,4,1,NULL,NULL),
(4,1,'81231241',2,'Paula','Andrea ','Diaz',NULL,4,2,NULL,NULL),
(5,2,'84271',2,'Juana','Valentina','Mendez',NULL,2,1,NULL,NULL);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `producto` */

DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_fabricante` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_producto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `existencia` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `producto` */

insert  into `producto`(`id`,`id_fabricante`,`id_producto`,`descripcion`,`precio`,`existencia`,`created_at`,`updated_at`) values 
(1,'Aci','41001','Aguja',58,227,NULL,NULL),
(2,'Aci','41002','Micropore',80,150,NULL,NULL),
(3,'Aci','41003','Gasa',112,80,NULL,NULL),
(4,'Aci','41004','Equipo macrogoteo',110,50,NULL,NULL),
(5,'Bic','41003','Curas',120,520,NULL,NULL),
(6,'Inc','41089','Canaleta',500,30,NULL,NULL),
(8,'Bic','Xk47','Compresa',200,200,NULL,NULL);

/*Table structure for table `tipos_documentos` */

DROP TABLE IF EXISTS `tipos_documentos`;

CREATE TABLE `tipos_documentos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tipos_documentos` */

insert  into `tipos_documentos`(`id`,`nombre`,`created_at`,`updated_at`) values 
(1,'Cedula de Ciudadania',NULL,NULL),
(2,'Tarjeta de Identidad',NULL,NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cedula` int(15) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`cedula`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,1104706314,'David','davidortegacadena@gmail.com',NULL,'$2y$10$o3kCsGdn46/tsfhFnTQeLOGOYUgrvN1giBh0ByDgGzwHU.BoNOl7C',NULL,'2021-09-29 18:24:42','2021-09-29 18:24:42');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
