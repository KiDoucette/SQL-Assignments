CREATE DATABASE CarOwnerDB;
USE CarOwnerDB;
CREATE TABLE person (ss_number bigint, first_name varchar(45), last_name varchar(45), street_address varchar(45), city varchar(45), zip_code int, drivers_license varchar(45), birthdate date, phone varchar(45), email varchar(45));
CREATE TABLE car (vehicle_id int, ss_number bigint, make varchar(45),model varchar(45), year int, VIN int, license_plate varchar(45), mileage bigint);
ALTER TABLE person
ADD PRIMARY KEY(ss_number);
ALTER TABLE car
ADD PRIMARY KEY(vehicle_id);
ALTER TABLE car
ADD UNIQUE KEY (ss_number);