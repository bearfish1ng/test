CREATE TABLE gallery_ (
    id int NOT NULL AUTO_INCREMENT,
    userid varchar(25),
    title varchar(25),
    content varchar(100),
    PRIMARY KEY(id)
    );

INSERT INTO gallery_ (id, userid, title, content) VALUES
(1,'bearfish','디저트 종류','디저트에는 많은 종류가 있다');
