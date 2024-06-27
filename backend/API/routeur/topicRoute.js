const express = require("express");
const routeur = express.Router();
const controller = require("../controller/topic");
const middleware = {
  validateToken: require("../middlewares/auth"),
};

routeur.post("/post-topic", middleware.validateToken, controller.InsertTopic);
routeur.get("/get-topics", controller.GetTopics);
routeur.post("/get-topic-by-id", controller.GetTopicById);
routeur.delete("/delete-topic/:id", controller.DeleteTopics);

routeur.post("/create-account", controller.CreateAccount);
routeur.post("/get-login", controller.GetLogin);

module.exports = routeur;
