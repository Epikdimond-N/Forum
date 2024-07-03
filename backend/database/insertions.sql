INSERT INTO topics (topic_id, topic_title, topic_state, topic_message, created_at, id_user, user_name, topic_categorie) VALUES
    (1, "La magie du jazz", 'Ouvert', "Le jazz est une musique intemporelle qui traverse les âges.", '2024-06-12 09:15', 2, 2, 'Jazz'),
    (2, "Nouveautés K-POP", 'Ouvert', "Avez-vous écouté les derniers albums de BTS et BLACKPINK ?", '2024-06-12 10:30', 4, 4, 'K-POP'),
    (3, "Découvrir le flamenco", 'Ouvert', "Le flamenco est une danse et une musique passionnante à découvrir.", '2024-06-12 11:45', 6, 6, 'Flamenco'),
    (4, "Les classiques du rock", 'Ouvert', "Quels sont vos albums rock préférés de tous les temps ?", '2024-06-12 12:00', 6, 6, 'Rock'),
    (5, "Le charme de la musique classique", 'Ouvert', "La musique classique a un effet apaisant et inspirant.", '2024-06-12 13:15', 4, 4, 'Classique'),
    (6, "Les meilleurs tubes de la pop", 'Ouvert', "Partagez vos hits pop préférés des années 2000.", '2024-06-12 14:20', 6, 6, 'Pop'),
    (7, "Le pouvoir du funk", 'Ouvert', "Le funk est une explosion de rythme et de groove.", '2024-06-12 15:30', 3, 3, 'Funk'),
    (8, "Les légendes du rap", 'Ouvert', "Quels rappeurs ont marqué l'histoire selon vous ?", '2024-06-12 16:45', 1, 1, 'Rap'),
    (9, "Mix DJ en live", 'Ouvert', "Venez écouter mon dernier set de DJ en direct.", '2024-06-12 17:50', 1, 1, 'DJ'),
    (10, "La scène reggae actuelle", 'Ouvert', "Quels artistes reggae contemporains aimez-vous ?", '2024-06-12 18:10', 7, 7, 'Reggae'),
    (11, "Ambiance techno", 'Ouvert', "La techno, c'est la musique du futur. Quels sont vos morceaux préférés ?", '2024-06-12 19:25', 3, 3, 'Techno'),
    (12, "Sonorités afro", 'Ouvert', "La musique afro a une richesse culturelle incroyable.", '2024-06-12 20:35', 4, 4, 'Musique afro'),
    (13, "L'énergie du métal", 'Ouvert', "Le métal, c'est plus qu'un genre, c'est un mode de vie.", '2024-06-12 21:45', 1, 1, 'Metal'),
    (14, "Les tubes disco", 'Ouvert', "Revivez la fièvre du samedi soir avec les meilleurs morceaux disco.", '2024-06-12 22:55', 4, 4, 'Disco'),
    (15, "La chaleur du zouk", 'Ouvert', "Dansez au rythme du zouk et laissez-vous emporter.", '2024-06-12 23:10', 5, 5, 'Zouk'),
    (16, "Le blues éternel", 'Ouvert', "Le blues, une musique qui parle à l'âme.", '2024-06-12 23:25', 2, 2, 'Blues'),
    (17, "Découverte de la country", 'Ouvert', "La musique country raconte des histoires fascinantes.", '2024-06-13 00:35', 5, 5, 'Country'),
    (18, "Électro envoûtante", 'Ouvert', "Les sons électro qui vous transportent ailleurs.", '2024-06-13 01:45', 5, 5, 'Electro'),
    (19, "Variété pour tous", 'Ouvert', "La variété française, un mélange de styles pour tous les goûts.", '2024-06-13 02:55', 2, 2, 'Variété'),
    (20, "Les rythmes latinos", 'Ouvert', "La musique latino est vibrante et pleine de vie.", '2024-06-13 03:10', 3, 3, 'Latino');

    INSERT INTO posts (post_id, post_content, created_at, post_picture, post_id_1, id_user, topic_id) VALUES
    (1, "Le jazz a une profondeur incroyable", '2024-06-15 15:20', NULL, 0, 3, 1),
    (2, "BTS est vraiment au sommet de la K-POP en ce moment", '2024-06-15 16:05', NULL, 0, 4, 2),
    (3, "Le flamenco a une énergie unique, je l'adore", '2024-06-15 16:50', NULL, 0, 5, 3),
    (4, "Pour moi, l'album 'Dark Side of the Moon' des Pink Floyd est incontournable", '2024-06-15 17:35', NULL, 0, 6, 4),
    (5, "Je trouve que la musique classique aide vraiment à se concentrer", '2024-06-15 18:20', NULL, 0, 7, 5),
    (6, "La pop des années 2000 me rappelle tellement de bons souvenirs", '2024-06-15 19:05', NULL, 0, 8, 6),
    (7, "Le groove du funk est irrésistible, ça donne envie de danser", '2024-06-15 19:50', NULL, 0, 9, 7),
    (8, "Pour moi, Tupac est le plus grand rappeur de tous les temps", '2024-06-15 20:35', NULL, 0, 10, 8),
    (9, "Ton set de DJ était vraiment excellent, bravo !", '2024-06-15 21:20', NULL, 0, 11, 9),
    (10, "J'adore écouter Chronixx, il apporte un souffle nouveau au reggae", '2024-06-15 22:05', NULL, 0, 12, 10),
    (11, "Les sets techno de Charlotte de Witte sont incroyables", '2024-06-15 22:50', NULL, 0, 13, 11),
    (12, "La musique afro a tellement de rythmes et de styles différents, c'est fascinant", '2024-06-15 23:35', NULL, 0, 14, 12),
    (13, "Le métal m'aide vraiment à me défouler, c'est puissant", '2024-06-16 00:20', NULL, 0, 15, 13),
    (14, "Le disco reste une musique festive et joyeuse", '2024-06-16 01:05', NULL, 0, 16, 14),
    (15, "Le zouk me fait toujours penser aux vacances et à la plage", '2024-06-16 01:50', NULL, 0, 17, 15),
    (16, "Le blues raconte des histoires de vie, c'est poignant", '2024-06-16 02:35', NULL, 0, 18, 16),
    (17, "La musique country a un charme rustique et authentique", '2024-06-16 03:20', NULL, 0, 19, 17),
    (18, "Les sons électro de Daft Punk sont intemporels", '2024-06-16 04:05', NULL, 0, 20, 18),
    (19, "La variété française a toujours eu des chansons qui touchent le cœur", '2024-06-16 04:50', NULL, 0, 21, 19),
    (20, "La musique latino apporte une énergie et une chaleur incomparables", '2024-06-16 05:35', NULL, 0, 22, 20);


INSERT INTO users (user_name, first_name, last_name, mail_adress, date_of_birth, user_password, user_biograpy, user_statut)
VALUES 
('CacaMan', 'Kantin', 'Fagniart', 'jdoe@example.com', '1980-05-15', '123', NULL, 0),
('SanglierKiller', 'Juilen ', 'Dante', 'asmith@example.com', '1992-09-23', '456', NULL, 0),
('TechnoDindon', 'Vito', 'Deriu', 'bwilliams@example.com', '1985-02-10', '789', NULL, 0),
('ThePakistanKing', 'Kheir', 'Eddine', 'cmiller@example.com', '1990-12-05', '101', NULL, 0),
('CalvassLord', 'Cyril', 'Rodriguez', 'djohnson@example.com', '1988-07-19', '202', NULL, 0),
('DjStif', 'Louka', 'Siary', 'eclark@example.com', '1991-03-12', '303', NULL, 0),
('4dolf', 'Arthur', 'Herry', 'janderson@example.com', '1983-11-04', '404', NULL, 0),
('TheGOAT', 'Alan', 'Philipiert', 'lbrown@example.com', '1979-08-22', '505', NULL, 0);
