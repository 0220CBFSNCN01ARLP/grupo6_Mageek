1. Blisters
arte (string 40)
id_edicion

2. Cartas
oracle
flavortext
mana
ataque
defensa
id_arte
id_tipo
subtipo
id_color
id_edicion
limitado

3. Dados
color
caras

4. Folios
color

5. Packs
id_color
modelo
id_edicion


Colores de magic.
 -hacer tabla foránea!

Tipos de cartas.
1. Equipo
2. Tierra
3. Encantamiento
4. Instantáneo
5. Criatura
6. Conjuro
7. Planeswalker
8. Plano
9. Evento
10. Némesis
11. Commander

<<<<<<< Updated upstream
USE `mageek`
=======

USE mageek;
>>>>>>> Stashed changes
# Sacar columna 'borrado' de packs (superflua)
alter table packs
drop borrado;
# Categorías
update categorias set categoria="blister" where id=1;
update categorias set categoria="carta" where id=2;
update categorias set categoria="dado" where id=3;
update categorias set categoria="folio" where id=4;
update categorias set categoria="pack" where id=5;
# sacar constraint unique en color de dados
ALTER TABLE dados
modify column `color` varchar(50) collate utf8_unicode_ci not null;
# actualizar tipos
update tipos set tipo="Equipo" where id=1;
update tipos set tipo="Tierra" where id=2;
update tipos set tipo="Encantamiento" where id=3;
update tipos set tipo="Instantáneo" where id=4;
update tipos set tipo="Criatura" where id=5;
update tipos set tipo="Conjuro" where id=6;
update tipos set tipo="Planeswalker" where id=7;
update tipos set tipo="Plano" where id=8;
update tipos set tipo="Evento" where id=9;
update tipos set tipo="Némesis" where id=10;
update tipos set tipo="Commander" where id=11;
# insertar colores nuevos
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `colores`;
CREATE TABLE `colores` (
  `id` int(12) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (100000, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'azul');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (010000, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'blanco');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (001000, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'negro');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (000100, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'rojo');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (000010, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'verde');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (000001, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'incoloro');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (110000, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'azul_blanco');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (101000, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'azul_negro');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (100100, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'azul_rojo');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (100010, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'azul_verde');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (011000, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'blanco_negro');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (010100, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'blanco_rojo');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (010010, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'blanco_verde');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (001100, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'negro_rojo');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (001010, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'negro_verde');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (000110, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'rojo_verde');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (111000, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'azul_blanco_negro');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (110100, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'azul_blanco_rojo');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (110010, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'azul_blanco_verde');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (101100, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'azul_negro_rojo');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (101010, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'azul_negro_verde');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (100110, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'azul_rojo_verde');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (011100, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'blanco_negro_rojo');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (011010, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'blanco_negro_verde');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (010110, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'blanco_rojo_verde');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (001110, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'negro_rojo_verde');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (111100, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'azul_blanco_negro_rojo');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (111010, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'azul_blanco_negro_verde');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (110110, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'azul_blanco_rojo_verde');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (101110, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'azul_negro_rojo_verde');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (011110, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'blanco_negro_rojo_verde');
INSERT INTO `colores` (`id`, `created_at`, `updated_at`, `color`) VALUES (111110, '2006-09-10 11:40:45', '1972-02-17 21:43:20', 'azul_blanco_negro_rojo_verde');

SET FOREIGN_KEY_CHECKS=1;


