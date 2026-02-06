CREATE DATABASE d_database;

\c d_database;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (username, email) VALUES ('douglasnunes', 'douglas.nunes@gmail.com');

-- brew service postgresql start
-- psql postgres
-- \i postgres/create_db.sql
-- psql postgres -f postgres/create_db.sql
