"use strict";
module.exports = (sequelize, DataTypes) => {
    const Dado = sequelize.define(
        "Dados",
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
            },
            caras: { type: DataTypes.INTEGER(3) },
            id_producto: {
                type: DataTypes.INTEGER(12).UNSIGNED,
                unique: true,
            },
        },
        {
            tableName: "dados",
            timestamps: false,
        }
    );
    Dado.associate = function (models) {
        Dado.belongsTo(models.Productos, {
            as: "productos",
            foreignKey: "id_producto",
            onDelete: "CASCADE",
        });
    };
    return Dado;
};
