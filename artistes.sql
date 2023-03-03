//* Création de la table artistes*/
CREATE TABLE ARTISTES (
    id int AUTOINCREMENT,
    nom varchar (20),
    genre varchar (20),
    PRIMARY KEY (id),
    CREATION DATETIME,
    MISE_A_JOUR DATETIME
) ;