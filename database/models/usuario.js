// "use strict";
module.exports = (sequelize, DataTypes) => {
    const Usuario = sequelize.define(
        "Usuarios",
        {
            id: {
                type: DataTypes.INTEGER(12).UNSIGNED,
                primaryKey: true,
                autoIncrement: true,
            },
            created_at: { type: DataTypes.DATE },
            updated_at: { type: DataTypes.DATE },
            nombre_de_usuario: {
                type: DataTypes.STRING(30),
                unique:true,
            },
            nombre: { type: DataTypes.STRING(50) },
            password: {
                type: DataTypes.STRING(60),
                unique: true,
            },
            apellido: { type: DataTypes.STRING(50) },
            email: {
                type: DataTypes.STRING(50),
                unique:true,
            },
            nacimiento: { type: DataTypes.DATE },
            calle: { type: DataTypes.STRING(60) },
            id_pais: { type: DataTypes.INTEGER(12).UNSIGNED },
            id_permiso: { type: DataTypes.INTEGER(12).UNSIGNED },
            pic: { type: DataTypes.STRING(50) },
            borrado: { type: DataTypes.INTEGER(1) },
        },
        {
            tableName: "usuarios",
            timestamps: false,
        }
    );
    Usuario.associate = function (models) {
        Usuario.belongsTo(models.Paises, {
            as: "paises",
            foreignKey: "id_pais",
        });
        Usuario.belongsTo(models.Permisos, {
            as: "permisos",
            foreignKey: "id_permiso",
        });
    };
    return Usuario;
};
