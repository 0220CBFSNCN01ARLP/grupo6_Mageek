DROP DATABASE IF EXISTS mageek;
CREATE DATABASE mageek;

USE mageek;

SET NAMES utf8;
SET time_zone
= '-03:00';
SET foreign_key_checks
= 0;
SET sql_mode
= 'NO_AUTO_VALUE_ON_ZERO';



#
# TABLE STRUCTURE FOR: artes
#

DROP TABLE IF EXISTS `artes`;

CREATE TABLE `artes` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `artista` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (1, '1989-01-06 02:24:15', '1980-05-19 13:32:05', 'Reichel');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (2, '1977-10-27 02:52:45', '1974-06-08 16:37:20', 'Rath');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (3, '2019-06-16 07:18:55', '1998-07-08 13:50:53', 'Nienow');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (4, '1972-07-23 04:16:20', '2008-09-01 19:58:49', 'Ryan');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (5, '2012-07-10 23:01:30', '1984-03-05 09:20:58', 'Cormier');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (6, '2000-10-31 18:14:22', '1973-01-22 23:32:52', 'Will');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (7, '1986-01-10 09:16:53', '1987-12-09 11:30:26', 'Walsh');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (8, '2001-10-14 20:20:49', '1994-08-05 11:31:55', 'Monahan');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (9, '2000-07-18 12:48:51', '1992-08-18 06:25:07', 'Douglas');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (10, '2005-10-29 13:48:53', '1975-11-16 19:18:49', 'Kessler');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (11, '1984-07-26 23:06:56', '1989-02-07 06:09:24', 'Gorczany');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (12, '2015-01-11 21:27:10', '1979-01-21 00:38:16', 'Jacobson');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (13, '1983-02-05 06:12:46', '1983-01-31 08:35:47', 'Casper');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (14, '1985-07-28 22:45:12', '1998-05-10 16:38:02', 'Anderson');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (15, '1977-04-08 01:30:20', '1994-08-09 20:39:42', 'Kuhic');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (16, '2009-09-26 06:49:15', '1998-07-13 06:37:18', 'Yost');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (17, '2005-10-21 23:10:51', '2015-10-18 13:10:44', 'Carroll');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (18, '2018-08-14 10:19:17', '2020-04-10 20:41:54', 'Daniel');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (19, '2012-10-14 02:08:59', '1970-08-19 06:18:18', 'Heidenreich');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (20, '1977-05-02 13:12:33', '1999-05-19 22:57:49', 'Sanford');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (21, '2012-03-24 20:23:37', '2015-11-07 08:56:41', 'McKenzie');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (22, '1999-12-21 17:09:06', '1999-01-19 10:11:58', 'Parisian');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (23, '2000-02-23 09:40:52', '2015-05-23 19:06:44', 'Emmerich');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (24, '1975-11-20 22:34:55', '1980-01-22 07:43:34', 'Veum');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (25, '1983-04-13 14:09:45', '1974-09-10 21:11:34', 'Lind');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (26, '1996-10-19 12:45:05', '1981-01-16 18:58:53', 'Goodwin');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (27, '1975-05-29 23:51:31', '2015-12-29 14:51:27', 'Wuckert');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (28, '2002-06-10 11:14:38', '1995-08-14 22:09:12', 'Johnson');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (29, '1980-09-16 22:27:14', '2014-01-06 10:38:38', 'Schultz');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (30, '1983-05-22 03:27:52', '1986-01-18 18:27:00', 'Kemmer');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (31, '1977-04-10 19:38:00', '2001-03-05 14:19:32', 'Miller');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (32, '1975-10-18 19:15:53', '1983-04-20 00:26:40', 'Goldner');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (33, '1989-06-19 06:53:28', '2014-10-02 17:14:16', 'Hilpert');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (34, '2011-12-30 11:51:20', '1983-04-21 04:24:19', 'Lubowitz');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (35, '1973-12-21 17:22:51', '1988-03-14 13:41:05', 'Wyman');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (36, '1989-05-03 04:42:45', '2013-05-10 04:27:39', 'Steuber');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (37, '1975-11-27 11:03:12', '2007-01-10 14:17:47', 'Koch');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (38, '1992-09-07 06:20:48', '1980-03-22 12:44:58', 'Baumbach');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (39, '2002-10-04 11:08:26', '1990-03-24 10:41:07', 'Hodkiewicz');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (40, '1987-12-28 08:35:36', '2019-03-14 21:55:43', 'Brown');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (41, '2005-05-14 14:21:19', '1982-01-28 07:16:03', 'Schulist');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (42, '1972-12-06 16:35:59', '1975-12-26 12:57:04', 'Altenwerth');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (43, '2012-01-16 08:07:01', '1980-09-25 00:57:53', 'Mante');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (44, '1997-04-17 00:33:38', '2001-12-14 05:20:29', 'Schowalter');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (45, '1993-04-29 19:39:17', '1974-05-25 21:23:03', 'Green');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (46, '1994-12-29 18:32:12', '2006-07-23 05:16:51', 'Raynor');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (47, '2007-07-27 13:30:12', '2019-03-31 11:25:11', 'Ernser');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (48, '2014-10-17 16:59:39', '2011-08-23 08:39:20', 'Stokes');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (49, '1986-10-09 14:35:58', '1975-03-12 23:09:17', 'Jenkins');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (50, '1982-03-29 01:18:02', '1992-11-04 20:31:50', 'Rolfson');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (51, '1992-09-20 21:46:49', '2005-11-02 12:35:17', 'Cassin');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (52, '2018-01-25 02:20:22', '1973-11-30 00:28:04', 'Leuschke');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (53, '1972-08-09 16:13:49', '1970-02-20 21:39:54', 'Greenholt');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (54, '2019-03-13 21:11:43', '2012-04-22 18:50:12', 'Schinner');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (55, '1970-06-10 04:29:27', '2003-02-27 19:22:29', 'Legros');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (56, '1987-04-04 15:11:47', '2008-09-07 14:52:44', 'Predovic');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (57, '1994-08-29 22:24:25', '2002-06-18 03:32:30', 'Klein');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (58, '1986-12-01 10:32:22', '1997-06-11 08:48:21', 'Stehr');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (59, '1991-11-10 07:40:05', '1989-01-09 18:52:00', 'Gibson');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (60, '1981-02-08 15:27:49', '1991-01-02 02:45:05', 'Feil');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (61, '1982-11-16 15:45:45', '2005-06-29 09:09:41', 'Wolf');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (62, '1974-05-10 04:04:57', '1975-05-22 20:25:43', 'Wiza');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (63, '2019-12-25 03:08:37', '2009-01-28 14:51:51', 'Stanton');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (64, '1973-02-24 19:49:58', '1994-06-09 02:13:56', 'Wilkinson');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (65, '2012-10-28 21:08:03', '2005-10-15 06:51:21', 'Mraz');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (66, '1986-07-31 11:39:21', '2006-08-12 22:57:52', 'Armstrong');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (67, '2003-04-18 21:31:20', '1996-07-15 06:38:00', 'Upton');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (68, '1975-02-08 16:27:43', '1971-09-04 10:41:42', 'Wuckert');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (69, '1981-07-02 14:38:34', '2006-02-16 05:42:03', 'Beahan');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (70, '1991-09-30 01:41:11', '1973-06-18 09:56:14', 'Kutch');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (71, '1972-01-19 04:06:28', '1976-04-13 09:00:56', 'O\Hara');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (72, '2007-12-04 09:24:49', '2005-11-28 05:51:55', 'Jenkins');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (73, '2002-10-05 03:10:30', '1987-07-09 07:30:43', 'Torp');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (74, '1984-08-09 20:02:15', '2005-06-13 22:12:38', 'Nader');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (75, '2013-08-17 00:42:11', '1973-07-02 06:13:59', 'Schulist');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (76, '1986-01-08 11:28:14', '1975-11-07 18:16:56', 'Pagac');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (77, '1987-02-25 00:37:37', '1992-04-28 13:27:00', 'Klocko');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (78, '2007-12-29 08:20:49', '2018-04-20 21:34:05', 'Boyle');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (79, '1983-03-14 01:45:43', '1997-11-11 11:46:56', 'Feil');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (80, '1975-05-09 09:13:47', '2011-11-09 05:21:43', 'Grimes');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (81, '1992-12-20 08:34:56', '1984-09-20 06:17:20', 'Bradtke');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (82, '2017-02-03 09:44:56', '1991-12-20 17:45:39', 'Dooley');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (83, '1994-09-06 17:13:55', '2018-06-09 15:33:25', 'Tromp');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (84, '1991-12-26 06:58:23', '2010-01-09 18:05:38', 'Weimann');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (85, '2013-10-25 10:50:51', '1991-09-11 04:08:35', 'Pfeffer');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (86, '1981-10-04 10:14:09', '1993-05-09 21:43:22', 'Spinka');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (87, '2012-04-16 14:08:40', '1979-10-21 18:04:15', 'Wiza');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (88, '1993-09-09 07:27:17', '2005-02-06 02:27:52', 'Rohan');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (89, '2004-08-29 20:45:31', '2008-12-26 11:24:20', 'Goyette');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (90, '1996-02-06 18:50:48', '1970-08-18 20:38:55', 'Yundt');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (91, '2019-05-02 04:24:08', '2005-08-09 22:34:33', 'Skiles');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (92, '2011-01-16 06:16:20', '1972-07-29 14:30:02', 'Barton');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (93, '1975-02-14 19:23:44', '2010-10-02 15:21:08', 'Watsica');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (94, '2014-04-06 00:31:25', '1985-08-17 09:30:32', 'Durgan');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (95, '1996-01-24 20:02:57', '2016-09-17 12:10:10', 'McClure');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (96, '1988-05-15 16:34:01', '1989-05-02 02:40:16', 'Macejkovic');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (97, '1985-04-30 20:19:19', '2002-10-18 13:03:23', 'Gutmann');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (98, '1991-12-30 07:32:58', '2009-12-16 19:24:54', 'Green');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (99, '1994-06-26 22:47:03', '1973-07-14 23:09:40', 'Gibson');
INSERT INTO `artes` (`id`, `created_at`, `updated_at`, `artista`) VALUES (100, '2007-06-01 14:43:09', '2018-05-24 16:26:37', 'Trantow');


#
# TABLE STRUCTURE FOR: blisters
#

DROP TABLE IF EXISTS `blisters`;

CREATE TABLE `blisters` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Arte` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `id_producto` int(12) unsigned NOT NULL,
  `id_edicion` int(12) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_producto_blister` (`id_producto`),
  KEY `fk_edicion_blister` (`id_edicion`),
  CONSTRAINT `fk_edicion_blister` FOREIGN KEY (`id_edicion`) REFERENCES `ediciones` (`id`),
  CONSTRAINT `fk_producto_blister` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (1, '2017-03-04 21:28:50', '2011-02-02 06:36:41', 'Et rerum.', 1, 1);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (2, '1997-01-25 23:34:05', '1975-02-24 01:03:09', 'Iste ducimus.', 2, 2);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (3, '2017-08-04 17:37:56', '1973-03-08 15:19:57', 'Deleniti perferendis error.', 3, 3);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (4, '1989-04-30 06:36:57', '1995-04-06 07:43:07', 'Ipsa minus.', 4, 4);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (5, '1987-02-05 05:34:41', '2018-07-20 18:26:39', 'Quam est.', 5, 5);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (6, '2004-11-01 12:30:02', '1973-01-30 22:13:11', 'Ut sit.', 6, 6);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (7, '1995-09-02 13:25:45', '2000-04-29 11:52:12', 'Est et asperiores.', 7, 7);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (8, '1982-05-16 05:26:47', '2013-10-30 10:18:56', 'Vel placeat et.', 8, 8);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (9, '2012-03-07 12:37:16', '2008-08-14 05:54:25', 'Esse voluptas fuga.', 9, 9);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (10, '1998-09-02 04:40:42', '1995-02-20 09:57:13', 'Ut distinctio.', 10, 10);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (11, '1979-10-29 04:19:04', '2003-08-17 13:37:08', 'Laboriosam hic quisquam.', 11, 11);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (12, '1992-07-23 05:49:12', '1987-09-15 20:16:29', 'Dicta et voluptas.', 12, 12);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (13, '2014-05-17 08:12:43', '1994-08-24 00:24:39', 'In provident.', 13, 13);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (14, '1978-06-05 02:50:55', '2007-09-20 00:05:28', 'Voluptatum voluptate.', 14, 14);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (15, '2010-12-10 23:06:08', '1979-05-05 20:29:34', 'Nam et.', 15, 15);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (16, '1978-08-18 11:33:50', '1975-08-26 20:45:25', 'Culpa sunt sint.', 16, 16);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (17, '1992-02-06 03:51:18', '1988-01-26 09:32:29', 'Quibusdam deserunt.', 17, 17);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (18, '1990-02-25 06:49:01', '1980-07-06 22:37:32', 'Pariatur sed fuga.', 18, 18);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (19, '1994-11-24 23:01:45', '2014-02-08 10:06:43', 'Maiores labore.', 19, 19);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (20, '2019-05-21 04:10:31', '1975-06-13 13:07:08', 'Reiciendis vel.', 20, 20);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (21, '1982-10-10 01:48:43', '2010-01-25 13:24:42', 'Quia ea.', 21, 21);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (22, '2015-12-20 03:05:58', '1981-03-28 10:35:44', 'Maxime sit.', 22, 22);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (23, '1981-10-15 19:00:06', '1973-07-02 16:32:18', 'Enim sit laudantium.', 23, 23);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (24, '1976-03-27 12:08:37', '1985-09-16 02:23:31', 'Dolores asperiores.', 24, 24);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (25, '1996-09-29 19:33:40', '2011-11-17 19:33:44', 'Voluptas distinctio optio.', 25, 25);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (26, '1989-05-16 19:52:51', '1972-08-07 12:46:47', 'At suscipit.', 26, 26);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (27, '1996-08-08 02:14:48', '2001-07-13 00:05:35', 'Consequatur doloribus officiis.', 27, 27);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (28, '2002-08-10 16:56:48', '2007-09-24 21:18:53', 'Magni enim consequatur.', 28, 28);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (29, '1996-11-17 01:55:44', '1993-04-11 10:38:56', 'Dignissimos accusamus expedita.', 29, 29);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (30, '1991-03-05 06:19:30', '1984-05-04 15:51:45', 'Architecto dolorem sint.', 30, 30);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (31, '1981-04-27 05:12:03', '2000-04-24 09:20:45', 'Sit qui non.', 31, 31);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (32, '1972-07-16 10:37:24', '1983-03-07 23:13:10', 'Laudantium omnis fuga.', 32, 32);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (33, '2014-10-03 13:51:37', '1984-11-25 01:22:04', 'Consequatur consequatur.', 33, 33);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (34, '1970-05-12 11:25:19', '1992-06-22 23:23:03', 'Ut quidem deserunt.', 34, 34);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (35, '1981-10-17 01:22:34', '2001-10-20 04:41:52', 'Iste tempora explicabo.', 35, 35);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (36, '2018-04-30 00:05:41', '1981-11-19 13:33:34', 'Et perferendis non.', 36, 36);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (37, '1999-10-19 23:40:39', '1988-10-06 14:00:05', 'Ullam enim.', 37, 37);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (38, '2014-03-08 09:53:36', '1986-01-28 09:57:42', 'Consequatur enim nostrum.', 38, 38);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (39, '1994-11-23 02:21:10', '1995-10-31 18:51:12', 'Quasi expedita qui.', 39, 39);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (40, '2016-04-11 12:42:27', '2011-04-28 19:01:27', 'Beatae dolore in.', 40, 40);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (41, '2003-09-01 00:57:03', '2018-09-05 15:01:05', 'Id dignissimos.', 41, 41);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (42, '1977-02-23 11:12:16', '1982-10-26 01:35:40', 'Beatae voluptatum ex.', 42, 42);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (43, '1994-12-22 08:11:59', '1982-03-06 07:20:26', 'Et id et.', 43, 43);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (44, '1985-01-04 18:04:17', '1996-05-31 21:48:15', 'Quo natus.', 44, 44);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (45, '1988-07-09 18:20:33', '1986-07-21 07:06:38', 'Libero sunt harum.', 45, 45);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (46, '1989-03-06 06:00:13', '1974-04-02 15:13:20', 'Sequi magni reprehenderit.', 46, 46);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (47, '1974-04-14 18:43:18', '1977-05-10 13:55:37', 'Omnis aut.', 47, 47);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (48, '2010-07-01 09:27:23', '1974-03-18 03:54:23', 'Quia et perferendis.', 48, 48);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (49, '1970-04-12 11:21:14', '1998-07-19 15:35:27', 'Earum quia praesentium.', 49, 49);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (50, '1999-08-14 02:04:00', '2019-12-24 02:26:11', 'Aut perferendis.', 50, 50);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (51, '1999-11-08 16:24:39', '1991-08-05 21:54:38', 'Quae nam et.', 51, 51);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (52, '2012-10-28 20:04:16', '2004-12-17 22:22:43', 'Laborum perferendis consequuntur.', 52, 52);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (53, '1991-11-13 21:51:58', '1989-09-25 03:44:23', 'Corrupti vero.', 53, 53);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (54, '1985-10-13 01:03:30', '1996-02-25 20:05:09', 'Aliquid incidunt.', 54, 54);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (55, '1991-09-18 08:47:06', '2003-01-19 00:14:00', 'Tenetur ducimus.', 55, 55);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (56, '2013-04-08 15:46:33', '1981-11-21 19:11:07', 'Molestiae consequatur assumenda.', 56, 56);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (57, '1997-08-15 14:06:52', '1975-09-22 17:53:34', 'Suscipit dolorem fugiat.', 57, 57);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (58, '1991-03-05 06:31:44', '1992-06-01 01:26:27', 'Mollitia voluptatem quidem.', 58, 58);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (59, '1975-03-12 04:31:34', '2007-10-14 11:36:17', 'Unde eaque.', 59, 59);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (60, '1978-05-07 07:33:00', '2020-04-30 04:46:10', 'Debitis dolorem.', 60, 60);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (61, '2003-02-13 18:50:32', '2016-06-16 22:22:18', 'Quos magni.', 61, 61);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (62, '1971-04-24 13:28:11', '1988-06-08 20:14:07', 'Quasi quod.', 62, 62);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (63, '1977-12-08 02:53:39', '1984-03-22 20:44:11', 'Consequatur veniam in.', 63, 63);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (64, '1977-04-08 07:41:15', '1975-09-12 18:25:45', 'Fugit quia.', 64, 64);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (65, '2007-10-19 06:15:33', '1998-03-14 11:54:20', 'Quas id excepturi.', 65, 65);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (66, '1993-11-03 04:05:57', '2001-07-18 20:59:20', 'Natus et.', 66, 66);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (67, '1991-11-05 21:19:45', '1991-09-25 02:16:55', 'Ut magni ratione.', 67, 67);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (68, '1976-08-26 08:52:36', '1974-10-27 14:04:25', 'Vel perferendis.', 68, 68);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (69, '2019-05-03 09:57:09', '1990-05-05 22:02:09', 'Tempore voluptas culpa.', 69, 69);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (70, '1976-02-15 12:09:07', '1972-09-07 01:11:08', 'Ducimus quas.', 70, 70);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (71, '1976-08-12 21:20:29', '2015-08-17 12:17:03', 'Adipisci placeat.', 71, 71);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (72, '2003-10-11 10:15:51', '2009-02-11 19:37:33', 'Voluptatem quas et.', 72, 72);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (73, '1992-02-23 15:03:09', '2010-03-14 11:52:57', 'Eligendi occaecati.', 73, 73);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (74, '2004-10-04 08:57:11', '1986-12-08 21:35:58', 'Et nam.', 74, 74);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (75, '1989-09-26 10:05:13', '1980-12-20 21:44:08', 'Et nulla.', 75, 75);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (76, '1994-09-23 21:35:25', '2007-05-03 00:58:08', 'Illo est ut.', 76, 76);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (77, '1992-06-29 00:41:05', '2002-10-18 18:18:15', 'Est tempora.', 77, 77);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (78, '2017-08-14 16:42:27', '2020-03-13 23:42:42', 'Perferendis animi voluptas.', 78, 78);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (79, '1992-06-15 12:47:10', '1992-05-21 20:45:37', 'Iure quaerat saepe.', 79, 79);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (80, '1972-02-22 14:32:23', '2009-04-05 14:30:49', 'Quasi et est.', 80, 80);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (81, '2013-12-01 02:05:08', '2013-07-20 23:15:22', 'Quasi delectus dignissimos.', 81, 81);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (82, '1975-08-01 02:57:37', '1970-11-10 16:57:48', 'Eligendi ipsa.', 82, 82);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (83, '1974-10-14 02:56:41', '2002-01-21 07:01:27', 'Voluptatem quia.', 83, 83);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (84, '1993-11-30 08:43:11', '1994-06-27 12:14:16', 'A enim.', 84, 84);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (85, '1997-01-28 14:02:01', '2018-06-09 18:21:20', 'Autem sed ut.', 85, 85);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (86, '2014-11-12 16:07:42', '1984-11-07 06:12:52', 'Voluptas sed et.', 86, 86);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (87, '1996-08-07 05:25:51', '1991-02-12 08:05:56', 'Autem sint.', 87, 87);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (88, '1994-01-30 04:46:52', '2011-01-24 21:52:36', 'Omnis id nihil.', 88, 88);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (89, '2003-02-17 09:25:25', '2018-11-21 10:03:04', 'Quisquam tempore perspiciatis.', 89, 89);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (90, '1984-04-12 04:44:33', '1976-01-14 08:23:47', 'Eos quas fugit.', 90, 90);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (91, '1992-06-09 01:29:32', '2002-07-20 06:56:49', 'Veritatis hic.', 91, 91);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (92, '1987-08-11 08:20:47', '1993-04-27 14:38:12', 'Voluptatem ipsam.', 92, 92);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (93, '2010-06-11 08:19:19', '1973-03-03 10:19:05', 'Accusamus error perspiciatis.', 93, 93);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (94, '2011-10-21 06:02:41', '2012-01-13 20:24:41', 'Commodi aut eos.', 94, 94);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (95, '1977-05-29 21:09:26', '1995-01-04 19:15:42', 'Praesentium et.', 95, 95);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (96, '1981-06-26 05:18:57', '1995-10-25 16:27:51', 'Mollitia laboriosam.', 96, 96);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (97, '1974-01-11 07:14:36', '2014-10-18 14:24:02', 'Ex iusto alias.', 97, 97);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (98, '1997-08-20 01:15:40', '1980-04-20 09:59:59', 'Modi possimus nisi.', 98, 98);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (99, '1993-08-12 02:40:40', '1993-12-29 07:22:53', 'Quia eius est.', 99, 99);
INSERT INTO `blisters` (`id`, `created_at`, `updated_at`, `Arte`, `id_producto`, `id_edicion`) VALUES (100, '1998-11-09 07:57:50', '2014-11-03 20:08:29', 'Culpa nihil.', 100, 100);


#
# TABLE STRUCTURE FOR: cartas
#

DROP TABLE IF EXISTS `cartas`;

CREATE TABLE `cartas` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `oracle` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flavortext` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mana` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ataque` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `defensa` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_arte` int(12) unsigned NOT NULL,
  `id_tipo` int(12) unsigned NOT NULL,
  `subtipo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_color` int(12) unsigned NOT NULL,
  `id_edicion` int(12) unsigned NOT NULL,
  `limitado` tinyint(1) DEFAULT NULL,
  `id_producto` int(12) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_producto_carta` (`id_producto`),
  KEY `fk_arte_carta` (`id_arte`),
  KEY `fk_edicion_carta` (`id_edicion`),
  KEY `fk_tipo_carta` (`id_tipo`),
  KEY `fk_color_carta` (`id_color`),
  CONSTRAINT `fk_arte_carta` FOREIGN KEY (`id_arte`) REFERENCES `artes` (`id`),
  CONSTRAINT `fk_color_carta` FOREIGN KEY (`id_color`) REFERENCES `colores` (`id`),
  CONSTRAINT `fk_edicion_carta` FOREIGN KEY (`id_edicion`) REFERENCES `ediciones` (`id`),
  CONSTRAINT `fk_producto_carta` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`),
  CONSTRAINT `fk_tipo_carta` FOREIGN KEY (`id_tipo`) REFERENCES `tipos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1001, '2005-08-02 08:19:43', '1983-08-28 07:43:23', 'Consequuntur officia voluptate suscipit vero. Quia voluptatum delectus quo. Cupiditate eveniet amet reprehenderit ipsa unde accusamus enim.', 'Culpa ab quia tempore non repellendus. Est odio vel consequatur. Illo quis sit maxime totam nam nesciunt labore.', '2axtq', '3', '02 cu', 1, 1, 'Asperiores ut voluptates.', 1, 1, NULL, 1);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1002, '1985-10-16 03:40:36', '2000-04-24 10:52:05', 'Cum dolore modi aut voluptatum nulla voluptatum. Nemo cum est ut architecto et quasi. In omnis est magni a.', 'Fugiat veritatis unde aperiam aut. Rerum a quis mollitia dignissimos in itaque.', '2zadg', '1', '60 eb', 2, 2, 'Est eligendi exercitationem.', 2, 2, NULL, 2);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1003, '2000-05-21 23:13:54', '1997-05-06 05:20:59', 'Possimus molestiae in autem aperiam nisi laboriosam eos. Non ea totam quos quo repellat cupiditate.', 'Ut deleniti dolor hic eos in amet quis. Illo vero beatae soluta quas ipsa minima. Iure minus ut et quas ab. Sint non et animi qui dolores magnam.', '8vitx', '8', '65 jp', 3, 3, 'Eos aut.', 3, 3, NULL, 3);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1004, '2002-02-22 03:55:53', '1984-04-06 08:54:35', 'Et perferendis velit aliquam dolorem. Animi modi reiciendis voluptates quibusdam consectetur qui expedita dignissimos.', 'Quibusdam sint et quaerat sit cupiditate. Saepe officia veritatis ut modi. Alias est ut sit laudantium aperiam.', '9rork', '2', '17 jp', 4, 4, 'Quo non ipsa.', 4, 4, NULL, 4);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1005, '2008-02-16 06:56:49', '2011-05-02 00:59:08', 'Repellendus deleniti autem perferendis vitae. Qui voluptates occaecati optio et. Cumque quidem itaque quasi magni.', 'Ut ex accusantium ea voluptate. Soluta veritatis possimus repellat rerum ad temporibus reiciendis est.', '8dpal', '6', '68 jb', 5, 5, 'Dolor beatae voluptas.', 5, 5, NULL, 5);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1006, '2012-05-29 19:31:04', '2009-10-25 05:37:03', 'Accusamus deleniti praesentium et non repellat unde. Vel nobis consequuntur et. Dicta deleniti iste asperiores ad in et et.', 'Dolorum sint hic illum facilis qui. Accusamus quis ut aspernatur vel. Et ab ut qui ducimus officiis incidunt.', '7tggv', '3', '39 kl', 6, 6, 'Et impedit corrupti.', 6, 6, NULL, 6);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1007, '1978-11-13 04:20:42', '2012-01-03 03:49:14', 'Nesciunt aut in porro tempore quas qui ullam. Voluptatem consequuntur necessitatibus sit numquam quod ipsum delectus ipsam.', 'Ut dolor temporibus nihil enim ducimus. Omnis et modi et excepturi sint enim aliquam.', '0umqp', '8', '93 sj', 7, 7, 'Est consequatur.', 7, 7, NULL, 7);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1008, '2016-08-20 05:29:24', '1973-02-10 03:39:35', 'Corrupti esse sunt debitis quidem non corrupti qui. Ea tempora eligendi veniam eos. Sunt praesentium sed sint quaerat.', 'Tempora porro accusamus explicabo alias. Tempora itaque ipsa ut illum quo. Velit quisquam quam voluptas delectus in.', '6uics', '4', '59 tg', 8, 8, 'Harum ex.', 8, 8, NULL, 8);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1009, '2007-02-15 09:17:54', '2020-06-08 19:16:54', 'Unde quia ipsa et aut. Ullam qui veniam quia. Est ipsa dolorum reiciendis sed.', 'Voluptatem necessitatibus dolorem qui eum minus vel. Quis accusamus tenetur eos. Consectetur optio delectus inventore molestiae quia fugit unde.', '4xwok', '8', '57 pg', 9, 9, 'Aut est.', 9, 9, NULL, 9);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1010, '2006-10-14 09:44:59', '2010-03-07 20:16:08', 'Velit asperiores architecto aut. Reiciendis consequatur ipsum rerum sit dolore. Nemo harum labore ipsam sed necessitatibus voluptates rerum.', 'Nisi a unde repellendus dolore. Quas distinctio voluptatibus est quo aut ipsam quae. Et dolores minima dignissimos qui aut.', '1infd', '7', '93 at', 10, 10, 'Quibusdam accusamus qui.', 10, 10, NULL, 10);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1011, '2006-02-07 07:12:31', '2001-02-27 10:53:42', 'Eum voluptas sequi et eligendi sapiente eaque omnis. Consequatur est aliquid enim aut recusandae officia.', 'Autem vel aliquid doloribus. Molestiae ipsum nostrum voluptatem temporibus possimus velit fuga facere. Aliquid et dolores doloribus vero aut.', '6kscz', '7', '42 kv', 11, 1, 'Officia illo eius.', 11, 11, NULL, 11);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1012, '1972-02-08 18:23:41', '2014-11-02 04:31:48', 'Molestias aut perspiciatis aperiam quo tenetur eos. Nobis accusamus consequatur natus at et et. Dolores quasi quia dolores quos qui quam.', 'Consequatur qui sunt voluptatem ea deserunt ut tempore. Molestiae ratione non nobis voluptatum commodi explicabo.', '2hjve', '1', '64 xk', 12, 2, 'Doloribus omnis fuga.', 12, 12, NULL, 12);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1013, '1988-03-08 21:56:19', '2000-02-05 21:29:47', 'Sunt culpa dolorem nam magni. Distinctio aut veniam tenetur eum. Ex ut voluptas sit.', 'Ducimus reiciendis et tenetur at sequi. Quasi accusamus aut alias harum. Quo ipsum expedita molestias fugiat fuga iste qui.', '2qpqr', '6', '11 iw', 13, 3, 'Eaque commodi possimus.', 13, 13, NULL, 13);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1014, '1972-08-08 14:26:30', '1988-08-06 20:59:03', 'Sint quia et vel consequatur eos ut consectetur. Praesentium doloremque veritatis ducimus porro omnis. Sapiente deleniti commodi dicta eum.', 'Mollitia voluptas dolor vero porro odio. Quis consectetur deleniti nemo incidunt aperiam.', '8aoqc', '4', '07 uy', 14, 4, 'Delectus tempora inventore.', 14, 14, NULL, 14);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1015, '2014-10-10 00:56:34', '2013-01-29 18:27:19', 'Accusantium quia non fugiat molestiae ullam eos voluptas. Rerum itaque in magnam alias. Consequatur non repellat laboriosam pariatur sit esse.', 'Vel recusandae officia quia similique ad. Magni minima a non minima. Sed animi perspiciatis sit magni autem deserunt sunt.', '3uyon', '4', '07 xd', 15, 5, 'Deleniti omnis molestiae.', 15, 15, NULL, 15);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1016, '1985-05-07 05:49:39', '1996-03-27 23:07:04', 'Iste et quisquam fugit autem adipisci. Molestias accusamus in molestiae voluptas perspiciatis. Rem et sunt inventore maiores est consectetur.', 'Dolores explicabo quia sequi ad eligendi. Illum ipsa nemo quos at libero. Debitis et vel rerum corporis.', '4errg', '1', '25 ac', 16, 6, 'Omnis sed.', 16, 16, NULL, 16);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1017, '2008-08-29 15:47:35', '1972-05-03 09:09:39', 'Accusamus eveniet et ex aut. Id natus et earum aut. Quia et et voluptate minima.', 'In omnis tempore necessitatibus sed ad quos. Maxime voluptate molestiae unde est molestiae corporis. Ut eligendi quia rem velit.', '6nrdc', '3', '43 bi', 17, 7, 'Consequatur perferendis fugiat.', 17, 17, NULL, 17);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1018, '1971-05-02 05:22:44', '2013-06-10 12:37:49', 'Pariatur laboriosam iste consequatur qui. Debitis dicta omnis sed possimus maxime.', 'Ab officia assumenda sunt. Itaque dolor ad et sint. Sit asperiores vero dolorum sapiente ea dicta rem nihil.', '9csib', '3', '82 sz', 18, 8, 'Ut qui.', 18, 18, NULL, 18);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1019, '2019-10-07 04:12:25', '1972-08-02 11:01:20', 'Doloribus laudantium odio tempora ea expedita voluptatum quo. Accusantium ad molestias sit eum occaecati.', 'Deleniti aut qui numquam enim molestiae debitis. Qui praesentium dolores incidunt sed nesciunt quod optio. Rem sed debitis et facere cum et aut.', '1kfui', '9', '34 tv', 19, 9, 'Porro rerum.', 19, 19, NULL, 19);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1020, '2015-11-15 16:02:20', '1988-06-28 20:01:18', 'A iusto officia ipsam non quia ducimus. Magni doloribus est quos asperiores. Pariatur fugit quas dolor ratione.', 'Ad nihil nemo blanditiis. Nisi consequatur adipisci maiores nostrum mollitia. Et id ea sint et adipisci.', '2wvxa', '7', '63 dm', 20, 10, 'Eveniet exercitationem.', 20, 20, NULL, 20);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1021, '2017-03-19 05:00:46', '1978-10-28 15:06:39', 'Non porro optio et quibusdam quasi. Odio illum distinctio sint necessitatibus consequatur quos libero. Magni iste sunt corrupti eaque nostrum fugit.', 'Quas architecto fugit omnis. Optio dolor aut aut ut. Et inventore ut quos nemo illo ut.', '9qfix', '9', '15 ji', 21, 1, 'Qui voluptas autem.', 21, 21, NULL, 21);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1022, '1983-03-15 14:17:33', '1985-06-19 19:22:19', 'Aspernatur quis neque perferendis eius cupiditate. Officiis velit quae error laborum tenetur iusto. In dicta harum dolor tempore aliquid.', 'Quas quidem qui ut nam sint. Aut ratione animi in qui sed tempore accusantium. Officia ipsa velit quia veritatis.', '9otvz', '0', '90 rr', 22, 2, 'Ducimus neque consequatur.', 22, 22, NULL, 22);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1023, '2018-04-25 00:06:48', '1975-12-03 11:13:31', 'Distinctio aspernatur maxime voluptas et sit non ut. Quia tenetur at laudantium. Quo omnis et corrupti dicta quaerat sequi animi.', 'Ex odit cumque consequatur non animi. Occaecati quam et et blanditiis non. Aliquam nobis natus magni vero laudantium.', '8pmvo', '3', '73 jc', 23, 3, 'Enim et.', 23, 23, NULL, 23);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1024, '2000-05-30 07:47:53', '1987-12-18 01:10:22', 'Est accusamus iste iste facilis sed. Et ut ipsam iusto illo similique. Tempora totam enim eum atque.', 'Rerum rem aliquam et quidem consectetur sit amet eveniet. Ullam quia similique autem recusandae. Ipsum debitis qui architecto quis eum sit corporis.', '8yljh', '2', '06 ht', 24, 4, 'Minus aut.', 24, 24, NULL, 24);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1025, '2011-02-04 15:42:17', '1971-02-04 13:52:09', 'Asperiores ea a impedit quia. Ut enim necessitatibus autem in voluptatum voluptates adipisci.', 'Rem unde rem et esse rerum. Occaecati eos iure harum ut. Molestiae in debitis fugiat deserunt ratione ipsa ipsam.', '9ptqm', '5', '20 qz', 25, 5, 'Beatae harum amet.', 25, 25, NULL, 25);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1026, '1990-06-27 05:25:52', '1980-08-02 15:40:17', 'Non soluta commodi enim itaque modi quas. Est qui aliquam quod et. Quia et harum blanditiis dolorem labore fuga dolorem.', 'Tempora corrupti fugiat recusandae consectetur qui aperiam tempore voluptate. Earum mollitia in amet nisi voluptas sequi. Optio est amet sed.', '8dftd', '2', '77 om', 26, 6, 'Aliquam eum ullam.', 1, 26, NULL, 26);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1027, '2011-01-09 10:34:07', '2014-12-13 03:26:08', 'Nemo eveniet quisquam quia est sed. Atque ut ut aut necessitatibus. Recusandae voluptatem neque delectus illo deserunt autem.', 'Est et non facere aut omnis ut rerum. Et nisi distinctio assumenda ea ipsam. Vel architecto nostrum quia officia molestiae.', '8yrgc', '6', '85 kp', 27, 7, 'Accusantium reprehenderit.', 2, 27, NULL, 27);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1028, '1974-02-08 06:04:40', '2010-09-13 11:32:15', 'Distinctio cum minus distinctio non. Pariatur et est optio vero alias. Ullam sapiente impedit voluptatem corrupti error nemo.', 'Excepturi eaque ipsum ea est numquam. Rerum nesciunt vel eveniet illo delectus sint. Ut veritatis a beatae vitae.', '8avkz', '6', '68 zs', 28, 8, 'Delectus velit.', 3, 28, NULL, 28);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1029, '2013-02-10 20:45:03', '1988-02-27 03:33:21', 'Et voluptatem et voluptatem iste unde. Quasi qui rem placeat et in voluptates atque pariatur. Aut saepe fugiat est non eius vitae hic.', 'Mollitia saepe ab rerum iste magnam ut tempore facilis. Enim illo est animi molestiae. Quidem veniam architecto fugiat natus cum autem.', '3snsi', '7', '48 gh', 29, 9, 'Rerum sed soluta.', 4, 29, NULL, 29);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1030, '1989-02-03 10:06:57', '1983-07-17 12:38:50', 'Velit doloremque illo et. Nemo exercitationem totam culpa veritatis enim id voluptates. Itaque molestiae voluptas sint voluptates reiciendis.', 'Autem doloremque laboriosam doloribus ut ratione quia veritatis voluptas. Quia cum quia qui nesciunt asperiores.', '7prlx', '1', '54 jz', 30, 10, 'Consequatur rerum.', 5, 30, NULL, 30);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1031, '1996-08-22 17:54:44', '1977-09-28 17:09:02', 'Qui omnis porro et ullam. Ipsam dolor ut blanditiis velit provident iste enim. Iusto consequatur alias at.', 'Asperiores accusantium harum qui. Possimus et magni libero. Enim quia rerum molestiae eius.', '9quun', '4', '24 rb', 31, 1, 'Excepturi dolorum.', 6, 31, NULL, 31);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1032, '1974-09-15 02:15:32', '2011-05-27 12:01:32', 'Quos recusandae debitis amet eius. Dolores provident enim vitae quia omnis cum voluptatem. Velit consequatur quidem aut aliquid aperiam nisi.', 'Blanditiis beatae qui et ratione fugit veniam nobis. Sint ea dolorem sapiente commodi commodi eveniet. Dolor tempore et at.', '0ekxl', '9', '46 do', 32, 2, 'Libero reprehenderit quam.', 7, 32, NULL, 32);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1033, '2001-04-19 15:13:45', '2018-12-17 10:21:09', 'Sit sint id quis rerum. Eveniet ipsam expedita magnam delectus commodi commodi cumque. Eveniet minima facilis nisi rerum commodi totam tempora.', 'Quam temporibus esse asperiores fugit ab. Velit eum explicabo dolor quia in in omnis. Aliquid minima quia id ratione dicta explicabo earum.', '3bixi', '7', '65 bz', 33, 3, 'Necessitatibus consequatur.', 8, 33, NULL, 33);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1034, '1977-05-01 03:25:38', '1994-01-02 17:32:01', 'Provident dolorem ut inventore assumenda. Et repellat facilis aut itaque velit veniam.', 'Numquam qui nostrum asperiores molestiae dolorum vero. Aperiam ipsum nemo sint voluptatibus nam. Qui velit facere voluptatem est illo qui.', '3ofvj', '3', '75 jn', 34, 4, 'Sapiente eos.', 9, 34, NULL, 34);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1035, '1991-02-21 17:11:25', '1977-09-16 22:47:01', 'Molestias accusamus veritatis qui commodi. Voluptatem et et illo facere itaque. Ut totam dicta qui officiis qui.', 'Dolores aut qui exercitationem vel esse. Et inventore deserunt aut fugit eveniet dolores temporibus. Ut id molestiae iusto deserunt inventore et est.', '9bugo', '7', '35 sw', 35, 5, 'Est enim.', 10, 35, NULL, 35);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1036, '1996-11-05 20:32:51', '1992-11-15 20:18:44', 'Quod dolores asperiores maiores dolorum esse qui. Qui et ducimus eaque nam et vel aspernatur.', 'Et et voluptatibus aliquam fugiat ducimus eaque ratione. Cum nihil at ipsa modi eos eius. Quae illo et maxime fuga ipsum consequatur velit.', '7ijcz', '1', '08 id', 36, 6, 'Quibusdam facilis animi.', 11, 36, NULL, 36);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1037, '2014-01-07 05:58:36', '1975-11-27 11:44:52', 'Dolorem expedita sequi enim corporis. Error et accusantium quia. Reiciendis voluptatem ut est nihil et vitae soluta vel.', 'Animi sed quae quis et. Explicabo sit aut odio et modi nisi cupiditate mollitia. Eum eos beatae quis explicabo.', '4gsbw', '2', '17 gu', 37, 7, 'Nulla cumque.', 12, 37, NULL, 37);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1038, '1989-04-01 17:24:17', '1973-07-15 04:29:14', 'Exercitationem dicta in veniam impedit aut sit aut. Recusandae accusantium sit architecto. Aut est ut perspiciatis atque ipsa non.', 'Esse non fuga occaecati quidem ipsa velit velit. Aut molestias corporis ullam et odit. Blanditiis aperiam dolores sed et consequatur.', '2ksfo', '7', '24 de', 38, 8, 'Magnam laborum.', 13, 38, NULL, 38);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1039, '1971-05-28 04:56:44', '2001-09-04 06:14:31', 'Sit et dolore sint ad et. Excepturi iure alias sed labore magnam tempora.', 'Esse voluptates id eius eos consectetur natus. Unde praesentium placeat id labore dolorem.', '3pvqx', '9', '62 jr', 39, 9, 'Voluptatem excepturi fuga.', 14, 39, NULL, 39);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1040, '2017-12-29 07:35:04', '2013-05-30 01:55:49', 'Quidem aut rerum pariatur eum quam animi. Id mollitia qui rerum aut quia odit. Aut est est inventore earum iure. Iure id dolores dolorem.', 'Nobis et eligendi et aperiam rerum. Hic accusamus et vel voluptatem. Voluptas ut consequatur sit blanditiis veritatis dolore assumenda eum.', '8msgx', '0', '08 ad', 40, 10, 'Illum laudantium provident.', 15, 40, NULL, 40);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1041, '2003-03-14 00:48:13', '2002-05-05 00:00:55', 'Deserunt enim vel earum ea ut voluptatem ullam molestias. Voluptatem quae dolores aut qui est et ea. Rem dolore officiis voluptas qui quia possimus.', 'Sit quos doloribus fugiat explicabo qui sint ut. Fugit officiis laboriosam dolores beatae ut.', '2fhjf', '0', '13 sj', 41, 1, 'Modi quis omnis.', 16, 41, NULL, 41);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1042, '1971-01-22 11:43:23', '2001-10-06 12:07:51', 'Eum qui nihil pariatur magnam. Tenetur ea quos voluptatem in iusto repellendus fuga. Cumque suscipit delectus officiis id voluptatem.', 'Ut voluptatem est et qui rerum pariatur voluptatem. Suscipit repellat laudantium a rem iusto.', '5zurm', '8', '97 rq', 42, 2, 'Voluptates laudantium saepe.', 17, 42, NULL, 42);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1043, '2009-08-06 06:53:03', '2006-01-17 16:00:29', 'Iure et iste similique velit. Aliquam adipisci voluptas non excepturi ea eligendi. Reprehenderit qui eveniet quo architecto velit qui.', 'Repellendus laboriosam sit quia vel est repellat. Quis porro omnis consequatur tenetur. Amet odio aut aut id exercitationem dicta natus fugit.', '3wxne', '5', '72 fx', 43, 3, 'Eum ea.', 18, 43, NULL, 43);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1044, '1978-12-07 13:14:44', '1994-01-09 04:24:25', 'Alias quae ut consequatur non reprehenderit fugit. Nam maxime dignissimos reiciendis qui temporibus libero. Dignissimos modi officia aut consequatur.', 'Nemo dolorem sunt ut molestiae voluptatum. Consectetur voluptatibus quia sit est iste ullam voluptas error. Minima et non ea molestias.', '6kaig', '5', '57 sv', 44, 4, 'Quia qui.', 19, 44, NULL, 44);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1045, '1975-04-02 01:06:14', '2011-04-14 15:04:59', 'At itaque ea dicta quis id alias. Enim iusto aut nam.', 'Et deleniti soluta et in. Aperiam id similique soluta iste accusamus aspernatur et. Sequi eveniet corporis blanditiis unde quia.', '6jvsk', '8', '23 vf', 45, 5, 'Officia sit dolores.', 20, 45, NULL, 45);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1046, '1998-09-22 06:32:45', '1987-04-22 07:25:26', 'Et provident incidunt dolor reiciendis inventore veniam velit. Non excepturi ea nam et officiis omnis. Rem molestiae ut tenetur aspernatur.', 'Repellendus nobis enim totam consequuntur modi doloremque provident eum. Quo in odit ab alias autem quam corrupti. Commodi illo dolores consequatur.', '3izoe', '6', '02 ww', 46, 6, 'Amet a esse.', 21, 46, NULL, 46);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1047, '1987-06-08 23:19:43', '2007-10-18 13:35:51', 'Eos fugit doloribus reprehenderit ut minus at. Optio dicta est est doloribus distinctio. Inventore aliquam deserunt rerum id.', 'Pariatur veniam quia assumenda et. Sint doloremque minus dolor ipsam a at. Consequatur minima eos aut aliquam.', '1vxeh', '9', '82 za', 47, 7, 'Necessitatibus ut.', 22, 47, NULL, 47);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1048, '1989-07-31 10:06:40', '1971-10-15 23:11:02', 'Qui non fuga labore veritatis doloribus similique voluptate. Consequatur at fugit pariatur ea voluptate provident vel autem. Et nobis quo qui.', 'Eum et aut ratione et cum qui. Est perferendis ipsam ducimus cumque quo aliquam.', '6zdqy', '1', '83 tg', 48, 8, 'Sit porro dolores.', 23, 48, NULL, 48);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1049, '2011-11-03 08:00:15', '2014-11-19 08:12:38', 'Vero officia tempora sapiente. Mollitia et sequi omnis libero autem. Eveniet possimus et illum laboriosam enim explicabo omnis minima.', 'Unde ut sit repudiandae. Excepturi est aut sit est recusandae et officia. Adipisci qui dolor sed in pariatur facere deserunt.', '8locq', '4', '32 js', 49, 9, 'Sint amet.', 24, 49, NULL, 49);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1050, '1982-07-17 02:04:20', '1995-06-14 01:15:31', 'Itaque fugiat consectetur soluta pariatur veritatis explicabo recusandae. Nam dolorum nemo quia velit quos. Odio sit repellendus omnis assumenda.', 'Consequatur quis aut fugiat maiores et. Possimus libero vel in. Mollitia porro deleniti quod fugiat eaque. Modi rerum vero est animi velit atque.', '8twxx', '7', '11 ok', 50, 10, 'At enim molestiae.', 25, 50, NULL, 50);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1051, '2003-10-23 06:15:13', '1979-02-10 22:36:11', 'Earum repellat et et quo aliquam. Ut voluptate quis voluptatem consectetur qui. Aliquid dolores est cupiditate vero. Autem in et fugit animi.', 'Et illum et qui autem quaerat et quis. Quo nihil sit fugiat ducimus vitae consequatur. Sed labore qui numquam in.', '7iinf', '1', '95 vo', 51, 1, 'Natus temporibus.', 1, 51, NULL, 51);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1052, '1987-02-25 12:08:59', '1984-04-29 06:21:56', 'Fuga nobis doloremque ullam id delectus molestias earum. Officia ut corrupti est numquam officiis voluptatum. Et dolor excepturi numquam et.', 'Molestiae provident voluptatum sit voluptatem. Nam qui sint quia. Laborum placeat et quis harum illo eveniet voluptas.', '0tlrd', '2', '88 jy', 52, 2, 'Iusto commodi.', 2, 52, NULL, 52);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1053, '2012-01-16 21:10:48', '1974-08-03 15:21:12', 'Expedita nemo illo nesciunt eos consequatur id unde at. Dicta aliquam earum ab repudiandae. Ipsam nesciunt qui ut voluptatem quam dolor ducimus.', 'Repellendus vel aspernatur ut recusandae. Ducimus qui occaecati explicabo rem distinctio.', '3robr', '1', '30 ht', 53, 3, 'Sit quaerat provident.', 3, 53, NULL, 53);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1054, '1997-12-25 04:34:49', '2014-01-25 13:28:55', 'Ex non pariatur quasi fugit reiciendis. Veniam et et doloribus cumque occaecati nulla suscipit. Qui qui ab eum.', 'Aut ut asperiores quod beatae quas et. Voluptatum dicta id molestiae.\nUllam non nihil qui quaerat. Quibusdam optio quis voluptas architecto non sint.', '5fhxk', '1', '63 ex', 54, 4, 'Qui consequatur vel.', 4, 54, NULL, 54);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1055, '1985-06-18 13:12:44', '1988-10-24 00:29:15', 'Voluptatem quis rerum quia dolorem accusantium et. Quia laborum aut quae. Ut ut totam consequuntur officiis repellat maxime qui dolor.', 'Et consectetur in architecto sed suscipit cumque. Odit harum id aperiam similique consequatur.', '7bvru', '0', '39 wf', 55, 5, 'Non ipsam sapiente.', 5, 55, NULL, 55);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1056, '1982-05-22 08:32:25', '1985-06-16 20:20:59', 'Odit modi qui libero natus. Ad est omnis culpa atque suscipit reiciendis odit. Magnam sunt rem saepe error. Numquam vitae aliquid similique.', 'Aspernatur voluptatem adipisci aut doloremque sed provident cumque. Id est qui eius impedit vero. Vero est alias ratione.', '1ekqt', '0', '78 eg', 56, 6, 'Accusamus quia quod.', 6, 56, NULL, 56);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1057, '1988-07-18 20:20:19', '1990-01-17 13:41:13', 'Natus temporibus quo delectus et tenetur error. Similique omnis est ea quod eveniet expedita in.', 'Ipsum tenetur enim officia. Et et id quo nisi molestias ullam ab quasi.', '2lgfd', '0', '94 yj', 57, 7, 'Iste vel.', 7, 57, NULL, 57);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1058, '2013-09-23 19:21:35', '2015-05-06 08:59:14', 'Aliquid non voluptas distinctio. Impedit rerum eius voluptatibus rem quia et aliquid ut.', 'Voluptatem consequatur recusandae est temporibus. Expedita vel saepe molestiae excepturi amet provident et fuga. Vel debitis ex provident est.', '2rnpj', '2', '75 kk', 58, 8, 'Corporis est.', 8, 58, NULL, 58);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1059, '1970-08-26 08:57:32', '1970-08-26 06:32:27', 'Suscipit natus dolor ipsum dolor. Reiciendis placeat ratione ducimus. Unde consectetur sint est et. Officia possimus dolor omnis nisi accusamus.', 'Reiciendis dolores aut nostrum. Magnam error ut debitis quia facere repudiandae enim. Voluptatem sit sequi laboriosam cumque.', '4ypff', '6', '57 mx', 59, 9, 'Voluptatem repellat.', 9, 59, NULL, 59);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1060, '1998-07-04 03:33:31', '2019-02-12 19:06:22', 'Odio modi ut eum. Quae et harum nulla quia nisi officiis quia corporis. Sit eveniet cum quas ducimus ab.', 'Culpa beatae accusamus sit nulla. Et rerum et esse rem ut. Magnam ut voluptate doloremque ea distinctio eos. Et in ipsam numquam asperiores in.', '7uqzj', '8', '51 sr', 60, 10, 'Ut voluptatem explicabo.', 10, 60, NULL, 60);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1061, '1983-01-03 04:05:33', '2017-09-18 18:10:36', 'Esse minima ut dicta. Dolorum numquam omnis sint hic. Labore accusantium ad doloremque. Maiores et sed dolor aut unde sed sapiente.', 'Debitis quo occaecati iusto porro nemo. Sint veniam non delectus aspernatur at. Sed quae voluptas alias omnis debitis. Ullam tempore et saepe eaque.', '1fcee', '0', '13 ge', 61, 1, 'Et et modi.', 11, 61, NULL, 61);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1062, '1980-12-25 08:42:12', '1971-10-13 15:28:07', 'Et corporis magni sunt cum dolor rerum dolor. Dolores qui aut reiciendis dicta ut amet harum enim. Facere id ea explicabo enim atque enim est.', 'Alias ut asperiores sint veniam explicabo a. Omnis sunt blanditiis cum sequi. Vel corporis ipsum architecto ea.', '6wkzw', '4', '67 zp', 62, 2, 'Aperiam quod sint.', 12, 62, NULL, 62);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1063, '2013-06-09 15:01:17', '1978-10-22 07:52:45', 'Beatae qui quam blanditiis ut. Occaecati quia voluptate minus et.', 'Autem officiis aut voluptas impedit unde aut. Sit modi sint inventore aperiam. Eos odio tempore sed porro eum.', '0ejsb', '3', '86 co', 63, 3, 'Ducimus est.', 13, 63, NULL, 63);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1064, '1999-08-03 04:43:11', '2015-08-19 02:25:39', 'Culpa numquam amet quia sit sit voluptatem tempore. Eveniet cupiditate voluptatibus quia atque. Maxime voluptas inventore ratione quae molestiae.', 'Ullam ut autem quo nesciunt. Qui distinctio fuga sunt quo molestias consequatur.', '4wugc', '6', '57 rw', 64, 4, 'Repellendus dicta.', 14, 64, NULL, 64);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1065, '2016-01-16 02:40:20', '2005-03-31 10:05:13', 'Ut adipisci consequuntur impedit dolor. Porro illum et quia ipsa. Voluptas culpa vel officiis inventore. Dolores quo autem adipisci possimus nam aut.', 'Libero nam laudantium incidunt ex. Adipisci et iusto ut consequuntur. Et in similique ipsum ullam cumque est fugiat. Sit et non tempore non nostrum.', '1ajih', '8', '65 oe', 65, 5, 'Perferendis odio.', 15, 65, NULL, 65);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1066, '1979-07-18 05:48:07', '1976-09-01 21:59:28', 'Unde corrupti omnis dignissimos assumenda aut. Quia amet culpa perspiciatis consequatur in et. Necessitatibus sed ad alias.', 'Neque deleniti est veritatis est quia aspernatur porro. Veniam nam cum laborum. Sed dignissimos nesciunt atque mollitia ipsum est.', '2ynxt', '5', '51 iv', 66, 6, 'Enim voluptas.', 16, 66, NULL, 66);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1067, '1981-03-05 15:18:33', '1977-04-17 22:49:40', 'Explicabo distinctio iusto vel aut. Et possimus officia quidem quo qui cumque. Et hic consectetur eos quas nam.', 'Sint aut ipsa placeat. Qui quia voluptatem ad nihil. Sit provident inventore quas nemo.', '0ksca', '4', '22 bx', 67, 7, 'Iusto consequatur.', 17, 67, NULL, 67);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1068, '1998-08-26 21:07:49', '1980-04-11 19:37:24', 'Eligendi in cumque odio non. Sint libero expedita consequatur. Omnis tenetur et est porro autem aut ea.', 'Delectus reiciendis odit rerum eius assumenda voluptatibus non. Minus nam dolores cupiditate dolor. Omnis architecto amet eveniet pariatur.', '9loxu', '2', '55 sd', 68, 8, 'Voluptatem ab.', 18, 68, NULL, 68);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1069, '1976-05-11 21:22:56', '2020-02-07 00:27:26', 'Officiis eos dolore explicabo dolores molestiae. Similique iusto culpa eligendi sint sed earum. Unde autem odit rerum ea quibusdam ab.', 'Facere ut quia et pariatur. Nihil deserunt accusantium voluptate eum. Omnis nulla placeat est eum dolorum nemo minima.', '7oype', '3', '98 mv', 69, 9, 'Provident ipsa est.', 19, 69, NULL, 69);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1070, '1990-10-10 00:34:59', '2016-11-13 07:39:06', 'Assumenda consequatur aliquam qui magnam aliquid eveniet eligendi. Hic iste nobis est sed. Ducimus aut quia velit eum aspernatur et cupiditate.', 'Aut saepe id in consequatur officia doloribus. Voluptatem a quasi corporis qui occaecati eaque dolorem.', '7gtnl', '9', '90 vu', 70, 10, 'Rerum quia est.', 20, 70, NULL, 70);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1071, '1975-07-12 14:12:28', '1989-05-07 22:30:29', 'Ipsam assumenda dolores magni architecto. Voluptatibus rerum commodi qui enim. Excepturi aut consequatur aut culpa doloremque.', 'Aut quis porro non perspiciatis qui ut. Unde animi rem voluptatibus deleniti. Dolor enim beatae possimus tempora placeat.', '1yzhn', '0', '86 eq', 71, 1, 'Ipsam earum qui.', 21, 71, NULL, 71);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1072, '1974-05-20 08:24:28', '1998-03-18 00:22:13', 'Voluptatem pariatur vel rerum atque. Quae consequuntur eos cum vitae quis suscipit. Dolorum sed mollitia totam reprehenderit.', 'Rem quibusdam eum molestiae iure occaecati ut. Quas repellat in corporis non a. Et quia ab voluptatum aut aperiam amet veritatis.', '0mahw', '0', '56 iw', 72, 2, 'Ullam aperiam.', 22, 72, NULL, 72);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1073, '1974-12-28 00:17:43', '1981-06-06 07:02:57', 'Adipisci aliquam fugiat accusantium esse occaecati qui. Reprehenderit voluptas natus ut.', 'Quidem est voluptatem in facilis nemo odit. Id aut nobis sint vitae molestiae deleniti voluptas. Et corrupti necessitatibus aut eum.', '4isux', '7', '45 in', 73, 3, 'Et at laborum.', 23, 73, NULL, 73);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1074, '1997-01-19 16:43:34', '1996-09-25 07:12:01', 'Ipsum sunt est dolorum aut ut quia quaerat. Et eum animi accusamus magnam. At quia nobis perspiciatis non libero enim nemo odit.', 'Quae provident quos in quia. Minima iure et voluptatem corrupti sapiente occaecati. Fuga qui facere voluptate.', '5ujwh', '1', '76 os', 74, 4, 'Nisi est nostrum.', 24, 74, NULL, 74);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1075, '1988-08-22 00:05:21', '1970-08-25 19:21:53', 'Mollitia similique nemo error ut quia. Et minima earum nesciunt ullam odio sed ut. Pariatur alias libero quas.', 'Iusto dignissimos aspernatur expedita vero. Qui quia beatae et inventore dolor aliquid quas qui.', '1hkfq', '6', '98 je', 75, 5, 'Aut sed consequuntur.', 25, 75, NULL, 75);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1076, '2014-04-19 21:57:10', '2014-08-16 02:50:38', 'Vel labore enim sunt consequatur quasi perferendis id. Veritatis magni omnis a beatae ut ipsam quia fugiat. Iure deserunt nisi dolorem.', 'Nihil molestiae error quia facilis similique saepe aliquid. Ea minus temporibus excepturi. Est et quis corporis quaerat et illum eos.', '1umzi', '8', '50 xp', 76, 6, 'Officia omnis.', 1, 76, NULL, 76);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1077, '1998-06-12 11:32:57', '2016-03-01 14:04:56', 'Iure voluptates sint delectus accusamus nihil. Pariatur fugit et sed. Porro officiis ut odio fugiat totam.', 'Est maiores qui vero facilis occaecati sit. Architecto quia quia magni odit autem quisquam. Minima vel voluptas temporibus.', '2dgdx', '2', '38 dr', 77, 7, 'Voluptatem omnis.', 2, 77, NULL, 77);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1078, '1980-03-18 07:18:04', '1986-01-15 01:31:45', 'Sapiente occaecati repudiandae ut aut excepturi iusto aliquid optio. Assumenda aut id natus. Delectus nihil et consectetur reiciendis voluptatem.', 'Fugit tempora non ipsum aut labore. Nulla beatae quibusdam et. Sint et quo reiciendis tempore quam impedit aperiam est.', '7ugza', '9', '52 xp', 78, 8, 'Reprehenderit corrupti consequatur.', 3, 78, NULL, 78);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1079, '1992-09-10 21:51:24', '2003-11-21 23:29:37', 'Reprehenderit magnam dolorum sit nam dolorem sunt. Sint eos corrupti ullam dolorem. Molestias vel consequuntur expedita ad.', 'Iste dolor vero aut ea. Autem quo recusandae cumque. Numquam suscipit et eveniet expedita quia. Alias quidem ut omnis amet soluta.', '9sqnr', '9', '69 ag', 79, 9, 'Qui hic rem.', 4, 79, NULL, 79);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1080, '1993-07-28 15:58:53', '1978-06-24 21:29:44', 'Nihil eligendi qui officiis eum sint. Quia quibusdam voluptates perferendis earum necessitatibus voluptas neque. Eum odio repellat omnis amet.', 'Nemo eum eaque modi similique. Deleniti rem est dolorem deserunt deserunt qui. Animi dolores qui iusto. Possimus possimus corporis dolore asperiores.', '3adje', '8', '91 ou', 80, 10, 'Ut vel libero.', 5, 80, NULL, 80);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1081, '2010-03-05 17:30:43', '1991-12-25 07:45:18', 'Necessitatibus qui rerum non qui. Distinctio et nihil recusandae nesciunt quidem sed.', 'Assumenda non velit quas dolore blanditiis ab rerum deserunt. Impedit minus voluptatem modi quae amet veniam.', '7ouwb', '1', '94 rn', 81, 1, 'Quisquam aliquam.', 6, 81, NULL, 81);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1082, '2018-11-05 20:18:02', '1983-05-18 20:03:33', 'Rerum rerum error maiores quis quis aut saepe et. Repudiandae facere quibusdam non aut. Animi qui quae ea qui pariatur cupiditate.', 'Error voluptas unde non culpa exercitationem cumque. Occaecati rerum corrupti eius qui ullam optio aut nihil.', '1lspm', '6', '25 tb', 82, 2, 'Reiciendis fugiat.', 7, 82, NULL, 82);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1083, '1971-10-22 02:30:39', '1986-12-27 03:01:43', 'Alias sit corrupti tenetur fugiat. Et numquam incidunt tenetur dolorem.', 'Quia vitae laborum accusamus hic pariatur eos. Ut tenetur enim laborum omnis. Quae ipsum rerum adipisci.', '3ewce', '5', '25 rs', 83, 3, 'Laborum harum qui.', 8, 83, NULL, 83);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1084, '1983-09-02 06:48:47', '2003-07-12 01:53:01', 'Ipsum reprehenderit ratione nemo eligendi quibusdam et. Dicta iure dolorem beatae quaerat. Possimus et vero porro quia.', 'Sunt asperiores quaerat quas. Illum error aspernatur debitis. Molestias harum alias ut sunt qui qui. Qui autem deserunt qui.', '2zxst', '8', '31 yo', 84, 4, 'Qui ea et.', 9, 84, NULL, 84);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1085, '1979-11-12 01:53:58', '2011-04-16 19:30:26', 'Assumenda possimus sint rem facilis. Magnam magni similique at omnis qui incidunt. Voluptas id sunt occaecati et. Rerum magni quis et.', 'Sapiente quos in consequatur eum natus error voluptatem. Id quae qui voluptas nesciunt veniam optio error. Saepe et ipsum eos laboriosam.', '7vcyh', '6', '37 pb', 85, 5, 'At tempore.', 10, 85, NULL, 85);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1086, '1984-12-21 17:16:49', '2006-11-24 05:44:01', 'Esse odit sunt id iusto illum. Est velit hic quia. Deleniti sunt aliquid harum. Soluta quidem aut illo illo ratione repudiandae et.', 'Omnis perferendis et est consequatur. Eaque deserunt nisi illum maxime in.', '7zxfj', '4', '58 mm', 86, 6, 'Eum sint.', 11, 86, NULL, 86);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1087, '1985-01-03 19:23:43', '2003-11-29 12:20:45', 'Et et occaecati autem id. Aliquid totam ipsa natus quia vel doloribus consectetur ut. Culpa eum labore incidunt et nihil voluptas.', 'Corrupti est sapiente qui officia optio. Eos consequuntur est qui quae ex.', '7mond', '0', '78 xo', 87, 7, 'Quam natus quisquam.', 12, 87, NULL, 87);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1088, '2005-10-25 02:39:39', '1983-01-20 05:27:50', 'Sit ea aliquid hic tempore. Nam voluptas porro veniam quisquam deleniti molestiae. Et sunt iste dolor asperiores sed dolorem.', 'Voluptatem velit quam ab itaque inventore quo temporibus. Molestiae ab blanditiis officia qui eveniet. Enim inventore non voluptatem unde nihil.', '2mvmq', '1', '26 pr', 88, 8, 'Nobis consequuntur fugiat.', 13, 88, NULL, 88);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1089, '1978-12-20 21:12:36', '2009-06-20 02:17:37', 'Et minus placeat totam commodi. Ea molestias dignissimos delectus tempora et. Ad dolore non vero excepturi. Amet dolor et animi veritatis quod.', 'Ut quas nostrum corporis dignissimos. Temporibus laboriosam dolores harum alias libero.', '3lsvi', '6', '64 ic', 89, 9, 'Omnis velit.', 14, 89, NULL, 89);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1090, '2003-01-17 10:49:09', '1980-02-02 21:55:19', 'Natus ut aliquam ut similique impedit voluptas. Excepturi quo omnis mollitia saepe iure corporis corporis. Sunt enim quis suscipit ex quia.', 'Soluta vitae maiores nihil. Nemo quia neque eligendi reiciendis odit ea odit. Sit nulla fugiat facere omnis odio.', '8eded', '8', '08 ef', 90, 10, 'Beatae delectus.', 15, 90, NULL, 90);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1091, '1983-06-23 22:03:48', '1975-10-26 08:37:11', 'Libero reprehenderit quidem aut eum eos doloribus. Tenetur incidunt eos consequatur quo. Quod ipsum laboriosam voluptate.', 'Qui et sit quia veritatis aspernatur incidunt. Quis tempora soluta nostrum voluptas qui a. Alias alias est omnis quam voluptatibus deserunt corporis.', '5igph', '8', '48 uz', 91, 1, 'Pariatur consequuntur.', 16, 91, NULL, 91);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1092, '1984-11-18 04:00:05', '1997-01-27 18:21:11', 'Voluptas illo voluptas impedit adipisci recusandae aut. Dolorem velit facilis qui a doloribus. Ut fuga earum similique ex. Nesciunt rerum odit id et.', 'Similique natus cupiditate nemo molestiae sed sapiente ut iste. Omnis hic dolores et nihil atque. Odio nisi reiciendis officia iste quis.', '1epjr', '0', '31 eh', 92, 2, 'Dolorem ducimus delectus.', 17, 92, NULL, 92);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1093, '2012-08-09 18:33:52', '1996-02-18 16:34:30', 'Corporis autem ratione est ut. Dolor ut repellendus eaque maxime.', 'Adipisci quia minima qui aut consectetur cupiditate consequatur. Quia consequatur magnam fugiat odit. Qui reiciendis ipsam et ut odit.', '2tkvk', '9', '70 yj', 93, 3, 'Corporis modi.', 18, 93, NULL, 93);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1094, '2007-11-08 23:49:37', '1986-06-29 20:16:52', 'Voluptatibus reiciendis fugit labore. Iste rerum unde praesentium consequuntur. Voluptate amet eaque laborum libero.', 'Minus est cupiditate architecto et neque doloribus corrupti. Impedit at laudantium beatae ut. Et ipsa dolores quas cupiditate sit ut error.', '7oezp', '2', '96 qx', 94, 4, 'A omnis.', 19, 94, NULL, 94);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1095, '2018-11-12 12:09:22', '1994-12-28 11:45:53', 'Est repellat dolore adipisci nulla ut. Qui veniam quibusdam natus et. Aperiam est exercitationem error nobis aut.', 'Qui minima dolores quisquam aut possimus placeat. Distinctio voluptatem quod fugiat ut.', '6pewb', '9', '84 vz', 95, 5, 'Sint minima.', 20, 95, NULL, 95);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1096, '2019-03-18 06:20:39', '1994-07-20 22:57:33', 'Velit veritatis quos exercitationem. Odit cum ab amet et quod qui omnis beatae. Ad officiis ratione officiis aut et non.', 'Doloremque sed ut necessitatibus quis quas sit. Aliquam id magni ipsa. Error modi et quibusdam qui.', '4nkyl', '1', '47 ca', 96, 6, 'Consectetur velit qui.', 21, 96, NULL, 96);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1097, '1973-04-15 15:52:25', '1990-02-10 12:47:54', 'Explicabo dolores totam dolore qui. Hic rerum iure accusamus aut soluta. Ducimus sed asperiores officiis ad.', 'Aut id rem sed qui. Consequatur et veniam illo voluptas. Consequatur sed quia vel aspernatur. Reiciendis dolores ea aspernatur minus.', '3rjqg', '1', '15 tb', 97, 7, 'Nam quo aliquam.', 22, 97, NULL, 97);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1098, '1987-01-17 16:43:15', '2016-09-18 23:57:18', 'Nihil qui ut hic fuga magnam et. Ut harum nam perferendis qui et.', 'Ut consequatur odio aut accusamus. Optio est doloribus assumenda rerum et odit. Provident rem quia odit suscipit dolorum eos enim.', '0fdqa', '6', '70 sx', 98, 8, 'Quo temporibus sit.', 23, 98, NULL, 98);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1099, '2001-09-13 13:55:11', '1972-06-11 22:57:10', 'Nostrum voluptatum voluptate vel omnis autem. Commodi quia quae reiciendis at eligendi officiis. Ea sed quo dolorem soluta iure.', 'Repudiandae qui fugiat quod corporis. Facere similique nihil est.', '0qmnj', '1', '63 mc', 99, 9, 'Est repellendus blanditiis.', 24, 99, NULL, 99);
INSERT INTO `cartas` (`id`, `created_at`, `updated_at`, `oracle`, `flavortext`, `mana`, `ataque`, `defensa`, `id_arte`, `id_tipo`, `subtipo`, `id_color`, `id_edicion`, `limitado`, `id_producto`) VALUES (1100, '1971-07-10 17:04:46', '1975-10-14 07:01:06', 'Eius quidem nisi perspiciatis sit esse iure. Et repellendus fugiat nostrum et.', 'Veniam omnis ipsum quaerat quasi ut et. Et hic quis itaque quisquam. Veritatis molestias quam qui eligendi molestiae. Animi qui hic consequuntur sed.', '3jgjc', '9', '97 tu', 100, 10, 'Aperiam dolorem ut.', 25, 100, NULL, 100);


#
# TABLE STRUCTURE FOR: categorias
#

DROP TABLE IF EXISTS `categorias`;

CREATE TABLE `categorias` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categoria` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `categorias` (`id`, `created_at`, `updated_at`, `categoria`) VALUES (1, '2007-10-02 13:24:40', '1997-07-29 05:22:13', 'ab');
INSERT INTO `categorias` (`id`, `created_at`, `updated_at`, `categoria`) VALUES (2, '1977-11-21 08:53:22', '1975-12-07 01:45:27', 'et');
INSERT INTO `categorias` (`id`, `created_at`, `updated_at`, `categoria`) VALUES (3, '1992-09-19 12:12:17', '2014-10-27 21:02:12', 'architecto');
INSERT INTO `categorias` (`id`, `created_at`, `updated_at`, `categoria`) VALUES (4, '2016-03-21 04:57:53', '1993-02-04 19:11:56', 'quis');
INSERT INTO `categorias` (`id`, `created_at`, `updated_at`, `categoria`) VALUES (5, '2013-03-22 20:42:23', '1988-09-14 09:09:43', 'natus');


#
# TABLE STRUCTURE FOR: colores
#

DROP TABLE IF EXISTS `colores`;

CREATE TABLE `colores` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `multicolor` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (1, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'hyln', 3);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (2, '2013-01-16 14:39:24', '2008-09-11 09:49:42', 'rkaw', 0);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (3, '1994-08-22 15:28:12', '1984-02-08 17:19:43', 'judu', 4);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (4, '1998-12-22 20:47:49', '2009-12-11 13:39:52', 'vmrc', 0);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (5, '2017-03-31 22:07:12', '2001-10-15 17:13:12', 'sxyx', 5);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (6, '1978-12-10 06:54:14', '1977-01-21 09:33:40', 'xadu', 0);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (7, '1996-12-26 12:42:31', '1973-12-13 04:14:54', 'lien', 0);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (8, '2011-06-13 03:44:30', '1977-05-30 06:38:38', 'ewuf', 0);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (9, '2008-05-03 05:57:52', '1974-10-24 07:12:35', 'uobi', 0);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (10, '1998-12-13 12:01:37', '2011-02-20 10:23:05', 'ilvd', 5);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (11, '1984-03-13 04:35:12', '1980-05-30 02:40:00', 'zvyn', 0);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (12, '1999-12-27 04:53:50', '1985-05-01 23:21:13', 'gytq', 0);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (13, '2001-06-12 04:28:11', '1974-07-22 00:23:01', 'hman', 0);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (14, '1973-07-25 12:24:15', '1994-01-02 12:33:52', 'xlfl', 9);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (15, '1980-01-23 20:08:09', '1999-01-12 19:51:49', 'wlyn', 0);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (16, '1983-10-08 23:40:22', '1999-10-28 05:43:00', 'eufj', 0);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (17, '1972-01-21 03:08:30', '2013-09-07 08:43:35', 'auiu', 6);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (18, '1989-07-20 03:38:09', '2012-08-26 15:55:06', 'irah', 7);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (19, '1976-08-14 05:02:25', '1983-08-09 18:02:10', 'lsls', 0);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (20, '2013-05-30 14:32:50', '1995-09-02 08:08:48', 'iiau', 0);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (21, '1997-05-06 22:09:11', '2010-07-22 04:22:38', 'kgcy', 0);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (22, '2003-03-17 11:06:27', '2007-09-01 09:45:57', 'cjcu', 0);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (23, '1971-06-01 21:08:01', '2004-08-27 16:19:58', 'bfdf', 5);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (24, '1983-09-14 04:31:10', '1989-04-17 19:31:37', 'lucp', 7);
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`, `multicolor`) VALUES (25, '1995-11-25 08:10:24', '1974-11-29 09:05:35', 'jvuo', 0);


#
# TABLE STRUCTURE FOR: dados
#

DROP TABLE IF EXISTS `dados`;

CREATE TABLE `dados` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `caras` int(3) NOT NULL,
  `id_producto` int(12) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_producto_dado` (`id_producto`),
  CONSTRAINT `fk_producto_dado` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (1, '2002-06-30 08:58:43', '1976-12-31 07:07:25', 'Occaecati culpa nesciunt.', 56, 1);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (2, '2007-01-26 10:16:21', '1997-06-29 00:13:05', 'Culpa illum aut.', 41, 2);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (3, '1999-09-22 10:01:08', '1995-07-26 06:42:27', 'Consequatur quos debitis.', 84, 3);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (4, '1981-02-10 18:09:27', '1982-01-08 04:32:55', 'Rem voluptatem.', 55, 4);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (5, '2014-10-15 19:34:32', '2019-07-15 00:49:43', 'At est eius.', 31, 5);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (6, '1971-03-31 03:54:04', '2001-08-14 14:02:10', 'Quo in ea.', 70, 6);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (7, '1980-10-07 13:30:28', '1990-04-25 13:19:39', 'Aliquam sunt aut.', 4, 7);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (8, '2018-07-06 03:04:09', '2001-04-05 18:35:04', 'Ut aut.', 10, 8);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (9, '1977-05-03 21:26:58', '1979-01-03 19:34:51', 'Alias et facere.', 53, 9);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (10, '2013-10-29 16:39:28', '1974-09-07 06:39:57', 'Incidunt expedita et.', 26, 10);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (11, '1979-05-31 10:31:47', '1997-08-10 21:49:01', 'Et optio quia.', 18, 11);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (12, '1984-06-19 08:10:09', '2011-04-14 10:01:48', 'Ut soluta et.', 52, 12);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (13, '1972-06-07 02:47:58', '1991-12-02 11:42:05', 'Vel labore.', 58, 13);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (14, '2010-02-15 07:58:54', '1992-02-23 05:46:21', 'Qui debitis quaerat.', 77, 14);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (15, '2014-03-11 04:02:14', '1994-09-14 21:01:05', 'Tempore consequatur.', 56, 15);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (16, '1980-10-14 09:30:26', '1977-01-04 14:14:18', 'Et nisi.', 63, 16);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (17, '2019-07-14 03:27:03', '2002-03-04 18:56:42', 'Modi in veritatis.', 61, 17);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (18, '2017-03-06 05:53:58', '2014-04-22 09:19:27', 'Et numquam enim.', 22, 18);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (19, '1981-09-05 12:46:04', '1994-06-15 22:14:31', 'Voluptas voluptas.', 33, 19);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (20, '1990-02-16 07:59:27', '2010-01-27 13:54:28', 'Omnis velit et.', 74, 20);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (21, '1986-01-02 15:04:00', '1994-09-11 03:09:25', 'Est quos velit.', 35, 21);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (22, '2004-04-27 13:59:11', '1972-04-19 14:54:06', 'Similique numquam.', 60, 22);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (23, '1991-02-20 19:13:24', '2002-09-23 13:42:36', 'Explicabo nesciunt ut.', 23, 23);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (24, '1992-01-28 06:15:58', '1975-10-16 23:36:57', 'Aut dolorem.', 24, 24);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (25, '1983-08-03 08:35:19', '1994-05-24 04:49:13', 'Iste maxime magnam.', 10, 25);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (26, '1997-03-10 12:58:20', '1979-10-04 11:28:30', 'Ex voluptatem.', 13, 26);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (27, '2017-05-14 17:37:46', '2018-07-24 08:03:57', 'Molestiae aut harum.', 23, 27);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (28, '2004-10-28 03:23:51', '1991-05-18 18:11:09', 'Repellat temporibus.', 19, 28);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (29, '1974-01-20 10:11:11', '2014-08-20 05:58:04', 'Dolores omnis.', 30, 29);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (30, '2011-06-09 20:13:38', '2014-12-21 21:01:07', 'Rerum velit.', 55, 30);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (31, '2018-09-22 08:15:17', '2018-09-30 22:32:09', 'Incidunt ipsa.', 100, 31);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (32, '2012-04-22 07:01:03', '2003-12-23 08:30:22', 'Sed magnam odio.', 47, 32);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (33, '2010-02-06 06:10:58', '2012-01-25 12:40:08', 'Et porro.', 5, 33);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (34, '1993-07-08 20:26:40', '2014-05-28 07:49:27', 'Nostrum quia sed.', 31, 34);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (35, '1987-05-20 23:05:48', '1972-05-28 20:13:30', 'Voluptatem tempore.', 54, 35);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (36, '1989-11-26 03:43:47', '1983-11-17 18:13:01', 'Et veritatis ipsa.', 6, 36);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (37, '1973-02-21 03:21:00', '1984-12-12 23:21:31', 'Quis commodi eum.', 56, 37);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (38, '1977-08-02 15:13:52', '2005-04-09 08:22:48', 'Inventore quaerat.', 63, 38);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (39, '2004-11-05 10:14:02', '2014-02-20 10:07:55', 'Ducimus odio.', 23, 39);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (40, '2020-04-07 09:13:46', '2017-03-29 19:14:05', 'Suscipit et omnis.', 49, 40);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (41, '2010-09-04 00:05:35', '1978-03-27 17:06:16', 'Non quibusdam illo.', 72, 41);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (42, '1986-05-31 09:19:48', '1989-03-20 21:52:12', 'Nostrum pariatur.', 60, 42);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (43, '1987-10-26 22:09:30', '2003-10-21 10:18:50', 'Est dignissimos.', 73, 43);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (44, '1975-02-12 20:35:35', '1982-06-12 04:18:16', 'Molestias vel.', 83, 44);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (45, '2007-01-04 12:27:25', '1994-10-07 00:02:03', 'Aut error.', 55, 45);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (46, '2019-03-24 12:58:35', '2012-06-20 01:00:09', 'Et qui aspernatur.', 11, 46);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (47, '1970-03-15 07:35:31', '1979-01-17 03:41:06', 'At laborum magni.', 65, 47);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (48, '1989-06-16 18:22:15', '1973-03-08 02:59:49', 'Molestiae dolor placeat.', 31, 48);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (49, '1991-05-05 04:55:58', '2007-05-05 09:04:28', 'Ducimus porro quia.', 64, 49);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (50, '1992-02-28 08:45:58', '2016-11-07 17:30:39', 'Sint quia.', 15, 50);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (51, '1991-10-09 11:15:46', '1994-08-22 22:17:13', 'Culpa architecto.', 82, 51);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (52, '2004-02-10 14:38:42', '2017-04-07 17:29:38', 'Et incidunt.', 43, 52);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (53, '2011-02-28 18:44:57', '2010-10-22 05:57:41', 'Ducimus ea nihil.', 35, 53);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (54, '1977-09-24 06:49:15', '1982-04-20 20:09:59', 'Quia voluptatum.', 39, 54);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (55, '2015-12-27 06:21:06', '1986-12-18 05:57:11', 'Rerum iure.', 42, 55);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (56, '1975-07-26 09:32:04', '1974-05-11 16:59:31', 'Aspernatur enim.', 45, 56);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (57, '1988-06-27 03:57:05', '1990-09-07 14:09:41', 'Voluptatum suscipit.', 38, 57);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (58, '1991-08-06 20:08:08', '2013-09-06 17:30:44', 'Doloremque molestiae.', 15, 58);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (59, '1983-04-19 08:58:47', '1995-05-21 00:31:38', 'Sint et.', 6, 59);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (60, '1970-05-17 01:28:07', '2016-01-13 14:57:42', 'Beatae alias et.', 92, 60);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (61, '2000-12-03 23:29:42', '2008-10-09 12:14:22', 'Ducimus voluptatem voluptate.', 61, 61);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (62, '2008-05-06 21:57:29', '2012-11-17 03:10:03', 'Dolores quo velit.', 36, 62);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (63, '2000-10-08 05:02:19', '2018-09-10 15:28:38', 'Maxime expedita.', 81, 63);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (64, '2018-01-08 10:05:38', '2005-02-23 12:37:23', 'Sit aut quia.', 59, 64);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (65, '1986-11-14 12:05:12', '1984-06-12 12:41:02', 'Et cumque.', 75, 65);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (66, '1994-07-03 04:11:47', '2015-02-18 22:30:17', 'Ad suscipit id.', 78, 66);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (67, '1999-02-13 14:50:11', '1989-08-09 20:00:36', 'Et et.', 70, 67);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (68, '2004-08-02 14:32:20', '1970-12-30 19:00:21', 'Sint officia.', 45, 68);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (69, '1981-11-26 20:56:35', '1976-03-18 22:47:06', 'Molestiae non.', 50, 69);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (70, '2007-12-23 16:11:00', '1972-06-23 17:29:53', 'Accusamus a.', 14, 70);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (71, '2003-10-29 14:39:58', '2000-09-14 02:15:04', 'Sunt iste quidem.', 68, 71);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (72, '1985-08-07 21:24:20', '1973-11-22 19:38:06', 'Aut quo.', 48, 72);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (73, '1989-06-30 02:53:30', '1991-12-16 22:43:06', 'Laboriosam eligendi.', 81, 73);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (74, '2017-09-16 23:38:17', '1999-05-04 22:32:36', 'Delectus voluptatem.', 11, 74);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (75, '2007-06-14 01:53:50', '2019-05-14 17:44:38', 'Ut reiciendis.', 77, 75);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (76, '1976-10-03 05:15:08', '2017-12-03 23:26:12', 'Officia eos.', 49, 76);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (77, '1982-06-20 13:18:05', '1976-09-10 10:33:43', 'Exercitationem error.', 19, 77);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (78, '2013-12-26 18:29:19', '1987-10-20 11:13:18', 'Aut voluptatem.', 53, 78);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (79, '2013-09-22 00:12:03', '2002-11-24 12:46:27', 'Cupiditate enim.', 40, 79);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (80, '2005-04-15 08:32:41', '1995-02-12 23:22:30', 'Est vero soluta.', 33, 80);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (81, '1970-11-16 07:06:30', '1986-07-05 03:49:22', 'Ea non.', 24, 81);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (82, '1990-06-12 05:32:58', '1973-07-21 22:42:22', 'Repudiandae nesciunt.', 65, 82);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (83, '2006-07-18 10:49:50', '1996-12-20 20:34:39', 'Quod omnis iste.', 35, 83);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (84, '1983-03-21 08:48:26', '2013-01-22 00:36:51', 'Explicabo voluptatibus.', 75, 84);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (85, '2007-06-02 10:39:54', '2012-03-07 09:02:04', 'Sequi autem quis.', 81, 85);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (86, '2019-04-09 08:16:22', '2000-12-07 04:18:25', 'Similique sed.', 29, 86);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (87, '1972-10-07 19:54:35', '2004-12-01 17:59:10', 'Est eos repellat.', 5, 87);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (88, '1972-12-26 02:36:16', '1995-08-08 10:46:22', 'Ipsam facere.', 34, 88);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (89, '1970-10-01 20:13:31', '1994-07-06 14:48:12', 'Est ea explicabo.', 90, 89);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (90, '1970-03-19 11:22:49', '2004-10-09 22:18:53', 'Quia perferendis.', 6, 90);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (91, '2018-09-18 07:07:43', '1978-02-15 13:40:07', 'Nihil ipsum.', 29, 91);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (92, '2008-08-13 10:53:33', '1983-03-15 18:30:20', 'Sunt harum omnis.', 32, 92);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (93, '2010-08-15 21:28:24', '1993-07-25 10:18:58', 'Et nihil.', 4, 93);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (94, '1997-05-02 11:28:52', '2004-03-20 20:18:06', 'Aut in voluptatibus.', 52, 94);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (95, '2004-04-02 04:37:30', '1984-03-23 12:01:45', 'Iste necessitatibus.', 24, 95);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (96, '1997-12-07 19:02:01', '1985-09-30 22:03:57', 'Autem quibusdam minus.', 23, 96);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (97, '1991-04-19 10:34:14', '1988-05-25 16:52:04', 'Deleniti autem voluptatem.', 32, 97);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (98, '1995-01-01 07:54:13', '1980-03-04 01:08:04', 'Quia consectetur.', 43, 98);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (99, '1973-05-22 10:18:52', '2014-06-10 20:29:50', 'Tempora impedit dolor.', 96, 99);
INSERT INTO `dados` (`id`, `created_at`, `updated_at`, `color`, `caras`, `id_producto`) VALUES (100, '1975-12-23 15:07:02', '2010-03-04 07:26:12', 'Impedit animi.', 4, 100);


#
# TABLE STRUCTURE FOR: deseados
#

DROP TABLE IF EXISTS `deseados`;

CREATE TABLE `deseados` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_usuario` int(12) unsigned NOT NULL,
  `id_producto` int(12) unsigned NOT NULL,
  `cantidad` int(12) unsigned NOT NULL,
  `borrado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuario_deseado` (`id_usuario`),
  KEY `fk_producto_deseado` (`id_producto`),
  CONSTRAINT `fk_producto_deseado` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`),
  CONSTRAINT `fk_usuario_deseado` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (1, '2012-10-29 02:42:41', '2013-02-15 20:16:44', 1, 1, 5, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (2, '1995-08-15 02:45:38', '1981-02-20 03:24:16', 2, 2, 9, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (3, '2012-12-07 06:42:39', '2018-10-21 06:27:37', 3, 3, 2, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (4, '1971-10-07 13:43:05', '1976-10-02 11:37:46', 4, 4, 7, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (5, '2009-08-23 21:30:01', '2013-06-15 18:06:54', 5, 5, 2, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (6, '2002-04-03 15:53:54', '2014-09-03 07:21:21', 6, 6, 3, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (7, '1987-03-27 17:11:38', '2015-02-13 18:42:57', 7, 7, 5, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (8, '1972-07-26 07:09:37', '1990-10-21 09:37:56', 8, 8, 2, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (9, '2000-04-14 04:47:23', '1978-07-04 15:23:17', 9, 9, 3, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (10, '1978-05-31 22:03:22', '1989-11-15 06:04:38', 10, 10, 2, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (11, '2005-07-05 13:51:27', '2017-11-01 17:14:38', 11, 11, 1, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (12, '1984-05-23 00:51:15', '1970-07-28 10:16:59', 12, 12, 8, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (13, '2011-08-25 05:39:51', '1999-02-10 19:18:07', 13, 13, 9, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (14, '2001-02-11 05:54:34', '2016-04-16 01:15:54', 14, 14, 1, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (15, '1996-06-30 03:52:09', '1987-12-01 21:27:40', 15, 15, 7, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (16, '2004-03-12 23:37:51', '2001-07-26 09:06:50', 16, 16, 5, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (17, '2008-07-08 18:51:13', '2006-10-29 07:54:24', 17, 17, 4, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (18, '1996-10-27 13:46:06', '2019-02-22 09:16:14', 18, 18, 8, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (19, '2004-04-08 17:09:56', '1985-04-05 15:59:29', 19, 19, 5, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (20, '2013-02-13 19:48:42', '1978-05-18 14:45:48', 20, 20, 2, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (21, '2006-04-15 21:58:24', '1986-11-08 07:10:44', 21, 21, 4, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (22, '1970-04-21 09:49:54', '2012-04-29 12:51:04', 22, 22, 1, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (23, '1996-03-13 20:04:04', '2015-01-13 06:30:03', 23, 23, 3, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (24, '1989-12-22 11:19:54', '1986-05-26 21:21:52', 24, 24, 1, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (25, '2005-03-07 08:40:08', '2007-06-24 16:37:54', 25, 25, 1, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (26, '1991-12-29 12:01:15', '2015-05-25 12:37:31', 26, 26, 2, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (27, '1997-06-09 22:50:18', '1980-09-30 01:49:08', 27, 27, 2, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (28, '1976-12-21 19:58:46', '1990-03-27 05:26:59', 28, 28, 6, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (29, '2009-12-21 00:59:28', '1982-10-12 03:14:26', 29, 29, 7, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (30, '2002-07-20 11:34:02', '2012-11-14 19:43:13', 30, 30, 8, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (31, '2018-08-10 19:02:24', '1974-02-02 11:39:37', 31, 31, 1, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (32, '1984-06-21 23:19:56', '1985-09-19 01:40:18', 32, 32, 7, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (33, '1971-03-08 08:05:53', '2014-12-12 19:18:07', 33, 33, 6, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (34, '2016-08-27 18:55:49', '2002-10-13 01:44:38', 34, 34, 1, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (35, '1970-12-08 10:33:22', '2000-03-26 17:30:15', 35, 35, 1, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (36, '1993-03-23 09:24:54', '1973-03-23 00:46:01', 36, 36, 3, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (37, '1999-11-21 17:39:36', '1974-02-25 20:21:05', 37, 37, 4, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (38, '1996-04-03 23:51:37', '2000-05-20 03:40:42', 38, 38, 4, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (39, '1989-12-17 03:16:12', '2009-06-27 06:13:10', 39, 39, 7, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (40, '1992-04-12 14:23:56', '1980-02-13 04:01:26', 40, 40, 8, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (41, '2008-08-29 06:39:48', '2005-11-05 11:08:06', 41, 41, 6, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (42, '2008-05-27 12:24:24', '2003-01-29 17:41:49', 42, 42, 4, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (43, '1999-03-09 19:33:06', '2008-03-02 03:53:39', 43, 43, 5, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (44, '2000-04-22 16:54:19', '2010-01-22 10:30:49', 44, 44, 3, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (45, '2010-08-18 20:31:43', '1988-09-27 00:43:45', 45, 45, 8, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (46, '1984-10-19 19:43:25', '1996-11-26 03:18:48', 46, 46, 4, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (47, '1983-06-28 08:57:56', '1984-07-27 15:38:51', 47, 47, 2, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (48, '2017-09-24 03:55:47', '2006-06-27 00:03:20', 48, 48, 2, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (49, '1987-04-23 01:13:24', '1987-11-27 14:04:14', 49, 49, 1, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (50, '2013-08-05 01:33:36', '1973-02-04 07:24:58', 50, 50, 5, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (51, '2018-10-18 00:03:18', '2010-07-06 08:34:47', 51, 51, 9, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (52, '1971-05-02 10:35:36', '2019-05-05 21:06:10', 52, 52, 4, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (53, '2017-09-13 15:24:05', '1978-09-12 04:45:24', 53, 53, 7, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (54, '1979-10-10 07:06:55', '1986-05-20 18:43:13', 54, 54, 2, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (55, '1993-05-05 17:46:10', '2007-04-06 17:34:08', 55, 55, 9, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (56, '1995-06-28 11:18:04', '1978-10-18 17:21:24', 56, 56, 9, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (57, '2018-04-14 05:45:39', '1997-05-13 21:15:00', 57, 57, 1, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (58, '2017-08-03 19:46:30', '2013-07-19 22:48:43', 58, 58, 8, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (59, '2003-10-26 14:33:47', '1976-05-23 15:04:32', 59, 59, 2, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (60, '1988-12-19 01:24:22', '1977-09-24 22:45:58', 60, 60, 5, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (61, '2017-05-31 18:02:33', '2004-08-26 13:38:52', 61, 61, 7, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (62, '2009-03-06 11:46:30', '2002-03-31 23:49:54', 62, 62, 4, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (63, '1970-09-15 17:42:12', '1989-12-21 02:28:46', 63, 63, 6, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (64, '1980-02-07 05:09:56', '1989-07-11 08:33:21', 64, 64, 1, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (65, '1976-08-10 09:03:15', '2009-03-05 19:33:38', 65, 65, 7, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (66, '1996-02-10 01:15:57', '1988-08-05 08:45:13', 66, 66, 4, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (67, '2016-02-05 01:48:03', '2012-01-14 11:25:39', 67, 67, 3, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (68, '1976-05-11 06:41:24', '1974-01-27 00:42:31', 68, 68, 1, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (69, '2008-09-08 02:38:04', '2004-09-19 11:26:10', 69, 69, 6, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (70, '2000-08-07 22:20:58', '2004-01-18 18:05:38', 70, 70, 7, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (71, '1984-06-18 08:01:21', '1997-09-16 06:51:00', 71, 71, 3, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (72, '1979-06-19 11:02:38', '1971-02-27 07:46:08', 72, 72, 5, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (73, '1996-05-30 03:11:10', '1995-01-20 13:42:11', 73, 73, 7, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (74, '1979-02-03 02:09:04', '1997-12-18 14:24:41', 74, 74, 4, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (75, '1977-12-19 13:24:10', '1993-01-21 18:19:48', 75, 75, 7, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (76, '1983-09-29 12:46:35', '2018-10-21 08:48:17', 76, 76, 5, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (77, '1989-10-16 01:22:51', '2018-07-14 08:45:52', 77, 77, 3, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (78, '1982-11-19 04:48:46', '2016-09-08 01:05:48', 78, 78, 2, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (79, '1972-04-20 14:03:01', '1990-06-05 12:35:50', 79, 79, 1, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (80, '2020-03-27 09:42:11', '2019-06-24 21:03:38', 80, 80, 1, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (81, '1992-06-27 19:18:34', '1987-01-04 14:35:26', 81, 81, 7, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (82, '2000-03-16 09:51:54', '2003-07-21 06:52:25', 82, 82, 2, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (83, '1973-01-23 02:51:13', '1986-04-03 07:53:20', 83, 83, 8, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (84, '1970-12-25 14:22:55', '1973-11-26 07:49:56', 84, 84, 6, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (85, '1978-01-20 23:14:57', '2000-03-16 22:44:12', 85, 85, 6, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (86, '1994-10-10 21:16:06', '2017-01-18 19:44:19', 86, 86, 5, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (87, '2007-08-20 07:24:35', '2002-09-16 09:49:02', 87, 87, 4, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (88, '1998-11-25 16:13:26', '1996-04-29 03:49:10', 88, 88, 8, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (89, '1985-01-23 08:22:12', '1980-09-23 05:49:56', 89, 89, 8, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (90, '1993-02-15 23:29:41', '1985-12-17 16:40:55', 90, 90, 4, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (91, '2008-11-04 10:27:43', '1973-10-22 21:29:01', 91, 91, 9, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (92, '2000-10-12 09:20:32', '1989-05-17 11:00:13', 92, 92, 7, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (93, '1974-05-24 11:32:55', '2000-11-04 12:19:33', 93, 93, 3, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (94, '1999-09-24 01:36:05', '2012-04-05 01:37:46', 94, 94, 7, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (95, '1993-07-11 13:43:35', '2009-11-17 03:48:49', 95, 95, 2, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (96, '2002-11-06 21:18:29', '2001-05-25 08:07:46', 96, 96, 8, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (97, '1971-01-12 08:28:55', '2005-06-23 05:36:09', 97, 97, 4, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (98, '2015-02-25 20:39:11', '2014-06-22 13:30:51', 98, 98, 8, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (99, '1991-08-27 21:29:04', '2016-04-21 05:50:37', 99, 99, 5, NULL);
INSERT INTO `deseados` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (100, '1996-12-19 04:39:00', '2010-11-15 00:09:47', 100, 100, 5, NULL);


#
# TABLE STRUCTURE FOR: ediciones
#

DROP TABLE IF EXISTS `ediciones`;

CREATE TABLE `ediciones` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `anio` year(4) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (1, '1979-04-29 13:00:09', '1980-05-26 03:50:51', '1998', 'Recusandae velit commodi.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (2, '2015-07-26 18:59:01', '1976-06-03 18:57:19', '1971', 'Maiores nostrum eum reiciendis.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (3, '1989-03-13 22:32:32', '1997-08-22 13:15:47', '1996', 'Est et corrupti temporibus.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (4, '2009-09-09 19:08:54', '1976-01-20 08:46:36', '2015', 'Quis placeat fuga.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (5, '2014-05-28 02:23:42', '2011-08-08 18:09:19', '2010', 'Optio ipsa quasi.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (6, '1993-01-21 11:17:40', '2017-08-20 12:31:17', '1990', 'Qui id non.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (7, '1976-04-11 09:07:29', '1976-03-20 16:09:52', '2000', 'Accusantium ratione voluptates et.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (8, '2007-10-21 07:21:31', '1988-01-09 13:44:00', '1974', 'Soluta qui aut necessitatibus.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (9, '1970-08-09 00:15:09', '1997-05-14 13:51:38', '1999', 'Nam ab possimus.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (10, '1994-05-23 01:53:17', '2001-05-28 22:07:06', '2009', 'Consequatur omnis a.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (11, '1992-12-21 13:37:10', '1983-08-02 12:03:49', '2005', 'Consectetur molestias voluptate quae.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (12, '2019-11-22 22:04:58', '1976-12-31 04:18:20', '2005', 'Sint reprehenderit cum.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (13, '1972-07-26 00:26:43', '1990-07-07 04:01:10', '1974', 'Dolores eos dolores maxime.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (14, '1993-05-02 04:27:16', '1977-12-06 10:03:48', '2020', 'Qui est et dolores.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (15, '1975-06-20 07:47:07', '2001-11-04 17:38:42', '2012', 'Quia qui illum in.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (16, '1982-01-11 17:24:46', '1992-05-05 03:24:08', '2008', 'Voluptatum beatae iure.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (17, '1978-01-24 06:48:26', '2000-03-10 18:53:12', '1984', 'Neque nobis distinctio.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (18, '1978-08-31 00:38:05', '2009-11-08 04:01:08', '1982', 'Fugiat aut.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (19, '2003-11-03 14:58:06', '1978-04-19 21:43:12', '1984', 'Beatae ab totam.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (20, '2014-05-20 18:26:06', '1974-05-07 16:28:44', '1999', 'Facere voluptas eius nisi.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (21, '1973-01-17 23:29:44', '1999-08-21 01:39:32', '1980', 'Tempora voluptas doloribus est.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (22, '2008-08-07 11:27:01', '1996-02-26 07:44:02', '1979', 'Laboriosam corporis voluptas.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (23, '2020-06-23 19:53:31', '1982-11-04 19:09:14', '1993', 'Doloremque tempore quibusdam.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (24, '1972-12-17 14:13:37', '1975-12-12 13:34:10', '2019', 'Totam natus ratione.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (25, '2004-05-26 18:48:32', '1983-11-04 04:36:24', '1985', 'Ut dolor animi molestias.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (26, '1999-05-24 05:41:45', '1999-07-17 08:05:59', '2015', 'Ut voluptatem hic.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (27, '1978-09-24 14:12:02', '2013-01-19 21:14:34', '2014', 'Nostrum minima iure doloribus.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (28, '2020-02-22 23:42:20', '1995-03-07 23:17:30', '1979', 'Aut voluptatem ut qui.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (29, '1992-03-20 04:21:41', '1997-11-15 08:21:34', '1984', 'Atque ex quos.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (30, '1994-03-10 11:06:59', '2006-04-15 10:43:33', '2007', 'Est quibusdam omnis similique.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (31, '2004-07-04 18:32:29', '1985-03-31 02:51:59', '1982', 'Corporis optio voluptas asperiores enim.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (32, '2009-10-13 10:48:46', '1971-01-10 19:19:22', '1974', 'Debitis consequatur mollitia aliquam occaecati.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (33, '1998-01-05 11:28:21', '2010-12-03 04:08:14', '2005', 'Alias ea et inventore occaecati.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (34, '2002-07-30 08:54:22', '2012-11-25 17:14:55', '1974', 'Ut enim officiis quia.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (35, '1985-12-27 11:49:48', '1997-07-13 09:15:27', '2005', 'Sit possimus rem nobis.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (36, '1982-03-30 19:17:50', '1988-10-24 18:02:25', '1980', 'Natus incidunt est sint.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (37, '2012-12-28 19:06:39', '1989-09-06 13:05:05', '1998', 'Debitis repellat omnis.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (38, '2020-05-29 09:30:02', '1980-09-29 07:41:51', '2008', 'Id quia impedit itaque.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (39, '1985-04-23 15:51:16', '2000-07-12 08:00:55', '2009', 'Reiciendis dolore eum.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (40, '1984-02-26 03:23:48', '2000-09-24 06:08:26', '1989', 'Hic minima optio.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (41, '2014-01-23 02:45:46', '1986-09-29 18:59:42', '1988', 'Architecto recusandae ut.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (42, '1987-12-23 17:46:22', '1972-09-25 00:32:01', '2019', 'Dolore excepturi quaerat.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (43, '2005-11-19 11:01:40', '1996-04-02 03:21:47', '1994', 'Sunt non aut.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (44, '2000-10-23 22:27:04', '1985-08-22 10:11:33', '2008', 'Doloremque unde assumenda.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (45, '2012-09-14 09:41:49', '2013-11-18 22:46:55', '1973', 'Veniam impedit nulla.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (46, '2010-01-22 09:25:55', '2003-01-29 06:33:35', '1978', 'Omnis porro autem repellat fuga.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (47, '1988-12-16 01:09:10', '1983-02-17 04:27:38', '1980', 'A rerum voluptas.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (48, '2009-06-13 09:03:06', '1996-06-12 22:31:03', '2004', 'Debitis voluptatibus debitis.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (49, '1985-08-19 23:35:35', '1980-03-29 05:57:55', '1973', 'Suscipit omnis vel soluta.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (50, '1978-04-09 15:01:55', '2011-11-03 17:27:42', '1990', 'Rerum soluta dolores quisquam ducimus.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (51, '1972-04-06 21:44:35', '1984-11-12 11:19:15', '2008', 'Ipsa dolor iste earum.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (52, '2008-05-02 23:10:09', '2001-10-07 03:13:31', '2017', 'Labore nesciunt qui nostrum.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (53, '2008-03-14 17:15:08', '1995-04-04 00:33:38', '1983', 'Ea sed consectetur nostrum soluta.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (54, '1976-02-26 21:46:35', '2004-06-25 09:04:14', '1985', 'Ducimus qui consequatur eum.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (55, '1992-12-29 10:25:12', '1972-12-26 06:07:16', '1971', 'Possimus iusto voluptatem sit.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (56, '1983-07-17 00:48:41', '1999-02-17 07:16:07', '1979', 'Quae officia architecto minima.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (57, '1983-06-19 21:45:28', '2012-12-25 20:55:03', '1981', 'Odio ad enim.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (58, '1978-12-08 22:26:25', '1992-02-08 04:24:14', '1971', 'Tempore ut quia omnis.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (59, '2011-03-18 10:37:09', '1981-02-18 05:45:02', '1999', 'Error magni.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (60, '2004-10-12 12:26:05', '2014-01-30 00:43:54', '1989', 'Hic repudiandae expedita.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (61, '1976-08-08 13:31:33', '1980-10-30 03:34:15', '1984', 'Repellendus dolores aspernatur atque.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (62, '2019-05-13 07:32:22', '2005-05-04 00:32:22', '1987', 'Ut ipsam est expedita.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (63, '1991-10-30 00:47:52', '1990-08-18 03:54:16', '1986', 'Perspiciatis cum nobis.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (64, '1975-01-12 22:17:20', '2012-11-20 04:53:54', '1977', 'Sunt delectus.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (65, '1994-07-04 06:59:44', '1986-05-02 19:23:02', '1976', 'Repellendus minima qui.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (66, '1970-02-16 11:38:10', '2001-03-14 01:53:32', '1977', 'Ipsam similique unde error.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (67, '2009-11-11 05:40:52', '2017-12-04 02:34:28', '1971', 'Accusantium illo reiciendis dolores.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (68, '1976-05-05 22:28:31', '1973-03-07 20:38:58', '1994', 'Sint perferendis.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (69, '1976-07-08 11:21:53', '2001-06-25 15:57:03', '2004', 'Quia magnam saepe molestiae.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (70, '1991-06-03 19:10:17', '1986-02-15 12:44:53', '2015', 'Harum eaque soluta similique.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (71, '2015-07-05 08:55:15', '1998-06-19 18:43:27', '1984', 'Modi ipsam omnis.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (72, '1996-06-16 15:28:53', '1997-12-27 20:41:56', '2016', 'Quam mollitia.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (73, '1996-11-04 23:17:34', '2009-08-01 00:52:55', '1992', 'Architecto facilis officia.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (74, '1974-11-28 06:49:20', '2010-07-10 21:21:04', '2000', 'Quam explicabo labore aliquam ut.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (75, '2003-09-06 23:40:46', '1980-12-10 02:50:41', '1972', 'Aspernatur porro cum.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (76, '2000-04-19 16:42:30', '1977-06-02 00:41:47', '1981', 'Perspiciatis eos quia.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (77, '2012-12-18 01:02:19', '1989-04-22 18:25:30', '2001', 'In magni voluptate sapiente.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (78, '2007-10-08 13:39:43', '1993-06-24 19:20:58', '1970', 'Voluptatibus tenetur vel recusandae.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (79, '1999-01-11 16:47:14', '2010-04-29 08:11:26', '1979', 'Voluptate vitae nam vitae.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (80, '1971-05-02 09:04:57', '1971-02-27 13:37:38', '2009', 'Odio eaque accusantium.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (81, '2017-05-23 00:44:43', '1994-11-25 15:45:48', '1986', 'Dicta occaecati consequuntur.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (82, '2018-11-28 22:28:38', '1991-06-05 03:29:13', '1987', 'Fugit labore at aut autem.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (83, '1976-04-09 08:52:44', '2014-02-18 15:25:53', '1994', 'Et blanditiis corporis.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (84, '2020-02-27 05:27:09', '2000-12-12 10:16:39', '1993', 'Molestias magni fugiat.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (85, '2002-05-07 20:35:17', '1987-12-24 08:49:28', '2003', 'Praesentium provident delectus qui.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (86, '2020-01-31 09:24:39', '1984-12-17 03:07:19', '1989', 'Ipsa quas aliquid sed.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (87, '1987-01-30 19:22:59', '2012-02-25 17:35:25', '1978', 'Ut amet sed voluptas accusantium.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (88, '1984-12-30 21:30:27', '1991-12-22 04:10:31', '1983', 'Omnis voluptas ullam deleniti.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (89, '2005-12-13 00:16:38', '1981-09-06 23:17:58', '2007', 'Id ut aliquid qui molestias.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (90, '2018-06-12 09:45:55', '1980-04-05 12:16:31', '1996', 'Et repellat atque distinctio.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (91, '1978-01-23 21:29:23', '2007-05-11 16:07:51', '1971', 'Qui aperiam nobis est.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (92, '1993-12-03 00:37:03', '1991-12-15 09:51:45', '1990', 'Sit blanditiis ut est.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (93, '1975-12-11 14:53:56', '1975-01-23 00:09:04', '1990', 'Et sit facere quia.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (94, '2013-07-12 01:02:42', '1980-03-14 10:49:33', '1987', 'Porro nobis ad quos.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (95, '1994-04-18 16:29:47', '1989-05-21 03:45:26', '1993', 'Assumenda reprehenderit accusantium minus.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (96, '2008-12-24 04:23:27', '2004-11-19 20:04:11', '1970', 'Facilis amet natus.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (97, '2003-10-23 13:21:09', '2007-06-27 14:24:34', '2013', 'Enim quae sint consequatur.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (98, '1975-11-20 06:28:45', '1982-12-25 09:51:55', '1984', 'Dolor ut.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (99, '1983-12-25 02:22:02', '1974-03-29 19:03:34', '1982', 'Ut accusamus voluptas dolor.');
INSERT INTO `ediciones` (`id`, `created_at`, `updated_at`, `anio`, `nombre`) VALUES (100, '1975-07-30 02:23:09', '2005-04-30 02:15:22', '1972', 'Ab repellat consectetur exercitationem.');


#
# TABLE STRUCTURE FOR: facturas
#

DROP TABLE IF EXISTS `facturas`;

CREATE TABLE `facturas` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_usuario` int(12) unsigned NOT NULL,
  `monto` decimal(20,2) NOT NULL,
  `fecha_de_pago` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `detalle` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borrado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuario_factura` (`id_usuario`),
  CONSTRAINT `fk_usuario_factura` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (1, '2006-09-17 05:02:12', '2003-08-09 21:50:35', 1, '5.00', '2017-12-11 06:36:35', 'Sint officiis qui omnis dolorem et voluptatem et sed. Ipsa harum animi facere. Laboriosam rerum voluptatem sed omnis enim inventore similique. Qui autem ab rerum adipisci nam magnam.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (2, '1993-12-24 08:28:45', '1988-05-19 21:46:13', 2, '5.00', '1984-11-04 19:25:09', 'Hic sunt magni modi. Sunt non molestias repellendus ut consequuntur esse. Illo maxime et ex soluta. Iste nulla blanditiis sit. Ut voluptatibus exercitationem quod.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (3, '1992-06-05 12:28:12', '1971-05-18 20:03:59', 3, '3.00', '2015-06-18 23:17:52', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (4, '1985-01-22 13:26:59', '1985-07-03 07:52:52', 4, '7.00', '1991-05-04 03:35:45', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (5, '1983-10-07 21:34:57', '1993-07-05 09:39:55', 5, '9.00', '2017-12-05 01:46:39', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (6, '1995-03-18 04:27:15', '1995-05-18 09:59:31', 6, '9.00', '2006-06-23 08:25:53', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (7, '1994-04-11 08:34:13', '1979-12-01 19:38:42', 7, '2.00', '1987-06-16 17:21:51', 'Voluptatem quibusdam eveniet distinctio iusto a cumque. Quam alias repudiandae libero aut. Sunt fuga voluptas accusantium repellat tenetur et illum.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (8, '2015-05-02 01:54:20', '1991-07-09 12:07:41', 8, '5.00', '2018-10-27 08:56:35', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (9, '2003-09-14 08:54:52', '1991-05-01 10:18:36', 9, '9.00', '1986-03-21 00:00:54', 'Ut voluptate voluptas assumenda. Quidem aut nesciunt cumque quo. Esse et veniam magnam hic hic reiciendis minus.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (10, '1979-08-04 19:06:41', '2005-07-12 09:27:04', 10, '4.00', '2011-01-14 10:58:35', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (11, '1990-03-07 22:09:24', '1986-10-24 16:59:11', 11, '7.00', '2000-09-22 23:36:45', 'Dolores id neque occaecati pariatur maxime est quisquam. Neque quisquam dolores sed aut. Et animi iste velit et est. Consequatur et rerum rerum quasi quo.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (12, '2019-04-11 19:49:12', '1986-07-14 20:56:45', 12, '8.00', '1991-06-23 05:53:07', 'Aut dolores delectus at omnis voluptate. Sequi quis ut maxime quis praesentium ullam. Pariatur quisquam tempora et sint amet aut nesciunt. Mollitia dolor nostrum ducimus necessitatibus et facere eum.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (13, '1971-07-03 11:26:34', '2014-07-26 22:21:52', 13, '9.00', '1984-09-30 07:55:07', 'Sunt suscipit perferendis necessitatibus nobis quia necessitatibus. Ut eveniet nesciunt natus. Sed veniam et id vel. Alias sequi consequatur in maiores.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (14, '1997-09-12 10:12:49', '2013-11-02 20:18:15', 14, '6.00', '1974-10-22 11:17:50', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (15, '1976-10-01 10:33:21', '1993-02-13 21:45:13', 15, '2.00', '1974-03-27 08:14:22', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (16, '1993-06-25 13:30:11', '2005-04-23 00:20:56', 16, '2.00', '1983-04-04 15:48:44', 'Facere sequi itaque et sit ea. Dicta molestiae est quo quia iure itaque. Voluptatibus molestiae modi dolorem omnis. Molestiae repellendus quo consequuntur dolor nulla repellendus.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (17, '2018-07-31 10:46:41', '2014-09-29 13:56:47', 17, '9.00', '1988-11-14 05:11:28', 'Ut sint dolorem quia ex debitis et. Vel ipsam quis quo deleniti soluta. Et quidem expedita et velit recusandae et impedit vel.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (18, '1976-04-27 01:58:15', '1980-02-12 17:12:32', 18, '6.00', '2017-11-17 00:34:29', 'Vel soluta at in quaerat. Explicabo molestias aut accusantium aut aperiam commodi ullam. Dignissimos ratione dicta architecto et facilis a omnis.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (19, '1987-09-28 23:46:47', '2011-01-22 13:41:43', 19, '2.00', '1989-05-03 00:15:08', 'Similique qui in quasi hic. Voluptate non debitis et quod libero eum enim. Autem laudantium sunt id nesciunt natus est ab. Autem consequuntur et dolores non cumque.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (20, '2015-03-07 11:02:40', '1989-06-12 10:26:18', 20, '8.00', '2004-07-23 23:09:20', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (21, '2008-07-25 22:19:44', '2016-11-27 13:50:48', 21, '3.00', '2017-09-14 20:34:56', 'Quo illo enim eos cupiditate tempore. Adipisci voluptatibus consequatur fugiat voluptas tempora rerum. Eos impedit et ut nulla laboriosam vel nemo. Debitis sunt consectetur non et modi qui ab aut.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (22, '1973-02-27 12:32:58', '2005-07-30 05:21:27', 22, '10.00', '2003-11-23 23:27:22', 'Qui molestiae voluptatem qui ratione quis unde ea. Incidunt suscipit earum illo nobis ut. Similique autem repellendus adipisci et consectetur ipsum. Laborum qui accusamus quis vel voluptas.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (23, '1981-03-29 04:26:04', '1989-07-21 09:41:24', 23, '2.00', '1970-04-18 18:37:30', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (24, '1974-11-15 12:23:00', '1970-12-25 12:51:06', 24, '9.00', '2016-03-21 10:01:05', 'At vel quaerat illo est totam voluptas corporis. Et consequatur quia reprehenderit soluta debitis minus voluptas possimus. Voluptatem itaque ut qui aut sed tempore blanditiis.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (25, '2015-09-23 18:26:20', '2008-10-01 05:44:59', 25, '3.00', '2017-05-12 12:21:55', 'Labore quia cum enim aliquid ratione dolores rerum. Enim culpa iste dolorum optio voluptas quas. Ut aspernatur voluptas delectus voluptate velit nesciunt quasi. Atque velit quidem enim.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (26, '1998-11-09 05:25:44', '1981-01-03 16:00:45', 26, '10.00', '2011-10-06 07:29:23', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (27, '2013-06-23 23:53:40', '2012-03-27 05:26:40', 27, '7.00', '2011-06-14 04:09:29', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (28, '1979-07-31 10:24:27', '1975-11-22 04:16:23', 28, '5.00', '1995-11-10 07:12:10', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (29, '2004-11-19 21:49:38', '2001-06-10 21:34:15', 29, '8.00', '1971-08-24 08:51:53', 'Aut exercitationem sequi perspiciatis. Impedit omnis amet sit sunt assumenda. Expedita sequi consequuntur aliquid recusandae doloremque omnis minima tenetur. Enim ab est ut aspernatur mollitia.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (30, '2012-12-06 00:31:45', '1983-11-20 02:17:14', 30, '9.00', '1985-08-15 20:44:45', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (31, '2001-01-03 16:38:04', '2010-07-23 09:39:52', 31, '7.00', '2011-11-29 15:29:21', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (32, '2014-08-24 11:58:22', '1987-12-17 20:22:36', 32, '3.00', '2018-10-16 12:12:21', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (33, '1971-11-03 05:34:26', '2013-05-25 00:35:47', 33, '2.00', '2019-10-03 00:22:06', 'Reprehenderit recusandae amet alias atque amet hic. Nemo officiis porro voluptatibus autem consequuntur. Sed necessitatibus sit eum autem dolor adipisci sit.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (34, '1983-07-07 09:28:37', '1977-02-17 09:51:29', 34, '2.00', '1989-10-16 11:40:04', 'Placeat et dignissimos numquam dignissimos enim molestiae. Facere non soluta reiciendis ut. Odio qui corporis laudantium ut.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (35, '1971-02-01 15:09:52', '1995-05-12 17:48:12', 35, '6.00', '2006-03-21 13:50:03', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (36, '2001-11-29 08:54:46', '1984-03-29 07:50:06', 36, '6.00', '1995-04-26 03:48:57', 'Vel et voluptatem aliquam sapiente. Beatae repellat similique libero minus eveniet molestias. Itaque vel quia deleniti hic.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (37, '1971-07-17 15:38:06', '1972-01-22 16:17:16', 37, '6.00', '1993-02-14 07:04:35', 'Et tempore laboriosam dolorem ratione quo eligendi. Quod quaerat amet officia omnis nesciunt fugit. Nobis itaque eaque aut saepe. Odit nihil qui laudantium et temporibus.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (38, '1986-08-12 14:12:37', '2010-03-15 20:29:07', 38, '4.00', '1982-07-12 00:49:00', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (39, '1975-04-01 20:53:09', '2017-12-20 00:18:34', 39, '9.00', '1982-11-30 00:16:13', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (40, '1979-01-12 12:44:33', '2002-08-08 14:45:51', 40, '4.00', '2012-05-29 00:57:43', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (41, '2012-11-14 17:27:58', '1982-07-14 23:29:34', 41, '8.00', '1993-10-16 22:32:36', 'Vitae tempore aperiam autem. Quaerat et quo architecto ab quam explicabo aut. Reiciendis dolore dolorem accusantium mollitia. Dolor exercitationem maxime architecto omnis voluptates et neque qui.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (42, '1987-05-09 12:32:42', '2016-01-24 11:25:28', 42, '10.00', '2005-02-14 13:51:46', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (43, '1977-11-17 00:10:37', '1975-06-18 15:50:10', 43, '2.00', '2010-04-06 16:13:54', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (44, '1977-07-28 19:53:31', '2020-01-29 17:02:58', 44, '3.00', '2015-11-23 05:20:33', 'Culpa et assumenda rerum corporis. Laudantium nulla eos corporis debitis eius. Temporibus eius placeat sit aliquid ratione in sed.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (45, '1977-08-08 14:51:54', '2007-10-22 04:09:55', 45, '8.00', '1992-12-03 06:19:24', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (46, '1982-04-23 22:01:58', '1971-06-28 10:30:20', 46, '10.00', '1979-04-18 10:02:16', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (47, '2018-05-02 12:24:48', '2002-05-24 03:21:44', 47, '3.00', '2001-09-02 17:50:39', 'Dolore fugiat animi deserunt est. Totam et quam facere et modi aut ea placeat. Aspernatur explicabo nemo architecto.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (48, '2001-01-06 05:46:12', '2014-09-11 07:29:19', 48, '8.00', '2011-03-03 11:46:09', 'Culpa facere consequatur pariatur doloribus sed ut. Consequuntur fuga reprehenderit ducimus reiciendis ut quam. Ad dignissimos ratione praesentium dolor. Est doloremque occaecati ut alias vero.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (49, '2017-04-04 00:07:04', '2009-03-07 10:30:25', 49, '8.00', '1998-12-14 05:07:29', 'Sequi et non laboriosam facilis ut sapiente molestiae est. Quaerat non aut sit harum voluptas. Dolorem qui rem asperiores in maiores. Esse ut inventore et eveniet harum in ut.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (50, '2002-06-10 19:48:01', '2012-01-11 06:21:31', 50, '3.00', '1997-06-29 05:34:29', 'Illum sed dolores odio est. Enim ea ut rerum optio ullam. Inventore ducimus ut placeat consequatur.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (51, '1986-02-14 22:31:11', '1977-01-31 14:44:52', 51, '3.00', '1978-01-17 07:53:35', 'Ducimus accusantium explicabo voluptas nostrum rem. Qui hic voluptatibus at. Voluptatem et exercitationem omnis modi voluptatem molestiae totam.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (52, '1998-09-22 02:18:04', '1970-09-04 23:42:33', 52, '7.00', '2010-12-22 12:33:07', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (53, '1997-11-19 18:13:08', '1978-12-02 13:46:08', 53, '7.00', '1994-10-25 17:00:10', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (54, '1992-02-11 20:59:30', '1988-10-08 14:19:47', 54, '6.00', '1985-08-02 01:15:04', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (55, '1991-03-09 15:07:39', '1995-11-04 18:56:26', 55, '3.00', '2012-09-03 05:03:07', 'Blanditiis ea ut iusto id. At sunt ipsum ut sunt ipsam voluptate quaerat consequatur. Vel quidem rerum aut. Aspernatur ab ullam dolore occaecati labore qui saepe.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (56, '1976-06-27 00:35:35', '1979-10-09 21:10:11', 56, '6.00', '2017-04-02 17:09:59', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (57, '1976-02-21 05:06:17', '2004-10-10 06:46:05', 57, '2.00', '1979-10-22 00:47:11', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (58, '2007-07-21 12:00:15', '1993-03-19 11:27:54', 58, '3.00', '2016-11-03 08:29:40', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (59, '1992-03-19 07:44:16', '2010-02-01 15:57:37', 59, '6.00', '1976-01-08 17:54:23', 'Illum incidunt velit minus at labore earum. Rem nemo non similique placeat vero. Occaecati vel deserunt aut quas sit dolorum sit nesciunt. Quis qui amet quo porro enim.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (60, '2016-08-26 04:41:53', '1996-05-22 18:35:18', 60, '9.00', '1982-10-09 01:45:15', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (61, '1979-04-16 15:32:38', '1987-10-26 07:16:11', 61, '8.00', '2004-06-03 23:28:40', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (62, '1993-10-08 18:02:49', '1981-04-21 22:27:14', 62, '10.00', '1981-01-09 02:34:04', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (63, '2014-04-22 04:25:04', '2006-10-29 00:06:24', 63, '4.00', '2001-06-10 03:06:28', 'Illo officiis est et sed voluptatem aliquid similique. Et maxime molestiae iusto consequatur omnis rerum ullam. Eius officiis voluptas deserunt veniam at minus. Saepe qui ut rem cum.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (64, '1972-03-20 21:21:05', '2013-01-17 14:12:26', 64, '3.00', '1979-11-04 18:36:02', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (65, '1984-07-15 16:59:13', '2000-11-03 08:32:53', 65, '3.00', '1998-09-04 23:08:23', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (66, '2003-12-27 19:24:22', '1998-05-22 12:09:35', 66, '10.00', '1996-10-04 23:00:43', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (67, '1993-03-11 19:20:30', '1998-02-09 02:04:27', 67, '6.00', '2009-06-02 02:06:46', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (68, '1992-06-12 06:33:20', '1996-01-17 13:06:07', 68, '6.00', '1981-08-19 09:13:20', 'Maiores sapiente maiores totam non. Et iste quae optio aut soluta. Nisi ullam debitis nobis dolor qui recusandae distinctio nam. Tempora quam qui sint saepe.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (69, '1998-10-11 11:56:35', '2009-04-03 17:57:52', 69, '10.00', '1987-09-23 07:19:13', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (70, '1997-10-03 21:23:43', '1995-02-08 01:10:22', 70, '5.00', '1986-03-16 23:04:03', 'Voluptatum aut ipsum aspernatur aspernatur aut quo ut. Quasi ea soluta molestias. Aliquam recusandae consequatur nihil distinctio eaque nulla nulla.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (71, '2002-12-31 23:08:01', '2007-09-28 08:30:08', 71, '10.00', '1971-01-13 04:28:22', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (72, '1976-03-20 18:28:42', '2018-07-03 20:45:45', 72, '4.00', '1976-02-17 14:19:54', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (73, '2011-10-21 09:52:50', '2007-11-09 07:23:15', 73, '5.00', '1994-08-12 10:54:44', 'Reiciendis consequatur culpa molestiae culpa consequuntur et recusandae. Voluptatibus provident autem perspiciatis corporis autem. Et fugit iste aut quibusdam laboriosam architecto et.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (74, '1982-09-16 14:15:41', '2019-07-16 19:41:41', 74, '6.00', '2015-05-26 22:31:30', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (75, '2006-03-26 08:09:22', '1991-09-25 04:57:04', 75, '6.00', '1989-01-20 01:39:06', 'Voluptatem at maxime earum et. Voluptatum ut perspiciatis culpa assumenda itaque accusamus velit. Natus voluptas aut omnis perspiciatis aspernatur voluptatem.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (76, '1972-02-07 06:17:06', '1971-12-31 03:15:08', 76, '6.00', '1983-03-02 01:41:48', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (77, '1991-06-21 16:22:47', '1990-05-18 13:32:41', 77, '9.00', '1978-11-21 02:38:29', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (78, '2016-04-26 14:59:36', '1985-01-18 17:03:20', 78, '2.00', '1993-09-23 15:48:44', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (79, '1985-04-22 01:54:00', '2007-08-22 09:11:28', 79, '10.00', '2012-06-01 18:44:28', 'Porro nisi et quas omnis est. Facilis vitae omnis consequatur. Fugit non voluptatum enim veritatis rerum enim quibusdam. Deleniti reprehenderit et occaecati harum laborum.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (80, '2014-01-07 00:49:24', '1978-01-10 14:46:38', 80, '4.00', '1989-05-28 06:37:08', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (81, '2011-03-05 12:41:18', '2013-01-06 02:04:41', 81, '3.00', '2006-06-06 15:28:04', 'Quia est cumque inventore labore magnam enim. Distinctio ea labore ducimus et natus mollitia. Commodi cum et qui adipisci vitae et sint.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (82, '1975-06-07 01:47:38', '1979-06-23 22:56:52', 82, '6.00', '1987-08-06 19:49:41', 'Distinctio soluta voluptatum eos et facilis rerum et. Ea aut totam vel minima odit adipisci velit.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (83, '1986-04-24 01:58:21', '1996-09-07 17:11:21', 83, '4.00', '2015-05-31 02:30:01', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (84, '1975-12-12 11:33:01', '1993-08-23 06:34:47', 84, '10.00', '2000-06-23 23:40:31', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (85, '2008-02-07 19:33:36', '1992-04-11 03:22:28', 85, '8.00', '1970-12-25 15:16:33', 'Aperiam dolores dolore neque omnis repellat et odit labore. Voluptatem quas debitis molestiae explicabo. Ut minus blanditiis sequi voluptatum et minima et facere.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (86, '2019-10-10 12:12:14', '1983-02-01 04:22:58', 86, '6.00', '1977-11-20 18:46:31', 'Illo occaecati in magni optio eum est. Laboriosam recusandae sequi suscipit dolorem. Qui explicabo distinctio ex sint.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (87, '1981-09-17 22:55:54', '1986-06-16 21:57:00', 87, '6.00', '2001-07-09 00:02:10', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (88, '1987-08-24 05:49:31', '1972-10-04 21:23:51', 88, '5.00', '2011-10-11 08:21:10', 'Iste tenetur ab deserunt vero distinctio dicta. Debitis iusto qui eligendi.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (89, '1971-06-08 15:06:23', '1982-07-20 13:07:52', 89, '7.00', '1980-12-07 13:05:31', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (90, '1971-09-11 06:15:07', '2014-05-29 01:36:01', 90, '10.00', '1981-11-01 07:06:49', 'Qui sunt eos distinctio et aut numquam. Consectetur consequatur nihil aut laboriosam id. Accusantium adipisci pariatur sunt dolorem.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (91, '1997-08-29 14:50:02', '2010-12-14 17:49:38', 91, '2.00', '1985-06-20 00:41:29', 'Accusantium nobis dolor et amet illo. Sit illo repellendus laborum dolorem. Sed fuga dolorem consequatur aperiam.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (92, '1974-08-25 00:05:20', '1971-10-07 11:11:01', 92, '2.00', '1986-11-30 15:48:31', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (93, '1975-04-04 18:29:39', '1997-06-05 19:16:27', 93, '4.00', '1975-04-28 02:50:07', 'Vel fuga dolores aut doloremque rerum tenetur. Accusamus aut enim ea et consequatur voluptates. Voluptas placeat assumenda sequi quod consequatur aliquid accusantium.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (94, '1982-04-01 17:53:32', '1979-02-13 09:03:39', 94, '10.00', '2019-08-17 07:35:18', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (95, '1980-12-02 16:49:51', '1982-10-05 12:25:30', 95, '5.00', '1985-06-28 12:02:17', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (96, '1971-01-08 13:16:00', '1987-08-10 05:23:15', 96, '9.00', '2007-05-27 22:04:05', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (97, '1974-12-09 06:16:11', '2017-03-20 01:14:57', 97, '2.00', '1977-01-21 01:42:51', 'Accusamus accusamus enim labore. Impedit facilis laborum quas. Magni consequatur aut quod non odit ab explicabo.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (98, '2011-12-26 02:26:58', '1970-01-09 08:59:41', 98, '8.00', '2011-06-02 06:20:13', 'Tempora ipsam maiores id et corrupti deleniti nihil. Aperiam quas et molestiae accusantium. Numquam possimus amet possimus omnis eaque.', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (99, '1995-10-11 17:57:36', '1991-06-06 20:20:33', 99, '3.00', '2004-11-19 12:57:46', '', NULL);
INSERT INTO `facturas` (`id`, `created_at`, `updated_at`, `id_usuario`, `monto`, `fecha_de_pago`, `detalle`, `borrado`) VALUES (100, '2013-01-01 10:29:49', '1985-11-22 21:17:19', 100, '10.00', '1984-04-15 01:11:32', 'Recusandae rerum ipsa ipsum id doloremque esse. Id dolore cum magni optio placeat. Voluptatum et quisquam vero ut.', NULL);


#
# TABLE STRUCTURE FOR: folios
#

DROP TABLE IF EXISTS `folios`;

CREATE TABLE `folios` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_producto` int(12) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_producto_folio` (`id_producto`),
  CONSTRAINT `fk_producto_folio` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (1, '1971-05-14 19:54:18', '2015-12-25 13:34:33', 'Impedit qui rerum.', 1);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (2, '1996-10-27 03:33:12', '2014-05-15 07:32:45', 'Eaque aperiam.', 2);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (3, '1972-12-26 12:12:27', '2000-08-08 12:44:22', 'Totam vel beatae.', 3);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (4, '1994-08-21 06:18:57', '1991-03-18 04:09:53', 'Voluptatem non aut.', 4);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (5, '1986-01-25 15:28:39', '1977-02-07 23:32:28', 'Sunt amet molestiae.', 5);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (6, '1988-10-23 19:20:48', '1985-11-14 11:46:15', 'Dolore nobis laborum.', 6);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (7, '2001-03-27 18:09:01', '2007-10-29 01:51:58', 'Ut optio dolores.', 7);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (8, '1992-11-15 14:07:44', '1981-07-17 23:16:55', 'Dolor harum reiciendis.', 8);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (9, '2007-07-10 00:48:09', '2019-12-25 04:55:33', 'Omnis in neque.', 9);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (10, '2010-07-10 06:40:35', '2006-11-06 02:20:13', 'Nulla esse illo.', 10);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (11, '1989-07-14 09:35:10', '2019-07-15 22:06:05', 'Et at.', 11);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (12, '1991-05-04 11:25:50', '1971-08-30 17:12:14', 'Qui doloremque.', 12);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (13, '1995-04-01 16:43:36', '1970-11-10 19:29:35', 'Repellat et earum.', 13);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (14, '2015-05-09 16:11:09', '1993-04-29 00:40:48', 'Vel odit.', 14);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (15, '1995-09-17 15:02:42', '1981-07-15 14:28:08', 'Est molestiae qui.', 15);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (16, '1974-06-04 09:48:16', '1996-05-01 06:49:17', 'Est labore.', 16);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (17, '2009-03-17 22:33:16', '1990-02-25 09:40:49', 'Officia laboriosam dicta.', 17);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (18, '1994-08-21 14:06:31', '1991-05-27 04:46:16', 'Sunt at quo.', 18);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (19, '1975-09-02 03:43:09', '2008-09-03 08:05:14', 'Ut reprehenderit voluptas.', 19);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (20, '2008-05-25 19:41:16', '1989-07-15 08:55:31', 'Mollitia non.', 20);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (21, '2015-04-15 03:44:15', '2009-09-06 20:54:42', 'Ut autem enim.', 21);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (22, '1985-03-02 11:57:10', '1982-08-31 03:18:13', 'Natus pariatur quasi.', 22);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (23, '1999-12-27 17:54:05', '1974-05-21 12:17:22', 'Dicta ducimus.', 23);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (24, '1972-04-05 11:35:03', '1988-01-14 10:39:36', 'Voluptatem cumque.', 24);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (25, '1972-06-01 22:00:59', '1978-05-01 23:05:41', 'Deserunt qui rerum.', 25);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (26, '1987-11-21 20:10:43', '1996-11-16 02:09:11', 'Sint deleniti.', 26);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (27, '1999-09-24 00:35:35', '2014-05-05 17:53:12', 'Accusantium qui tempore.', 27);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (28, '1983-06-11 05:05:58', '1985-12-14 01:28:14', 'Sed reprehenderit.', 28);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (29, '1994-10-01 07:08:20', '1979-06-09 17:14:10', 'Architecto dolorem.', 29);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (30, '1975-02-19 07:23:46', '1998-04-30 08:57:26', 'Est ex.', 30);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (31, '2019-05-25 11:18:29', '2000-04-08 20:50:50', 'Sit dolore.', 31);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (32, '1998-06-10 13:32:56', '1972-04-15 19:18:13', 'Cumque adipisci facere.', 32);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (33, '1996-03-25 06:46:18', '1975-03-05 21:25:20', 'Optio laboriosam saepe.', 33);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (34, '1993-05-04 22:20:07', '1971-08-29 17:01:53', 'Distinctio animi nulla.', 34);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (35, '2013-12-21 18:37:36', '2012-06-17 20:21:58', 'Quis quibusdam.', 35);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (36, '2014-10-12 10:32:15', '2018-02-15 14:44:08', 'Totam qui sit.', 36);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (37, '1987-03-08 13:53:44', '1991-12-14 03:17:14', 'Et placeat.', 37);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (38, '1972-04-30 21:20:16', '1993-02-18 21:59:19', 'Iure consequuntur a.', 38);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (39, '1999-11-02 22:38:41', '1992-08-30 14:20:44', 'Dolorem ad.', 39);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (40, '1987-05-01 16:46:53', '2006-02-10 02:42:06', 'Ea amet.', 40);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (41, '2015-11-22 00:45:15', '1974-11-23 01:02:44', 'Aut sunt.', 41);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (42, '2008-01-28 18:19:01', '1988-12-18 11:53:41', 'Quia nulla.', 42);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (43, '2009-10-12 13:18:37', '2004-05-09 18:17:53', 'Reiciendis expedita.', 43);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (44, '1996-05-11 01:39:05', '1977-01-12 03:29:49', 'Quo dolorem.', 44);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (45, '2002-10-21 07:35:55', '1973-11-15 14:56:16', 'Enim quo.', 45);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (46, '2006-08-07 08:41:18', '2005-04-30 16:44:02', 'Aut nostrum ducimus.', 46);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (47, '1992-12-09 22:48:50', '2005-12-10 08:19:33', 'Iste ut ad.', 47);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (48, '1986-07-07 17:03:30', '1973-11-02 05:51:58', 'Molestias quas.', 48);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (49, '1999-11-30 19:16:54', '1982-02-16 04:06:41', 'Totam quis.', 49);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (50, '1981-05-02 09:18:15', '1998-06-10 09:45:00', 'Perferendis dignissimos eaque.', 50);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (51, '1972-10-05 21:52:54', '1997-08-02 02:04:56', 'Ipsum quia.', 51);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (52, '1986-09-24 11:28:09', '1983-04-03 22:00:37', 'Aut id natus.', 52);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (53, '2000-02-22 15:12:33', '2011-05-03 11:19:38', 'Odio est omnis.', 53);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (54, '1983-05-01 13:27:48', '1994-09-02 14:20:20', 'Quas exercitationem.', 54);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (55, '1972-11-16 22:17:42', '1988-10-18 22:32:35', 'Quis neque aliquam.', 55);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (56, '2019-10-12 12:32:03', '2017-01-21 07:34:28', 'Sed debitis.', 56);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (57, '1989-12-23 00:45:00', '1984-11-08 20:11:29', 'Quidem et animi.', 57);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (58, '1996-09-24 02:43:37', '1987-02-26 18:26:56', 'Eligendi porro.', 58);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (59, '1985-04-06 19:58:21', '1987-06-04 08:26:38', 'Fugiat ratione facilis.', 59);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (60, '2018-03-04 06:42:28', '2000-10-14 01:58:07', 'Ab quasi rem.', 60);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (61, '1973-03-31 15:23:47', '1972-11-11 00:51:02', 'Ea amet ut.', 61);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (62, '2013-02-19 09:19:09', '1990-11-18 08:11:47', 'Reiciendis facilis.', 62);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (63, '2018-08-11 20:43:34', '1996-06-18 00:56:37', 'Nobis rerum.', 63);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (64, '1977-02-24 23:31:22', '2015-04-01 17:07:26', 'Dolores harum.', 64);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (65, '2000-12-15 17:47:59', '1996-12-26 02:36:48', 'Eveniet dolorem distinctio.', 65);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (66, '2002-10-17 16:33:13', '1971-11-05 09:00:31', 'Aspernatur et culpa.', 66);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (67, '1986-05-17 04:34:56', '2007-04-29 04:46:22', 'Fugit dolore.', 67);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (68, '1990-06-05 00:35:08', '1972-08-29 11:55:39', 'Laudantium et quam.', 68);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (69, '1984-10-24 12:14:47', '1970-10-31 19:26:07', 'Aut quisquam.', 69);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (70, '1994-07-03 17:22:40', '1971-04-14 06:58:48', 'Eum atque repellendus.', 70);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (71, '1985-07-01 23:39:36', '2005-08-24 01:02:44', 'Soluta rem.', 71);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (72, '2015-11-17 17:36:27', '2009-12-06 03:00:11', 'Ratione repudiandae voluptatibus.', 72);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (73, '1995-07-01 08:22:07', '1995-07-13 18:11:51', 'Ut quo pariatur.', 73);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (74, '1986-01-25 07:35:25', '2011-05-08 13:05:53', 'Molestiae mollitia aut.', 74);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (75, '1985-03-28 11:07:02', '1973-02-16 23:56:48', 'At ut odit.', 75);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (76, '1970-08-14 23:14:24', '1983-08-22 06:48:40', 'Eum occaecati excepturi.', 76);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (77, '2018-06-02 00:30:21', '1994-12-27 07:32:33', 'Non veritatis.', 77);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (78, '1992-01-03 03:31:14', '2005-08-24 02:31:54', 'Necessitatibus sint.', 78);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (79, '2013-04-30 17:27:38', '1982-06-30 17:19:41', 'Voluptatem et consequatur.', 79);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (80, '1976-12-03 09:30:54', '1999-02-17 18:06:37', 'Sit impedit non.', 80);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (81, '1979-10-13 11:12:50', '1991-10-04 06:34:15', 'Iste aut ut.', 81);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (82, '1993-10-02 13:40:19', '2009-03-28 20:21:02', 'Animi enim vel.', 82);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (83, '1993-01-14 23:55:39', '1998-06-18 11:25:58', 'Et et.', 83);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (84, '1981-12-31 23:29:35', '1995-01-23 19:01:07', 'Et ut.', 84);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (85, '1979-05-30 11:54:47', '1987-09-16 10:03:46', 'Sequi deleniti.', 85);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (86, '2009-10-21 18:23:14', '2013-11-08 01:56:58', 'Et facere debitis.', 86);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (87, '1972-09-30 13:39:47', '1974-09-12 06:47:49', 'Atque tempore porro.', 87);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (88, '1999-11-26 21:02:01', '2006-11-11 01:24:50', 'Mollitia tenetur natus.', 88);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (89, '1977-03-06 12:56:26', '2002-01-25 07:47:09', 'Ea illum vel.', 89);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (90, '2002-08-28 10:36:14', '2007-04-20 06:33:51', 'Sunt quod.', 90);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (91, '1982-09-28 02:04:17', '1987-04-14 20:36:01', 'Omnis a.', 91);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (92, '1993-04-18 20:48:13', '1997-08-03 21:06:56', 'Ex dolorem.', 92);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (93, '2014-02-12 18:39:52', '2005-10-29 09:20:39', 'Labore voluptatum et.', 93);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (94, '2017-07-21 15:15:47', '1973-06-08 09:09:37', 'Consequatur architecto.', 94);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (95, '1999-03-20 18:44:33', '1985-08-17 21:58:55', 'Laboriosam voluptatem.', 95);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (96, '1993-11-06 23:27:45', '2005-11-28 14:20:02', 'Laborum labore et.', 96);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (97, '2010-08-14 23:21:26', '1981-02-05 18:40:36', 'Expedita facere.', 97);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (98, '1971-09-13 02:53:59', '2008-07-20 17:23:41', 'Provident aut.', 98);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (99, '2018-05-26 20:04:23', '1988-08-11 15:45:15', 'Inventore suscipit.', 99);
INSERT INTO `folios` (`id`, `created_at`, `updated_at`, `color`, `id_producto`) VALUES (100, '2006-06-03 13:15:15', '2010-05-28 08:51:39', 'Qui repellendus aperiam.', 100);


#
# TABLE STRUCTURE FOR: historial_de_compra
#

DROP TABLE IF EXISTS `historial_de_compra`;

CREATE TABLE `historial_de_compra` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_usuario` int(12) unsigned NOT NULL,
  `id_factura` int(12) unsigned NOT NULL,
  `id_producto` int(12) unsigned NOT NULL,
  `cantidad` int(12) NOT NULL,
  `borrado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuario_historial` (`id_usuario`),
  KEY `fk_factura_historial` (`id_factura`),
  KEY `fk_producto_historial` (`id_producto`),
  CONSTRAINT `fk_factura_historial` FOREIGN KEY (`id_factura`) REFERENCES `facturas` (`id`),
  CONSTRAINT `fk_producto_historial` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`),
  CONSTRAINT `fk_usuario_historial` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (1, '1972-06-12 11:29:58', '1982-02-12 04:47:18', 1, 1, 1, 8, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (2, '1997-03-16 02:39:33', '1980-01-27 20:24:58', 2, 2, 2, 2, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (3, '2014-09-26 07:27:40', '2011-02-08 02:27:23', 3, 3, 3, 8, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (4, '1970-11-18 20:01:22', '2019-12-02 19:07:19', 4, 4, 4, 3, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (5, '2005-12-04 05:00:47', '2008-02-10 13:11:12', 5, 5, 5, 1, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (6, '1979-11-30 21:39:52', '2019-12-06 21:48:21', 6, 6, 6, 6, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (7, '1997-04-13 18:33:28', '1976-03-27 15:12:55', 7, 7, 7, 3, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (8, '1976-07-13 13:44:33', '1996-09-13 17:01:43', 8, 8, 8, 3, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (9, '2009-10-22 22:36:12', '1972-08-17 21:41:26', 9, 9, 9, 9, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (10, '2012-04-07 18:00:21', '1993-10-15 10:41:30', 10, 10, 10, 9, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (11, '2017-03-19 10:31:39', '1981-07-13 15:42:26', 11, 11, 11, 3, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (12, '1998-02-06 16:53:18', '1985-12-04 19:42:00', 12, 12, 12, 4, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (13, '1988-06-15 13:03:23', '1997-01-21 08:18:11', 13, 13, 13, 6, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (14, '1972-12-02 09:19:53', '2017-10-15 17:50:37', 14, 14, 14, 6, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (15, '2005-09-11 15:52:59', '1983-06-02 14:36:18', 15, 15, 15, 1, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (16, '1997-09-08 04:53:35', '1998-12-01 07:45:25', 16, 16, 16, 1, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (17, '2019-03-11 07:23:42', '2010-07-18 22:02:59', 17, 17, 17, 8, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (18, '2017-09-14 21:49:06', '2014-10-06 14:10:09', 18, 18, 18, 1, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (19, '2002-05-24 13:41:19', '2019-07-09 17:13:34', 19, 19, 19, 3, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (20, '1998-06-01 03:24:59', '1984-07-24 02:22:05', 20, 20, 20, 6, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (21, '1991-06-29 07:10:35', '2018-04-10 20:22:59', 21, 21, 21, 5, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (22, '1980-10-09 19:59:31', '1976-12-04 01:02:55', 22, 22, 22, 2, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (23, '2003-04-28 23:37:49', '1975-08-07 21:42:39', 23, 23, 23, 6, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (24, '1996-12-16 02:32:14', '1995-02-19 11:52:43', 24, 24, 24, 2, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (25, '1972-05-08 18:05:08', '2006-10-11 12:24:29', 25, 25, 25, 4, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (26, '2009-04-26 18:09:56', '2003-03-06 09:50:03', 26, 26, 26, 3, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (27, '1996-07-24 08:31:39', '1981-03-19 05:26:55', 27, 27, 27, 6, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (28, '2012-10-08 06:55:22', '1981-02-01 19:48:42', 28, 28, 28, 8, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (29, '1980-05-20 05:16:26', '1996-03-11 00:58:42', 29, 29, 29, 7, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (30, '2009-01-05 17:45:33', '2004-01-20 07:30:09', 30, 30, 30, 7, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (31, '1988-10-10 00:42:12', '2010-12-21 13:52:47', 31, 31, 31, 2, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (32, '1984-10-06 10:57:45', '1991-05-15 13:15:59', 32, 32, 32, 8, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (33, '2013-10-14 22:14:52', '1985-04-13 09:33:45', 33, 33, 33, 6, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (34, '1976-05-29 20:22:44', '1971-10-26 06:40:57', 34, 34, 34, 2, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (35, '1978-09-23 09:51:43', '1979-08-30 17:42:52', 35, 35, 35, 4, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (36, '2017-11-09 17:36:31', '1998-06-19 07:17:52', 36, 36, 36, 5, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (37, '2017-10-10 01:11:15', '1978-10-21 11:21:09', 37, 37, 37, 3, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (38, '2016-04-15 14:37:48', '1993-10-13 14:21:07', 38, 38, 38, 5, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (39, '1984-08-28 13:58:13', '1988-10-08 18:20:52', 39, 39, 39, 2, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (40, '1982-10-01 17:36:17', '1978-09-27 01:10:00', 40, 40, 40, 6, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (41, '2013-01-24 06:36:55', '2010-12-04 21:29:00', 41, 41, 41, 5, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (42, '1987-07-10 11:17:12', '2014-10-22 21:35:22', 42, 42, 42, 8, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (43, '1987-03-28 09:02:51', '1983-07-08 01:01:55', 43, 43, 43, 5, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (44, '1971-08-05 07:11:30', '2008-06-05 11:46:34', 44, 44, 44, 2, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (45, '2018-10-03 17:30:36', '2004-04-26 07:45:32', 45, 45, 45, 9, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (46, '1979-02-01 06:02:39', '1987-03-23 19:53:09', 46, 46, 46, 2, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (47, '1987-08-12 14:55:13', '1977-11-14 20:12:23', 47, 47, 47, 4, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (48, '1995-05-13 01:05:32', '2008-05-02 15:45:57', 48, 48, 48, 5, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (49, '2005-01-25 23:16:06', '1976-01-09 10:27:01', 49, 49, 49, 8, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (50, '2009-03-24 21:22:57', '2009-02-03 05:18:16', 50, 50, 50, 3, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (51, '1977-05-29 11:08:23', '2002-11-12 23:55:30', 51, 51, 51, 8, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (52, '2017-01-10 14:44:05', '1974-06-23 17:36:32', 52, 52, 52, 3, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (53, '2000-03-23 12:41:47', '2008-02-08 22:20:26', 53, 53, 53, 9, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (54, '2006-07-08 03:01:54', '1977-07-21 23:27:48', 54, 54, 54, 6, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (55, '2018-02-10 12:29:00', '1972-03-24 06:55:55', 55, 55, 55, 5, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (56, '1984-04-03 06:53:09', '1996-03-06 18:37:21', 56, 56, 56, 2, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (57, '2016-04-27 21:09:27', '1988-11-01 20:48:43', 57, 57, 57, 7, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (58, '2018-12-02 21:08:28', '1993-11-22 03:37:37', 58, 58, 58, 5, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (59, '2016-04-13 22:36:00', '2003-02-11 08:16:53', 59, 59, 59, 2, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (60, '1992-05-03 04:01:48', '1995-08-15 15:42:35', 60, 60, 60, 9, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (61, '2007-05-29 13:57:21', '2018-07-05 11:38:55', 61, 61, 61, 8, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (62, '1972-07-22 09:14:27', '1986-11-25 03:41:59', 62, 62, 62, 5, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (63, '1986-06-30 13:30:54', '1998-07-31 10:27:43', 63, 63, 63, 8, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (64, '1976-05-05 20:04:53', '1984-10-18 08:00:40', 64, 64, 64, 2, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (65, '2004-12-25 17:45:45', '2019-11-27 22:40:56', 65, 65, 65, 6, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (66, '1978-04-23 14:37:07', '2016-10-15 13:09:40', 66, 66, 66, 1, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (67, '2000-12-20 14:31:42', '1971-09-12 02:31:24', 67, 67, 67, 8, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (68, '1979-10-19 21:33:05', '1972-04-06 12:29:29', 68, 68, 68, 1, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (69, '1990-03-07 03:13:16', '1986-06-17 03:52:48', 69, 69, 69, 1, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (70, '1977-01-18 09:57:38', '1997-09-12 13:25:45', 70, 70, 70, 3, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (71, '1990-06-21 08:29:53', '1972-04-18 18:51:50', 71, 71, 71, 3, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (72, '2010-08-26 11:05:23', '2018-10-21 03:15:49', 72, 72, 72, 7, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (73, '2008-10-23 12:40:38', '2017-12-07 06:37:35', 73, 73, 73, 5, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (74, '1984-02-27 13:03:37', '2012-03-16 04:56:14', 74, 74, 74, 8, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (75, '1977-10-25 11:13:05', '2010-08-21 16:50:34', 75, 75, 75, 9, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (76, '1990-03-21 23:35:01', '1997-04-25 22:05:47', 76, 76, 76, 8, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (77, '1977-04-02 10:51:59', '1973-11-17 07:05:25', 77, 77, 77, 6, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (78, '2018-10-27 20:03:28', '1977-10-06 23:12:37', 78, 78, 78, 9, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (79, '2015-01-07 08:18:17', '1987-05-28 13:22:04', 79, 79, 79, 1, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (80, '1978-08-27 22:03:35', '2000-09-19 01:28:37', 80, 80, 80, 9, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (81, '1995-11-26 10:48:07', '2006-08-01 16:20:13', 81, 81, 81, 9, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (82, '2015-01-26 09:06:32', '1978-12-10 06:58:43', 82, 82, 82, 9, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (83, '2008-09-06 10:25:21', '1981-10-21 13:58:36', 83, 83, 83, 8, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (84, '2004-01-22 09:35:11', '2012-04-12 04:06:47', 84, 84, 84, 6, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (85, '2000-01-29 13:39:59', '2014-05-18 22:13:35', 85, 85, 85, 5, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (86, '2014-09-02 12:45:01', '1986-04-07 14:33:59', 86, 86, 86, 2, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (87, '1993-09-11 18:52:04', '1972-02-06 18:03:20', 87, 87, 87, 7, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (88, '2017-08-10 17:29:36', '2013-07-05 06:57:00', 88, 88, 88, 8, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (89, '2018-09-07 05:48:20', '1990-01-03 05:51:14', 89, 89, 89, 6, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (90, '1986-02-05 00:55:50', '1981-07-10 11:57:19', 90, 90, 90, 3, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (91, '1987-04-01 14:46:35', '2003-08-27 11:14:34', 91, 91, 91, 6, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (92, '1984-05-30 11:53:52', '1990-10-05 07:43:04', 92, 92, 92, 8, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (93, '2009-07-18 16:11:05', '1990-03-10 16:19:46', 93, 93, 93, 9, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (94, '1984-08-26 17:29:29', '2009-05-14 02:46:50', 94, 94, 94, 2, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (95, '2007-03-11 05:38:49', '2009-02-13 23:36:46', 95, 95, 95, 2, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (96, '2001-12-21 16:34:58', '2019-07-31 18:41:48', 96, 96, 96, 7, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (97, '2006-01-10 22:43:42', '1982-06-11 21:12:58', 97, 97, 97, 4, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (98, '1980-06-03 02:03:01', '1987-12-16 07:59:32', 98, 98, 98, 4, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (99, '2014-02-02 13:43:44', '1993-11-13 19:59:09', 99, 99, 99, 7, NULL);
INSERT INTO `historial_de_compra` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_factura`, `id_producto`, `cantidad`, `borrado`) VALUES (100, '2005-12-26 08:10:05', '1999-03-04 23:13:43', 100, 100, 100, 8, NULL);


#
# TABLE STRUCTURE FOR: packs
#

DROP TABLE IF EXISTS `packs`;

CREATE TABLE `packs` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_color` int(12) unsigned NOT NULL,
  `modelo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_edicion` int(12) unsigned NOT NULL,
  `id_producto` int(12) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_producto_pack` (`id_producto`),
  KEY `fk_edicion_pack` (`id_edicion`),
  KEY `fk_color_pack` (`id_color`),
  CONSTRAINT `fk_color_pack` FOREIGN KEY (`id_color`) REFERENCES `colores` (`id`),
  CONSTRAINT `fk_edicion_pack` FOREIGN KEY (`id_edicion`) REFERENCES `ediciones` (`id`),
  CONSTRAINT `fk_producto_pack` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (1, '1983-12-14 08:00:05', '2014-03-31 13:07:28', 1, 'Illum officiis tempora.', 1, 1);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (2, '1988-03-02 12:29:30', '2002-09-05 04:27:57', 2, 'Cum ea cumque iure temporibus.', 2, 2);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (3, '1987-09-07 10:36:28', '2001-02-23 23:28:00', 3, 'Eos id dolorum.', 3, 3);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (4, '2002-10-17 22:24:21', '2004-02-27 23:44:01', 4, 'Voluptatem quis sapiente.', 4, 4);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (5, '1986-09-17 11:23:38', '2011-10-12 11:26:00', 5, 'Veritatis ea nesciunt.', 5, 5);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (6, '1995-08-02 22:30:29', '2008-04-11 17:33:25', 6, 'Aut incidunt quis nobis.', 6, 6);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (7, '2007-02-21 21:31:10', '2009-07-21 07:08:22', 7, 'Nam culpa ex.', 7, 7);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (8, '2012-01-29 23:26:50', '1972-08-28 04:43:12', 8, 'Et rerum iure aut.', 8, 8);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (9, '1971-11-23 18:34:09', '2008-01-27 18:22:59', 9, 'Impedit repellendus veniam.', 9, 9);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (10, '1977-12-29 20:41:15', '2007-11-15 20:31:49', 10, 'Corrupti sit voluptas ratione.', 10, 10);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (11, '1982-05-03 08:23:39', '1975-06-02 13:18:26', 11, 'Nisi minima atque id.', 11, 11);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (12, '1972-03-31 05:02:22', '1989-09-06 19:26:12', 12, 'Itaque repudiandae.', 12, 12);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (13, '1994-05-28 12:13:13', '2004-03-24 22:39:34', 13, 'Quibusdam explicabo qui voluptatem.', 13, 13);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (14, '1990-07-19 18:20:16', '1970-08-25 21:22:28', 14, 'Non et error.', 14, 14);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (15, '1990-04-03 01:45:00', '2009-05-06 23:41:57', 15, 'Nam et magni consequatur.', 15, 15);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (16, '1975-03-13 09:50:24', '1983-03-27 13:41:27', 16, 'Dolor voluptas asperiores.', 16, 16);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (17, '1995-03-14 17:56:12', '2006-03-28 12:33:56', 17, 'Ex molestias.', 17, 17);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (18, '1980-03-14 06:37:43', '1997-05-21 05:25:49', 18, 'Itaque dolorum cupiditate.', 18, 18);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (19, '1970-03-01 13:55:32', '1988-09-20 12:30:57', 19, 'Laudantium soluta sit.', 19, 19);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (20, '2003-07-24 15:01:45', '1989-04-25 02:23:42', 20, 'Eos velit et.', 20, 20);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (21, '1996-04-27 16:49:17', '1991-03-17 07:20:58', 21, 'Consequatur cupiditate debitis qui.', 21, 21);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (22, '2008-10-10 02:13:17', '1982-07-01 02:29:05', 22, 'Reiciendis sit in.', 22, 22);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (23, '1984-02-07 10:58:05', '2011-03-15 04:12:35', 23, 'Velit expedita.', 23, 23);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (24, '2011-07-25 03:09:28', '1980-06-21 13:30:07', 24, 'Non consequatur debitis.', 24, 24);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (25, '2013-06-29 21:48:01', '1990-08-15 13:57:23', 25, 'Sunt doloremque soluta doloribus.', 25, 25);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (26, '1991-10-29 19:25:31', '1994-01-04 15:53:05', 1, 'Et dicta quo ab.', 26, 26);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (27, '1984-04-29 06:29:29', '1980-11-18 21:23:38', 2, 'Atque molestias quis dolore.', 27, 27);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (28, '1977-08-29 02:58:13', '1978-05-01 10:15:40', 3, 'Qui soluta suscipit quam.', 28, 28);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (29, '2010-03-03 05:24:50', '2019-06-17 12:47:02', 4, 'Reprehenderit aut atque voluptatem.', 29, 29);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (30, '2018-01-31 03:36:26', '1976-12-17 11:12:20', 5, 'Quas ut laudantium ut.', 30, 30);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (31, '1993-12-02 23:11:08', '2018-06-10 04:23:30', 6, 'Id dolor tenetur.', 31, 31);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (32, '2003-08-06 23:32:25', '2005-04-03 01:39:38', 7, 'Architecto cumque voluptatem temporibus.', 32, 32);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (33, '1980-05-15 13:07:17', '1991-11-05 21:34:45', 8, 'Ad et debitis consequatur.', 33, 33);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (34, '2012-05-03 01:07:04', '2018-11-04 15:48:46', 9, 'Eum consequatur perferendis aut facilis.', 34, 34);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (35, '2001-08-12 14:54:19', '1997-11-26 19:16:30', 10, 'Asperiores error culpa.', 35, 35);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (36, '2006-10-27 07:07:52', '1979-11-23 10:53:47', 11, 'In suscipit saepe in.', 36, 36);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (37, '2017-01-13 11:40:32', '2011-11-07 18:39:35', 12, 'Omnis voluptas nihil.', 37, 37);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (38, '1984-01-30 03:33:56', '1999-06-29 16:00:23', 13, 'Aut earum voluptas voluptates.', 38, 38);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (39, '2018-05-03 06:54:04', '1993-08-29 12:54:48', 14, 'Voluptates recusandae cumque.', 39, 39);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (40, '2000-03-08 08:28:03', '2020-03-15 21:17:14', 15, 'Aut veniam libero beatae.', 40, 40);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (41, '2010-09-05 18:13:59', '2012-10-14 06:12:33', 16, 'Dolore dignissimos incidunt eligendi.', 41, 41);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (42, '1972-12-28 19:23:43', '2011-04-11 08:24:44', 17, 'Quos nulla voluptatem eveniet.', 42, 42);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (43, '2006-02-06 07:24:59', '1970-08-27 04:40:05', 18, 'Alias quod voluptatum.', 43, 43);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (44, '2001-04-01 11:57:27', '1984-02-14 08:29:15', 19, 'Fugiat doloremque.', 44, 44);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (45, '1996-06-29 22:51:06', '2000-07-31 05:25:25', 20, 'Dolorem odio dolorum suscipit.', 45, 45);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (46, '1998-03-28 08:28:31', '2012-07-22 11:27:58', 21, 'Dolor ut.', 46, 46);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (47, '1989-12-11 14:45:08', '1998-03-29 09:16:07', 22, 'Ullam totam mollitia quasi.', 47, 47);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (48, '2013-10-04 14:48:32', '2017-09-08 08:48:34', 23, 'Quia id doloribus.', 48, 48);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (49, '1978-01-25 04:43:43', '2014-04-27 20:32:31', 24, 'Iure ut doloremque et.', 49, 49);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (50, '2013-07-24 14:21:29', '1991-04-05 12:38:22', 25, 'Nesciunt nesciunt incidunt harum.', 50, 50);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (51, '2005-03-29 01:17:47', '2006-08-06 11:18:24', 1, 'Ut unde voluptatem et.', 51, 51);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (52, '2009-04-25 01:11:06', '2007-04-10 14:49:00', 2, 'Qui quidem aut autem.', 52, 52);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (53, '1996-03-31 02:32:11', '2016-08-13 05:13:26', 3, 'Minus cumque corporis magni.', 53, 53);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (54, '2008-02-01 06:36:52', '1996-06-05 05:36:07', 4, 'Sit doloribus vero pariatur.', 54, 54);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (55, '2010-06-27 16:53:00', '2004-12-13 23:50:30', 5, 'Perspiciatis repellendus non ab.', 55, 55);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (56, '1995-03-29 04:40:06', '2007-05-17 13:56:56', 6, 'Iure aut voluptatibus non.', 56, 56);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (57, '2001-04-20 06:22:43', '2017-12-30 23:54:28', 7, 'Consequuntur magnam.', 57, 57);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (58, '2003-12-02 17:29:44', '1976-12-08 12:25:18', 8, 'Et consequuntur.', 58, 58);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (59, '1982-07-01 02:36:29', '1987-09-09 14:33:29', 9, 'Et cum et quibusdam.', 59, 59);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (60, '2007-10-22 09:49:09', '1996-07-06 14:51:01', 10, 'Voluptatibus excepturi consequatur.', 60, 60);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (61, '2007-04-12 02:10:13', '2000-07-16 11:12:05', 11, 'Omnis alias.', 61, 61);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (62, '1987-07-23 20:32:42', '2017-01-02 19:00:51', 12, 'Sit alias et doloribus.', 62, 62);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (63, '2015-09-08 05:49:56', '1978-10-04 19:01:54', 13, 'Repudiandae tempore omnis.', 63, 63);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (64, '2017-12-23 00:13:35', '1995-09-18 14:21:31', 14, 'Deserunt optio blanditiis.', 64, 64);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (65, '1973-08-19 09:52:55', '1980-02-19 22:36:23', 15, 'Autem illo esse molestias.', 65, 65);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (66, '1974-03-25 17:49:59', '2016-03-05 15:58:13', 16, 'Quos aliquam deserunt ut corporis.', 66, 66);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (67, '2003-04-29 23:37:01', '1990-05-05 11:08:55', 17, 'Quae sint ipsam.', 67, 67);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (68, '1993-03-02 14:14:23', '1998-11-29 07:54:32', 18, 'Ratione dolorem exercitationem.', 68, 68);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (69, '1995-10-19 14:27:57', '2006-08-27 15:45:09', 19, 'Saepe ab aut.', 69, 69);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (70, '2004-07-06 12:36:48', '1992-06-19 22:32:12', 20, 'Accusantium explicabo.', 70, 70);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (71, '1982-11-15 23:59:23', '1995-05-14 08:41:51', 21, 'Quibusdam in ad.', 71, 71);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (72, '1975-11-10 11:55:47', '1977-01-23 08:08:28', 22, 'Aliquid voluptatem in et.', 72, 72);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (73, '1990-08-26 23:56:25', '1993-07-02 07:37:59', 23, 'Voluptate ut ex qui.', 73, 73);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (74, '1976-09-08 10:39:26', '2007-10-25 16:24:52', 24, 'Sit minima laboriosam esse.', 74, 74);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (75, '2005-09-08 18:51:50', '2017-01-28 03:41:50', 25, 'Consequatur velit incidunt necessitatibus.', 75, 75);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (76, '1971-12-09 14:58:10', '2003-07-25 04:21:47', 1, 'Quia vitae et sed.', 76, 76);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (77, '1984-11-20 07:26:41', '2004-03-29 09:25:54', 2, 'Beatae eligendi et.', 77, 77);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (78, '2005-09-26 12:14:06', '2012-03-23 20:58:44', 3, 'Est enim culpa saepe.', 78, 78);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (79, '2018-08-12 15:11:03', '1982-10-24 07:47:17', 4, 'Voluptas aut voluptatem quia suscipit.', 79, 79);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (80, '2007-11-04 00:36:03', '2014-02-14 20:58:07', 5, 'Totam numquam sit soluta.', 80, 80);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (81, '1992-03-30 00:29:04', '1970-06-27 06:22:18', 6, 'Id inventore voluptatem omnis.', 81, 81);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (82, '2004-11-29 09:00:13', '2003-07-09 16:53:01', 7, 'Eum tempora laudantium.', 82, 82);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (83, '2007-09-29 04:29:23', '1999-03-19 22:36:43', 8, 'Soluta ipsum quibusdam.', 83, 83);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (84, '2017-07-22 11:16:18', '1991-10-16 05:06:35', 9, 'Porro omnis quidem.', 84, 84);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (85, '1985-04-05 11:21:20', '1973-02-25 06:54:36', 10, 'Voluptas qui vero.', 85, 85);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (86, '2006-04-05 03:23:44', '2008-01-11 17:49:01', 11, 'Rerum voluptate qui harum harum.', 86, 86);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (87, '2001-10-22 05:27:36', '1988-02-02 07:46:56', 12, 'Sit cum eius.', 87, 87);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (88, '1984-02-20 03:10:00', '2014-11-28 16:40:28', 13, 'Veritatis ut explicabo.', 88, 88);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (89, '2015-03-23 07:10:28', '1998-04-12 17:21:26', 14, 'Maiores omnis delectus.', 89, 89);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (90, '1971-09-18 09:09:01', '1995-01-25 03:53:37', 15, 'Corrupti aut soluta.', 90, 90);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (91, '1995-10-16 11:16:32', '2014-03-14 05:41:52', 16, 'Omnis maxime ullam.', 91, 91);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (92, '2001-07-20 14:06:02', '2013-04-29 19:08:49', 17, 'Eos odit rerum.', 92, 92);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (93, '1997-03-27 05:57:11', '2000-06-16 07:39:34', 18, 'Est debitis debitis eligendi saepe.', 93, 93);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (94, '1984-06-23 22:43:10', '1998-08-23 23:51:05', 19, 'Consectetur similique nostrum.', 94, 94);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (95, '1981-07-22 23:46:16', '1986-02-15 16:40:27', 20, 'Commodi aliquid.', 95, 95);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (96, '2016-03-09 10:43:14', '1986-07-25 13:23:39', 21, 'Necessitatibus quo in.', 96, 96);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (97, '1982-08-12 17:30:27', '2007-06-09 05:46:03', 22, 'Consequatur illo ut.', 97, 97);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (98, '2005-06-19 11:07:40', '1984-01-13 14:00:45', 23, 'Sed ea hic quod.', 98, 98);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (99, '1988-09-09 21:43:46', '1985-01-10 11:38:31', 24, 'Accusamus vel laboriosam.', 99, 99);
INSERT INTO `packs` (`id`, `created_at`, `updated_at`, `id_color`, `modelo`, `id_edicion`, `id_producto`) VALUES (100, '1997-01-14 05:05:14', '1986-07-29 00:13:08', 25, 'Rerum cumque id ipsum.', 100, 100);


#
# TABLE STRUCTURE FOR: paises
#

DROP TABLE IF EXISTS `paises`;

CREATE TABLE `paises` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pais` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (1, '2012-12-18 01:06:02', '2011-08-28 03:07:35', 'Cyprus');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (2, '1992-08-23 23:08:40', '1993-02-21 01:24:27', 'Palestinian Territory');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (3, '2011-02-19 07:37:43', '1996-12-23 23:19:33', 'Mauritius');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (4, '1982-05-10 08:55:11', '1995-08-21 04:14:14', 'Gibraltar');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (5, '2003-03-01 18:12:11', '1992-05-21 16:37:54', 'Cambodia');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (6, '1981-04-05 17:43:10', '2004-11-04 10:25:12', 'Jamaica');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (7, '2010-03-06 10:06:44', '2008-07-14 12:19:42', 'Bolivia');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (8, '1999-04-03 12:10:05', '1979-07-13 15:19:36', 'Paraguay');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (9, '1998-10-19 04:31:24', '1975-04-26 01:22:28', 'El Salvador');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (10, '1997-10-20 13:43:01', '1999-10-05 06:48:59', 'Germany');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (11, '2006-09-18 15:53:11', '1993-11-15 16:22:49', 'Sri Lanka');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (12, '2002-03-04 08:05:01', '2013-08-29 03:32:32', 'Palestinian Territory');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (13, '1973-01-05 13:37:12', '1996-04-23 16:34:55', 'Bolivia');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (14, '1976-11-05 12:26:45', '1996-05-13 20:22:25', 'Estonia');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (15, '2000-04-19 20:42:46', '2001-07-15 06:14:01', 'Lebanon');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (16, '1971-08-26 13:17:46', '2005-12-14 12:11:27', 'Northern Mariana Islands');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (17, '1978-11-26 19:37:53', '2012-06-01 02:02:38', 'Guadeloupe');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (18, '2001-10-31 19:50:17', '2018-08-05 19:56:33', 'Syrian Arab Republic');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (19, '2003-10-27 10:55:42', '1970-02-06 04:27:39', 'Syrian Arab Republic');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (20, '2009-06-24 00:10:23', '1974-02-01 01:41:20', 'Guyana');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (21, '2014-01-23 08:52:33', '1999-08-03 02:10:36', 'Moldova');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (22, '2001-01-16 19:12:49', '1987-04-15 00:10:15', 'Turkmenistan');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (23, '2004-04-07 06:33:16', '2000-04-02 07:02:36', 'French Polynesia');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (24, '1998-07-18 09:40:49', '2009-02-02 20:04:12', 'Albania');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (25, '1976-12-03 00:33:10', '2003-08-21 10:11:35', 'United States of America');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (26, '1978-03-05 13:22:10', '2017-09-26 07:00:35', 'Kenya');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (27, '1986-02-11 11:46:28', '2010-09-15 15:08:14', 'British Indian Ocean Territory (Chagos A');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (28, '2012-11-13 19:10:15', '1997-07-08 14:13:15', 'Luxembourg');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (29, '2018-06-04 11:31:16', '1999-08-29 21:16:06', 'Belgium');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (30, '2017-03-11 09:59:05', '2017-08-22 01:24:37', 'Nepal');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (31, '2008-03-07 11:00:29', '2003-11-03 15:29:43', 'Guinea-Bissau');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (32, '2016-11-04 02:02:31', '1976-06-21 06:10:40', 'Ghana');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (33, '1986-04-04 01:17:54', '2001-07-03 15:30:23', 'Palestinian Territory');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (34, '1980-12-19 11:24:56', '1999-07-02 22:25:41', 'France');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (35, '2011-09-19 01:23:21', '2011-08-20 18:54:44', 'Tajikistan');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (36, '2017-06-20 04:07:31', '1982-01-15 20:50:25', 'Philippines');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (37, '2001-02-21 22:48:08', '1997-03-16 02:01:58', 'Azerbaijan');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (38, '1995-10-01 07:24:49', '1993-04-05 18:14:42', 'Faroe Islands');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (39, '1978-11-05 07:05:52', '1994-03-27 01:48:30', 'Hong Kong');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (40, '2017-05-31 12:07:12', '2006-11-23 02:56:22', 'Hong Kong');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (41, '2005-03-04 14:32:26', '1979-09-16 12:14:03', 'Panama');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (42, '1992-11-10 15:56:03', '1999-05-09 19:55:18', 'Ecuador');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (43, '1995-06-19 11:55:42', '2013-11-27 09:14:20', 'Chad');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (44, '1988-11-11 16:47:17', '1985-05-01 08:17:25', 'Isle of Man');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (45, '1973-09-05 18:13:31', '1977-09-08 07:49:43', 'San Marino');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (46, '1994-02-17 13:08:44', '2000-08-07 22:18:27', 'Guatemala');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (47, '1974-08-05 14:34:29', '1982-05-16 07:36:38', 'Sweden');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (48, '1993-01-05 22:55:54', '2004-12-05 17:16:03', 'Mozambique');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (49, '1976-05-20 14:40:36', '1981-01-18 14:15:20', 'Tokelau');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (50, '2005-12-25 00:08:42', '1992-03-13 01:36:08', 'Bosnia and Herzegovina');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (51, '1981-11-14 12:29:51', '1978-04-21 03:00:09', 'Venezuela');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (52, '2018-08-19 10:29:53', '1972-03-06 01:59:28', 'Tanzania');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (53, '2003-05-28 21:33:22', '1971-02-16 15:45:47', 'Serbia');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (54, '1980-06-07 00:15:56', '1977-05-21 00:37:12', 'Poland');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (55, '2018-07-18 04:25:57', '1976-06-03 03:15:25', 'Uruguay');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (56, '1977-05-14 20:15:44', '1974-04-23 03:24:19', 'United States Minor Outlying Islands');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (57, '1977-09-23 09:37:58', '1996-06-21 09:17:26', 'Bahrain');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (58, '2008-08-19 02:59:49', '2004-12-29 11:35:22', 'Pitcairn Islands');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (59, '1991-09-17 11:59:08', '1989-07-20 19:27:48', 'Turkmenistan');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (60, '1998-03-16 15:10:14', '2004-12-21 08:07:14', 'Guinea-Bissau');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (61, '1983-11-24 19:04:47', '1973-05-23 08:07:35', 'British Virgin Islands');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (62, '1996-04-28 15:23:30', '2016-03-06 18:10:25', 'Burkina Faso');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (63, '2004-08-15 06:49:58', '1990-12-06 06:40:01', 'Sudan');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (64, '2013-08-01 10:01:27', '2019-09-08 03:47:23', 'Saint Helena');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (65, '2019-03-25 16:58:10', '1993-07-05 18:40:24', 'Cayman Islands');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (66, '2019-02-27 05:04:29', '1972-01-01 20:01:41', 'Cambodia');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (67, '2001-09-24 10:39:21', '1987-12-09 15:26:35', 'Nepal');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (68, '2020-02-03 09:56:21', '2010-12-05 05:39:33', 'Swaziland');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (69, '2015-01-25 03:05:58', '1991-01-27 00:26:12', 'Saudi Arabia');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (70, '2018-10-17 16:37:02', '2001-03-28 21:20:19', 'United States of America');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (71, '1996-11-25 06:23:34', '1970-06-09 05:29:06', 'Argentina');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (72, '1988-07-02 18:27:47', '2013-01-23 02:20:30', 'Saint Barthelemy');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (73, '2016-11-30 12:43:20', '1985-01-11 07:15:57', 'Holy See (Vatican City State)');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (74, '1980-06-27 02:40:25', '1995-10-12 23:32:50', 'Lithuania');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (75, '2015-11-22 11:17:51', '1985-03-25 15:03:14', 'Svalbard & Jan Mayen Islands');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (76, '1986-11-27 21:02:19', '1971-07-09 08:26:38', 'Japan');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (77, '1979-12-31 23:07:01', '1970-02-22 12:21:15', 'Angola');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (78, '1974-06-26 18:53:34', '1982-11-10 00:00:22', 'Macedonia');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (79, '1970-03-22 22:07:49', '1983-07-26 10:28:38', 'Tonga');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (80, '2008-12-07 21:40:37', '2000-10-03 22:09:45', 'Tonga');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (81, '1993-09-07 15:08:53', '2009-04-11 04:57:53', 'Samoa');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (82, '2015-07-12 11:10:32', '1970-07-30 23:16:48', 'Cuba');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (83, '2012-12-05 07:57:00', '1992-08-28 20:36:54', 'Iraq');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (84, '2008-08-19 09:29:12', '1996-05-16 15:10:41', 'Saint Kitts and Nevis');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (85, '2001-04-30 01:29:09', '2010-10-21 13:01:12', 'Togo');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (86, '1994-02-22 08:14:21', '1981-01-22 04:26:23', 'Morocco');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (87, '2006-02-20 14:35:04', '2012-09-05 12:02:26', 'Montserrat');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (88, '1996-03-11 04:16:41', '2008-12-02 16:02:08', 'Chad');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (89, '1984-06-18 15:19:04', '1998-03-06 20:33:31', 'Maldives');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (90, '1998-01-17 20:13:14', '1996-12-14 06:30:59', 'United Kingdom');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (91, '1971-04-13 11:59:54', '2018-09-07 06:40:22', 'Honduras');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (92, '1978-09-01 23:42:32', '1970-09-18 06:40:48', 'Spain');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (93, '2005-04-28 07:31:01', '1979-11-05 14:28:45', 'Svalbard & Jan Mayen Islands');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (94, '1975-10-21 16:00:03', '1999-08-01 10:17:23', 'Saint Vincent and the Grenadines');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (95, '1993-10-20 17:39:34', '1994-09-08 17:36:45', 'Martinique');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (96, '1989-08-29 22:25:57', '1976-08-22 00:39:33', 'South Georgia and the South Sandwich Isl');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (97, '1994-09-16 20:21:33', '1988-12-12 23:11:31', 'Nepal');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (98, '1974-09-19 05:33:59', '1987-06-10 01:03:35', 'Turkey');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (99, '1983-01-01 16:26:09', '2017-01-15 07:38:16', 'Bangladesh');
INSERT INTO `paises` (`id`, `created_at`, `updated_at`, `pais`) VALUES (100, '1972-12-09 20:10:40', '1997-04-19 10:06:58', 'Nauru');


#
# TABLE STRUCTURE FOR: permisos
#

DROP TABLE IF EXISTS `permisos`;

CREATE TABLE `permisos` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permiso` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `permisos` (`id`, `created_at`, `updated_at`, `permiso`) VALUES (1, '1993-07-13 05:10:22', '1991-03-22 02:53:49', 'tczdg');
INSERT INTO `permisos` (`id`, `created_at`, `updated_at`, `permiso`) VALUES (2, '1991-07-31 09:08:14', '1975-08-17 23:53:19', 'huzll');
INSERT INTO `permisos` (`id`, `created_at`, `updated_at`, `permiso`) VALUES (3, '2016-03-14 09:19:28', '2011-07-12 18:45:31', 'rvsfl');


#
# TABLE STRUCTURE FOR: producto_en_carrito
#

DROP TABLE IF EXISTS `producto_en_carrito`;

CREATE TABLE `producto_en_carrito` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_usuario` int(12) unsigned NOT NULL,
  `id_producto` int(12) unsigned NOT NULL,
  `cantidad` int(12) unsigned NOT NULL,
  `borrado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuario_carrito` (`id_usuario`),
  KEY `fk_producto_carrito` (`id_producto`),
  CONSTRAINT `fk_producto_carrito` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`),
  CONSTRAINT `fk_usuario_carrito` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (1, '2010-11-14 21:14:14', '2005-04-06 00:20:45', 1, 1, 6, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (2, '1971-01-04 07:52:49', '1976-01-01 15:42:56', 2, 2, 3, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (3, '2005-12-20 16:39:44', '1982-02-07 03:28:23', 3, 3, 4, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (4, '1990-05-10 20:04:29', '1972-01-14 08:51:10', 4, 4, 8, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (5, '1991-06-24 08:03:48', '1983-07-23 05:02:48', 5, 5, 1, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (6, '1993-10-25 23:55:40', '1995-03-06 04:44:15', 6, 6, 9, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (7, '2000-08-14 08:23:24', '1998-01-14 10:37:33', 7, 7, 3, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (8, '2005-07-24 23:00:19', '2002-06-10 03:51:22', 8, 8, 7, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (9, '2015-07-23 23:02:48', '1996-11-04 14:38:24', 9, 9, 7, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (10, '1999-11-27 20:43:53', '1979-12-06 02:58:08', 10, 10, 3, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (11, '1989-02-03 07:26:54', '2011-01-07 22:11:37', 11, 11, 4, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (12, '2004-04-29 07:22:23', '2001-02-07 08:47:08', 12, 12, 8, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (13, '1975-09-10 21:54:12', '1998-03-23 04:59:26', 13, 13, 3, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (14, '1970-02-08 13:10:45', '2019-05-08 15:32:01', 14, 14, 5, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (15, '1970-10-09 18:22:09', '2011-05-21 04:27:11', 15, 15, 6, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (16, '1995-03-28 18:39:27', '1990-01-25 01:20:43', 16, 16, 7, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (17, '1998-06-08 00:10:05', '2008-10-11 17:45:21', 17, 17, 5, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (18, '2008-11-18 23:11:01', '2015-11-18 06:12:57', 18, 18, 8, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (19, '1978-08-21 07:44:40', '1995-11-22 06:05:07', 19, 19, 1, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (20, '2020-02-21 00:29:06', '1971-07-01 04:53:04', 20, 20, 3, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (21, '1982-05-22 02:59:14', '1984-09-18 09:55:43', 21, 21, 3, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (22, '1986-02-01 04:56:08', '1973-10-30 21:29:01', 22, 22, 9, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (23, '1985-02-28 11:55:02', '1979-02-22 21:46:32', 23, 23, 8, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (24, '2011-07-07 02:27:54', '1988-03-08 11:40:46', 24, 24, 9, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (25, '2008-06-10 19:59:34', '1979-10-23 01:47:42', 25, 25, 9, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (26, '2013-11-09 11:31:02', '2012-06-23 10:07:38', 26, 26, 8, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (27, '1987-02-08 18:57:48', '2004-09-24 11:06:00', 27, 27, 6, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (28, '1987-04-06 13:07:16', '1983-06-11 10:07:01', 28, 28, 6, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (29, '1990-10-15 12:55:38', '1996-11-23 15:37:02', 29, 29, 8, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (30, '2018-08-22 13:57:28', '1992-04-18 01:31:45', 30, 30, 6, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (31, '2000-10-27 20:52:52', '1974-08-05 19:46:37', 31, 31, 9, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (32, '2012-01-11 18:52:45', '2009-11-18 15:16:16', 32, 32, 2, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (33, '1996-11-23 12:01:26', '1999-05-27 19:21:56', 33, 33, 5, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (34, '2003-03-01 19:01:31', '1983-03-28 17:51:10', 34, 34, 6, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (35, '1984-02-27 21:23:31', '1997-03-27 21:18:51', 35, 35, 8, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (36, '1982-07-31 00:08:30', '1975-11-05 20:13:26', 36, 36, 4, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (37, '2016-01-12 02:34:38', '1980-03-20 22:20:10', 37, 37, 8, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (38, '1976-09-29 22:50:25', '2003-12-07 14:24:04', 38, 38, 5, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (39, '2009-10-30 20:30:31', '1983-08-20 14:04:30', 39, 39, 9, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (40, '1978-10-15 04:12:43', '1981-03-21 10:16:18', 40, 40, 3, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (41, '1989-01-13 05:31:23', '1985-02-07 10:18:10', 41, 41, 1, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (42, '2016-07-25 03:11:49', '1990-12-10 11:56:03', 42, 42, 2, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (43, '1991-06-29 00:33:02', '1983-06-13 18:12:19', 43, 43, 1, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (44, '2006-04-17 10:59:13', '1989-05-27 03:28:41', 44, 44, 1, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (45, '1992-03-31 13:25:03', '2014-06-10 11:18:18', 45, 45, 4, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (46, '1983-12-27 17:32:25', '1974-03-07 07:49:15', 46, 46, 8, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (47, '1990-09-22 23:37:05', '1998-07-30 14:53:37', 47, 47, 2, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (48, '1983-06-01 05:45:52', '1986-10-20 20:23:30', 48, 48, 6, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (49, '1978-08-29 23:58:12', '1995-01-08 16:29:23', 49, 49, 2, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (50, '2013-05-26 15:47:07', '2016-05-27 01:19:50', 50, 50, 5, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (51, '2002-10-12 19:59:55', '2008-01-15 16:54:02', 51, 51, 8, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (52, '1978-10-13 22:26:44', '2019-08-05 23:20:26', 52, 52, 7, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (53, '1975-05-29 04:44:15', '1993-08-07 10:44:34', 53, 53, 9, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (54, '1975-06-22 10:44:32', '2003-09-29 00:26:44', 54, 54, 7, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (55, '1973-05-15 20:06:02', '1985-04-29 11:00:07', 55, 55, 4, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (56, '1985-09-17 19:09:08', '1989-11-24 17:29:28', 56, 56, 8, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (57, '2015-09-01 13:10:02', '1971-10-28 02:44:11', 57, 57, 3, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (58, '1999-12-23 15:06:53', '2008-09-05 05:04:21', 58, 58, 2, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (59, '2011-09-27 02:14:23', '1978-07-23 17:02:31', 59, 59, 9, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (60, '1991-06-07 23:57:19', '1998-08-24 02:52:52', 60, 60, 4, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (61, '2004-02-18 18:34:12', '2019-10-19 16:19:42', 61, 61, 2, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (62, '1987-02-10 13:46:31', '2003-01-15 19:07:46', 62, 62, 7, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (63, '2000-09-26 01:59:40', '1972-06-12 19:56:36', 63, 63, 2, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (64, '2011-01-31 21:48:38', '2012-05-29 12:38:35', 64, 64, 5, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (65, '1998-12-15 07:07:09', '2002-01-17 05:51:21', 65, 65, 1, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (66, '2007-12-11 19:38:49', '2014-03-31 22:06:41', 66, 66, 4, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (67, '1984-08-27 06:34:41', '1995-08-25 17:34:06', 67, 67, 2, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (68, '1993-11-05 09:52:36', '1992-07-24 08:20:19', 68, 68, 7, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (69, '1987-10-25 19:15:51', '2012-10-03 15:43:05', 69, 69, 1, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (70, '1977-11-07 13:57:07', '2012-03-06 12:29:52', 70, 70, 3, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (71, '2006-01-14 10:25:30', '1988-08-12 12:02:31', 71, 71, 4, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (72, '1990-04-03 21:26:09', '1999-07-21 03:30:25', 72, 72, 9, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (73, '2003-07-26 00:40:27', '1988-01-19 08:49:31', 73, 73, 5, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (74, '2019-12-15 03:20:25', '1998-10-01 21:10:54', 74, 74, 7, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (75, '2015-08-21 01:21:34', '1973-09-19 19:34:57', 75, 75, 1, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (76, '1977-10-18 03:17:17', '2012-09-26 15:48:14', 76, 76, 7, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (77, '2002-01-11 07:33:28', '1986-05-05 20:11:44', 77, 77, 2, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (78, '1991-03-31 02:27:23', '1976-03-29 21:32:41', 78, 78, 7, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (79, '1988-07-19 17:45:06', '1974-01-19 00:52:02', 79, 79, 1, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (80, '1983-10-31 05:28:03', '1978-11-22 08:15:45', 80, 80, 3, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (81, '2000-02-27 06:46:40', '2000-10-20 07:26:34', 81, 81, 6, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (82, '1994-08-16 19:42:41', '1989-11-28 04:55:41', 82, 82, 2, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (83, '1978-07-23 19:16:31', '1974-01-28 04:49:38', 83, 83, 6, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (84, '1975-05-26 00:42:44', '1988-10-14 23:18:55', 84, 84, 8, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (85, '2010-03-18 04:41:09', '2017-11-30 01:58:28', 85, 85, 4, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (86, '1977-08-19 04:54:04', '2001-07-30 15:05:16', 86, 86, 6, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (87, '2002-04-24 18:28:57', '2007-03-24 12:01:13', 87, 87, 4, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (88, '1993-10-26 05:00:55', '1982-06-18 18:47:03', 88, 88, 6, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (89, '2005-08-06 04:31:32', '1996-01-22 14:21:33', 89, 89, 8, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (90, '1993-11-09 11:46:42', '2016-01-11 07:25:35', 90, 90, 3, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (91, '1993-05-31 16:36:33', '2001-08-04 01:00:49', 91, 91, 2, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (92, '1980-12-18 02:18:33', '1985-08-16 18:08:23', 92, 92, 4, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (93, '2012-02-07 06:12:59', '2010-05-12 03:22:40', 93, 93, 9, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (94, '2014-01-31 09:39:40', '1972-06-08 17:16:28', 94, 94, 6, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (95, '1991-09-14 19:29:31', '1974-09-11 14:08:12', 95, 95, 7, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (96, '2001-03-07 23:21:37', '2001-10-05 16:03:11', 96, 96, 7, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (97, '2010-03-12 14:21:02', '1997-12-07 01:28:28', 97, 97, 5, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (98, '1991-08-04 06:45:09', '2014-08-02 13:44:50', 98, 98, 6, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (99, '1989-12-10 04:08:42', '2003-11-10 01:46:21', 99, 99, 6, NULL);
INSERT INTO `producto_en_carrito` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_producto`, `cantidad`, `borrado`) VALUES (100, '1984-12-29 15:32:21', '2004-05-10 22:04:20', 100, 100, 2, NULL);


#
# TABLE STRUCTURE FOR: productos
#

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_categoria` int(12) unsigned NOT NULL,
  `stock` int(12) unsigned NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borrado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_categoria_producto` (`id_categoria`),
  CONSTRAINT `fk_categoria_producto` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (1, '2014-11-12 22:10:54', '2007-02-28 08:52:36', 1, 418, '410.75', 'Reynolds', 'Et id modi non optio recusandae. Qui doloribus culpa odio sequi. Et velit aliquam fugiat non. Perspiciatis rem necessitatibus libero architecto corrupti. Vel et esse ut sunt dolores eaque.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (2, '2012-10-25 08:31:13', '1981-06-18 19:39:25', 2, 403, '581.91', 'Morissette', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (3, '1977-02-22 11:53:22', '1991-07-17 12:15:08', 3, 567, '218.50', 'Nolan', 'Vel dolorum dolorum et ratione. Eligendi sit voluptas quia ut veritatis vel sapiente. Rerum ut molestiae tempore quasi blanditiis ea.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (4, '2012-11-30 05:20:34', '1977-06-06 02:04:00', 4, 580, '675.58', 'Rice', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (5, '2018-10-04 02:29:15', '2017-03-18 22:31:31', 5, 110, '890.72', 'Walter', 'Recusandae voluptates culpa porro quo. Et ut dignissimos quidem. Deserunt blanditiis vel sed sequi.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (6, '2019-12-20 20:27:15', '1973-02-06 21:51:39', 1, 183, '36.93', 'Koss', 'Eos rerum porro maxime sequi dolorem. Enim doloribus ut et reiciendis odio necessitatibus iure. Voluptas laborum odit repudiandae.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (7, '2011-02-24 06:17:03', '2019-10-24 13:53:02', 2, 795, '959.81', 'Will', 'Velit minima et deserunt cum. Praesentium similique temporibus deserunt ut vel eius. Provident sit nemo placeat.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (8, '2012-02-03 03:29:57', '2001-05-27 02:59:18', 3, 265, '505.24', 'Grady', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (9, '1980-06-24 05:14:13', '1976-03-06 23:08:35', 4, 630, '664.71', 'Cummings', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (10, '1971-08-07 15:58:29', '2003-11-20 01:19:03', 5, 753, '448.99', 'Baumbach', 'Laborum odit accusamus hic ut explicabo nostrum quidem. Culpa ad illo magni voluptatem. Dolores omnis et ducimus officiis vitae ea expedita.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (11, '1987-01-28 01:11:12', '2002-01-03 10:19:20', 1, 543, '340.81', 'Mayer', 'Ut et ipsa temporibus. Et eius quisquam molestiae labore vero at. Maiores facilis doloribus adipisci quam.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (12, '1996-07-30 05:15:24', '1983-07-27 22:37:22', 2, 115, '284.51', 'Williamson', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (13, '2008-06-20 14:16:50', '1971-01-21 01:22:55', 3, 332, '292.66', 'Stehr', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (14, '1997-03-29 00:33:09', '1978-06-13 14:19:02', 4, 151, '370.46', 'Bogisich', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (15, '2009-09-19 13:30:05', '1986-11-13 16:40:16', 5, 87, '383.14', 'Prohaska', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (16, '1985-05-10 22:11:46', '2008-09-03 21:59:44', 1, 596, '753.77', 'Hyatt', 'Iure magnam et cupiditate quia quasi. Cupiditate praesentium necessitatibus quia totam cumque. Excepturi est impedit quia impedit maiores.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (17, '1979-03-16 18:02:28', '1986-04-03 16:07:26', 2, 349, '634.10', 'Mohr', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (18, '2013-05-15 06:09:50', '1994-08-10 23:15:55', 3, 632, '733.02', 'Roberts', 'Rerum sit qui eius et sit. Est consequatur sunt aperiam eum omnis. Eos libero atque sit officia id quam. Nostrum ut eius non qui et. Ullam et dolores recusandae aut iusto expedita.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (19, '1974-10-25 11:08:51', '1985-10-03 22:23:41', 4, 795, '905.39', 'Rau', 'Sapiente libero voluptatibus eaque non. Ut doloribus ut ea suscipit dolores occaecati eligendi. Nulla ab doloremque ut est culpa.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (20, '2015-06-30 13:11:02', '2000-05-05 04:57:50', 5, 528, '730.51', 'Sauer', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (21, '2003-11-22 05:19:47', '1970-12-13 03:33:57', 1, 38, '767.19', 'Hodkiewicz', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (22, '2008-10-11 10:53:02', '1972-08-25 00:16:38', 2, 657, '859.42', 'Kessler', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (23, '1972-11-09 19:06:49', '2000-10-03 11:32:48', 3, 892, '641.70', 'Pagac', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (24, '1999-12-10 18:10:02', '1995-12-21 19:21:48', 4, 921, '286.20', 'Kris', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (25, '1999-03-12 19:29:56', '2010-07-15 20:17:15', 5, 319, '626.75', 'Klein', 'Autem sint impedit est rerum. Sit sunt facilis consequatur aperiam numquam adipisci. Omnis rem accusantium necessitatibus velit et ut facere dolorem. Rem quam est architecto.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (26, '1971-01-17 17:33:16', '2003-09-09 15:55:49', 1, 759, '350.41', 'Walter', 'Est voluptatem ab cumque aut officia ea nam. Beatae sint eos sed perferendis harum numquam. Alias nostrum quos assumenda similique.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (27, '2005-10-03 09:47:10', '1998-04-20 12:17:43', 2, 954, '749.89', 'Gleichner', 'Et illo facilis quis nihil dignissimos ratione vel. Laborum alias nihil dolor ullam. Hic et inventore illum ea eaque debitis.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (28, '1990-11-04 06:23:33', '1995-03-03 04:08:28', 3, 990, '861.94', 'Langosh', 'Occaecati molestiae ipsa molestias iusto autem. Est libero accusamus eligendi. Beatae perferendis dolores nisi aut aut. Optio est non minus unde est.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (29, '1973-09-03 07:33:55', '2017-02-25 16:39:18', 4, 204, '60.47', 'D\Amore', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (30, '2003-04-19 22:16:22', '1977-07-06 09:19:52', 5, 634, '975.66', 'Wilderman', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (31, '1974-12-26 18:53:01', '1976-12-13 17:45:05', 1, 118, '687.57', 'Kertzmann', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (32, '1996-01-18 11:38:10', '1998-03-22 13:50:42', 2, 172, '871.52', 'Gutmann', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (33, '1970-11-07 12:26:08', '1988-09-15 16:41:04', 3, 174, '653.63', 'Langworth', 'Ab explicabo et at doloremque est. Recusandae optio eos qui corrupti id voluptatem et quia. Praesentium nemo explicabo tenetur ab iusto aliquam quia.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (34, '1978-07-21 05:35:19', '2012-11-22 22:11:42', 4, 565, '25.92', 'Toy', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (35, '1984-12-26 00:58:04', '1998-04-26 14:40:49', 5, 692, '54.44', 'Feil', 'Facilis modi repudiandae assumenda quis ad. Qui perspiciatis sed ducimus perspiciatis nobis asperiores officia. Amet ut officiis ut nulla similique expedita commodi molestiae.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (36, '1975-12-12 04:42:52', '1993-07-05 07:55:44', 1, 436, '904.49', 'Romaguera', 'Omnis aut eos neque voluptates earum. In tenetur eligendi ad modi cum officia. Asperiores atque quam esse quidem odit. Repudiandae rerum sed dolor ducimus illo et eos.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (37, '2020-03-04 16:11:10', '2012-08-07 08:26:24', 2, 522, '93.68', 'Wuckert', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (38, '2002-06-14 05:05:05', '1986-07-27 10:13:33', 3, 343, '86.85', 'Pollich', 'Quibusdam perferendis aut ut at. Ut ipsam asperiores ut voluptates.\nDolorem mollitia nihil assumenda enim ducimus. Odio eaque exercitationem qui cupiditate.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (39, '2011-12-23 23:07:55', '1982-08-26 04:48:52', 4, 718, '607.10', 'Stroman', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (40, '1991-04-12 11:05:01', '1975-04-29 11:14:39', 5, 69, '547.51', 'Abernathy', 'Qui voluptatum odit quia labore. Quis consequatur quo asperiores eos temporibus quia nihil. Modi voluptates in eum et et. Ea maiores ut in ut ea iste.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (41, '2018-03-25 10:28:49', '1988-09-18 15:57:54', 1, 582, '315.76', 'Gerlach', 'Quis porro nemo aut aliquam. Facilis maxime id corrupti adipisci. Quia assumenda ipsa dicta fugit tempora eius. Voluptates voluptates fuga non consequatur architecto est. Officiis sunt aut odio.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (42, '1986-09-06 07:33:30', '1999-12-22 12:31:16', 2, 557, '264.25', 'Rippin', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (43, '1991-11-21 08:48:55', '1989-05-17 15:47:04', 3, 488, '357.90', 'Schoen', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (44, '1991-12-09 18:36:26', '1980-12-13 20:21:35', 4, 14, '995.64', 'Schamberger', 'Sed et quia laborum facere molestiae voluptas expedita. Expedita deleniti ipsam provident quo voluptatem. Hic omnis odio voluptas voluptatem odit. Quo quaerat qui quae est.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (45, '1983-03-16 02:50:13', '2002-06-06 06:26:46', 5, 487, '673.02', 'Dickinson', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (46, '1975-01-03 05:55:47', '2012-11-30 04:06:14', 1, 397, '465.20', 'Cassin', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (47, '1990-12-29 06:03:38', '1977-05-13 15:12:49', 2, 772, '356.21', 'Feest', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (48, '1985-12-11 17:30:27', '2003-03-24 17:40:10', 3, 479, '682.45', 'Bednar', 'Rerum optio iusto sunt sit. At culpa iusto fugiat magnam.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (49, '2013-05-14 18:43:11', '1985-01-14 05:08:30', 4, 90, '606.01', 'Yundt', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (50, '1986-09-28 17:56:42', '2017-05-19 13:18:48', 5, 293, '232.72', 'Jast', 'Sed sit voluptates non esse corrupti itaque eum. Aspernatur expedita delectus voluptatum enim ipsum molestiae qui molestias. Alias voluptas tempore qui ut.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (51, '2000-06-23 19:20:23', '1993-01-28 08:51:07', 1, 934, '933.93', 'Jast', 'Ratione animi laborum vero ipsum qui. Quae qui autem aliquam rerum corporis similique dolorum. Ex aliquam quos nulla.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (52, '1989-08-22 07:55:13', '1983-08-12 05:35:41', 2, 284, '462.72', 'Marvin', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (53, '2010-08-27 08:28:29', '2000-05-16 08:41:14', 3, 4, '744.44', 'Raynor', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (54, '2009-01-11 12:23:55', '2001-01-13 01:10:13', 4, 205, '354.32', 'Wiegand', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (55, '1985-07-11 04:42:00', '2015-10-20 04:24:48', 5, 601, '516.01', 'Roberts', 'Quo nemo voluptas quas reiciendis recusandae. Velit incidunt unde non doloremque. Totam deserunt alias explicabo est.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (56, '1972-07-13 02:59:41', '1985-12-21 16:03:12', 1, 261, '870.39', 'Bashirian', 'Recusandae officia quisquam aliquam praesentium recusandae. Voluptate maxime enim beatae voluptate. Et eius dolorem ullam enim dolorem consectetur.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (57, '1982-05-11 12:13:55', '1979-09-28 08:57:43', 2, 456, '244.52', 'Kovacek', 'Veniam quis sit incidunt inventore ut sapiente quas. Sint sit mollitia nobis architecto. Tempora eum velit quae consequatur ut necessitatibus sed. Alias quisquam similique architecto ea.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (58, '2013-01-13 01:53:02', '1994-11-29 01:54:23', 3, 463, '15.54', 'Hilpert', 'Delectus consequuntur voluptas ipsum illo. Qui qui adipisci quia dignissimos. Consequatur cumque est et temporibus.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (59, '1992-06-05 11:02:29', '1982-05-30 11:05:33', 4, 702, '231.42', 'Murray', 'Ipsa minus deserunt soluta minus nisi et. Corporis omnis et qui at. Fuga voluptatem voluptatem tenetur eaque veniam voluptatem mollitia.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (60, '1997-07-22 12:41:05', '1982-06-28 21:34:55', 5, 841, '645.96', 'Kerluke', 'Qui placeat consequatur perferendis repudiandae quasi. Voluptates vel temporibus magni dolores eum ea.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (61, '1970-09-23 16:06:49', '1982-02-06 00:35:30', 1, 619, '740.85', 'Hirthe', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (62, '2011-07-11 02:53:15', '1974-07-13 06:51:48', 2, 695, '49.11', 'Gaylord', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (63, '1994-08-11 17:06:52', '1977-05-27 23:40:57', 3, 925, '734.93', 'Blanda', 'Sapiente quod ut provident id nemo deserunt. Quibusdam ullam voluptas culpa. Minima enim possimus voluptates sunt accusantium.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (64, '1984-10-12 15:49:21', '1991-03-22 07:45:47', 4, 196, '860.01', 'Kuphal', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (65, '1994-08-18 16:18:38', '1986-12-27 04:36:23', 5, 753, '276.84', 'Greenholt', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (66, '2020-04-27 21:18:34', '1986-07-18 04:58:10', 1, 802, '971.05', 'Lemke', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (67, '1995-08-22 15:05:00', '2013-01-21 05:20:31', 2, 676, '409.89', 'Klocko', 'Eveniet delectus odit ab. Animi illo consequatur est. Quis quia incidunt facilis et delectus architecto.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (68, '1996-02-01 08:17:12', '1970-07-22 01:34:02', 3, 220, '795.55', 'Homenick', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (69, '2005-08-10 17:26:23', '1986-09-16 16:09:27', 4, 117, '777.85', 'Nikolaus', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (70, '2019-04-06 08:28:46', '1999-10-26 03:54:16', 5, 622, '488.99', 'Jakubowski', 'Ut aut inventore commodi est. Omnis veritatis quisquam non sed quos inventore velit. Et et sit earum. Ut quia tempore quis.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (71, '1987-12-05 23:18:48', '2002-01-26 02:07:51', 1, 801, '720.64', 'Simonis', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (72, '2014-03-18 07:48:48', '1991-05-03 09:36:50', 2, 860, '763.29', 'West', 'Repudiandae beatae nobis eum consectetur officiis. Ex aut rerum consequuntur voluptatem est.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (73, '2001-12-04 17:44:10', '1981-10-06 19:12:26', 3, 546, '103.58', 'Murazik', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (74, '2004-02-08 19:04:09', '1982-03-08 15:36:35', 4, 662, '263.15', 'Pagac', 'Possimus sunt inventore cupiditate quia veniam id. Totam magni veritatis tenetur inventore quo magnam. Nam asperiores deleniti nihil est. Quidem rem quod amet unde voluptas exercitationem voluptas.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (75, '1986-09-23 15:45:43', '2018-03-18 23:10:33', 5, 13, '526.25', 'Kulas', 'Autem deleniti maiores qui et. Esse doloribus provident iste totam et velit rerum. Quo hic est totam et non et molestiae sequi. Et laboriosam voluptatem vel ad sint.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (76, '2017-12-28 12:23:17', '1988-09-18 08:06:54', 1, 971, '128.57', 'Gusikowski', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (77, '2019-02-14 23:17:14', '1981-04-26 20:26:17', 2, 56, '832.28', 'Wisoky', 'Minima nesciunt culpa odio omnis quas aut. Eos quia deleniti corrupti inventore fugit in possimus non. Non est ea distinctio repellat autem autem rerum.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (78, '1970-01-06 06:51:18', '2000-02-10 11:01:12', 3, 248, '197.26', 'Bartoletti', 'Nesciunt ratione quidem ea eum veniam. Earum aliquid ex aut nisi tempore mollitia quo laborum. Distinctio sed beatae magnam dolor incidunt facere et.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (79, '2001-06-02 10:55:11', '2018-11-11 11:24:58', 4, 120, '683.14', 'Daniel', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (80, '2010-04-28 09:32:48', '2002-12-25 15:29:23', 5, 768, '39.10', 'Gerlach', 'Ea minima aut aperiam fugit et rerum. Eligendi iure asperiores quis aperiam nostrum alias facilis. Numquam et sunt ut quam aspernatur facilis deserunt. Sunt ad molestiae velit.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (81, '1994-05-05 05:17:05', '1973-04-03 23:53:39', 1, 312, '785.50', 'Greenholt', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (82, '1993-02-22 21:55:02', '1988-06-01 21:06:27', 2, 58, '416.28', 'Paucek', 'Omnis hic iure voluptatum cumque corporis consequatur. Similique illum recusandae expedita tenetur id est.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (83, '2019-01-20 22:36:31', '1974-01-12 05:45:38', 3, 227, '611.98', 'Dach', 'Labore sunt eveniet natus eos consequatur et. Distinctio deleniti iusto corrupti quia.\nEaque et est aperiam. Sit nisi veritatis ut dicta. Quia fugit enim sit.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (84, '1995-09-17 01:18:29', '2020-04-28 13:06:25', 4, 343, '538.27', 'Price', 'Magnam delectus nostrum quidem autem. Ut ut occaecati quis dolores qui.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (85, '2013-04-01 10:26:20', '1977-11-13 13:07:16', 5, 56, '429.56', 'Bogan', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (86, '2010-12-30 00:34:57', '1982-06-03 02:17:06', 1, 865, '823.86', 'Sawayn', 'Mollitia molestiae est nulla itaque quaerat. Ut quia perferendis ipsa officiis deleniti in. Modi rerum id impedit velit soluta.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (87, '1998-04-23 03:43:27', '2008-03-12 08:22:33', 2, 704, '958.40', 'Gutkowski', 'Repellat itaque distinctio sit sit ut. Culpa asperiores dolorem dolor quisquam dignissimos exercitationem. Saepe amet earum autem rerum nobis. Repellat eius est sequi atque.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (88, '1993-05-20 03:02:26', '2011-03-28 14:37:26', 3, 687, '885.62', 'Olson', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (89, '2005-11-05 12:34:02', '1992-10-09 00:10:49', 4, 37, '845.05', 'Mills', 'Ratione nisi esse voluptatem nemo animi. Rerum ratione asperiores et molestias. Reiciendis ea repellat reiciendis maxime. Et sed sint modi est consequuntur.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (90, '2005-08-23 17:28:55', '1992-07-07 08:31:59', 5, 391, '206.72', 'Lindgren', 'Et totam atque et nesciunt et aut. Qui minus quam sunt optio asperiores qui voluptas. Quia velit a ea aut deleniti. Nesciunt itaque omnis consequuntur nihil consequatur.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (91, '1996-06-23 02:53:49', '1978-09-27 23:26:42', 1, 161, '485.36', 'Sauer', 'Vitae aut dolor id consectetur dolores. Qui nostrum dolores in fuga nihil cupiditate unde. Optio expedita id quia dignissimos quasi quisquam. Libero occaecati voluptates et incidunt ex labore.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (92, '1990-06-03 14:21:25', '1996-07-04 01:27:33', 2, 453, '608.68', 'Wyman', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (93, '2002-01-03 12:48:34', '2016-12-26 07:36:32', 3, 483, '189.53', 'Toy', 'Quidem rem modi minima ea. Rerum quasi harum cum exercitationem velit. Optio distinctio possimus neque molestias excepturi enim deserunt. Nisi perferendis placeat sit aliquam eos quidem.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (94, '1975-12-08 09:41:00', '1986-11-19 05:57:42', 4, 396, '217.45', 'Stoltenberg', 'Voluptatem quia dolor ea et. Illo aut praesentium vero quod. Ut magni rem nobis earum reiciendis modi. Maiores minus et minima ad quaerat.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (95, '1971-10-19 09:30:56', '2003-02-07 11:59:33', 5, 798, '818.45', 'Waelchi', 'Consequatur debitis cupiditate sequi ea nostrum voluptas. Cumque ipsam quam quia numquam consequuntur. Doloribus ab sequi minus eius.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (96, '1990-06-07 19:01:11', '2004-02-24 02:20:06', 1, 396, '555.94', 'Klein', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (97, '2016-06-20 17:42:48', '1998-11-06 16:22:56', 2, 251, '992.16', 'Keeling', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (98, '1999-02-03 21:10:18', '1980-10-25 05:08:47', 3, 342, '865.38', 'Rath', 'Omnis eum tenetur repellendus est omnis iure. Animi delectus vel qui veritatis. Soluta non occaecati maiores animi.', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (99, '1975-05-21 11:01:09', '1983-08-03 04:30:12', 4, 825, '828.41', 'Anderson', '', NULL);
INSERT INTO `productos` (`id`, `created_at`, `updated_at`, `id_categoria`, `stock`, `precio`, `nombre`, `descripcion`, `borrado`) VALUES (100, '1970-03-02 02:51:43', '1971-11-15 02:23:08', 5, 13, '376.42', 'Cummerata', '', NULL);


#
# TABLE STRUCTURE FOR: tipos
#

DROP TABLE IF EXISTS `tipos`;

CREATE TABLE `tipos` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tipo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `tipos` (`id`, `created_at`, `updated_at`, `tipo`) VALUES (1, '1995-02-24 20:32:37', '2001-11-24 13:15:40', 'Officiis similique ea sit cumque.');
INSERT INTO `tipos` (`id`, `created_at`, `updated_at`, `tipo`) VALUES (2, '2010-12-28 06:02:58', '2012-08-03 00:28:46', 'Facere facilis eius.');
INSERT INTO `tipos` (`id`, `created_at`, `updated_at`, `tipo`) VALUES (3, '2006-06-30 15:31:14', '1985-11-28 00:04:28', 'Quas culpa omnis eos rerum.');
INSERT INTO `tipos` (`id`, `created_at`, `updated_at`, `tipo`) VALUES (4, '1996-06-11 00:23:37', '1993-03-23 22:34:12', 'Consequatur voluptates.');
INSERT INTO `tipos` (`id`, `created_at`, `updated_at`, `tipo`) VALUES (5, '1984-05-02 07:48:09', '2009-11-22 12:25:25', 'Rerum autem.');
INSERT INTO `tipos` (`id`, `created_at`, `updated_at`, `tipo`) VALUES (6, '1978-11-27 13:39:29', '2002-06-27 19:25:22', 'Occaecati molestiae qui itaque.');
INSERT INTO `tipos` (`id`, `created_at`, `updated_at`, `tipo`) VALUES (7, '2020-01-23 19:04:49', '1987-08-16 00:46:42', 'Deleniti dolorum et aspernatur.');
INSERT INTO `tipos` (`id`, `created_at`, `updated_at`, `tipo`) VALUES (8, '1987-07-26 06:47:30', '1998-03-22 11:57:04', 'Excepturi sequi dicta.');
INSERT INTO `tipos` (`id`, `created_at`, `updated_at`, `tipo`) VALUES (9, '2012-08-13 09:08:37', '2003-06-16 02:28:19', 'Cumque quae inventore.');
INSERT INTO `tipos` (`id`, `created_at`, `updated_at`, `tipo`) VALUES (10, '1998-12-29 17:52:20', '1997-03-02 05:44:14', 'Sint et omnis.');


#
# TABLE STRUCTURE FOR: usuarios
#

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nombre_de_usuario` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `numero_identidad` int(15) DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `genero` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nacimiento` date NOT NULL,
  `calle` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `departamento` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localidad` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `provincia` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_pais` int(10) unsigned NOT NULL,
  `id_permiso` int(10) unsigned NOT NULL,
  `pic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borrado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pais_usuario` (`id_pais`),
  KEY `fk_permiso_usuario` (`id_permiso`),
  CONSTRAINT `fk_pais_usuario` FOREIGN KEY (`id_pais`) REFERENCES `paises` (`id`),
  CONSTRAINT `fk_permiso_usuario` FOREIGN KEY (`id_permiso`) REFERENCES `permisos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (1, '1986-04-30 14:28:27', '1977-06-06 18:07:18', 'oemzdzr362', 'Ursula', 'Beier', 82918910, 'fiona46@example.org', 'nihil', '1984-08-09', 'Eligendi similique.', '', 'aut', 'Qui et qui sit.', 1, 1, 'ddtjlkzzdlexaaxh0666', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (2, '1978-01-29 11:56:52', '2002-10-06 05:25:18', 'hlppipm108', 'Eden', 'Bogisich', 16042217, 'lisandro18@example.com', 'in', '1989-04-12', 'Incidunt velit eveniet.', 'a8', 'voluptate', 'Est minus ea ab.', 2, 2, 'govyblenaaxuernf2874', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (3, '2018-01-16 22:17:36', '1989-01-26 08:13:20', 'uyjencm002', 'Rosina', 'VonRueden', 28125042, 'rosendo73@example.com', 'expedita', '2013-07-08', 'Eos quibusdam.', '', 'consequuntur', 'Numquam magnam id est.', 3, 3, 'btppexxqvtdyrseb2422', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (4, '2005-07-25 03:40:26', '2008-10-15 08:46:40', 'nwhrvvy910', 'Lillie', 'Auer', 39919959, 'jmcglynn@example.net', 'repudiandae', '1981-04-11', 'Et aliquid vel.', '', 'similique', 'Incidunt tempore omnis est.', 4, 1, 'pqzpgkjlyfqdojuz4646', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (5, '2012-05-14 09:29:31', '1985-11-05 13:17:42', 'vdqlsjl402', 'Ana', 'Lubowitz', 74668103, 'lockman.lance@example.com', 'optio', '1972-08-09', 'Aut repellat.', '', 'et', 'Iste facere officiis unde.', 5, 2, 'teehhzougaiqkzwv9193', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (6, '1972-05-31 19:33:25', '1975-10-04 13:59:59', 'fynxogm515', 'Vivienne', 'Romaguera', 41006085, 'audreanne.shields@example.net', 'voluptatibus', '1971-01-19', 'Quia quisquam est.', '', 'pariatur', 'Vel consequuntur at ut.', 6, 3, 'irhraeqdtbibvhzi9269', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (7, '1995-06-08 00:01:54', '1975-07-24 14:15:05', 'rsgeyzc723', 'Reyna', 'Schowalter', 2521938, 'regan83@example.net', 'ea', '1975-12-30', 'Rerum labore.', 'h0', 'reprehenderit', 'Dolorem quo aperiam.', 7, 1, 'ubeukldsenfeueoh3053', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (8, '1993-02-20 03:07:13', '1975-02-08 12:33:58', 'hoqtwxk814', 'Rebecca', 'Bechtelar', 51458578, 'khalil33@example.com', 'est', '2018-05-17', 'Aliquid dolorem.', 'u8', 'qui', 'Velit nulla rerum.', 8, 2, 'qrnpbemsdlsxlpje5312', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (9, '1999-11-07 12:44:28', '2009-05-19 21:17:27', 'vfwmujb276', 'Janice', 'Pfannerstill', 14298810, 'ramiro.boyer@example.org', 'fugit', '2002-01-10', 'Voluptatem asperiores reiciendis.', '', 'aut', 'Necessitatibus qui maxime consequatur et.', 9, 3, 'nuxlkrueqmyambdc5721', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (10, '1998-11-04 16:57:08', '1988-04-13 01:23:10', 'dhkasxj925', 'Daphnee', 'Quitzon', 53471597, 'wheaney@example.com', 'explicabo', '1972-08-28', 'Velit tempora.', '', 'dicta', 'Hic iste veniam nemo.', 10, 1, 'puuhdvpemfglkgpl6145', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (11, '1970-02-25 01:19:06', '1982-06-24 13:24:50', 'pfwciyq113', 'Aileen', 'Reichel', 93439299, 'drussel@example.org', 'officiis', '2018-03-15', 'Incidunt vel consequatur.', '', 'dolores', 'Placeat dolor officiis alias.', 11, 2, 'psexmtwotfxsvzjv7871', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (12, '1991-01-26 17:57:39', '1985-01-07 23:23:24', 'ggofruz810', 'Modesta', 'Bergstrom', 79679565, 'ressie92@example.org', 'laborum', '2003-02-04', 'Est molestiae unde.', '', 'non', 'Mollitia numquam consequatur suscipit odit.', 12, 3, 'ysxfwicyiwxsnfsh8882', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (13, '1971-05-28 22:30:16', '1997-02-25 01:36:06', 'nbhoydz044', 'Idella', 'Pfeffer', 27384329, 'drowe@example.com', 'aut', '1988-08-04', 'Facilis et.', 'o0', 'eaque', 'Modi et.', 13, 1, 'skuspdapqhoxsqgy2470', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (14, '2001-06-29 20:58:10', '1972-10-05 23:40:31', 'hjclskw938', 'Prudence', 'Boehm', 60041524, 'gauer@example.com', 'incidunt', '2011-12-06', 'Eum id ea.', '', 'iusto', 'Sunt rem necessitatibus.', 14, 2, 'ucpoecoqosquirmo4931', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (15, '1982-01-09 00:24:36', '2013-09-10 11:37:15', 'hoafiru053', 'Neoma', 'Hamill', 82043829, 'emccullough@example.net', 'voluptate', '1972-12-24', 'Qui est.', 'm6', 'eius', 'Distinctio quisquam voluptatem.', 15, 3, 'udmxvctyaeslroiu6381', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (16, '1976-03-20 01:11:18', '1981-12-28 08:00:28', 'lvsljbt468', 'Willow', 'Koelpin', 49777888, 'kobe50@example.net', 'perspiciatis', '2000-04-13', 'Repudiandae iste.', 'x8', 'et', 'Ut recusandae dolorem.', 16, 1, 'zfnsemcnwknnduxu3222', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (17, '1992-03-17 23:45:11', '2018-08-12 18:05:18', 'opeoiht913', 'Sonia', 'Parker', 68322783, 'esteban33@example.com', 'molestiae', '1983-10-08', 'Velit quibusdam rerum.', '', 'soluta', 'Facilis est ab.', 17, 2, 'tzxmecztudubggfp0018', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (18, '2013-02-09 16:40:54', '1991-06-15 02:04:51', 'ketxswi996', 'Maria', 'Lindgren', 19046050, 'west.maximillian@example.net', 'consequatur', '2014-05-25', 'Ipsam et quam.', '', 'et', 'Sed molestias eius quo.', 18, 3, 'yqdzztuiqglivcay5227', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (19, '1994-05-13 12:44:26', '1987-05-25 23:02:01', 'dfdclfg976', 'Isabelle', 'Flatley', 53203631, 'stroman.alicia@example.net', 'recusandae', '1997-08-19', 'Vitae nihil quasi.', '', 'deserunt', 'Quas molestiae beatae quidem.', 19, 1, 'pltlysldmoaueiyt0574', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (20, '2015-03-20 03:43:41', '2008-05-03 06:01:20', 'tbaavwo031', 'Jannie', 'Labadie', 82960176, 'wolff.marielle@example.org', 'consequatur', '1985-12-31', 'Minus vel et.', 'd5', 'excepturi', 'Ea dolores modi.', 20, 2, 'baycrbhgxqujmlgq9241', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (21, '1989-12-09 00:41:02', '1992-12-17 20:41:26', 'ahhugnm397', 'Drew', 'Hand', 72276668, 'rnader@example.net', 'blanditiis', '2017-11-17', 'Quos illum.', 'r3', 'et', 'Et eius accusantium facere.', 21, 3, 'qeksqhxezrtwweav1506', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (22, '2001-12-15 22:31:54', '2019-06-30 18:54:52', 'mftosqf263', 'Elinor', 'Klocko', 50584019, 'oprohaska@example.org', 'eius', '2004-11-10', 'Odit molestias.', '', 'necessitatibus', 'Inventore reiciendis in.', 22, 1, 'xocmgekfihfotofa8485', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (23, '1980-12-06 17:36:44', '1975-05-20 03:50:47', 'bnjwzsn109', 'Lilyan', 'Mohr', 62363101, 'lschaden@example.org', 'cupiditate', '1997-06-10', 'Repellendus laborum et.', 'c3', 'eum', 'Distinctio porro quia.', 23, 2, 'zeycozpmnrrxoexy1671', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (24, '1998-06-07 12:22:49', '2002-01-11 22:12:38', 'ysnsytb676', 'Aletha', 'Larson', 68250128, 'magdalena23@example.org', 'et', '2013-12-28', 'Voluptatem eum sint.', 'b2', 'consequuntur', 'Non alias.', 24, 3, 'zqlielungfkwcyde1806', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (25, '2019-05-23 19:42:33', '1973-09-26 20:26:56', 'wwjmnzu787', 'Lauriane', 'Bogan', 81200996, 'yrodriguez@example.org', 'impedit', '1988-05-25', 'Illum aut.', '', 'unde', 'Ad fugiat autem nostrum.', 25, 1, 'mpyfpgyzwzccbtjl9979', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (26, '1996-06-20 22:45:41', '1997-07-08 02:01:18', 'bvebbdp057', 'Camille', 'Cassin', 58735938, 'darby38@example.com', 'tenetur', '1977-02-11', 'Quos quo.', 'h5', 'doloribus', 'Rerum nisi vel commodi.', 26, 2, 'prpbjelwvihibets5239', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (27, '1981-10-29 04:22:23', '1988-07-25 03:07:27', 'tnyszkm588', 'Elza', 'Ankunding', 81675024, 'jwalsh@example.net', 'et', '1998-08-29', 'A consequatur.', 'b7', 'minus', 'Quam aperiam laudantium commodi.', 27, 3, 'tvxiqscabkdaquqk4013', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (28, '2017-09-26 04:33:32', '1987-03-10 20:14:44', 'blypdyo848', 'Albina', 'Kling', 4489491, 'brycen.mitchell@example.org', 'non', '1970-09-17', 'Beatae repellat et.', 'x2', 'soluta', 'Molestias laudantium explicabo aut.', 28, 1, 'vovfxtkzuexazlgq6989', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (29, '2010-04-05 17:20:55', '2017-06-10 05:50:15', 'kthheze319', 'Marianne', 'Morar', 32295710, 'schulist.urban@example.com', 'minus', '1985-04-02', 'Pariatur quidem dolorum.', '', 'in', 'Architecto incidunt laudantium numquam.', 29, 2, 'fpsuhckquurofjvb6422', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (30, '1986-10-02 15:52:25', '1995-05-24 14:56:38', 'fplkdie437', 'Lela', 'Bahringer', 2858849, 'crooks.dorothy@example.org', 'commodi', '1991-06-15', 'Et non quis.', 'k8', 'in', 'Totam consequatur quae.', 30, 3, 'whbntqxwfzemqdva7367', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (31, '1972-11-26 06:24:55', '1976-08-22 02:56:59', 'ftscuzl674', 'Christelle', 'Kshlerin', 50565535, 'mueller.luther@example.com', 'vitae', '1975-04-26', 'Aperiam harum.', '', 'impedit', 'Id consequuntur facilis rem.', 31, 1, 'dxmnfkutgmibmjyk4891', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (32, '2011-01-26 02:32:45', '1988-12-03 12:56:42', 'yvbolll220', 'Leilani', 'Auer', 42053025, 'issac.swaniawski@example.com', 'rerum', '1982-03-17', 'Sapiente necessitatibus.', '', 'labore', 'Ratione suscipit reiciendis explicabo.', 32, 2, 'ktgdjtpvileoffuv0544', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (33, '2015-01-16 06:41:42', '2001-11-23 10:47:39', 'syrbtgo095', 'Velma', 'Jacobs', 27818723, 'summer.rodriguez@example.net', 'qui', '1990-03-28', 'Deserunt tenetur.', 'r2', 'ut', 'Illo et quod est.', 33, 3, 'hngienuyzlhgyzab8170', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (34, '2003-02-26 08:28:06', '1999-08-01 04:31:15', 'fpnxzyg586', 'Edythe', 'Yundt', 70631587, 'torphy.harold@example.org', 'tenetur', '1996-08-09', 'Quo ducimus ipsam.', '', 'doloribus', 'Voluptates aspernatur porro quibusdam.', 34, 1, 'nxqxwurldczbgeti8509', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (35, '1989-06-29 00:42:55', '1988-07-17 04:27:10', 'cszsood545', 'Ciara', 'Collier', 31687325, 'myrl.simonis@example.org', 'repudiandae', '1985-08-21', 'Modi quibusdam sed.', 'c6', 'suscipit', 'Sit officiis quia.', 35, 2, 'wtyxzmktjpxbxzxz5242', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (36, '2014-10-20 08:12:14', '1995-04-26 00:22:12', 'xmknzjv298', 'Bria', 'Macejkovic', 31837238, 'jerod00@example.net', 'quos', '1990-09-14', 'Mollitia sed.', '', 'ipsum', 'Aut est.', 36, 3, 'ztdynhoqvdzszcvt9586', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (37, '1991-01-13 00:32:34', '1990-08-16 18:24:42', 'kqfyukl495', 'Phyllis', 'Homenick', 3483874, 'kuhlman.london@example.org', 'natus', '1983-01-07', 'Tenetur maxime earum.', 'k1', 'tempore', 'Laudantium quasi sint sint.', 37, 1, 'aeuvfkzyttbksstq5248', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (38, '1990-07-12 03:09:40', '2001-01-30 04:31:27', 'qbqaodi247', 'Deanna', 'Bode', 30519909, 'fahey.deontae@example.org', 'sed', '2013-07-22', 'Laborum pariatur dicta.', 'q4', 'et', 'Nemo distinctio sint.', 38, 2, 'cvqryxmjbwoxiszg7187', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (39, '1984-04-11 17:36:13', '1989-10-23 08:39:48', 'tvbmgvj761', 'Scarlett', 'Cruickshank', 94078078, 'hlebsack@example.net', 'neque', '2010-10-14', 'Quia autem beatae.', '', 'consequuntur', 'Aut eos vel autem.', 39, 3, 'idaiarkvqriovljw4115', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (40, '1989-08-03 21:05:23', '1991-10-09 09:40:11', 'useohmn940', 'Jazmyn', 'Feest', 25997601, 'barton.alda@example.net', 'porro', '2009-11-13', 'Mollitia aut.', '', 'vel', 'Esse quis molestiae.', 40, 1, 'yyfdsvzonfaxjhrj4811', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (41, '1982-11-14 07:27:10', '1992-08-09 10:58:34', 'isnvafd009', 'Abigale', 'Langosh', 99543325, 'vlangosh@example.org', 'ducimus', '2003-05-18', 'Sed eligendi saepe.', '', 'praesentium', 'Vero asperiores aut.', 41, 2, 'cyghbnijmycojvpk1010', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (42, '2005-07-08 18:13:29', '2008-02-29 07:38:30', 'ajsxjiq401', 'Neva', 'Farrell', 73392863, 'considine.sid@example.net', 'quia', '1994-05-21', 'Perferendis aut maiores.', 'k5', 'impedit', 'Incidunt iste hic assumenda quis.', 42, 3, 'gljaqwvcsikwqzpq3018', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (43, '1986-07-27 10:22:44', '1985-09-04 23:51:41', 'lrvxoic509', 'Krista', 'Mann', 13624573, 'alayna.leuschke@example.com', 'neque', '1970-07-05', 'Soluta soluta suscipit.', 'z1', 'laboriosam', 'Perspiciatis sit non.', 43, 1, 'tbefpiqgvbglygjo1686', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (44, '2018-07-17 18:14:18', '1980-03-05 18:27:33', 'xedprig113', 'Cecelia', 'Upton', 7041374, 'hailee.borer@example.org', 'aut', '2009-06-09', 'Doloremque quia delectus.', '', 'rerum', 'Neque et vitae.', 44, 2, 'qpptdjxxnudsbiow2532', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (45, '2000-05-09 21:20:57', '2014-10-14 21:25:02', 'eikxffl093', 'Eileen', 'Skiles', 7122635, 'genesis32@example.com', 'qui', '2002-12-18', 'Enim rem.', 'o2', 'ipsa', 'Facere officiis aut voluptatem.', 45, 3, 'rdfyiykluhtwqeyw9063', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (46, '1990-05-08 18:15:24', '2010-12-30 03:56:30', 'ivezmne895', 'Deanna', 'Leannon', 55896211, 'mtreutel@example.com', 'odio', '1992-01-22', 'Incidunt et.', '', 'quia', 'Quibusdam omnis fuga.', 46, 1, 'ovbkbkdmhgnlajsr3402', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (47, '1988-02-17 19:43:01', '1985-07-07 18:35:45', 'hfuqubp138', 'Heaven', 'Gleichner', 63160886, 'ferry.hettie@example.com', 'nesciunt', '1985-02-12', 'Est et.', '', 'temporibus', 'Fugiat facere est.', 47, 2, 'suwctuzspeidwfyt7293', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (48, '1993-12-27 05:50:10', '2011-02-11 08:57:58', 'shdkvlj071', 'Kitty', 'Glover', 27838502, 'michaela61@example.org', 'animi', '1976-05-03', 'Qui qui voluptas.', '', 'cupiditate', 'Iure voluptatem ipsum.', 48, 3, 'xcvqrryixsghzfkc3566', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (49, '2010-11-06 06:33:12', '2010-01-19 03:00:06', 'kkqhvll012', 'Madie', 'Emmerich', 45021132, 'llewellyn.schmidt@example.com', 'laborum', '1974-06-10', 'Quis ullam maxime.', 'g9', 'et', 'Cumque tenetur officiis temporibus.', 49, 1, 'mnuzusfmdyomhned9939', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (50, '2005-05-23 21:29:05', '2012-09-16 05:51:42', 'cihovoc596', 'Gwen', 'Greenholt', 30734846, 'wilfrid49@example.com', 'voluptate', '2009-01-26', 'Distinctio corrupti.', 'l2', 'in', 'Quae earum rerum doloribus.', 50, 2, 'sbhklebsisuwhmre9970', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (51, '1995-09-21 18:53:03', '2013-08-19 01:57:14', 'mmfetuc282', 'Aliza', 'Quitzon', 9104553, 'nboehm@example.com', 'aut', '1992-11-01', 'Id porro.', '', 'voluptates', 'Perspiciatis quod sed consectetur aperiam.', 51, 3, 'eijvwiheqhucnxpj4453', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (52, '2011-07-21 22:41:09', '1973-07-16 04:49:37', 'rgjovpw327', 'Leanne', 'Abshire', 778191, 'hbatz@example.net', 'voluptas', '2007-09-17', 'Minima laudantium.', '', 'quia', 'Voluptates deleniti rerum exercitationem.', 52, 1, 'hcwkygeuvcfnvvoj3229', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (53, '1993-09-30 04:23:31', '2003-08-02 00:02:45', 'ikcxdpc950', 'Emmalee', 'Feest', 31596103, 'maiya89@example.com', 'doloribus', '1998-05-31', 'Vero et.', '', 'eos', 'Repudiandae repellendus qui possimus.', 53, 2, 'atrgkmgdyphcytxt9910', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (54, '1998-01-22 11:51:24', '1981-06-27 00:06:50', 'lgvvest448', 'Makenzie', 'Doyle', 43762131, 'roger41@example.net', 'ad', '1982-02-08', 'Veniam non eum.', '', 'voluptates', 'Rerum cumque.', 54, 3, 'tcglldvrxweczjqw2749', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (55, '1991-02-03 07:16:22', '1992-01-13 07:18:36', 'ammqtpb602', 'Michelle', 'Gulgowski', 69089149, 'henri65@example.net', 'inventore', '1994-01-24', 'Illum iste sint.', 'n1', 'et', 'Nam quam fuga.', 55, 1, 'kryhsvfjbwrgpizs1185', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (56, '1995-02-07 13:55:36', '2008-01-28 06:21:16', 'zwljuyf840', 'Dovie', 'Cartwright', 89416318, 'pmoore@example.net', 'voluptatibus', '2011-08-18', 'Et quia.', 'm5', 'aliquid', 'Ratione totam nostrum.', 56, 2, 'mrnxjtqlqiazwble0846', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (57, '1981-09-14 14:37:22', '1989-04-12 23:25:18', 'juqisnv157', 'Delphia', 'Mueller', 19666655, 'cali10@example.org', 'eum', '1978-03-02', 'Dolores vitae eveniet.', 'b7', 'vel', 'Facilis eligendi.', 57, 3, 'qqjhyuoeqlsbnrjo7446', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (58, '2010-03-07 14:00:42', '2013-09-26 04:41:52', 'odqnynp942', 'Jolie', 'Upton', 23202486, 'rhickle@example.net', 'in', '2017-12-04', 'Et consequuntur ut.', 'n2', 'numquam', 'Blanditiis omnis officia.', 58, 1, 'uzchyobvpzracirk9451', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (59, '1976-12-29 20:01:23', '1992-02-28 23:22:28', 'emlhpae132', 'Sunny', 'Cassin', 69468610, 'adela75@example.org', 'voluptates', '1983-05-06', 'At libero ea.', '', 'est', 'Ad fugiat.', 59, 2, 'lpbupwlliwwakumj4699', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (60, '2008-12-08 22:25:22', '1979-10-01 13:21:05', 'xgzwtsp497', 'June', 'Yundt', 19656376, 'danika65@example.org', 'sunt', '2020-03-20', 'Aut consectetur laudantium.', '', 'officia', 'Sint aperiam qui.', 60, 3, 'zghtvftxdqjtjloi9193', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (61, '2010-03-03 10:00:47', '1988-09-14 19:04:31', 'hzkgtlp250', 'Marjolaine', 'Kunde', 12298861, 'homenick.melvina@example.com', 'a', '2015-12-12', 'Expedita vitae possimus.', 'f1', 'consequatur', 'Totam quibusdam.', 61, 1, 'kjpbjrrkzfpyqlmv8431', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (62, '1974-06-03 23:18:55', '1971-06-19 03:03:52', 'hixxxos990', 'Casandra', 'Torphy', 9228572, 'beer.corbin@example.org', 'dolores', '1977-11-01', 'Velit ut.', 'h5', 'sed', 'Occaecati velit incidunt nihil quam.', 62, 2, 'dskbccgulphulgfx7799', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (63, '2005-01-15 13:34:37', '2015-09-11 19:11:06', 'enhvwvc716', 'Liliane', 'Bins', 35823958, 'howe.hobart@example.net', 'debitis', '2006-06-04', 'Est optio vero.', '', 'ut', 'Modi officiis officia.', 63, 3, 'bpnnqoeivvdpiwjw9410', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (64, '2009-03-09 13:23:00', '1982-10-25 03:08:49', 'tjjauyp012', 'Asia', 'White', 67698610, 'jkrajcik@example.org', 'blanditiis', '1984-08-30', 'Possimus autem.', '', 'voluptas', 'Minus ipsum reiciendis error.', 64, 1, 'ijewoenlivkcgyhf2162', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (65, '1991-03-13 17:14:10', '2012-09-27 15:34:56', 'qfxljcj991', 'Alda', 'Connelly', 82593092, 'paris.grant@example.com', 'pariatur', '1975-06-19', 'Mollitia dolor.', 'l2', 'praesentium', 'Eveniet non est.', 65, 2, 'jcahwjocbjxajflw9792', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (66, '2010-03-20 20:37:31', '1989-03-30 05:24:39', 'ahonulh653', 'Jeanie', 'Gutkowski', 40596388, 'jace96@example.com', 'rerum', '2010-08-20', 'Pariatur doloribus.', '', 'consectetur', 'Quis a dolor nemo.', 66, 3, 'onybfaquvchqrurw1940', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (67, '1987-10-11 09:27:42', '2016-03-22 18:27:53', 'vfzgjjq770', 'Aracely', 'Murray', 32002255, 'araceli44@example.org', 'eaque', '1998-01-11', 'Accusantium hic.', 'z6', 'corporis', 'Sed rem porro.', 67, 1, 'tkweohmcbumrsunl7967', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (68, '1986-10-07 23:36:57', '2007-05-14 05:29:42', 'atrxygi999', 'Shakira', 'Oberbrunner', 41583734, 'uherzog@example.net', 'consequuntur', '1996-04-12', 'Eos sit laborum.', 'u1', 'mollitia', 'Beatae ut quia odio eveniet.', 68, 2, 'oagoprostiimslfr9312', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (69, '2018-12-27 09:27:54', '1994-08-30 17:39:34', 'yuwnwti864', 'Carli', 'Schiller', 77376999, 'nveum@example.com', 'id', '1993-06-28', 'Dolores molestiae consequatur.', '', 'accusamus', 'Est quibusdam nobis.', 69, 3, 'nkztgdqoiqfgtyfe6559', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (70, '2004-04-05 02:51:02', '2001-06-23 05:30:15', 'vgtwxuj575', 'Diana', 'Kautzer', 77771409, 'brooke24@example.net', 'a', '1993-04-08', 'Eveniet totam est.', '', 'nobis', 'Consequuntur qui dignissimos dolore id.', 70, 1, 'cdwitexksokineij2455', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (71, '2009-07-07 03:03:35', '1992-11-11 07:28:17', 'ehsjvvu696', 'Madge', 'Nader', 94959849, 'serenity19@example.net', 'exercitationem', '1974-06-27', 'Neque magnam.', 'w2', 'laudantium', 'Voluptas placeat quo.', 71, 2, 'dkwummwwkbtzavkd8171', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (72, '1997-08-15 14:13:59', '2008-09-12 04:40:56', 'xhfpusm789', 'Joyce', 'Cronin', 41364440, 'dcorkery@example.org', 'quaerat', '2011-07-03', 'Sapiente minima enim.', 'w6', 'optio', 'Autem earum perspiciatis.', 72, 3, 'xyejinokewyorfiv7791', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (73, '2010-03-04 04:54:43', '1993-06-08 01:47:40', 'aiaoenc515', 'Ollie', 'Pagac', 92273119, 'katelyn.zulauf@example.org', 'perspiciatis', '1976-07-13', 'Dicta ullam.', 'x0', 'consectetur', 'Voluptas fugiat maiores.', 73, 1, 'uaywnixbylnovcqa4189', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (74, '1970-01-09 20:25:46', '1980-03-14 10:04:43', 'aumanic710', 'Brandi', 'Batz', 9214562, 'yturcotte@example.org', 'qui', '1991-12-06', 'Voluptatibus itaque similique.', '', 'animi', 'Accusantium ut necessitatibus qui.', 74, 2, 'bajbipvyuuilsvqs3100', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (75, '2006-06-02 06:48:03', '1981-12-09 09:56:26', 'mecssgp672', 'Nola', 'Eichmann', 73107650, 'ebraun@example.org', 'quae', '1983-08-11', 'Voluptas quo.', '', 'iure', 'Qui sunt veniam.', 75, 3, 'cvydilxmaxgableg0293', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (76, '1995-04-29 12:34:26', '2011-11-24 22:30:14', 'edfjozq137', 'Kaylah', 'Abshire', 38356311, 'marley83@example.org', 'doloremque', '2001-04-24', 'Odit non.', '', 'aliquam', 'Iusto ab quae qui dolor.', 76, 1, 'jkgkozxkprukwqia3621', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (77, '2001-05-02 06:29:01', '2003-06-30 00:35:42', 'slhpfbs213', 'Lucy', 'Connelly', 87675243, 'rgrady@example.net', 'ut', '1970-01-17', 'Qui fugit atque.', 's8', 'ea', 'Quod nobis quis possimus.', 77, 2, 'dvjdyvomatzbyqyl6910', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (78, '2011-09-02 03:59:24', '2004-05-13 23:16:31', 'nwudyqe397', 'Isobel', 'Wehner', 56970752, 'rolfson.caterina@example.net', 'aut', '2005-11-20', 'Esse corporis ut.', 's5', 'veritatis', 'Id incidunt quos tempore.', 78, 3, 'raurxpgimkdsgpfu5652', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (79, '2015-01-14 14:54:10', '2003-01-09 00:24:07', 'qcrgrvb506', 'Maeve', 'Koch', 34293656, 'bertha.kertzmann@example.org', 'commodi', '2016-11-07', 'Est expedita officia.', '', 'modi', 'Quam est sit ut.', 79, 1, 'dwdklclazsluqbql2790', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (80, '1994-09-07 15:11:56', '1994-04-07 09:19:44', 'mgtfxxr749', 'Ernestina', 'Crooks', 25402310, 'addison.hudson@example.com', 'voluptatem', '1988-03-12', 'Facere voluptatem necessitatibus.', 'm3', 'libero', 'Qui provident perferendis quaerat.', 80, 2, 'liostyasldsscaac3948', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (81, '2011-06-14 04:10:22', '2002-01-12 20:05:17', 'hrjaksj149', 'Viva', 'Bogisich', 17212789, 'bertram.terry@example.org', 'porro', '1992-08-17', 'Quia temporibus soluta.', 'a1', 'ducimus', 'Provident reprehenderit molestiae molestiae.', 81, 3, 'mjphzoqgcmabymum0670', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (82, '1991-10-05 09:00:33', '2018-08-26 00:44:56', 'ozuzhnp343', 'Liza', 'Blanda', 25537910, 'fboyer@example.net', 'accusantium', '2006-02-01', 'Dolores amet aut.', '', 'nam', 'Vitae non quidem fugit.', 82, 1, 'fgwxfiwsefgrccqo7986', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (83, '1974-05-24 23:33:36', '1996-08-26 02:22:57', 'hgnxccz610', 'Christina', 'Beahan', 98304087, 'shyanne.jaskolski@example.net', 'accusamus', '2004-03-06', 'Quasi esse.', 'w6', 'et', 'Ea aut dolorum natus.', 83, 2, 'tjbauvodsersbkur5533', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (84, '1975-01-19 12:51:47', '1984-02-05 08:06:53', 'pwdzfav484', 'Margarett', 'Homenick', 16471683, 'sspencer@example.net', 'rem', '1970-09-07', 'Dolore vero in.', 'c0', 'inventore', 'Sunt ea omnis.', 84, 3, 'ajtdzdgwrfvtnjyx4030', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (85, '2002-11-04 21:46:46', '2013-09-05 22:20:47', 'ouwmsni899', 'Lacy', 'Vandervort', 768830, 'eloy.hayes@example.net', 'nemo', '2020-04-26', 'Et necessitatibus.', '', 'quisquam', 'Voluptatem possimus non totam.', 85, 1, 'wybfjdimvxyhgssv2627', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (86, '1984-04-21 00:04:48', '1984-12-20 13:48:41', 'zvklrxo659', 'Edythe', 'Baumbach', 48485876, 'o\'reilly.maria@example.net', 'dicta', '1991-08-21', 'Consectetur recusandae incidunt.', 's6', 'cum', 'Labore facilis sint.', 86, 2, 'cnndxtssolbvyzlq1497', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (87, '2020-03-23 01:26:03', '1971-06-20 17:27:47', 'oaqtzpx538', 'Karli', 'Marks', 73861573, 'o\'conner.jordane@example.com', 'repellat', '1992-06-02', 'Omnis nemo.', 'o4', 'ut', 'Officiis veniam iure.', 87, 3, 'zdkkueleaebpnbso4792', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (88, '1996-10-08 10:29:35', '1993-01-21 14:27:08', 'yzxjomg425', 'Renee', 'Moen', 45985590, 'delaney63@example.net', 'libero', '1973-03-06', 'Voluptas molestiae molestias.', '', 'soluta', 'Libero cupiditate neque magnam.', 88, 1, 'iajvcwdlzkiklxuh9519', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (89, '2012-07-15 06:31:29', '1983-06-12 19:38:15', 'yqjnyuk920', 'Diana', 'Marquardt', 10665411, 'crooks.bernice@example.org', 'neque', '1994-12-07', 'Eligendi sed dolore.', 'c8', 'amet', 'Blanditiis earum dolorum.', 89, 2, 'tfsufiertpyllvzh4517', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (90, '1979-04-02 06:52:52', '1981-05-10 09:53:53', 'khjqfip979', 'Helga', 'Hand', 74515671, 'ibaumbach@example.net', 'vero', '2013-08-28', 'Dolores voluptatum temporibus.', 'u7', 'voluptatibus', 'Autem qui amet.', 90, 3, 'smoaqrjppqnbwqem8359', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (91, '1972-09-04 14:58:39', '2001-02-05 08:47:32', 'fpffowx133', 'Delia', 'Runolfsson', 79026331, 'borer.lucy@example.org', 'consequatur', '2005-07-28', 'Aut culpa officia.', '', 'ut', 'Aliquid commodi et.', 91, 1, 'uoqcerpyajgbivwz4262', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (92, '2010-12-04 04:47:21', '2003-05-02 07:19:11', 'mwtcepq091', 'Elsa', 'Beer', 80534335, 'buck56@example.com', 'iste', '2004-09-14', 'Beatae quo voluptas.', 'w1', 'quos', 'Eos et.', 92, 2, 'zflqpktixulrhjvw4014', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (93, '1972-09-20 09:01:19', '1991-02-14 02:21:07', 'eufogat836', 'Rosalia', 'Schuppe', 9443555, 'nels14@example.net', 'quia', '1998-12-10', 'Dicta ut a.', 'e0', 'quia', 'Quia numquam aut officia.', 93, 3, 'ggvvvkbflfyuftmc0711', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (94, '2009-04-07 09:25:39', '1997-01-08 23:29:45', 'clmeztg593', 'Gwendolyn', 'Stoltenberg', 8336391, 'nicolette82@example.net', 'tenetur', '2017-07-22', 'Et non.', 'o9', 'veritatis', 'Eius et rerum a.', 94, 1, 'xetnrtxjzyfipqbb1535', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (95, '2004-04-21 04:18:00', '2019-06-05 07:40:51', 'dkfugmr063', 'Cassie', 'Murray', 1722362, 'monserrat30@example.net', 'et', '2001-04-30', 'Recusandae et necessitatibus.', 'y4', 'reprehenderit', 'Magni et inventore harum.', 95, 2, 'qqgnteckgspzwyzr1261', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (96, '1999-07-08 03:02:04', '1978-05-28 10:52:09', 'fvvwuet087', 'Lorena', 'Sipes', 97825164, 'bcole@example.org', 'incidunt', '1978-01-14', 'Neque quis odit.', 'i9', 'sit', 'Excepturi voluptatem aut.', 96, 3, 'cxooyuiflrcmwhpi3278', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (97, '1993-10-28 12:31:48', '1996-11-18 09:18:56', 'hwqzefd209', 'Breanne', 'Towne', 20987386, 'runolfsdottir.arianna@example.net', 'voluptate', '1976-10-27', 'Soluta reprehenderit.', '', 'autem', 'Fuga quia aut.', 97, 1, 'oqbyznrsaekblgdg2358', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (98, '1989-07-01 20:07:48', '1999-01-13 00:10:48', 'ncehsyz604', 'Vanessa', 'Hilll', 250086, 'eudora21@example.com', 'repudiandae', '1995-02-01', 'Voluptas quos.', 'l2', 'et', 'Vitae soluta quia corrupti.', 98, 2, 'kreebtvwakqlcmgm8159', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (99, '1971-02-27 02:09:30', '1980-05-29 20:35:55', 'dmcjnzz728', 'Iliana', 'Harvey', 39185014, 'slegros@example.net', 'dolor', '1983-12-18', 'Ut reprehenderit.', '', 'dolores', 'Non quis repellendus.', 99, 3, 'anvhxshzmfaarzzt3366', NULL);
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre_de_usuario`, `nombre`, `apellido`, `numero_identidad`, `email`, `genero`, `nacimiento`, `calle`, `departamento`, `localidad`, `provincia`, `id_pais`, `id_permiso`, `pic`, `borrado`) VALUES (100, '1973-09-28 15:54:53', '2013-04-29 03:23:21', 'rlixear011', 'Flo', 'Bergstrom', 91707566, 'demetrius52@example.org', 'consequuntur', '1995-06-21', 'Iure voluptas.', 'g5', 'reprehenderit', 'Quis aut.', 100, 1, 'eoruutprpynemlxl1823', NULL);


