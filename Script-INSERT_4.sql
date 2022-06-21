INSERT INTO author (name)
VALUES ('Король и Шут'),
	('Sex Pistols'), 
	('Metallica'),
	('skrillex'), 
	('Elvis Presley'),
	('Cannibal Corpse'),
	('Louis Armstrong'),
	('Bob Marley') ;

INSERT INTO genre (name)
VALUES ('Punk-Rock'),
	('thrash metal'),
	('Dubstep'),
	('Pop'),
	('Deth Metal'),
	('Jazz'),
	('Reggae');

INSERT INTO album (release_year, title)
VALUES ('01/01/2002', 'Жаль, нет ружья!'), ('01/01/1989', 'No Future UK?'),
	('01/01/2018', 'S&M2'),('01/01/2020', 'Bangarang EP [Explicit]'),
	('01/01/1977', 'Moody Blue'),
	('01/01/2021', 'Violence Unimagined'),
	('01/01/1955', 'Louis Armstrong'),
	('01/01/1980', 'The Bob Marley Interviews');

INSERT INTO track (number, album_id, name, song_time)
VALUES (09, 1, 'Мой характер', '03:52:00'),
	(11, 1, 'Водяной', '02:25:00'),
	(10, 2, 'God Save the Queen', '01:30:00'),
	(20, 3, 'Master of Puppets (Live)', '04:56:00'),
	(04, 4, 'The Devils Den', '04:52:00'),
	(05, 4, 'Right On Time', '04:05:00'),
	(15, 3, 'The Unforgiven III (Live)', '05:03:00'),
	(02, 5, 'If You Love Me', '02:58:00'),
	(03, 5, 'Little Darlin', '01:30:00'),
	(03, 7, 'Potato Head Blues', '02:40:00'),
	(04, 7, 'Alligator Crawl', '04:04:00'),
	(06, 6, 'Ritual Annihilation', '03:52:00'),
	(07, 6, 'Follow The Blood', '04:22:00'),
	(04, 8, 'Babylon System', '04:25:00'),
	(08, 8, 'Survival', '03:55:00');

INSERT INTO music_collection (release_year, title)
VALUES ('01/01/2018', 'Music of the World'),
	('01/01/2021', 'Greatest Hits'),
	('01/01/2022', 'Rock Music Collection'),
	('01/01/2019', 'Legends of world music'),
	('01/01/2017', 'the best of'),
	('01/01/2019', 'All star'),
	('01/01/2015', 'Presley the Best'),
	('01/01/2020', 'Hit of America');

INSERT INTO albumauthor (author_id, album_id)
VALUES (1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8);

INSERT INTO genreauthor (author_id, genre_id)
VALUES (1, 1), (1, 2),
	(2, 1),
	(3, 2),(3, 1),
	(4, 3),
	(5, 4),
	(6, 5),
	(7, 6),
	(8, 7);

INSERT INTO collectiontrack  (track_id, collection_id)
VALUES (9, 1), (2, 1), (3, 1),(4, 1), (5, 1), (6, 1), (7, 1), (8, 1), (10,1), (11, 1), (12, 1), (13, 1), (14, 1), (15, 1),
(2, 2), (4, 2), (5, 2), (8, 2),
(2, 3), (3, 3), (4, 3), (5, 3), (8, 3),
(15, 4), (12, 4), (11, 4), (8, 4),
(14, 5), (13, 5), (4, 5), (5, 5),
(2, 6), (4, 6), (6, 6), (7, 6), (9, 6), (11, 6), (13, 6), (15, 6),
(9, 7), (10, 7),
(5, 8), (8, 8), (11, 8), (12, 8), (9, 8), (10, 8);

	
	