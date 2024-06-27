const express = require("express");
const routeur = express.Router();
const controller = require("../controller/control");

routeur.get("/index", controller.Index);
routeur.get("/create-topic", controller.CreateTopic);

routeur.get("/insert-topic", controller.InsertTopic);
routeur.get("/delete-topic", controller.DeleteTopic);
routeur.get("/detail-topic/:id", controller.DetailTopic);

routeur.get("/connect-page", controller.ConnectPage);
routeur.get("/create-account-page", controller.CreateAccountPage);
routeur.get("/token-not-found", controller.TokenNotFound);

routeur.get("/create-account", controller.CreateAccount);
routeur.get("/login", controller.Login);

module.exports = routeur;
