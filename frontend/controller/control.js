require("dotenv").config();
const url = "http://localhost:5000";
const axios = require("axios");
const { exists } = require("fs");

exports.Index = async (req, res) => {
  const list = await axios.get(`${url}/get-topics`);
  res.render("../views/pages/index", { list });
};

exports.UpVote = async (req, res) => {
  if (req.cookies.Token == null) {
    res.redirect("/token-not-found");
  } else {
    const token = req.cookies.Token.Token;
    let body = req.query;
    await axios.post(
      `${url}/upvote`,
      { body },
      {
        headers: {
          Authorization: token,
          "Content-Type": "application/json",
        },
      }
    );
    res.redirect(`/detail-topic/${body.id_topic}`);
  }
};

exports.DownVote = async (req, res) => {
  const list = await axios.get(`${url}/get-topics`);
  res.render("../views/pages/index", { list });
};

exports.CreateTopic = async (req, res) => {
  if (req.cookies.Token == null) {
    res.redirect("/token-not-found");
  } else {
    res.render("../views/pages/create-topic");
  }
};

exports.DeleteTopic = async (req, res) => {
  const token = req.cookies.Token.Token;
  const body = req.query;
  await axios.delete(
    `${url}/delete-topic/${body.id}`,
    { body },
    {
      headers: {
        Authorization: token,
        "Content-Type": "application/json",
      },
    }
  );
  res.redirect("/index");
};

exports.InsertTopic = async (req, res) => {
  if (req.cookies.Token == null) {
    res.redirect("/token-not-found");
  } else {
    const token = req.cookies.Token.Token || "";
    const body = req.query;
    const dateActuelle = new Date();
    dateActuelle.setHours(dateActuelle.getHours() + 2);
    let dateFormattee = dateActuelle.toISOString().slice(0, 16);
    dateFormattee = dateFormattee.replace(new RegExp("T", "g"), " ");
    body.date = dateFormattee;
    body.etat = "Ouvert";
    await axios.post(`${url}/post-topic`, body, {
      headers: {
        Authorization: token,
        "Content-Type": "application/json",
      },
    });
    res.redirect("/index");
  }
};

exports.InsertPost = async (req, res) => {
  if (req.cookies.Token == null) {
    res.redirect("/token-not-found");
  } else {
    const token = req.cookies.Token.Token;
    let body = req.query;
    const dateActuelle = new Date();
    dateActuelle.setHours(dateActuelle.getHours() + 2);
    let dateFormattee = dateActuelle.toISOString().slice(0, 16);
    dateFormattee = dateFormattee.replace(new RegExp("T", "g"), " ");
    body.date = dateFormattee;
    await axios.post(
      `${url}/post-post`,
      { body },
      {
        headers: {
          Authorization: token,
          "Content-Type": "application/json",
        },
      }
    );
    res.redirect(`/detail-topic/${body.id_topic}`);
  }
};

exports.CreateAccountPage = async (req, res) => {
  res.render("../views/pages/create-account");
};

exports.TokenNotFound = async (req, res) => {
  res.render("../views/pages/token-not-found");
};

exports.ConnectPage = async (req, res) => {
  res.render("../views/pages/connect-page");
};

exports.CreateAccount = async (req, res) => {
  const body = req.query;
  await axios.post(`${url}/create-account`, body);
  res.render("../views/pages/create-account");
};

exports.Login = async (req, res) => {
  const body = req.query;
  const test = await axios.post(`${url}/get-login`, { body });
  res.cookie("Token", test.data, {
    maxAge: 24 * 60 * 60 * 1000,
    httpOnly: true,
    secure: false,
    sameSite: "Lax",
  });
  res.redirect("/index");
};

exports.DetailTopic = async (req, res) => {
  const body = req.params.id;
  const topic = await axios.post(`${url}/get-topic-by-id`, { body });
  console.log(topic.data.posts);
  const kantin = {
    resultat: topic.data.resultat,
    posts: topic.data.posts,
  };
  res.render("../views/pages/detail-topic", { kantin });
};
