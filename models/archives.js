/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
    return sequelize.define('archives', {
        idx: {
            type: DataTypes.INTEGER(11).UNSIGNED,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
        },
        userid: {
            type: DataTypes.TEXT,
            allowNull: false
        },
        cd : {
            type: DataTypes.INTEGER,
            allowNull: false
        }
    }, {
        timestamps: false
    }, {
        tableName: 'archives'
    });
};
