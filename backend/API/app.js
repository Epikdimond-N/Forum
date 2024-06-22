"use strict";

//Importation des modules
const express = require("express");
const cors = require("cors"); //Middleware qui permet d'autoriser les requêtes HTTP d'origine différente du serveur

// Crée une application Express
const app = express();
app.use(cors());
app.use("/assets", express.static("/assets"));
/*
Configure votre application Express pour servir des fichiers statiques à partir du répertoire courant.
Lorsque le serveur reçoit une requête commençant par /asset, il recherche le fichier correspondant dans le répertoire spécifié et le renvoie au client.
Maintenant votre dossier asset est accessible depuis l'extérieur
 */
//Lire le body sous format JSON
app.use(express.json());
//Lire un formulaire

const rateLimit = require("./middlewares/rate-limit");
app.use(rateLimit);

//Appel du routeur
const route = require("./routeur/topicRoute");
app.use(route);
// const routelog = require("./routeur/logRoute");
// app.use(routelog);

module.exports = app;
