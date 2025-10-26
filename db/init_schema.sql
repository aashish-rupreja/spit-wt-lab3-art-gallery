PRAGMA foreign_keys = ON;

CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    firstname TEXT,
    lastname TEXT,
    phone_number TEXT,
    email_address TEXT UNIQUE,
    password TEXT
);

CREATE TABLE art (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    art_name TEXT,
    artist_name TEXT,
    year TEXT,
    description TEXT,
    art_image TEXT DEFAULT ''
);

CREATE TABLE category (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE event (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_name TEXT,
    event_type TEXT,
    venue TEXT,
    event_datetime TEXT,
    event_description TEXT,
    event_thumbnail_url TEXT
);

CREATE TABLE art_category (
    art_id INTEGER,
    category_id INTEGER,
    PRIMARY KEY (art_id, category_id),
    FOREIGN KEY (art_id) REFERENCES art(id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES category(id) ON DELETE CASCADE
);

CREATE TABLE user_event (
    user_id INTEGER,
    event_id INTEGER,
    PRIMARY KEY (user_id, event_id),
    FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE,
    FOREIGN KEY (event_id) REFERENCES event(id) ON DELETE CASCADE
);

CREATE TABLE queries (
    query_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    query_message TEXT,
    FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE
);