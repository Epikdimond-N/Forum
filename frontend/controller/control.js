const url = "http://localhost:5000";
const axios = require("axios");

exports.Index = async (req, res) => {
  res.render("../views/pages/index");
};

exports.InsertTopic = async (req, res) => {
  console.log(req.query);
  const body = req.query;

  const toInsert = await axios.post(`${url}/post-topic`, body);
  res.render("../views/pages/index");
};
