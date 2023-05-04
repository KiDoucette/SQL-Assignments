CREATE DATABASE HotelReservationDB;
USE HotelReservationDB;
CREATE TABLE customer (first_name varchar(45), last_name varchar(45), street varchar(45), city varchar(45), state varchar(45), zip_code int, email varchar(45), phone_number varchar(45), customer_id bigint);
CREATE TABLE hotel_room_information (room_number int, room_rate int, number_of_beds int, type_of_bed varchar(45), type_of_bed varchar(45), refrigerator boolean);
CREATE TABLE payment_type (credit_card_type varchar(45), card_number bigint, cvv_number int, expiration_date date);
ALTER TABLE payment_type
ADD PRIMARY KEY (credit_card_type);
ALTER TABLE hotel_room_information
ADD PRIMARY KEY (room_number);
ALTER TABLE customer
ADD PRIMARY KEY(customer_id);