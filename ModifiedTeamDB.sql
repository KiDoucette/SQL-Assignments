CREATE DATABASE TeamDB;
USE TeamDB;
CREATE TABLE player(first_name varchar(45), last_name varchar(45), street_address varchar(45), city varchar(45), state varchar(45), email varchar(45), phone_number varchar(45), zip_code int, player_id bigint);
CREATE TABLE coach(first_name varchar(45), last_name varchar(45), street_address varchar(45), city varchar(45), state varchar(45), zip_code int, phone_number varchar(45), coach_id bigint);
CREATE TABLE sponsor (company_name varchar(45), street_address varchar(45), city varchar(45), state varchar(45), zip_code int, contact_name varchar(45), phone_number varchar(45), email varchar(45));
CREATE TABLE team(team_name varchar(45), sport varchar(45), team_id bigint);
CREATE TABLE team_sponsor(team_id bigint, company_name varchar(45));
ALTER TABLE team_sponsor
ADD UNIQUE KEY (team_id);
ALTER TABLE team_sponsor
ADD UNIQUE KEY (company_name);
ALTER TABLE team
ADD PRIMARY KEY(team_id);
ALTER TABLE sponsor
ADD PRIMARY KEY(company_name);
ALTER TABLE coach
ADD PRIMARY KEY (coach_id);
ALTER TABLE coach
CHANGE coach_id id int;
ALTER TABLE coach
ADD coach_email_addres varchar(45);
ALTER TABLE player
ADD PRIMARY KEY (player_id);