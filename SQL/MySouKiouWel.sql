create database moovies;

use moovies ;

create table realisateur (
idreal int primary key
);

create table film 
(
    indent_film INT NOT NULL,
    titre VARCHAR(100),
    genre1 VARCHAR(100),
    pays varchar(100),
    recette Int,
    date_sortie DATE,
    nombre_entrer INT,
    date_heure_saisie INT,
    constraint c1 primary key (indent_film),
    constraint c2 foreign key (idreal)
    REFERENCES realisateur (idreal)
    );

alter table film alter recette set DEFAULT 0;

alter table film modify pays varchar(200) not null;

ALTER TABLE film DROP FOREIGN KEY idreal;

CREATE VIEW f AS SELECT ident_film, titre, genre1, pays AS value FROM film;
SELECT * FROM film;

DROP VIEW f;

RENAME TABLE film TO filmold;
    
CREATE TABLE film AS SELECT * FROM filmold;

drop table film, filmold;



    
    

