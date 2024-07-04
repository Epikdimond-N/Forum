const express = require("express");
const routeur = express.Router();
const controller = require("../controller/control");

routeur.get("/index", controller.Index);
routeur.get("/create-topic", controller.CreateTopic);

routeur.get("/insert-topic", controller.InsertTopic);
routeur.get("/delete-topic", controller.DeleteTopic);
routeur.get("/detail-topic/:id", controller.DetailTopic);
routeur.get("/category", controller.Cat);

routeur.get("/insert-post", controller.InsertPost);

routeur.get("/upvote", controller.UpVote);
routeur.get("/downvote", controller.DownVote);

routeur.get("/connect-page", controller.ConnectPage);
routeur.get("/create-account-page", controller.CreateAccountPage);
routeur.get("/token-not-found", controller.TokenNotFound);

routeur.get("/create-account", controller.CreateAccount);
routeur.get("/login", controller.Login);

routeur.get("/conditions", controller.Conditions);
routeur.get("/politique", controller.Politique);
routeur.get("/mentions", controller.Mentions);
routeur.get("/contact", controller.Contact);

module.exports = routeur;
