CREATE DATABASE LibraryDB;
USE LibraryDB;
CREATE TABLE person(library_card_number int, first_name linestring, last_name linestring, phone_number linestring, email linestring, street_address linestring, city linestring, state linestring, zip_code int);
CREATE TABLE author(author_id int, first_name linestring, last_name linestring);
CREATE TABLE publisher(publisher_id int, name linestring, phone_number linestring, street_address linestring, city linestring, state linestring, zip int);
CREATE TABLE book(ISBN linestring, author_id int, publisher_id int, title linestring, genre linestring, type linestring);
CREATE TABLE person_book(due_date date, library_card_number int, ISBN linestring);
ALTER TABLE person
ADD PRIMARY KEY (library_card_number);
ALTER TABLE person_book
ADD UNIQUE KEY(library_card_number);
ALTER TABLE person_book
ADD UNIQUE KEY(ISBN);
ALTER TABLE book
ADD PRIMARY KEY (ISBN);
ALTER TABLE book
ADD UNIQUE KEY(author_id);
ALTER TABLE book
ADD UNIQUE KEY(publisher_id);
ALTER TABLE publisher
ADD PRIMARY KEY (publisher_id);
ALTER TABLE author
ADD PRIMARY KEY(author_id)