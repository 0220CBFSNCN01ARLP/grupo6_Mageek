
USE mageek;

# altering non-unique values, making unique

UPDATE `artes` SET `artista`='albanessie' WHERE id = 60;
UPDATE `artes` SET `artista`='nagykorte' WHERE id = 59;
UPDATE `artes` SET `artista`='greatartist' WHERE id = 62;
UPDATE `artes` SET `artista`='blue' WHERE id = 98;
UPDATE `artes` SET `artista`='leeroy' WHERE id = 49;
UPDATE `artes` SET `artista`='schubert' WHERE id = 75;
UPDATE `artes` SET `artista`='wicked' WHERE id = 27;


ALTER TABLE artes
MODIFY COLUMN `artista` varchar(70) COLLATE utf8_unicode_ci UNIQUE;
ALTER TABLE cartas
MODIFY COLUMN `id_producto` int(12) unsigned NOT NULL UNIQUE;

ALTER TABLE categorias
MODIFY COLUMN   `categoria` varchar(40) COLLATE utf8_unicode_ci NOT NULL UNIQUE;

ALTER TABLE colores
MODIFY COLUMN   `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL UNIQUE;

ALTER TABLE dados
MODIFY COLUMN   `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL UNIQUE,
MODIFY COLUMN `id_producto` int(12) unsigned NOT NULL UNIQUE;

ALTER TABLE deseados
ADD CONSTRAINT `usuario_producto_deseado`
UNIQUE (id_usuario,id_producto);

ALTER TABLE ediciones
MODIFY COLUMN `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL UNIQUE;

ALTER TABLE folios
MODIFY COLUMN `id_producto` int(12) unsigned NOT NULL UNIQUE;

ALTER TABLE historial_de_compra
ADD CONSTRAINT `usuario_factura_producto_historial`
UNIQUE (id_usuario,id_factura,id_producto);

ALTER TABLE packs
MODIFY COLUMN `id_producto` int(12) unsigned NOT NULL UNIQUE;

# altering non-unique values, making unique


UPDATE `paises` SET `pais`='Checoslovakia' WHERE id = 2;
UPDATE `paises` SET `pais`='England' WHERE id = 12;
UPDATE `paises` SET `pais`='Eslovenia' WHERE id = 7;
UPDATE `paises` SET `pais`='Non-Syrian Arab Republic' WHERE id = 18;
UPDATE `paises` SET `pais`='APERTURE science HQ' WHERE id = 39;
ALTER TABLE paises
MODIFY COLUMN `pais` varchar(40) COLLATE utf8_unicode_ci NOT NULL UNIQUE;

ALTER TABLE permisos
MODIFY COLUMN `permiso` varchar(20) COLLATE utf8_unicode_ci NOT NULL UNIQUE;
UPDATE `permisos` SET `permiso`='user' WHERE id = 1;
UPDATE `permisos` SET `permiso`='admin' WHERE id = 2;

ALTER TABLE producto_en_carrito
ADD CONSTRAINT `usuario_producto_carrito`
UNIQUE (id_usuario,id_producto);

#
# TABLE STRUCTURE FOR: fotos
#

DROP TABLE IF EXISTS `fotos`;

CREATE TABLE `fotos` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL UNIQUE,
  `id_producto` int(12) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_producto_foto` (`id_producto`),
  CONSTRAINT `fk_producto_foto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE tipos
MODIFY COLUMN `tipo` varchar(50) COLLATE utf8_unicode_ci NOT NULL UNIQUE;

ALTER TABLE usuarios
MODIFY COLUMN `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL UNIQUE,
MODIFY COLUMN `nombre_de_usuario` varchar(30) COLLATE utf8_unicode_ci NOT NULL UNIQUE,
ADD COLUMN `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL;