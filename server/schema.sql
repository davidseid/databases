DROP DATABASE IF EXISTS 'chat';

CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  /* Describe your table here.*/
  id INT NOT NULL AUTO_INCREMENT,
  user_name varchar(20) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE rooms (
  /* Describe your table here.*/
  id INT NOT NULL AUTO_INCREMENT,
  room_name varchar(20) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE messages (
  /* Describe your table here.*/
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  message_text varchar(140) NOT NULL,
  room_id INT NOT NULL,
  PRIMARY KEY (id),
  
  FOREIGN KEY (user_id) 
    REFERENCES users(id)
    ON DELETE CASCADE,
    
  FOREIGN KEY (room_id) 
    REFERENCES rooms(id)
    ON DELETE CASCADE
);

/* Create other tables and define schemas for them here! */


CREATE TABLE rooms_users (
  /* Describe your table here.*/
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  room_id INT NOT NULL,
  
  PRIMARY KEY (id),
  
  FOREIGN KEY (user_id) 
    REFERENCES users(id)
    ON DELETE CASCADE,
    
  FOREIGN KEY (room_id) 
    REFERENCES rooms(id)
    ON DELETE CASCADE
);




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

