
CREATE TABLE TYPE(
    id int AUTO_INCREMENT,
    nom varchar(20),
    PRIMARY KEY (id)
);

CREATE TABLE ADRESSE(
   id int AUTO_INCREMENT,
   nom varchar(60),
   pays varchar(20),
   adresse varchar(100),
   region varchar(20),
   alias varchar(20),
   PRIMARY KEY (id)
); 

CREATE TABLE ETABLISSEMENT(
   id int AUTO_INCREMENT,
   nom varchar(60),
   id_adresse int, 
   PRIMARY KEY (id),
   CONSTRAINT ADRESSE_FK FOREIGN KEY(id_adresse) REFERENCES ADRESSE(id)
); 

CREATE TABLE SALLE(
    id int AUTO_INCREMENT, 
    nom varchar(20),
    capacite int , 
    id_lieu int, 
    PRIMARY KEY (id),
    CONSTRAINT LIEU_FK FOREIGN KEY(id_lieu) REFERENCES LIEU(id)
);

CREATE TABLE PLACE(
    id int AUTO_INCREMENT,
    categorie varchar(20),
    prix REAL NOT NULL, 
    id_salle int, 
    PRIMARY KEY (id), 
    CONSTRAINT SALLE_FK FOREIGN KEY (id_salle) REFERENCES SALLE(id)
); 

CREATE TABLE EVENEMENT(
    id int AUTO_INCREMENT,
    nom varchar(20),
    detail varchar(500),
    id_type int,
    id_salle int,
    PRIMARY KEY (id),
    CONSTRAINT TYPE_FK FOREIGN KEY(id_type) REFERENCES TYPE(id),
    CONSTRAINT SALLE_FK FOREIGN KEY(id_salle) REFERENCES SALLE(id)
);

CREATE TABLE AGENDA(
    id int AUTO_INCREMENT, 
    date_debut date, 
    date_fin date, 
    horaire_debut time, 
    horaire_fin time, 
    id_evenement int,
    PRIMARY KEY (id),
    FOREIGN KEY(id_evenement) REFERENCES EVENEMENT(id)
);

CREATE TABLE ARTISTE(
    id int AUTO_INCREMENT,
    nom varchar (20),
    genre varchar (20),
    PRIMARY KEY (id),
    CREATION DATETIME,
    mise_a_jour DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE PARTICIPATION(
    id int AUTO_INCREMENT,
    id_evenement int,
    id_artiste int,
    PRIMARY KEY (id),
    CONSTRAINT EVENEMENT_PARTICIPATION_FK FOREIGN KEY (id_evenement) REFERENCES EVENEMENT(id),
    CONSTRAINT ARTISTE_FK FOREIGN KEY (id_artiste) REFERENCES ARTISTE(id)
);

CREATE TABLE PERSONNE(
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

CREATE TABLE EQUIPE(
    id int AUTO_INCREMENT,
    id_personne int,
    PRIMARY KEY (id),
    CONSTRAINT EQUIPE_IS_PERSONNE_FK  FOREIGN KEY (id_personne) REFERENCES PERSONNE(id)
);

CREATE TABLE CLIENT(
    id int AUTO_INCREMENT,
    id_personne int,
    PRIMARY KEY (id),
    CONSTRAINT CLIENT_IS_PERSONNE_FK  FOREIGN KEY (id_personne) REFERENCES PERSONNE(id)
);

CREATE TABLE GESTIONNAIRE(
    id int AUTO_INCREMENT,
    id_personne int,
    PRIMARY KEY (id),
    CONSTRAINT GESTIONNAIRE_IS_PERSONNE_FK  FOREIGN KEY (id_personne) REFERENCES PERSONNE(id)
);

CREATE TABLE ROLE(
    id int AUTO_INCREMENT,
    PRIMARY KEY (id),
    libelle varchar(20)  
);

CREATE TABLE QRCODE(
    id int AUTO_INCREMENT, 
    PRIMARY KEY (id),
    lien varchar(50)
);

CREATE TABLE RESERVATION(
    id int AUTO_INCREMENT, 
    id_qrcode int, 
    id_personne int, 
    id_place int, 
    id_evenement int,
    PRIMARY KEY (id),
    CONSTRAINT QRCODE_FK FOREIGN KEY(id_qrcode) REFERENCES QRCODE(id), 
    CONSTRAINT PERSONNE_FK FOREIGN KEY(id_personne) REFERENCES PERSONNE(id),
    CONSTRAINT PLACE_FK FOREIGN KEY(id_place) REFERENCES PLACE(id),
    CONSTRAINT EVENEMENT_RESERVATION_FK FOREIGN KEY(id_evenement) REFERENCES EVENEMENT(id),
    CONSTRAINT UNICITE UNIQUE(id_personne, id_place, id_evenement)
);




