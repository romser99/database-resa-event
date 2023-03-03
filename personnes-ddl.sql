CREATE TABLE PERSONNES (
    id integer AUTO_INCREMENT,
    nom varchar (20), NOT NULL
    prenom varchar(20) NOT NULL,
    adresse_mail varchar NOT NULL,
    mot_de_passe varchar NOT NULL,
    telephone varchar NOT NULL,
    role varchar,
    PRIMARY KEY (id),
    creation DATETIME DEFAULT CURRENT_TIMESTAMP,
    mise_a_jour DATETIME DEFAULT CURRENT_TIMESTAMP
);

/*ajoute la table personnes dans la BDD */
