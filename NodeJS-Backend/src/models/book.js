"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Book extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Book.init(
    {
      id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        allowNull: false,
        unique: true, // Đảm bảo giá trị id là duy nhất
      },
      bookName: DataTypes.STRING,
      author: DataTypes.STRING,
      datePublish: DataTypes.DATE,
      genre: DataTypes.STRING,
      description: DataTypes.TEXT,
      quantity: DataTypes.INTEGER,
      img: DataTypes.STRING,
      status: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "Book",
    }
  );
  return Book;
};
