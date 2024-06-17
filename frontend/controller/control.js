// const url = "http://localhost:4000";
// const axios = require("axios");
// const ErrorHandler = require("./ErrorHandler");

// const errorHandler = new ErrorHandler();

exports.Index = async (req, res) => {
  res.render("../views/pages/index");
};
