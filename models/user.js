/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('user', {
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
    extract_language: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    interested_language: {
      type: DataTypes.TEXT,
      allowNull: true
    },
  }, {
  	timestamps: false
  }, {
    tableName: 'user'
  });
};
