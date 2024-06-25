require("dotenv").config();
const topic = require("../models/topicModel");

exports.InsertTopic = async (req, res) => {
  console.log("test");
  console.log(req.body);
  const resultat = await topic.ModelInsertTopic(req.body);
  res.status(200).send({
    message: "ca marche wallah",
  });
};
