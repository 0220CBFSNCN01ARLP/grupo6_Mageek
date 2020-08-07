"use strict";
module.exports = (sequelize, DataTypes) => {
    const Producto_en_carrito = sequelize.define(
        "Productos_en_carrito",
        {
            id: {
                type: DataTypes.INTEGER(12).UNSIGNED,
                primaryKey: true,
                autoIncrement: true,
            },
            created_at: { type: DataTypes.DATE },
            updated_at: { type: DataTypes.DATE},
            id_usuario: { type: DataTypes.INTEGER(12).UNSIGNED},
            id_producto: { type: DataTypes.INTEGER(12).UNSIGNED},
            id_producto: { type: DataTypes.INTEGER(12).UNSIGNED},
            cantidad: { type: DataTypes.INTEGER(12).UNSIGNED},
            borrado: { type: DataTypes.INTEGER(1)},
        },
        {
            tableName: "producto_en_carrito",
            timestamps: false
        }
    );
    Producto_en_carrito.associate = function (models) {
        Producto_en_carrito.belongsTo(models.Usuarios, {
            as: "usuarios",
            foreignKey: "id_usuario",
        });
        Producto_en_carrito.belongsTo(models.Productos, {
            as: "productos",
            foreignKey: "id_producto",
        });
    };
    return Producto_en_carrito;
};
