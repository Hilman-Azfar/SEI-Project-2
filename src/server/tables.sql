DROP TABLE users;
DROP TABLE gallery;
DROP TABLE images;


CREATE TABLE IF NOT EXISTS users (
  user_id SERIAL PRIMARY KEY,
  name TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
  );

CREATE TABLE IF NOT EXISTS gallery (
  album_id SERIAL PRIMARY KEY,
  user_id INTEGER NOT NULL,
  album TEXT NOT NULL
  );

CREATE TABLE IF NOT EXISTS images (
  images_id SERIAL PRIMARY KEY,
  album_id INTEGER NOT NULL,
  img_url TEXT NOT NULL,
  pos INTEGER
  );