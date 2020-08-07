
// module
function addAdditionalData(data, categoryData, fieldsArray) {
    // assign category-dependant data
    fieldsArray.forEach((field) => { if (categoryData.dataValues[field]) { data[field] = categoryData.dataValues[field]; }; });
    if (categoryData.dataValues.ediciones) {  // assign edition, if exists
        editionData = `${categoryData.dataValues.ediciones.dataValues.anio} - ${categoryData.dataValues.ediciones.dataValues.nombre}`;
        data.edicion = editionData;
        delete data.id_edicion;
    }; // assign type, if exists
    if (categoryData.dataValues.tipos) {
        data.tipo = categoryData.dataValues.tipos.dataValues.tipo;
        delete data.id_tipo;
    };
    // assign art, if exists
    if (categoryData.dataValues.artes) {
        data.artista = categoryData.dataValues.artes.dataValues.artista;
        delete data.id_arte;
    };
    // assign color, if exists
    if (categoryData.dataValues.colores) {
        data.color = categoryData.dataValues.colores.dataValues.color;
        delete data.id_color;
        data.id_color = categoryData.dataValues.colores.dataValues.id;
    };
}
module.exports = addAdditionalData;