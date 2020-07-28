"use strict";
module.exports = (sequelize, DataTypes) => {
    const Blister = sequelize.define(
        "Blisters",
        {
            id: {
                type: DataTypes.INTEGER(12).UNSIGNED,
                primaryKey: true,
                autoIncrement: true,
            },
            created_at: { type: DataTypes.DATE },
            updated_at: { type: DataTypes.DATE },
            arte: { type: DataTypes.STRING(40) },
            id_producto: {
                type: DataTypes.INTEGER(12).UNSIGNED,
                unique: true,
            },
            id_edicion: { type: DataTypes.INTEGER(12).UNSIGNED },
        },
        {
            tableName: "blisters",
            timestamps: false,
        }
    );
    Blister.associate = function (models) {
        Blister.belongsTo(models.Ediciones, {
            as: "ediciones",
            foreignKey: "id_edicion",
        });
        Blister.belongsTo(models.Productos, {
            as: "productos",
            foreignKey: "id_producto",
        });
    };
    return Blister;
};
