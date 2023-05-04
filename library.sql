CREATE DATABASE LibraryDB;
USE LibraryDB;
CREATE TABLE author (author_id int, last_name varchar(20), first_name varchar(20), books_written int);
CREATE TABLE book (ISBN int, title varchar(30), publisher_id int, gnere varchar(1), total_pages int, author_id int);
CREATE TABLE publisher (publisher_id int, name varchar(20), street_address varchar(20), city varchar(15), state varchar(15), phone_number varchar(15));
CREATE TABLE person(library_card_number int, last_name varchar(20), first_name varchar(20), street_address varchar(20), city varchar(15), state varchar(15), zip_code int, email_address varchar(20), phone_number varchar(20));
CREATE TABLE person_book (library_card_number int, due_date date, ISBN int);