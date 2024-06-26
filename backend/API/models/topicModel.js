const connection = require("../config/authBDD");

exports.ModelInsertTopic = (topic) => {
  return new Promise(async (resolve, reject) => {
    const sql = `INSERT INTO topics (topic_title, topic_message, topic_state, created_at) VALUES(?,?,?,?)`;
    connection.query(
      sql,
      [topic.titre, topic.contenu, topic.etat, topic.date],
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
      u.user_name
      FROM
      topics t LEFT JOIN users u ON t.id_user = u.id_user`;
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
