/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('contents', {
    idx: {
      type: DataTypes.INTEGER(11).UNSIGNED,
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },
    title: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    content: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    url: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    cnt: {
      type: DataTypes.INTEGER(11),
      allowNull: true
    },
    source: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    keyword: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    image: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    createdAt: {
      type: DataTypes.DATEONLY,
      allowNull: true
    },
    priority: {
      type: DataTypes.INTEGER,
      allowNull: false
    }
  }, {
  	timestamps: false
  }, {
    tableName: 'contents'
  });
};
