CREATE TABLE IF NOT EXISTS Author (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	release_year DATE NOT NULL,
	Title VARCHAR(60) NOT null
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	number INTEGER NOT NULL,
	Album_id INTEGER REFERENCES Album(id),
	name VARCHAR(40) NOT null,
	song_time TIME NOT null
);

CREATE TABLE IF NOT EXISTS Music_collection (
	Title VARCHAR(100) not null,
	release_year DATE NOT NULL,
	id SERIAL PRIMARY KEY);

CREATE TABLE IF NOT EXISTS GenreAuthor (
	Author_id INTEGER REFERENCES Author(id),
	Genre_id INTEGER REFERENCES Genre(id),
	CONSTRAINT pk PRIMARY KEY (Author_id, Genre_id)
);

CREATE TABLE IF NOT EXISTS AlbumAuthor (
	Author_id INTEGER REFERENCES Author(id),
	Album_id INTEGER REFERENCES Album(id),
	CONSTRAINT pk2 PRIMARY key (Author_id, Album_id)
);

CREATE TABLE IF NOT EXISTS collectionTrack (
	Track_id INTEGER REFERENCES Track(id), 
	collection_id INTEGER REFERENCES Music_collection(id),
	CONSTRAINT pk3 PRIMARY key (Track_id, collection_id)
);
