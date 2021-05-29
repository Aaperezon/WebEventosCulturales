DROP DATABASE IF EXISTS finalprojectweb;
CREATE DATABASE finalprojectweb;
USE finalprojectweb;
-- CREACION DE LA TABLA --
DROP TABLE IF EXISTS user_type;
CREATE TABLE user_type(
	id INT AUTO_INCREMENT NOT NULL,
	type VARCHAR(30) NOT NULL,
    
    PRIMARY KEY (id)
);


DROP TABLE IF EXISTS user;
CREATE TABLE user(
	id INT AUTO_INCREMENT NOT NULL,
	id_user_type INT NOT NULL,
    user VARCHAR(30) NOT NULL,
    password TEXT NOT NULL,
    name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    
    PRIMARY KEY (id),
    FOREIGN KEY (id_user_type) REFERENCES user_type(id) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS event_category;
CREATE TABLE event_category(
	id INT AUTO_INCREMENT NOT NULL,
	category VARCHAR(30) NOT NULL,
    
    PRIMARY KEY (id)
);


DROP TABLE IF EXISTS event;
CREATE TABLE event(
	id INT AUTO_INCREMENT NOT NULL,
	id_event_category INT  NOT NULL,
    name VARCHAR(30) NOT NULL,
    description TEXT NOT NULL,
    price FLOAT NOT NULL,
    location TEXT NOT NULL,
    date DATE NOT NULL,
    capacity INT NOT NULL,
    
    PRIMARY KEY (id),
    FOREIGN KEY (id_event_category) REFERENCES event_category(id) ON DELETE CASCADE ON UPDATE CASCADE
);


DROP TABLE IF EXISTS event_picture;
CREATE TABLE event_picture(
	id INT AUTO_INCREMENT NOT NULL,
	id_event INT  NOT NULL,
    picture BLOB NOT NULL,
    
    PRIMARY KEY (id),
    FOREIGN KEY (id_event) REFERENCES event(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- INSERCIÓN DE LOS DATOS POR DEFAULT DEL SISTEMA --

INSERT INTO user_type (type) VALUES
("administrador"),
("organizador"),
("invitado");

INSERT INTO user (id_user_type, user, password, name, last_name) VALUES
(1,"aaron","aaron","Aarón","Pérez Ontiveros"),
(1,"andy","andy","Andrea","Espinosa Azuela");

INSERT INTO event_category (category) VALUES
("Deportes"),
("Comedia"),
("Música"),
("Teatro"),
("Danza");







