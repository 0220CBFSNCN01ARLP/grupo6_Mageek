"use strict";
module.exports = (sequelize, DataTypes) => {
    const Deseado = sequelize.define(
        "Deseados",
        {
            id: {
                type: DataTypes.INTEGER(12).UNSIGNED,
                primaryKey: true,
                autoIncrement: true,
            },
            created_at: { type: DataTypes.DATE },
            updated_at: { type: DataTypes.DATE },
            id_usuario: { type: DataTypes.INTEGER(12).UNSIGNED },
            id_producto: { type: DataTypes.INTEGER(12).UNSIGNED },
            cantidad: { type: DataTypes.INTEGER(12).UNSIGNED },
            borrado: { type: DataTypes.INTEGER(1) },
        },
        {
            tableName: "deseadis",
            timestamps: false,
        }
    );
    Deseado.associate = function (models) {
        Deseado.belongsTo(models.Usuarios, {
            as: "usuarios",
            foreignKey: "id_usuario",
        });
        Deseado.belongsTo(models.Productos, {
            as: "productos",
            foreignKey: "id_producto",
        });
    };
    return Deseado;
};
