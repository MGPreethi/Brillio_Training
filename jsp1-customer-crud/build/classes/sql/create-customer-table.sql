--CREATE DATABASE 'my_db';
USE my_db;

create table customers (
	id  int(3) NOT NULL AUTO_INCREMENT,
	name varchar(60) NOT NULL,
	email varchar(60) NOT NULL,
	country varchar(60),
	phone varchar(15),
	PRIMARY KEY (id)
);

