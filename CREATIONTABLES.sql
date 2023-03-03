

CREATE TABLE TYPES(
    id int AUTO_INCREMENT,
    nom varchar(20),
    PRIMARY KEY (id)
);

CREATE TABLE LIEUX (
   id int AUTO_INCREMENT,
   nom varchar(60),
   pays varchar(20),
   adresse varchar(100),
   region varchar(20),
   alias varchar(20),
   PRIMARY KEY (id)
); 

CREATE TABLE SALLES (
    id int AUTO_INCREMENT, 
    nom varchar(20),
    capacite int , 
    id_lieux int, 
    PRIMARY KEY (id),
    CONSTRAINT LIEUX_FK FOREIGN KEY(id_lieux) REFERENCES LIEUX(id)
);

CREATE TABLE PLACES(
    id int AUTO_INCREMENT,
    categorie varchar(20),
    prix REAL NOT NULL, 
    id_salles int, 
    PRIMARY KEY (id), 
    CONSTRAINT SALLE_FK FOREIGN KEY (id_salles) REFERENCES SALLES(id)
); 

CREATE TABLE EVENEMENTS(
    id int AUTO_INCREMENT,
    nom varchar(20),
    detail varchar(500),
    id_types int,
    id_salles int,
    PRIMARY KEY (id),
    CONSTRAINT TYPES_FK FOREIGN KEY(id_types) REFERENCES TYPES(id),
    CONSTRAINT SALLES_FK FOREIGN KEY(id_salles) REFERENCES SALLES(id)
);

CREATE TABLE AGENDAS(
    id int AUTO_INCREMENT, 
    date_debut date, 
    date_fin date, 
    horaire_debut time, 
    horaire_fin time, 
    id_evenements int,
    PRIMARY KEY (id),
    FOREIGN KEY(id_evenements) REFERENCES EVENEMENTS(id)
);

CREATE TABLE ARTISTES(
    id int AUTO_INCREMENT,
    nom varchar (20),
    genre varchar (20),
    PRIMARY KEY (id),
    CREATION DATETIME,
    mise_a_jour DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE PARTICIPATIONS(
    id int AUTO_INCREMENT,
    id_evenements int,
    id_artistes int,
    PRIMARY KEY (id),
    CONSTRAINT EVENEMENTS_PARTICIPATIONS_FK FOREIGN KEY (id_evenements) REFERENCES EVENEMENTS(id),
    CONSTRAINT ARTISTES_FK FOREIGN KEY (id_artistes) REFERENCES ARTISTES(id)
);

CREATE TABLE PERSONNES(
    id int AUTO_INCREMENT,
    nom varchar(20) NOT NULL,
    prenom varchar(20) NOT NULL,
    mail varchar(120) NOT NULL,
    mdp varchar(20) NOT NULL,
    telephone varchar(13) NOT NULL,
    PRIMARY KEY (id),
    CREATION DATETIME,
    mise_a_jour DATETIME DEFAULT CURRENT_TIMESTAMP

);

CREATE TABLE EQUIPES(
    id int AUTO_INCREMENT,
    id_personnes int,
    PRIMARY KEY (id),
    CONSTRAINT EQUIPE_IS_PERSONNE_FK  FOREIGN KEY (id_personnes) REFERENCES PERSONNES (id)
);

CREATE TABLE CLIENTS(
    id int AUTO_INCREMENT,
    id_personnes int,
    PRIMARY KEY (id),
    CONSTRAINT CLIENT_IS_PERSONNE_FK  FOREIGN KEY (id_personnes) REFERENCES PERSONNES (id)
);

CREATE TABLE GESTIONNAIRES(
    id int AUTO_INCREMENT,
    id_personnes int,
    PRIMARY KEY (id),
    CONSTRAINT GESTIONNAIRE_IS_PERSONNE_FK  FOREIGN KEY (id_personnes) REFERENCES PERSONNES (id)
);

CREATE TABLE ROLES (
    id int AUTO_INCREMENT,
    PRIMARY KEY (id),
    libelle varchar(20)  
);

CREATE TABLE QRCODES(
    id int AUTO_INCREMENT, 
    PRIMARY KEY (id),
    lien varchar(50)
);

CREATE TABLE RESERVATIONS(
    id int AUTO_INCREMENT, 
    id_qrcodes int, 
    id_personnes int, 
    id_places int, 
    id_evenements int,
    PRIMARY KEY (id),
    CONSTRAINT QRCODES_FK FOREIGN KEY(id_qrcodes) REFERENCES QRCODES(id), 
    CONSTRAINT PERSONNES_FK FOREIGN KEY(id_personnes) REFERENCES PERSONNES(id),
    CONSTRAINT PLACES_FK FOREIGN KEY(id_places) REFERENCES PLACES(id),
    CONSTRAINT EVENEMENTS_RESERVATIONS_FK FOREIGN KEY(id_evenements) REFERENCES EVENEMENTS(id),
    CONSTRAINT UNICITE UNIQUE(id_personnes, id_places, id_evenements)
);




