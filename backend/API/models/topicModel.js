const connection = require("../config/authBDD");

exports.ModelInsertTopic = (topic, id) => {
  return new Promise(async (resolve, reject) => {
    const sql = `INSERT INTO topics (topic_title, topic_message, topic_state, created_at, id_user, topic_categorie) VALUES(?,?,?,?,?,?)`;
    connection.query(
      sql,
      [topic.titre, topic.contenu, topic.etat, topic.date, id, topic.tag],
      (err, results) => {
        if (err) {
          reject(err);
        } else {
          resolve(results[0]);
        }
      }
    );
  });
};

exports.ModelInsertPost = (post, id) => {
  return new Promise(async (resolve, reject) => {
    const sql = `INSERT INTO posts (post_content, created_at, id_user, topic_id) VALUES(?,?,?,?)`;
    connection.query(
      sql,
      [post.body.post, post.body.date, id, post.body.id_topic],
      (err, results) => {
        if (err) {
          reject(err);
        } else {
          resolve(results[0]);
        }
      }
    );
  });
};

exports.ModelDeleteTopic = (id) => {
  return new Promise(async (resolve, reject) => {
    const sql = `DELETE FROM topics WHERE topic_id=?`;
    connection.query(sql, [id], (err, results) => {
      if (err) {
        reject(err);
      } else {
        resolve(results[0]);
      }
    });
  });
};

exports.ModelGetTopics = () => {
  return new Promise(async (resolve, reject) => {
    const sql = `SELECT
      t.topic_id,
      t.topic_title,
      t.topic_state,
      t.topic_message,
      t.created_at,
      t.id_user,
      t.topic_categorie,
      u.user_name
      FROM
      topics t LEFT JOIN users u ON t.id_user = u.id_user`;
    connection.query(sql, (err, results) =>
      err ? reject(err) : resolve(results)
    );
  });
};

exports.ModelGetTopicsByCat = (cat) => {
  return new Promise(async (resolve, reject) => {
    const sql = `SELECT
      t.topic_id,
      t.topic_title,
      t.topic_state,
      t.topic_message,
      t.created_at,
      t.id_user,
      t.topic_categorie,
      u.user_name
      FROM
      topics t LEFT JOIN users u ON t.id_user = u.id_user
      WHERE t.topic_categorie = ?`;
    connection.query(sql, cat, (err, results) =>
      err ? reject(err) : resolve(results)
    );
  });
};

exports.ModelGetPosts = (id) => {
  return new Promise(async (resolve, reject) => {
    const sql = `SELECT
      p.post_id,
      p.post_content,
      p.created_at,
      u.user_name,
      r.score_reaction
      FROM
      posts p LEFT JOIN users u ON p.id_user = u.id_user 
      LEFT JOIN topics t ON p.topic_id = t.topic_id
      LEFT JOIN reaction_post r ON p.post_id = r.post_id
      WHERE t.topic_id = ?
      `;

    connection.query(sql, id, (err, results) =>
      err ? reject(err) : resolve(results)
    );
  });
};

exports.ModelGetTopicId = (id) => {
  return new Promise(async (resolve, reject) => {
    const sql = `SELECT
      t.topic_id,
      t.topic_title,
      t.topic_state,
      t.topic_message,
      t.created_at,
      t.id_user,
      u.user_name
      FROM
      topics t LEFT JOIN users u ON t.id_user = u.id_user WHERE t.topic_id = ${id}`;
    connection.query(sql, (err, results) =>
      err ? reject(err) : resolve(results)
    );
  });
};

exports.ModelCreateAccount = (user) => {
  return new Promise(async (resolve, reject) => {
    const sql = `INSERT INTO users (user_name, first_name, last_name, mail_adress, date_of_birth, user_password) VALUES(?,?,?,?,?,?)`;
    connection.query(
      sql,
      [
        user.user_name,
        user.first_name,
        user.last_name,
        user.mail_adress,
        user.date_of_birth,
        user.user_password,
      ],
      (err, results) => {
        if (err) {
          reject(err);
        } else {
          resolve(results[0]);
        }
      }
    );
  });
};

exports.ModelGetLogin = () => {
  return new Promise(async (resolve, reject) => {
    const sql = `SELECT
      u.id_user,
      u.user_name,
      u.user_password
      FROM
      users u `;
    connection.query(sql, (err, results) =>
      err ? reject(err) : resolve(results)
    );
  });
};

exports.ModelGetVotes = () => {
  return new Promise(async (resolve, reject) => {
    const sql = `SELECT * FROM  reaction_post`;
    connection.query(sql, (err, results) =>
      err ? reject(err) : resolve(results)
    );
  });
};

exports.ModelUpVote = (addlike, id) => {
  console.log(addlike);
  return new Promise(async (resolve, reject) => {
    const sql = `INSERT INTO reaction_post (id_user, post_id, nb_like, score_reaction) VALUES(?,?,?,?)`;
    connection.query(sql, [id, addlike, 1, 1], (err, results) =>
      err ? reject(err) : resolve(results)
    );
  });
};

exports.ModelDownVote = (addlike, id) => {
  console.log(addlike);
  return new Promise(async (resolve, reject) => {
    const sql = `INSERT INTO reaction_post (id_user, post_id, nb_dislike, score_reaction) VALUES(?,?,?,?)`;
    connection.query(sql, [id, addlike, 1, -1], (err, results) =>
      err ? reject(err) : resolve(results)
    );
  });
};

exports.ModelUpdatePostLike = (id) => {
  return new Promise(async (resolve, reject) => {
    const sql = `UPDATE reaction_post SET score_reaction = score_reaction + 1 WHERE post_id = ?`;
    connection.query(sql, id, (err, results) =>
      err ? reject(err) : resolve(results)
    );
  });
};

exports.ModelUpdatePostDislike = (id) => {
  return new Promise(async (resolve, reject) => {
    const sql = `UPDATE reaction_post SET score_reaction = score_reaction + 1 WHERE post_id = ?`;
    connection.query(sql, id, (err, results) =>
      err ? reject(err) : resolve(results)
    );
  });
};
