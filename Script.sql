CREATE TABLE IF NOT EXISTS musical_genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS performers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS performers_genres (
	musical_genre_id INTEGER NOT NULL REFERENCES musical_genres(id),
	performer_id INTEGER NOT NULL REFERENCES performers(id)
);

CREATE TABLE IF NOT EXISTS albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	date_release DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS performers_albums (
	album_id INTEGER NOT NULL REFERENCES albums(id),
	performer_id INTEGER NOT NULL REFERENCES performers(id)
);

CREATE TABLE IF NOT EXISTS tracks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER NOT NULL REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS music_collections (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	date_release DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS music_collection_tracks (
	music_collection_id INTEGER NOT NULL REFERENCES music_collections(id),
	track_id INTEGER NOT NULL REFERENCES tracks(id)
);