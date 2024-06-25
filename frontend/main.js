"use strict";

// Importation des modules
const express = require("express");
const cors = require("cors");
const boutiqueRoutes = require("./routeur/routes");

//Reglage du serveur
const app = express();
app.set("view engine", "ejs");
app.use("/public/", express.static("assets"));
app.use(cors());
app.use(boutiqueRoutes);

//Lancement du serveur web
const port = 3000;
app.listen(port, "0.0.0.0", () =>
  console.log(`Server listening on http://localhost:${port}/index`)
);
