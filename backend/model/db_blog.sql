CREATE TABLE blog_ (
    id int NOT NULL AUTO_INCREMENT,
    userid varchar(25),
    title varchar(25),
    img varchar(400),
    content varchar(100)
    PRIMARY KEY(id)
    );

INSERT INTO blog_ (id, userid, title, img, content) VALUES
(1,'bearfish','디저트 종류','이미지','디저트를 먹으면');
