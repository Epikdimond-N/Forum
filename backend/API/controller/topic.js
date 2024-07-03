require("dotenv").config();
const topic = require("../models/topicModel");
const jwt = require("jsonwebtoken");

const jwtkey = process.env.JWT_KEY;

exports.InsertTopic = async (req, res) => {
  const token = req.headers.authorization;
  const decript = jwt.verify(token, jwtkey);
  const idUser = decript.sub;
  console.log(req.body);
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

exports.GetTopicsByCat = async (req, res) => {
  const cat = req.body.cat;
  const resultat = await topic.ModelGetTopicsByCat(cat);
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
  res.status(200).send({
    message: "Creation compte requise",
  });
};

exports.UpVote = async (req, res) => {
  const toComp = req.body.body;
  const token = req.headers.authorization;
  const decript = jwt.verify(token, jwtkey);
  const id = decript.sub;
  const list = await topic.ModelGetVotes();
  list.forEach((post) => {
    if (post.post_id === toComp.topic_id) {
      topic.ModelUpdatePostLike(post.post_id);
      res.status(200).send({
        message: "Post liké",
      });
      return;
    }
  });

  await topic.ModelUpVote(toComp.id_post, id);
  res.status(200).send({
    message: "Post liké",
  });
};

exports.DownVote = async (req, res) => {
  const toComp = req.body.body;
  const token = req.headers.authorization;
  const decript = jwt.verify(token, jwtkey);
  const id = decript.sub;
  const list = await topic.ModelGetVotes();
  list.forEach((post) => {
    if (post.post_id === toComp.topic_id) {
      topic.ModelUpdatePostDislike(post.post_id);
      res.status(200).send({
        message: "Post liké",
      });
      return;
    }
  });

  await topic.ModelDownVote(toComp.id_post, id);
  res.status(200).send({
    message: "Post liké",
  });
};
