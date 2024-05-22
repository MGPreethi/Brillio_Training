create database prescripty;
use prescripty;
create table patient(id int auto_increment primary key, first_name varchar(100), last_name varchar(100), email varchar(50) unique, password varchar(50),  aadhar varchar(20), dob date, mobile varchar(15), address varchar(100));
create table doctor(id int auto_increment primary key, first_name varchar(100), last_name varchar(100), email varchar(50) unique, password varchar(50),  aadhar varchar(20), dob date, mobile varchar(15), address varchar(100), specialization varchar(50), dept_id int);
create table admin(id int auto_increment primary key, first_name varchar(100), last_name varchar(100), email varchar(50) unique, password varchar(50));
create table dept(id int auto_increment primary key, name varchar(50));
create table appointment(id int auto_increment primary key, dept_id int,patient_id int, doctor_id int, description varchar(1000), date date);
create table test(id int auto_increment primary key, name varchar(100), description varchar(1000), price float);
create table test_booking(id int auto_increment primary key, test_id int, patient_id int, date date);