CREATE DATABASE LAB3;
CREATE TABLE user (
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    phone_number VARCHAR(15),
    email_address VARCHAR(100) UNIQUE,
    password VARCHAR(255)
);
CREATE TABLE art (
    id INT PRIMARY KEY AUTO_INCREMENT,
    art_name VARCHAR(100),
    artist_name VARCHAR(100),
    year YEAR,
    description TEXT
);

CREATE TABLE category (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100)
);

CREATE TABLE event (
    id INT PRIMARY KEY AUTO_INCREMENT,
    event_name VARCHAR(100),
    event_type ENUM('Online', 'Offline'),
    venue VARCHAR(150),
    event_datetime DATETIME,
    event_description TEXT
);
CREATE TABLE art_category (
    art_id INT,
    category_id INT,
    PRIMARY KEY (art_id, category_id),
    FOREIGN KEY (art_id) REFERENCES art(id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES category(id) ON DELETE CASCADE
);
CREATE TABLE user_event (
    user_id INT,
    event_id INT,
    PRIMARY KEY (user_id, event_id),
    FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE,
    FOREIGN KEY (event_id) REFERENCES event(id) ON DELETE CASCADE
);
CREATE TABLE queries (
    query_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    query_message VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE
);