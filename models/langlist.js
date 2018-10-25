/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('langlist', {
    id: {
      type: DataTypes.INTEGER(11).UNSIGNED,
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },
    name: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    popular: {
      type: DataTypes.STRING(5),
      allowNull: true
    }
  }, {
  	timestamps: false
  }, {
    tableName: 'langlist'
  });
};
