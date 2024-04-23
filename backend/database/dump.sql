DROP TABLE IF EXISTS users;
CREATE TABLE users(
    unique_user_identifier VARCHAR(10) UNIQUE NOT NULL,
    user_name VARCHAR(15) UNIQUE NOT NULL,
    is_administrator BOOLEAN NOT NULL,
    is_moderator BOOLEAN NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    mail_adress VARCHAR(100) UNIQUE NOT NULL,
    profil_picture VARCHAR(100),
    user_biography VARCHAR(200),
    PRIMARY KEY(unique_user_identifier)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS topics;
CREATE TABLE topics(
    topic_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    topic_title VARCHAR(50) NOT NULL UNIQUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRETN_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    tags VARCHAR(50) NOT NULL,
    privacy BOOLEAN NOT NULL,
    unique_user_identifier VARCHAR(10) NOT NULL,
    PRIMARY KEY (topic_id),
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS posts;
CREATE TABLE posts(
   post_id INT,
   post_content VARCHAR(8000) NOT NULL,
   post_title VARCHAR(100) NOT NULL,
   created_at DATETIME NOT NULL,
   updated_at VARCHAR(50),
   deleted_at DATETIME,
   post_id_1 INT NOT NULL,
   unique_user_identifier VARCHAR(10) NOT NULL,
   topic_id INT NOT NULL,
   PRIMARY KEY(post_id),
   FOREIGN KEY(post_id_1) REFERENCES posts(post_id),
   FOREIGN KEY(unique_user_identifier) REFERENCES users(unique_user_identifier),
   FOREIGN KEY(topic_id) REFERENCES topics(topic_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS tags;
CREATE TABLE tags(
    tag_id INT AUTO_INCREMENT UNIQUE NOT NULL,
    tag_label VARCHAR(50) UNIQUE NOT NULL
    PRIMARY KEY(tag_id),
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS topics_tags;
CREATE TABLE topics_tags(
   topic_id INT,
   tag_id INT,
   PRIMARY KEY(topic_id, tag_id),
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS users_posts;
CREATE TABLE users_posts(
   unique_user_identifier VARCHAR(10),
   post_id INT,
   PRIMARY KEY(unique_user_identifier, post_id),
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS users_topics;
CREATE TABLE users_topics(
   unique_user_identifier VARCHAR(10),
   topic_id INT,
   PRIMARY KEY(unique_user_identifier, topic_id),
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS friends;
CREATE TABLE friends(
   unique_user_identifier VARCHAR(10),
   unique_user_identifier_1 VARCHAR(10),
   status VARCHAR(50),
   PRIMARY KEY(unique_user_identifier, unique_user_identifier_1),
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE topics;
ADD CONSTRAINT FOREIGN KEY (unique_user_identifier) REFERENCES users(unique_user_identifier);

ALTER TABLE topics_tags;
ADD CONSTRAINT FOREIGN KEY(topic_id) REFERENCES topics(topic_id),
ADD CONSTRAINT FOREIGN KEY(tag_id) REFERENCES tags(tag_id);

ALTER TABLE users_posts;
ADD CONSTRAINT FOREIGN KEY(unique_user_identifier) REFERENCES users(unique_user_identifier),
ADD CONSTRAINT FOREIGN KEY(post_id) REFERENCES posts(post_id);

ALTER TABLE users_topics;
ADD CONSTRAINT FOREIGN KEY(unique_user_identifier) REFERENCES users(unique_user_identifier),
ADD CONSTRAINT FOREIGN KEY(topic_id) REFERENCES topics(topic_id);

ALTER TABLE friends;
ADD CONSTRAINT FOREIGN KEY(unique_user_identifier) REFERENCES users(unique_user_identifier),
ADD CONSTRAINT FOREIGN KEY(unique_user_identifier_1) REFERENCES users(unique_user_identifier);