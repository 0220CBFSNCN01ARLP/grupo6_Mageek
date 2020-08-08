USE mageek;

INSERT INTO productos (`id`,`created_at`,`updated_at`,`id_categoria`,`stock`,`precio`,`nombre`,`descripcion`)
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
(102,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","dissension",212,102),
(103,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","throne of eldraine",213,103),
(104,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","rivals of ixalan",214,104);

INSERT INTO dados (`id`,`created_at`,`updated_at`,`color`,`caras`,`id_producto`)
VALUES (101,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","negro",6,221),
(102,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","blanco y negro",6,222),
(103,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","surtido",20,223),
(104,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","metálico",6,224);

INSERT INTO folios (`id`,`created_at`,`updated_at`,`color`,`id_producto`)
VALUES (101,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","negro - ilustrado",231),
(102,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","natural - ilustrado",232),
(103,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","surtido",233),
(104,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","translúcido",234);


INSERT INTO packs (`id`,`created_at`,`updated_at`,`id_color`,`modelo`,`id_edicion`,`id_producto`)
VALUES (101,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",110010,"chulane",103,241), # eld
(102,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",001000,"vraska",104,242), #ixa
(103,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0",110000,"rakdos",102,243); #diss


INSERT INTO fotos (`id`,`created_at`,`updated_at`,`url`,`id_producto`)
# blisters
VALUES (201,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","unhinged.jpg",211),
(202,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","dissension.jpg",212),
(203,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","throneOfEldraine.jpg",213),
(204,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","rivalsOfIxalan.jpg",214),
# dados
(205,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","planarDie.png",221),
(206,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","counterDie.jpg",222),
(207,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","planarSpindown.jpg",223),
(208,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","metalCounter.jpg",224),
# folios
(209,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","protectorsSorin.jpg",231),
(210,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","protectorsFish.jpg",232),
(211,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","protectorsPlainColor.jpg",233),
(212,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","protectorsTransparent.jpg",234),
# packs
(213,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","throneOfEldraineDeck.png",241),
(214,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","rivalsOfIxalanDeck.jpg",242),
(215,"2020-08-03 14:49:40.0","2020-08-03 14:49:40.0","dissensionDeck.png",243);
