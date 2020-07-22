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
Tierra, Encantamiento, Instantáneo, Criatura, Conjuro, Planeswalker, Plano, Evento, Némesis, Commander, Equipo.

# Sacar columna 'borrado' de packs (superflua)
alter table "packs" drop "borrado"

# Categorías
update categorias set categoria="blister" where id=1
update categorias set categoria="carta" where id=2
update categorias set categoria="dado" where id=3
update categorias set categoria="folio" where id=4
update categorias set categoria="pack" where id=5
