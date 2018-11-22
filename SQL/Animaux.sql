drop database animals;

create database animals; 

use animals;

create table animals (
type varchar(100),
sexe char(1),
dateAcquiaition datetime,
nom varchar(100),
description varchar(1000)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/animauxgood.csv' INTO TABLE animals FIELDS terminated by ";" enclosed by "\"";