require("dotenv").config();
const topic = require("../models/topicModel");
const jwt = require("jsonwebtoken");

const jwtkey = process.env.JWT_KEY;

exports.InsertTopic = async (req, res) => {
  const token = req.headers.authorization;
  const decript = jwt.verify(token, jwtkey);
  const idUser = decript.sub;
  await topic.ModelInsertTopic(req.body, idUser);
  res.status(200).send({
    message: "Le topic à bien été ajouté",
  });
};

exports.InsertPost = async (req, res) => {
  const token = req.headers.authorization;
  const decript = jwt.verify(token, jwtkey);
  const idUser = decript.sub;
  await topic.ModelInsertPost(req.body, idUser);
  res.status(200).send({
    message: "Le post à bien été ajouté",
  });
};

exports.DeleteTopics = async (req, res) => {
  const topicId = req.params.id;
  await topic.ModelDeleteTopic(topicId);
  res.status(200).send({
    message: "Topic supprimé",
  });
};

exports.GetTopics = async (req, res) => {
  const resultat = await topic.ModelGetTopics();
  res.status(200).send({
    message: "Topics récupérés avec succés",
    resultat: resultat,
  });
};

exports.GetTopicById = async (req, res) => {
  const id = req.body.body;
  const Topic = await topic.ModelGetTopicId(id);
  const Posts = await topic.ModelGetPosts(id);
  res.status(200).send({
    message: "Topics récupérés avec succés",
    resultat: Topic,
    posts: Posts,
  });
};

exports.CreateAccount = async (req, res) => {
  await topic.ModelCreateAccount(req.body);
  res.status(200).send({
    message: "Compte crée avec succés",
  });
};

exports.GetLogin = async (req, res) => {
  const toComp = req.body.body;
  const resultat = await topic.ModelGetLogin();
  resultat.forEach((account) => {
    if (
      account.user_name === toComp.pseudo &&
      account.user_password === toComp.mdp
    ) {
      console.log("Vous êtes connecté");
      const Token = jwt.sign({ sub: account.id_user }, jwtkey, {
        expiresIn: "24h",
      });
      res.status(200).send({ Token });
      return;
    }
  });
};
