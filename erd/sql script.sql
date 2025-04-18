DROP SCHEMA public CASCADE;

CREATE SCHEMA public;

CREATE TABLE genres_enum
(
	id SERIAL PRIMARY KEY,
	name CHARACTER VARYING(40) UNIQUE NOT NULL
);
INSERT INTO genres_enum (name) 
VALUES 
('Триллер'), ('Сёнен'), ('Приключения'), ('Фэнтези'), ('Драма'), ('Комедия'), 
('Романтика'), ('Фантастика'), ('Экшен'), ('Пародия');

CREATE TABLE title_type_enum
(
	id SERIAL PRIMARY KEY,
	name CHARACTER VARYING(40) UNIQUE NOT NULL
);
INSERT INTO title_type_enum (name) 
VALUES 
('Новелла'), ('Ранобэ'),
('Манга'), ('Манхва'), ('Маньхуа'), ('Ваншот'), ('Додзинси'),
('OVA'), ('TV Сериал'), ('Фильм'), ('ONA'), ('Спецвыпуск'), ('TV Спецвыпуск');

CREATE TABLE status_enum
(
	id SERIAL PRIMARY KEY,
	name CHARACTER VARYING(30) UNIQUE NOT NULL
);
INSERT INTO status_enum (name) 
VALUES 
('Анонсировано'), ('Сейчас издаётся'), ('Издано'), ('Недавно издано'), ('Приостановлено'), ('Прекращено'),
('Сейчас выходит'), ('Вышедшее'), ('Недавно вышедшее');

CREATE TABLE licences
(
	id SERIAL PRIMARY KEY,
	name CHARACTER VARYING(100) NOT NULL
);

CREATE TABLE publisher
(
	id SERIAL PRIMARY KEY,
	name CHARACTER VARYING(100) NOT NULL
);

CREATE TABLE author
(
	id SERIAL PRIMARY KEY,
	name CHARACTER VARYING(100) NOT NULL
);

CREATE TABLE information
(
	id SERIAL PRIMARY KEY,
	type_id INTEGER REFERENCES title_type_enum (id),
	volume INTEGER,
	chapters INTEGER,
	status_id INTEGER REFERENCES status_enum (id),
	theme TEXT,
	license INTEGER, --REFERENCES licences (id)
	altName TEXT
);

CREATE TABLE title
(
	id SERIAL PRIMARY KEY,
	information_id INTEGER REFERENCES information (id),
	name TEXT NOT NULL,
	engName TEXT,
	image TEXT,
	description TEXT,
	review REAL
);

CREATE TABLE related_titles
(
	title_id INTEGER REFERENCES title (id),
	related_id INTEGER REFERENCES title (id),
	PRIMARY KEY (title_id, related_id)
);

CREATE TABLE title_publisher
(
	publisher_id INTEGER REFERENCES publisher (id),
	title_id INTEGER REFERENCES title (id),
	PRIMARY KEY (publisher_id, title_id)
);

CREATE TABLE title_author
(
	author_id INTEGER REFERENCES author (id),
	title_id INTEGER REFERENCES title (id),
	PRIMARY KEY (author_id, title_id)
);

CREATE TABLE information_genres
(
	information_id INTEGER REFERENCES information (id),
	genre_id INTEGER REFERENCES genres_enum (id),
	PRIMARY KEY (information_id, genre_id)
);