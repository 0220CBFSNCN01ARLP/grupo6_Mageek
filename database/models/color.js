"use strict";
module.exports = (sequelize, DataTypes) => {
    const Color = sequelize.define(
        "Colores",
        {
            id: {
                type: DataTypes.INTEGER(12).UNSIGNED,
                primaryKey: true,
                autoIncrement: true,
            },
            created_at: { type: DataTypes.DATE },
            updated_at: { type: DataTypes.DATE },
            color: {
                type: DataTypes.STRING(50),
                unique: true,
            },
        },
        {
            tableName: "colores",
            timestamps: false,
        }
    );
    Color.associate = function (models) {
        Color.hasMany(models.Cartas, {
            as: "cartas",
            foreignKey: "id_color",
        });
        Color.hasMany(models.Packs, {
            as: "packs",
            foreignKey: "id_color",
        });
    };
    return Color;
};
