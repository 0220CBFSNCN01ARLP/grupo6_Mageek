"use strict";
module.exports = (sequelize, DataTypes) => {
    const Pack = sequelize.define(
        "Packs",
        {
            id: {
                type: DataTypes.INTEGER(12).UNSIGNED,
                primaryKey: true,
                autoIncrement: true,
            },
            created_at: { type: DataTypes.DATE },
            updated_at: { type: DataTypes.DATE },
            id_color: { type: DataTypes.INTEGER(12).UNSIGNED },
            id_producto: {
                type: DataTypes.INTEGER(12).UNSIGNED,
                unique: true,
            },
            id_edicion: { type: DataTypes.INTEGER(12).UNSIGNED },
            modelo: { type: DataTypes.STRING(50) },
        },
        {
            tableName: "packs",
            timestamps: false,
        }
    );
    Pack.associate = function (models) {
        Pack.belongsTo(models.Colores, {
            as: "colores",
            foreignKey: "id_color",
        });
        Pack.belongsTo(models.Productos, {
            as: "productos",
            foreignKey: "id_producto",
        });
        Pack.belongsTo(models.Ediciones, {
            as: "ediciones",
            foreignKey: "id_edicion",
        });
    };
    return Pack;
};
