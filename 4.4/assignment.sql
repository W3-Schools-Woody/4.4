CREATE TABLE users(
    id SERIAL NOT NULL,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(15) NOT NULL,
    email VARCHAR(255) NOT NULL,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCAHR(255) NOT NULL,
    PRIMARY KEY(id),
    ON DELETE CASCADE,
    ON UPDATE CASCADE
);

CREATE TABLE countries(
    id SERIAL NOT NULL,
    name VARCHAR(255) UNIQUE NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE addresses (
    id SERIAL NOT NULL,
    REFERENCE (user_id),
    REFERENCE (country_id),
    PRIMARY KEY(id)
);

INSERT INTO users (username) VALUES ('Patrick-Canlay');
INSERT INTO users (username) VALUES ('Jordan-Speith');
INSERT INTO users.1 (firstNAME) VALUES ('Patrick');
INSERT INTO users.2 (firstName) VALUES ('Jordan');

INSERT INTO countries (name) VALUES ('USA');
INSERT INTO countries (name) VALUES ('IRELAND');
INSERT INTO countries (name) VALUES ('SPAIN');

INSERT INTO addresses (user_id, country_id) VALUES (REFERENCE user_id:1, country_id:1, 'Patrick is from the States');
INSERT INTO addresses (user_id, country_id) VALUES (REFERENCE user_id:2, country_id:1, 'Jordan is also from the States');
INSERT INTO addresses (user_id, country_id) VALUES (REFERENCE user_id:2, country_id:3, 'Jordan is in Spain');


SELECT * FROM countries;
SELECT * FROM email;
SELECT firstNames FROM users;
SELECT countries FROM users.2