-- Author: O R Imon <or.imon@tuni.fi>
-- Date: 2023-11-29
-- File: 013-foreign-key-between-track-artist-and-album.sql

-- Create ARTIST table
CREATE TABLE ARTIST (
    id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    name VARCHAR(255) NOT NULL
);

-- Create ALBUM table
CREATE TABLE ALBUM (
    id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    name VARCHAR(255) NOT NULL,
    year INTEGER,
    label VARCHAR(255)
);

-- Create TRACK table
CREATE TABLE TRACK (
    id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    name VARCHAR(255) NOT NULL,
    artist INTEGER NOT NULL,
    FOREIGN KEY (artist) REFERENCES ARTIST(id)
);

-- Create ALBUM_TRACKS table
CREATE TABLE ALBUM_TRACKS (
    track INTEGER NOT NULL,
    album INTEGER NOT NULL,
    PRIMARY KEY (track, album),
    FOREIGN KEY (track) REFERENCES TRACK(id),
    FOREIGN KEY (album) REFERENCES ALBUM(id)
);

-- Successful INSERTs
INSERT INTO ARTIST (id, name)
VALUES (1, 'Elvis Presley');

INSERT INTO ALBUM (id, name, year, label)
VALUES (1, 'Elvis Presley', 1966, 'RCA Victor');

INSERT INTO TRACK (id, name, artist)
VALUES (1, 'Hound Dog', 1);

INSERT INTO ALBUM_TRACKS (track, album)
VALUES (1, 1);

-- Failed INSERT
INSERT INTO TRACK (id, name, artist)
VALUES (2, 'Unforgettable', 2);

-- End of file
