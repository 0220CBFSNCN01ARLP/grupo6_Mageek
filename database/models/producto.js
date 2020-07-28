"use strict";
module.exports = (sequelize, DataTypes) => {
    const Producto = sequelize.define(
        "Productos",
        {
            id: {
                type: DataTypes.INTEGER(12).UNSIGNED,
                primaryKey: true,
                autoIncrement: true,
            },
            created_at: { type: DataTypes.DATE },
            updated_at: { type: DataTypes.DATE },
            updated_at: { type: DataTypes.DATE },
            id_categoria: { type: DataTypes.INTEGER(12).UNSIGNED },
            stock: { type: DataTypes.INTEGER(12).UNSIGNED },
            precio: { type: DataTypes.DECIMAL(10, 2) },
            descripcion: { type: DataTypes.STRING(200) },
            nombre: {
                type: DataTypes.STRING(50),
            },
            borrado: { type: DataTypes.INTEGER(1) },
        },
        {
            tableName: "productos",
            timestamps: false,
        }
    );
    Producto.associate = function (models) {
        Producto.belongsTo(models.Categorias, {
            as: "categorias",
            foreignKey: "id_categoria",
        });
        Producto.hasMany(models.Blisters, {
            as: "blisters",
            foreignKey: "id_producto",
        });
        Producto.hasMany(models.Cartas, {
            as: "cartas",
            foreignKey: "id_producto",
        });
        Producto.hasMany(models.Dados, {
            as: "dados",
            foreignKey: "id_producto",
        });
        Producto.hasMany(models.Folios, {
            as: "folios",
            foreignKey: "id_producto",
        });
        Producto.hasMany(models.Historial_de_compras, {
            as: "historial_de_compra",
            foreignKey: "id_producto",
        });
        Producto.hasMany(models.Deseados, {
            as: "deseados",
            foreignKey: "id_producto",
        });
        Producto.hasMany(models.Productos_en_carrito, {
            as: "productos_en_carrito",
            foreignKey: "id_producto",
        });
        Producto.hasMany(models.Packs, {
            as: "packs",
            foreignKey: "id_producto",
        });
        Producto.hasMany(models.Fotos, {
            as: "fotos",
            foreignKey: "id_producto",
        });
    };
    return Producto;
};
