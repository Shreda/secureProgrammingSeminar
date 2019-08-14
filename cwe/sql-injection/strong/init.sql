CREATE DATABASE IF NOT EXISTS twitter;
USE twitter;

CREATE TABLE IF NOT EXISTS posts (
    post_id INT AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    PRIMARY KEY (post_id)
);

CREATE TABLE IF NOT EXISTS users (
    user_id INT AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY(user_id)
);

INSERT INTO posts (title) VALUES ('Post One');
INSERT INTO posts (title) VALUES ('Post Two');
INSERT INTO posts (title) VALUES ('Post Three');
INSERT INTO posts (title) VALUES ('Post Four');

INSERT INTO users (username, password) VALUES ('user1', 'password1');
INSERT INTO users (username, password) VALUES ('user2', 'password2');
INSERT INTO users (username, password) VALUES ('user3', 'password3');
