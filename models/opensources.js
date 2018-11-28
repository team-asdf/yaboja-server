/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
    return sequelize.define('opensources', {
        id: {
            type: DataTypes.INTEGER(11).UNSIGNED,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        repo: {
            type: DataTypes.TEXT,
            allowNull: true
        },
        url: {
            type: DataTypes.TEXT,
            allowNull: true
        }
    }, {
        timestamps: false
    }, {
        tableName: 'opensources'
    });
};
