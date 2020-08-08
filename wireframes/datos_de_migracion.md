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
# cambiar tabla usuarios
alter table usuarios
drop column genero
drop column numero_identidad
drop column departamento
drop column localidad
drop column provincia
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
# nuevos productos
INSERT INTO `productos` (`id`,`created_at`,`updated_at`,`id_categoria`,`stock`,`precio`,`descripcion`,`nombre`) VALUES (201,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",2,999,0.21,"","Skymarcher Aspirant");
INSERT INTO `productos` (`id`,`created_at`,`updated_at`,`id_categoria`,`stock`,`precio`,`descripcion`,`nombre`) VALUES (202,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",2,999,0.49,"","Drawn Together");
INSERT INTO `productos` (`id`,`created_at`,`updated_at`,`id_categoria`,`stock`,`precio`,`descripcion`,`nombre`) VALUES (203,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",2,999,0.99,"","Ambiguity");
INSERT INTO `productos` (`id`,`created_at`,`updated_at`,`id_categoria`,`stock`,`precio`,`descripcion`,`nombre`) VALUES (204,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",2,999,1.99,"","Infernal Spawn of Evil");
INSERT INTO `productos` (`id`,`created_at`,`updated_at`,`id_categoria`,`stock`,`precio`,`descripcion`,`nombre`) VALUES (205,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",2,999,3.99,"","infernal Spawn Of Infernal Spawn Of Evil");
INSERT INTO `productos` (`id`,`created_at`,`updated_at`,`id_categoria`,`stock`,`precio`,`descripcion`,`nombre`) VALUES (206,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",2,999,2.99,"","Rakdos Augermage");
INSERT INTO `productos` (`id`,`created_at`,`updated_at`,`id_categoria`,`stock`,`precio`,`descripcion`,`nombre`) VALUES (207,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",2,999,5.99,"","Once Upon A Time");
INSERT INTO `productos` (`id`,`created_at`,`updated_at`,`id_categoria`,`stock`,`precio`,`descripcion`,`nombre`) VALUES (208,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",2,999,99.99,"","Bureaucracy");
INSERT INTO `fotos` (`id`,`created_at`,`url`,`id_producto`) VALUES (101,"2020-08-03 14:49:40.0","skymarcherAspirant.jpg",201);
INSERT INTO `fotos` (`id`,`created_at`,`url`,`id_producto`) VALUES (102,"2020-08-03 14:49:40.0","drawnTogether.jpg",202);
INSERT INTO `fotos` (`id`,`created_at`,`url`,`id_producto`) VALUES (103,"2020-08-03 14:49:40.0","ambiguity.jpg",203);
INSERT INTO `fotos` (`id`,`created_at`,`url`,`id_producto`) VALUES (104,"2020-08-03 14:49:40.0","infernalSpawnOfEvil.jpg",204);
INSERT INTO `fotos` (`id`,`created_at`,`url`,`id_producto`) VALUES (105,"2020-08-03 14:49:40.0","infernalSpawnOfInfernalSpawnOfEvil.jpg",205);
INSERT INTO `fotos` (`id`,`created_at`,`url`,`id_producto`) VALUES (106,"2020-08-03 14:49:40.0","rakdosAugermageRare.jpg",206);
INSERT INTO `fotos` (`id`,`created_at`,`url`,`id_producto`) VALUES (107,"2020-08-03 14:49:40.0","onceUponATime.jpg",207);
INSERT INTO `fotos` (`id`,`created_at`,`url`,`id_producto`) VALUES (108,"2020-08-03 14:49:40.0","bureaucracy.jpg",208);
INSERT INTO `cartas` (`id`,`created_at`,`updated_at`,`oracle`,`flavortext`,`mana`,`ataque`,`defensa`,`subtipo`,`id_arte`,`id_tipo`,`id_color`,`id_edicion`,`id_producto`) VALUES (DEFAULT,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","Ascend. Skymarcher Aspirant has flying as long as you have the city's blessing.","'I was born to glory.'","W",2,1,"Soldado Vampiro",64,5,010000,41,201);
INSERT INTO `cartas` (`id`,`created_at`,`updated_at`,`oracle`,`flavortext`,`mana`,`ataque`,`defensa`,`subtipo`,`id_arte`,`id_tipo`,`id_color`,`id_edicion`,`id_producto`) VALUES (DEFAULT,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0"," As Drawn Together enters the battlefield, choose an artist. Creatures with art by the chosen artist get +2/+2.","'My Pete Venters theme deck is nearly complete. Then I shall be unstoppable Bwahahahaaa' —Pete Venters","2WW","","","",24,3,10000,47,202);
INSERT INTO `cartas` (`id`,`created_at`,`updated_at`,`oracle`,`flavortext`,`mana`,`ataque`,`defensa`,`subtipo`,`id_arte`,`id_tipo`,`id_color`,`id_edicion`,`id_producto`) VALUES (DEFAULT,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","Whenever a player plays a spell that counters a spell that has been played or a player plays a spell that comes into play with counters, that player may counter the next spell played or put an add...","","2UU","","","",18,3,100000,37,203);
INSERT INTO `cartas` (`id`,`created_at`,`updated_at`,`oracle`,`flavortext`,`mana`,`ataque`,`defensa`,`subtipo`,`id_arte`,`id_tipo`,`id_color`,`id_edicion`,`id_producto`) VALUES (DEFAULT,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","Flying, first strike 1Black, Reveal Infernal Spawn of Evil from your hand, Say 'It's coming': Infernal Spawn of Evil deals 1 damage to target opponent or planeswalker.","Activate this ability only during your upkeep and only once each turn.","6BBB",7,7,"Bestia",86,5,1000,47,204);
INSERT INTO `cartas` (`id`,`created_at`,`updated_at`,`oracle`,`flavortext`,`mana`,`ataque`,`defensa`,`subtipo`,`id_arte`,`id_tipo`,`id_color`,`id_edicion`,`id_producto`) VALUES (DEFAULT,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","Flying, first strike, trample. Once each turn, while you're searching your library, you may pay 1Black, reveal Infernal Spawn of Infernal Spawn of Evil from your library and say 'I'm coming, too'","If you do, Infernal Spawn of Infernal Spawn of Evil deals 2 damage to a player of your choice.","8BB",8,8,"Demon child",17,5,1000,81,205);
INSERT INTO `cartas` (`id`,`created_at`,`updated_at`,`oracle`,`flavortext`,`mana`,`ataque`,`defensa`,`subtipo`,`id_arte`,`id_tipo`,`id_color`,`id_edicion`,`id_producto`) VALUES (DEFAULT,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","First strike T: Reveal your hand and discard a card of target opponent's choice. Then that player reveals their hand and discards a card of your choice.","Activate this ability only any time you could cast a sorcery.","BBR",3,2,"Hechicero humano",1,5,001100,8,206);
INSERT INTO `cartas` (`id`,`created_at`,`updated_at`,`oracle`,`flavortext`,`mana`,`ataque`,`defensa`,`subtipo`,`id_arte`,`id_tipo`,`id_color`,`id_edicion`,`id_producto`) VALUES (DEFAULT,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","If this spell is the first spell you've cast this game, you may cast it without paying its mana cost.","Look at the top five cards of your library. You may reveal a creature or land card from among them and put it into your hand. Put the rest on the bottom of your library in a random order.","1G","","","",26,4,000010,73,207);
INSERT INTO `cartas` (`id`,`created_at`,`updated_at`,`oracle`,`flavortext`,`mana`,`ataque`,`defensa`,`subtipo`,`id_arte`,`id_tipo`,`id_color`,`id_edicion`,`id_producto`) VALUES (DEFAULT,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","Pursuant to subsection 3.1(4) of Richard's Rules of Order, at the beginning of the upkeep of each participant in this game of the Magic: The Gathering® trading card game","(hereafter known as "PLAYER"), that PLAYER performs all actions in the sequence of previously added actions (hereafter known as "ACTION QUEUE"), in the order those actions were added, then adds...","3BB","","","",53,3,100000,81,208);



USE mageek;

INSERT INTO productos (`id`,`created_at`,`updated_at`,`id_categoria`,`stock`,`precio`,`nombre`,`descripion`,`borrado`)
# 4 blisters
VALUES (211,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",1,10,0.99,"Blister Unhinged - vintage","Un blister sin tocar del '04."),
(212,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",1,10,1.99,"Blister Dissension","Blister de la expansión Dissension."),
(213,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",1,10,2.49,"Blister Throne of Eldraine","Blister de la expansión Throne of Eldraine."),
(214,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",1,10,3.99,"Blister Rivals of Ixalan","Blister de la edición Rivals of Ixalan."),
# 4 dados
(221,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",3,10,2.99,"Dados Planar Chaos clásicos","Dos dados de 6 caras para jugar planechase con tus amigues!"),
(222,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",3,10,1.99,"Dado de contadores","Para poder jugar sin interrupciones ni dudas! Precio por unidad."),
(223,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",3,10,0.99,"Dado Spindown clásico","Acelerá tus juegos con los spindown de toda la vida! Consultar por colores/ediciones."),
(224,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",3,10,7.99,"Dados metálicos de contadores","Precio por unidad."),
# 4 folios
(231,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",4,10,0.99,"Folios de Sorin Markov","Protegé tus cartas con el planeswalker de Innistrad!"),
(232,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",4,10,0.99,"Folios de StarCityGames","Disfrutá jugando con protectores de nuestra competencia! No sé quién subió este producto."),
(233,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",4,10,0.99,"Folios de colores clásicos","Folios de colores sólidos para proteger tus cartas de los elementos! Una solución económica para un problema caro."),
(234,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",4,10,0.99,"Folios translúcidos","Protegé tus cartas sin perder jugabilidad ni diseño!"),
# 3 packs
(241,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",5,10,0.99,"Mazo de Throne of Eldraine","Acompañá a Chulane con tu primer mazo, o reforzá tus otros mazos con esta excelente oportunidad!"),
(242,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",5,10,0.99,"Mazo prearmado de Rivals of Ixalan","Acompañá a Vraska con tu primer mazo, o reforzá tus otros mazos con esta excelente oportunidad!"),
(243,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",5,10,0.99,"Mazo de Dissension","Acompañá al gremio Rakdos con tu primer mazo, o reforzá tus otros mazos con esta excelente oportunidad!");

INSERT INTO ediciones (`id`,`created_at`,`updated_at`,`anio`,`nombre`)
VALUES (101,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",2004,"unhinged"),
(102,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",2006,"dissension"),
(103,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",2019,"throne of eldraine"),
(104,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",2018,"rivals of ixalan"),
(105,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",1998,"unglued");


INSERT INTO blisters (`id`,`created_at`,`updated_at`,`Arte` ,`id_producto`,`id_edicion`) 

VALUES (101,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","unhinged",211,101),
(101,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","dissension",212,102),
(101,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","throne of eldraine",213,103),
(101,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","rivals of ixalan",214,104);

INSERT INTO dados (`id`,`created_at`,`updated_at`,`color`,`caras`,`id_producto`)
VALUES (101,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","negro",6,221),
(101,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","blanco y negro",6,222),
(101,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","surtido",20,223),
(101,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","metálico",6,224);

INSERT INTO folios (`id`,`created_at`,`updated_at`,`color`,`id_producto`)
VALUES (101,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","negro - ilustrado",231),
(101,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","natural - ilustrado",232),
(101,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","surtido",233),
(101,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","translúcido",234);


INSERT INTO packs (`id`,`created_at`,`updated_at`,`id_color`,`modelo`,`id_edicion`,`id_producto`)
VALUES (101,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",110010,"chulane",103,241), # eld
(101,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",001000,"vraska",104,242), #ixa
(101,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",110000,"rakdos",102,243); #diss


