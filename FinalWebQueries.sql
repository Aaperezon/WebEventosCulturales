DROP DATABASE IF EXISTS finalprojectweb;
CREATE DATABASE finalprojectweb;
USE finalprojectweb;
-- CREACION DE LA TABLA --
DROP TABLE IF EXISTS user_type;
CREATE TABLE user_type(
	id_user_type INT AUTO_INCREMENT NOT NULL,
	type VARCHAR(30) NOT NULL,
    
    PRIMARY KEY (id_user_type)
);


DROP TABLE IF EXISTS user;
CREATE TABLE user(
	id_user INT AUTO_INCREMENT NOT NULL,
	FK_id_user_type INT NOT NULL,
    user VARCHAR(30) NOT NULL,
    password TEXT NOT NULL,
    name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    
    PRIMARY KEY (id_user),
    FOREIGN KEY (FK_id_user_type) REFERENCES user_type(id_user_type) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS event_category;
CREATE TABLE event_category(
	id_event_category INT AUTO_INCREMENT NOT NULL,
	category VARCHAR(30) NOT NULL,
    
    PRIMARY KEY (id_event_category)
);


DROP TABLE IF EXISTS event;
CREATE TABLE event(
	id_event INT AUTO_INCREMENT NOT NULL,
	FK_id_user INT  NOT NULL,
	FK_id_event_category INT  NOT NULL,
    name VARCHAR(30) NOT NULL,
    description TEXT NOT NULL,
    price FLOAT NOT NULL,
    location TEXT NOT NULL,
    date DATE NOT NULL,
    capacity INT NOT NULL,


    PRIMARY KEY (id_event),
    FOREIGN KEY (FK_id_user) REFERENCES user(id_user) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (FK_id_event_category) REFERENCES event_category(id_event_category) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS assistance;
CREATE TABLE assistance(
	id_assistance INT AUTO_INCREMENT NOT NULL,
	FK_id_user INT  NOT NULL,
	FK_id_event INT  NOT NULL,
    
    PRIMARY KEY (id_assistance),
    FOREIGN KEY (FK_id_user) REFERENCES user(id_user) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (FK_id_event) REFERENCES event(FK_id_event) ON DELETE CASCADE ON UPDATE CASCADE
);


-- INSERCIÓN DE LOS DATOS POR DEFAULT DEL SISTEMA --

INSERT INTO user_type (type) VALUES
("administrador"),
("organizador"),
("invitado");

INSERT INTO user (FK_id_user_type, user, password, name, last_name) VALUES
(1,"aaron",sha2("aaron",224),"Aarón","Pérez Ontiveros"),
(1,"andy",sha2("andy",224),"Andrea","Espinosa Azuela"),
(2,"organizador1",sha2("organizador1",224),"Organizador","Pérez"),
(2,"organizador2",sha2("organizador2",224),"Organizador","Espinosa");

INSERT INTO event_category (category) VALUES
("Conciertos y Festivales"),
("Teatro y Cultura"),
("Deportes"),
("Familiares");
INSERT INTO event (FK_id_user, FK_id_event_category, name, description, price, location, date, capacity) VALUES
(3,1,"Primer evento","Este es el primer evento creado por TecTicket", 192.3, "En la esquina de la calle 1, en frente de la otra esquina", "2020-06-07", 1000),
(3,2,"Segundo evento","Este es el primer evento creado por TecTicket", 192.3, "En la esquina de la calle 1, en frente de la otra esquina", "2020-06-07", 1000),
(4,3,"Tercer evento","Este es el primer evento creado por TecTicket", 192.3, "En la esquina de la calle 1, en frente de la otra esquina", "2020-06-07", 1000),
(3,4,"Cuarto evento","Este es el primer evento creado por TecTicket", 192.3, "En la esquina de la calle 1, en frente de la otra esquina", "2020-06-07", 1000),
(4,1,"Quinto evento","Este es el primer evento creado por TecTicket", 192.3, "En la esquina de la calle 1, en frente de la otra esquina", "2020-06-07", 1000),
(4,2,"Sexto evento","Este es el primer evento creado por TecTicket", 192.3, "En la esquina de la calle 1, en frente de la otra esquina", "2020-06-07", 1000);


INSERT INTO assistance (FK_id_user, FK_id_event) VALUES (1,1);
-- QUERIES --
-- User DAO --
SELECT id_user_type,type,id_user,user,password,name,last_name FROM user INNER JOIN user_type ON user.FK_id_user_type = user_type.id_user_type WHERE user.user="aaron" AND user.password=SHA2("aaron",224);

INSERT INTO user (FK_id_user_type, user, password, name, last_name) VALUES(3,"invitado1",SHA2("invitado1",224),"Aaron","Perez O");

-- Event DAO --
SELECT category, id_event, FK_id_event_category, name, description, price, location, date, capacity FROM event
	INNER JOIN event_category ON event.FK_id_event_category = event_category.id_event_category;

SELECT category, id_event, FK_id_event_category, event.name, description, price, location, date, capacity FROM event
	INNER JOIN event_category ON event.FK_id_event_category = event_category.id_event_category
    INNER JOIN user ON event.FK_id_user = user.id_user
WHERE user.id_user = 2;

SELECT count(FK_id_user) FROM assistance WHERE FK_id_event =2;

SELECT id_user, FK_id_user_type, user, name, last_name FROM user WHERE FK_id_user_type = 2;

SELECT id_event, FK_id_event_category,category, name, description, price, location, date, capacity  FROM event
	INNER JOIN event_category ON event.FK_id_event_category = event_category.id_event_category
WHERE id_event = 1;

INSERT INTO assistance (FK_id_user, FK_id_event) VALUES (5,1);


SELECT category, id_event, FK_id_event_category, name, description, price, location, date, capacity FROM event
	INNER JOIN event_category ON FK_id_event_category = id_event_category
WHERE id_event not in (SELECT FK_id_event from assistance INNER JOIN user ON FK_id_user = id_user WHERE id_user = 6);
  
  
SELECT category, id_event, FK_id_event_category, name, description, price, location, date, capacity FROM event
	INNER JOIN event_category ON FK_id_event_category = id_event_category
WHERE id_event  in (SELECT FK_id_event from assistance INNER JOIN user ON FK_id_user = id_user WHERE id_user = 6);
  


-- UPDATE event SET FK_id_event_category=2, name="as", description="des", price=12.1, location="Lomas", date="2020-12-3",capacity=12 WHERE id_event=1;
SELECT * from user;
SELECT * from event;
SELECT * FROM assistance;
