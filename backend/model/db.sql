DROP DATABASE IF EXISTS test;
CREATE DATABASE test;

USE test;
DROP TABLE IF EXISTS blog;
CREATE TABLE blog(
    id INT AUTO_INCREMENT NOT NULL,
    nickname VARCHAR(10) NOT NULL,
    title VARCHAR(50) NOT NULL,
    content VARCHAR(600) NOT NULL,
    writedate DATE NOT NULL,
    love INT NOT NULL,
    CHECK (love IN (0, 1)),
    dislove INT NOT NULL,
    CHECK (dislove IN (0, 1)),
    PRIMARY KEY (id)
);

INSERT INTO blog VALUES (1, '배어', 'test1', 'test_backend', '2024-10-13', 0, 0);

DROP TABLE IF EXISTS gallery;
CREATE TABLE gallery(
    id INT AUTO_INCREMENT NOT NULL,
    nickname VARCHAR(10) NOT NULL,
    title VARCHAR(50) NOT NULL,
    image VARCHAR(600) NOT NULL,
    writedate DATE NOT NULL,
    love INT NOT NULL,
    CHECK (love IN (0, 1)),
    dislove INT NOT NULL,
    CHECK (dislove IN (0, 1)),
    PRIMARY KEY (id)
);

INSERT INTO gallery VALUES (1, '배어', 'test1', 'test_backend', '2024-10-14', 1, 0);

SELECT * FROM blog;
SELECT * FROM gallery;
