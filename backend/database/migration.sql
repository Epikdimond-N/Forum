CREATE TABLE users(
   id_user INT AUTO_INCREMENT,
   user_name VARCHAR(15) NOT NULL,
   first_name VARCHAR(50) NOT NULL,
   last_name VARCHAR(50) NOT NULL,
   mail_adress VARCHAR(100) NOT NULL,
   date_of_birth DATETIME NOT NULL,
   profil_picture BLOB,
   user_biograpy VARCHAR(200),
   user_statut BOOLEAN NOT NULL,
   PRIMARY KEY(id_user),
   UNIQUE(user_name),
   UNIQUE(mail_adress)
);

CREATE TABLE topics(
   topic_id INT AUTO_INCREMENT,
   topic_title VARCHAR(50) NOT NULL,
   topic_state VARCHAR(50) NOT NULL,
   topic_message TEXT NOT NULL,
   created_at DATETIME NOT NULL,
   id_user VARCHAR(10) NOT NULL,
   PRIMARY KEY(topic_id),
   FOREIGN KEY(id_user) REFERENCES users(id_user)
);

CREATE TABLE tags(
   tag_id INT AUTO_INCREMENT,
   tag_label VARCHAR(50) NOT NULL,
   PRIMARY KEY(tag_id),
   UNIQUE(tag_label)
);

CREATE TABLE role(
   id_role INT AUTO_INCREMENT,
   is_admin BOOLEAN NOT NULL,
   is_userlog BOOLEAN,
   PRIMARY KEY(id_role)
);

CREATE TABLE posts(
   post_id INT AUTO_INCREMENT,
   post_content TEXT NOT NULL,
   created_at DATETIME NOT NULL,
   updated_at VARCHAR(50),
   deleted_at DATETIME,
   post_picture TEXT,
   post_id_1 INT NOT NULL,
   id_user VARCHAR(10) NOT NULL,
   topic_id INT NOT NULL,
   PRIMARY KEY(post_id),
   FOREIGN KEY(post_id_1) REFERENCES posts(post_id),
   FOREIGN KEY(id_user) REFERENCES users(id_user),
   FOREIGN KEY(topic_id) REFERENCES topics(topic_id)
);

CREATE TABLE topic_tag(
   topic_id INT,    
   tag_id INT,
   PRIMARY KEY(topic_id, tag_id),
   FOREIGN KEY(topic_id) REFERENCES topics(topic_id),
   FOREIGN KEY(tag_id) REFERENCES tags(tag_id)
);

CREATE TABLE reaction_post(
   id_user INT,
   post_id INT,
   nb_like INT NOT NULL,
   nb_dislike INT NOT NULL,
   score_reaction INT NOT NULL,
   PRIMARY KEY(id_user, post_id),
   FOREIGN KEY(id_user) REFERENCES users(id_user),
   FOREIGN KEY(post_id) REFERENCES posts(post_id)
);

CREATE TABLE friend(
   id_user INT,
   id_user_1 INT,
   status VARCHAR(50),
   PRIMARY KEY(id_user, id_user_1),
   FOREIGN KEY(id_user) REFERENCES users(id_user),
   FOREIGN KEY(id_user_1) REFERENCES users(id_user)
);

CREATE TABLE user_role(
   id_user INT,
   id_role INT,
   PRIMARY KEY(id_user, id_role),
   FOREIGN KEY(id_user) REFERENCES users(id_user),
   FOREIGN KEY(id_role) REFERENCES role(id_role)
);