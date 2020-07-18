1. Blisters
2. Cartas
3. Dados
4. Folios
5. Packs


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
