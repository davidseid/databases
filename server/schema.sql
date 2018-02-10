DROP DATABASE IF EXISTS chat;

CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  id INT NOT NULL AUTO_INCREMENT,
  message_text varchar(140) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO messages (message_text) VALUES ('HI EVERYONE CAN YOU HEAR ME??');
INSERT INTO messages (message_text) VALUES ('HI EVERYONE ITS A SUNNY DAY!!');


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

