const express = require("express");
const routeur = express.Router();
const controller = require("../controller/topic");

routeur.post("/post-topic", controller.InsertTopic);

module.exports = routeur;
