const connection = require("../config/authBDD");

exports.ModelInsertTopic = (topic) => {
  return new Promise(async (resolve, reject) => {
    const sql = `INSERT INTO topics (topic_title, topic_message) VALUES(?,?)`;
    connection.query(sql, [topic.titre, topic.contenu], (err, results) => {
      if (err) {
        reject(err);
      } else {
        resolve(results[0]);
      }
    });
  });
};
