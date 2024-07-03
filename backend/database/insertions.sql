INSERT INTO `tags` (`Label`) VALUES
                                  ('rap'),
                                  ('pop'),
                                  ('rock'),
                                  ('metal'),
                                  ('jazz'),
                                  ('dj'),
                                  ('reggae'),
                                  ('techno'),
                                  ('bruits-de-tuyaux'),
                                  ('electro'),
                                  ('flamenco'),
                                  ('zouk'),
                                  ('country'),
                                  ('musique-afro'),
                                  ('latino'),
                                  ('classique');

INSERT INTO `role` (`Label`) VALUES
                                  ('user'),
                                  ('admin');

INSERT INTO topics (topic_id, topic_title, topic_state, topic_message, created_at, id_user, user_name, topic_categorie) VALUES
    (1, "La magie du jazz", 'Ouvert', "Le jazz est une musique intemporelle qui traverse les âges.", '2024-06-12 09:15', 1, 'JazzLover', 'Jazz'),
    (2, "Nouveautés K-POP", 'Ouvert', "Avez-vous écouté les derniers albums de BTS et BLACKPINK ?", '2024-06-12 10:30', 2, 'KpopFan123', 'K-POP'),
    (3, "Découvrir le flamenco", 'Ouvert', "Le flamenco est une danse et une musique passionnante à découvrir.", '2024-06-12 11:45', 3, 'FlamencoFever', 'Flamenco'),
    (4, "Les classiques du rock", 'Ouvert', "Quels sont vos albums rock préférés de tous les temps ?", '2024-06-12 12:00', 4, 'RockEnthusiast', 'Rock'),
    (5, "Le charme de la musique classique", 'Ouvert', "La musique classique a un effet apaisant et inspirant.", '2024-06-12 13:15', 5, 'ClassicalLover', 'Classique'),
    (6, "Les meilleurs tubes de la pop", 'Ouvert', "Partagez vos hits pop préférés des années 2000.", '2024-06-12 14:20', 6, 'PopFanatic', 'Pop'),
    (7, "Le pouvoir du funk", 'Ouvert', "Le funk est une explosion de rythme et de groove.", '2024-06-12 15:30', 7, 'FunkMaster', 'Funk'),
    (8, "Les légendes du rap", 'Ouvert', "Quels rappeurs ont marqué l'histoire selon vous ?", '2024-06-12 16:45', 8, 'RapConnoisseur', 'Rap'),
    (9, "Mix DJ en live", 'Ouvert', "Venez écouter mon dernier set de DJ en direct.", '2024-06-12 17:50', 9, 'DjStif', 'DJ'),
    (10, "La scène reggae actuelle", 'Ouvert', "Quels artistes reggae contemporains aimez-vous ?", '2024-06-12 18:10', 10, 'ReggaeRoots', 'Reggae'),
    (11, "Ambiance techno", 'Ouvert', "La techno, c'est la musique du futur. Quels sont vos morceaux préférés ?", '2024-06-12 19:25', 11, 'TechnoHead', 'Techno'),
    (12, "Sonorités afro", 'Ouvert', "La musique afro a une richesse culturelle incroyable.", '2024-06-12 20:35', 12, 'AfroBeats', 'Musique afro'),
    (13, "L'énergie du métal", 'Ouvert', "Le métal, c'est plus qu'un genre, c'est un mode de vie.", '2024-06-12 21:45', 13, 'MetalWarrior', 'Metal'),
    (14, "Les tubes disco", 'Ouvert', "Revivez la fièvre du samedi soir avec les meilleurs morceaux disco.", '2024-06-12 22:55', 14, 'DiscoKing', 'Disco'),
    (15, "La chaleur du zouk", 'Ouvert', "Dansez au rythme du zouk et laissez-vous emporter.", '2024-06-12 23:10', 15, 'ZoukLover', 'Zouk'),
    (16, "Le blues éternel", 'Ouvert', "Le blues, une musique qui parle à l'âme.", '2024-06-12 23:25', 16, 'BluesMan', 'Blues'),
    (17, "Découverte de la country", 'Ouvert', "La musique country raconte des histoires fascinantes.", '2024-06-13 00:35', 17, 'CountryFan', 'Country'),
    (18, "Électro envoûtante", 'Ouvert', "Les sons électro qui vous transportent ailleurs.", '2024-06-13 01:45', 18, 'ElectroVibes', 'Electro'),
    (19, "Variété pour tous", 'Ouvert', "La variété française, un mélange de styles pour tous les goûts.", '2024-06-13 02:55', 19, 'VarieteAdmirer', 'Variété'),
    (20, "Les rythmes latinos", 'Ouvert', "La musique latino est vibrante et pleine de vie.", '2024-06-13 03:10', 20, 'LatinoLover', 'Latino');

INSERT INTO `reaction_post` (`Label`) VALUES
      ('')

    INSERT INTO posts (post_id, post_content, created_at, post_picture, post_id_1, id_user, topic_id) VALUES
-- Topic 1: "La musique c'est cool"
    (1, "C'est vrai que la musique c'est top", '2024-06-15 14:43', NULL, 0, 2, 1),
    (2, "Je ne peux pas imaginer ma vie sans musique", '2024-06-16 10:15', NULL, 0, 3, 1),
    (3, "Chaque genre musical a quelque chose d'unique à offrir", '2024-06-17 08:30', NULL, 0, 4, 1),

-- Topic 2: "BTS et la K-POP"
    (4, "BTS est vraiment au sommet de la K-POP en ce moment", '2024-06-15 16:05', NULL, 0, 5, 2),
    (5, "Leur dernier album est tout simplement incroyable", '2024-06-16 12:45', NULL, 0, 6, 2),
    (6, "Leur chorégraphie est toujours impressionnante", '2024-06-17 09:50', NULL, 0, 7, 2),

-- Topic 3: "Le flamenco et son énergie unique"
    (7, "Le flamenco a une énergie unique, je l'adore", '2024-06-15 16:50', NULL, 0, 8, 3),
    (8, "La danse flamenco est tellement passionnée", '2024-06-16 13:30', NULL, 0, 9, 3),
    (9, "Les guitaristes flamenco sont incroyablement talentueux", '2024-06-17 10:15', NULL, 0, 10, 3),

-- Topic 4: "Dark Side of the Moon des Pink Floyd"
    (10, "Pour moi, l'album 'Dark Side of the Moon' des Pink Floyd est incontournable", '2024-06-15 17:35', NULL, 0, 11, 4),
    (11, "Cet album est un chef-d'œuvre du rock psychédélique", '2024-06-16 14:20', NULL, 0, 12, 4),
    (12, "Les effets sonores et les paroles sont profonds et significatifs", '2024-06-17 11:00', NULL, 0, 13, 4),

-- Topic 5: "La musique classique pour se concentrer"
    (13, "Je trouve que la musique classique aide vraiment à se concentrer", '2024-06-15 18:20', NULL, 0, 14, 5),
    (14, "Bach est parfait pour travailler en paix", '2024-06-16 15:05', NULL, 0, 15, 5),
    (15, "La musique de Mozart stimule l'esprit", '2024-06-17 11:45', NULL, 0, 16, 5),

-- Topic 6: "La pop des années 2000"
    (16, "La pop des années 2000 me rappelle tellement de bons souvenirs", '2024-06-15 19:05', NULL, 0, 17, 6),
    (17, "Les chansons de Britney Spears sont des classiques", '2024-06-16 15:50', NULL, 0, 18, 6),
    (18, "NSYNC et les Backstreet Boys ont marqué cette époque", '2024-06-17 12:30', NULL, 0, 19, 6),

-- Topic 7: "Le groove du funk"
    (19, "Le groove du funk est irrésistible, ça donne envie de danser", '2024-06-15 19:50', NULL, 0, 20, 7),
    (20, "James Brown est le parrain du funk", '2024-06-16 16:35', NULL, 0, 21, 7),
    (21, "Le slap bass est une technique incroyable dans le funk", '2024-06-17 13:15', NULL, 0, 22, 7),

-- Topic 8: "Tupac, le plus grand rappeur"
    (22, "Pour moi, Tupac est le plus grand rappeur de tous les temps", '2024-06-15 20:35', NULL, 0, 23, 8),
    (23, "Ses paroles sont toujours aussi puissantes aujourd'hui", '2024-06-16 17:20', NULL, 0, 24, 8),
    (24, "Tupac a influencé des générations entières", '2024-06-17 14:00', NULL, 0, 25, 8),

-- Topic 9: "Set de DJ"
    (25, "Ton set de DJ était vraiment excellent, bravo !", '2024-06-15 21:20', NULL, 0, 26, 9),
    (26, "Le mix que tu as fait avec Daft Punk était incroyable", '2024-06-16 18:05', NULL, 0, 27, 9),
    (27, "Je voudrais en savoir plus sur ta technique de mix", '2024-06-17 14:45', NULL, 0, 28, 9),

-- Topic 10: "Chronixx et le reggae"
    (28, "J'adore écouter Chronixx, il apporte un souffle nouveau au reggae", '2024-06-15 22:05', NULL, 0, 29, 10),
    (29, "Son dernier album est vraiment relaxant", '2024-06-16 18:50', NULL, 0, 30, 10),
    (30, "Chronixx mélange parfaitement les racines du reggae avec des influences modernes", '2024-06-17 15:30', NULL, 0, 31, 10),

-- Topic 11: "Sets techno de Charlotte de Witte"
    (31, "Les sets techno de Charlotte de Witte sont incroyables", '2024-06-15 22:50', NULL, 0, 32, 11),
    (32, "Son énergie sur scène est incroyable", '2024-06-16 19:35', NULL, 0, 33, 11),
    (33, "Elle est une véritable icône de la techno", '2024-06-17 16:15', NULL, 0, 34, 11),

-- Topic 12: "La musique afro et ses rythmes"
    (34, "La musique afro a tellement de rythmes et de styles différents, c'est fascinant", '2024-06-15 23:35', NULL, 0, 35, 12),
    (35, "Les percussions afro sont envoûtantes", '2024-06-16 20:20', NULL, 0, 36, 12),
    (36, "Les artistes afro apportent une richesse culturelle incroyable", '2024-06-17 17:00', NULL, 0, 37, 12),

-- Topic 13: "Le métal pour se défouler"
    (37, "Le métal m'aide vraiment à me défouler, c'est puissant", '2024-06-16 00:20', NULL, 0, 38, 13),
    (38, "Les concerts de métal sont une expérience unique", '2024-06-16 21:05', NULL, 0, 39, 13),
    (39, "Les riffs de guitare dans le métal sont incroyables", '2024-06-17 17:45', NULL, 0, 40, 13),

-- Topic 14: "Le disco, musique festive"
    (40, "Le disco reste une musique festive et joyeuse", '2024-06-16 01:05', NULL, 0, 41, 14),
    (41, "Les boules à facettes me rappellent les années disco", '2024-06-16 21:50', NULL, 0, 42, 14),
    (42, "Donna Summer est la reine du disco", '2024-06-17 18:30', NULL, 0, 43, 14),

-- Topic 15: "Le zouk et les vacances"
    (43, "Le zouk me fait toujours penser aux vacances et à la plage", '2024-06-16 01:50', NULL, 0, 44, 15),
    (44, "La danse zouk est tellement romantique", '2024-06-16 22:35', NULL, 0, 45, 15),
    (45, "Kassav' est un groupe légendaire dans le zouk", '2024-06-17 19:15', NULL, 0, 46, 15),

-- Topic 16: "Le blues, histoires de vie"
    (46, "Le blues raconte des histoires de vie, c'est poignant", '2024-06-16 02:35', NULL, 0, 47, 16),
    (47, "Les solos de guitare blues sont magnifiques", '2024-06-16 23:20', NULL, 0, 48, 16),
    (48, "Muddy Waters est une légende du blues", '2024-06-17 20:00', NULL, 0, 49, 16),

-- Topic 17: "La country, charme rustique"
    (49, "La musique country a un charme rustique et authentique", '2024-06-16 03:20', NULL, 0, 50, 17),
    (50, "Les histoires racontées dans les chansons country sont touchantes", '2024-06-17 00:05', NULL, 0, 51, 17),
    (51, "Johnny Cash est un symbole de la musique country", '2024-06-17 20:45', NULL, 0, 52, 17),

-- Topic 18: "Les sons électro de Daft Punk"
    (52, "Les sons électro de Daft Punk sont intemporels", '2024-06-16 04:05', NULL, 0, 53, 18),
    (53, "Leur album 'Random Access Memories' est un chef-d'œuvre", '2024-06-17 00:50', NULL, 0, 54, 18),
    (54, "Les collaborations de Daft Punk avec d'autres artistes sont géniales", '2024-06-17 21:30', NULL, 0, 55, 18),

-- Topic 19: "La variété française"
    (55, "La variété française a toujours eu des chansons qui touchent le cœur", '2024-06-16 04:50', NULL, 0, 56, 19),
    (56, "Charles Aznavour a marqué la variété française", '2024-06-17 01:35', NULL, 0, 57, 19),
    (57, "Les paroles de la variété française sont souvent poétiques", '2024-06-17 22:15', NULL, 0, 58, 19),

-- Topic 20: "La musique latino"
    (58, "La musique latino apporte une énergie et une chaleur incomparables", '2024-06-16 05:35', NULL, 0, 59, 20),
    (59, "Les rythmes de salsa sont entraînants", '2024-06-17 02:20', NULL, 0, 60, 20),
    (60, "Shakira a popularisé la musique latino dans le monde entier", '2024-06-17 23:05', NULL, 0, 61, 20);

-- Topic 1: "La musique c'est cool"
(61, "La musique a le pouvoir de changer notre humeur instantanément", '2024-06-18 08:00', NULL, 0, 1, 1),
(62, "Je découvre de nouveaux artistes chaque jour, c'est excitant", '2024-06-18 10:20', NULL, 0, 2, 1),
(63, "Quel est votre genre musical préféré ?", '2024-06-18 12:45', NULL, 0, 3, 1),
(64, "J'adore écouter de la musique en faisant du sport", '2024-06-18 15:00', NULL, 0, 4, 1),

-- Topic 2: "BTS et la K-POP"
(65, "Les clips de BTS sont toujours spectaculaires", '2024-06-18 09:30', NULL, 0, 5, 2),
(66, "J'attends avec impatience leur prochaine tournée mondiale", '2024-06-18 11:50', NULL, 0, 6, 2),
(67, "Les fans de BTS sont incroyablement dévoués", '2024-06-18 14:10', NULL, 0, 7, 2),

-- Topic 3: "Le flamenco et son énergie unique"
(68, "Le flamenco est une expression pure de la passion", '2024-06-18 08:15', NULL, 0, 8, 3),
(69, "Les chants flamenco racontent des histoires émouvantes", '2024-06-18 10:35', NULL, 0, 9, 3),
(70, "J'aimerais apprendre à danser le flamenco", '2024-06-18 12:55', NULL, 0, 10, 3),
(71, "La musique flamenco est profondément enracinée dans la culture andalouse", '2024-06-18 15:15', NULL, 0, 11, 3),

-- Topic 4: "Dark Side of the Moon des Pink Floyd"
(72, "Je ne me lasse jamais d'écouter 'Dark Side of the Moon'", '2024-06-18 09:00', NULL, 0, 12, 4),
(73, "Cet album a changé ma perception de la musique", '2024-06-18 11:20', NULL, 0, 13, 4),
(74, "Chaque écoute révèle quelque chose de nouveau", '2024-06-18 13:40', NULL, 0, 14, 4),
(75, "Les transitions entre les pistes sont magistrales", '2024-06-18 16:00', NULL, 0, 15, 4),

-- Topic 5: "La musique classique pour se concentrer"
(76, "La musique classique crée une atmosphère calme et studieuse", '2024-06-18 08:45', NULL, 0, 16, 5),
(77, "Les compositions de Vivaldi sont particulièrement apaisantes", '2024-06-18 11:05', NULL, 0, 17, 5),
(78, "Écouter du Beethoven booste ma productivité", '2024-06-18 13:25', NULL, 0, 18, 5),
(79, "Les symphonies de Haydn sont également très agréables à écouter en travaillant", '2024-06-18 15:45', NULL, 0, 19, 5),

-- Topic 6: "La pop des années 2000"
(80, "Les clips de la pop des années 2000 étaient tellement emblématiques", '2024-06-18 09:15', NULL, 0, 20, 6),
(81, "Les tenues de scène des artistes pop de cette époque étaient mémorables", '2024-06-18 11:35', NULL, 0, 21, 6),
(82, "J'ai une playlist dédiée aux hits des années 2000", '2024-06-18 13:55', NULL, 0, 22, 6),
(83, "Les concerts de pop des années 2000 étaient spectaculaires", '2024-06-18 16:15', NULL, 0, 23, 6),

-- Topic 7: "Le groove du funk"
(84, "Le funk a une énergie contagieuse", '2024-06-18 09:45', NULL, 0, 24, 7),
(85, "Earth, Wind & Fire ont créé des classiques intemporels", '2024-06-18 12:05', NULL, 0, 25, 7),
(86, "Les lignes de basse dans le funk sont toujours si groovy", '2024-06-18 14:25', NULL, 0, 26, 7),
(87, "J'adore danser sur du funk", '2024-06-18 16:45', NULL, 0, 27, 7),

-- Topic 8: "Tupac, le plus grand rappeur"
(88, "Les paroles de Tupac sont remplies de sagesse et de douleur", '2024-06-18 10:00', NULL, 0, 28, 8),
(89, "Son flow est inimitable", '2024-06-18 12:20', NULL, 0, 29, 8),
(90, "Il a laissé un héritage incommensurable", '2024-06-18 14:40', NULL, 0, 30, 8),
(91, "Tupac était également un acteur talentueux", '2024-06-18 17:00', NULL, 0, 31, 8),

-- Topic 9: "Set de DJ"
(92, "Ton utilisation des effets était parfaite", '2024-06-18 10:30', NULL, 0, 32, 9),
(93, "Quelle est ta configuration de DJ ?", '2024-06-18 12:50', NULL, 0, 33, 9),
(94, "As-tu des conseils pour les débutants en DJing ?", '2024-06-18 15:10', NULL, 0, 34, 9),
(95, "Quel logiciel de mixage utilises-tu ?", '2024-06-18 17:30', NULL, 0, 35, 9),

-- Topic 10: "Chronixx et le reggae"
(96, "Chronixx apporte une touche moderne au reggae traditionnel", '2024-06-18 10:15', NULL, 0, 36, 10),
(97, "Sa voix est vraiment unique", '2024-06-18 12:35', NULL, 0, 37, 10),
(98, "Le reggae est une musique qui apaise l'esprit", '2024-06-18 14:55', NULL, 0, 38, 10),
(99, "Chronixx est l'avenir du reggae", '2024-06-18 17:15', NULL, 0, 39, 10),

-- Topic 11: "Sets techno de Charlotte de Witte"
(100, "Charlotte de Witte est une DJ incroyable", '2024-06-18 09:50', NULL, 0, 40, 11),
(101, "J'aime comment elle mélange différents styles dans ses sets", '2024-06-18 12:10', NULL, 0, 41, 11),
(102, "Ses performances live sont énergiques et captivantes", '2024-06-18 14:30', NULL, 0, 42, 11),
(103, "Elle sait comment faire monter l'ambiance", '2024-06-18 16:50', NULL, 0, 43, 11),

-- Topic 12: "La musique afro et ses rythmes"
(104, "Les rythmes afro sont entraînants et joyeux", '2024-06-18 08:20', NULL, 0, 44, 12),
(105, "Les chants afro sont pleins d'émotions", '2024-06-18 10:40', NULL, 0, 45, 12),
(106, "J'adore la diversité des instruments utilisés dans la musique afro", '2024-06-18 13:00', NULL, 0, 46, 12),
(107, "Les festivals de musique afro sont des expériences inoubliables", '2024-06-18 15:20', NULL, 0, 47, 12),

-- Topic 13: "Le métal pour se défouler"
(108, "Le métal est parfait pour évacuer le stress", '2024-06-18 08:55', NULL, 0, 48, 13),
(109, "Les concerts de métal sont d'une énergie incroyable", '2024-06-18 11:15', NULL, 0, 49, 13),
(110, "Les riffs de guitare sont souvent très techniques", '2024-06-18 13:35', NULL, 0, 50, 13),
(111, "J'aime les paroles profondes et souvent introspectives des chansons métal", '2024-06-18 15:55', NULL, 0, 51, 13),

-- Topic 14: "Les ballades rock légendaires"
(112, "Les ballades rock sont intemporelles", '2024-06-18 09:25', NULL, 0, 52, 14),
(113, "Les solos de guitare dans les ballades rock sont souvent émouvants", '2024-06-18 11:45', NULL, 0, 53, 14),
(114, "Ces chansons racontent souvent des histoires poignantes", '2024-06-18 14:05', NULL, 0, 54, 14),
(115, "Les ballades rock des années 80 ont un charme particulier", '2024-06-18 16:25', NULL, 0, 55, 14),

-- Topic 15: "La techno pour danser toute la nuit"
(116, "La techno est parfaite pour danser toute la nuit", '2024-06-18 10:05', NULL, 0, 56, 15),
(117, "Les sets de techno sont hypnotiques", '2024-06-18 12:25', NULL, 0, 57, 15),
(118, "J'adore les festivals de musique techno", '2024-06-18 14:45', NULL, 0, 58, 15),
(119, "Les artistes de techno sont très créatifs", '2024-06-18 17:05', NULL, 0, 59, 15),

-- Topic 16: "Le blues et ses émotions"
(120, "Le blues est une musique qui vient du cœur", '2024-06-18 09:55', NULL, 0, 60, 16),
(121, "Les légendes du blues ont créé des classiques inoubliables", '2024-06-18 12:15', NULL, 0, 61, 16),
(122, "Les guitares slide donnent une couleur unique au blues", '2024-06-18 14:35', NULL, 0, 62, 16),
(123, "Le blues est une musique intemporelle", '2024-06-18 16:55', NULL, 0, 63, 16),

-- Topic 17: "La country, charme rustique"
(124, "Les instruments acoustiques dominent la musique country", '2024-06-18 10:25', NULL, 0, 64, 17),
(125, "Les duos dans les chansons country sont souvent très touchants", '2024-06-18 12:45', NULL, 0, 65, 17),
(126, "La musique country a un côté nostalgique", '2024-06-18 15:05', NULL, 0, 66, 17),
(127, "J'adore les festivals de musique country", '2024-06-18 17:25', NULL, 0, 67, 17),

-- Topic 18: "Les sons électro de Daft Punk"
(128, "Les performances live de Daft Punk sont légendaires", '2024-06-18 09:35', NULL, 0, 68, 18),
(129, "Leur esthétique visuelle est aussi impressionnante que leur musique", '2024-06-18 11:55', NULL, 0, 69, 18),
(130, "Daft Punk a influencé toute une génération de musiciens", '2024-06-18 14:15', NULL, 0, 70, 18),
(131, "Leurs remix sont toujours incroyables", '2024-06-18 16:35', NULL, 0, 71, 18),

-- Topic 19: "La variété française"
(132, "La variété française est riche et diverse", '2024-06-18 10:45', NULL, 0, 72, 19),
(133, "Les chansons de variété française sont souvent très mélodiques", '2024-06-18 13:05', NULL, 0, 73, 19),
(134, "Les artistes de variété française sont très talentueux", '2024-06-18 15:25', NULL, 0, 74, 19),
(135, "J'adore écouter de la variété française en voiture", '2024-06-18 17:45', NULL, 0, 75, 19),

-- Topic 20: "La musique latino"
(136, "La musique latino est parfaite pour faire la fête", '2024-06-18 11:05', NULL, 0, 76, 20),
(137, "Les clips de musique latino sont toujours très colorés", '2024-06-18 13:25', NULL, 0, 77, 20),
(138, "La bachata est un de mes genres latinos préférés", '2024-06-18 15:45', NULL, 0, 78, 20),
(139, "Les collaborations entre artistes latinos sont souvent très réussies", '2024-06-18 18:05', NULL, 0, 79, 20);
