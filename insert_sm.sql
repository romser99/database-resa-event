INSERT INTO types (nom, description) VALUES ('musee Louvre', 'Louvre'); 
INSERT INTO types (nom, description) VALUES ('musee Orsay', 'Orsay'); 


INSERT INTO lieux (nom , pays , adresse, region) VALUES ('Louvre', 'FRANCE', ' 1 rue de Rivoli 75 001 Paris', 'ile de france'); 
INSERT INTO lieux (nom , pays , adresse, region) VALUES ('Orsay', 'FRANCE', " 1 rue de la legion d'honneur 75007 Paris", 'ile de france'); 

INSERT INTO personnes ( nom, prenom, adresse_mail, mot_de_passe, telephone, role) VALUES ('mansouri', 'sara', 'mansouri@gmail', 'slm', '0602030155', 'client');

INSERT INTO evenements (nom, id_types, id_salles) VALUES('exposition Victor Hugo', (select id from types where nom = 'musee Louvre'), (select id from salles where nom = 'Salle Louis'));
INSERT INTO evenements (nom, id_types, id_salles) VALUES('concert Shakira', (select id from types where nom = 'musee Orsay'), (select id from salles where nom = 'Salle Cleopatre')); 
INSERT INTO evenements (nom, id_types, id_salles) VALUES('concert Rihanna', (select id from types where nom = 'musee Orsay'), (select id from salles where nom = 'Salle Musique')); 
INSERT INTO evenements (nom, id_types, id_salles) VALUES('exposition art', (select id from types where nom = 'musee Louvre'), (select id from salles where nom = 'Salle Joconde')); 
INSERT INTO evenements (nom, id_types, id_salles) VALUES('exposition plastique', (select id from types where nom = 'musee Orsay'), (select id from salles where nom = 'Salle Marion'));
INSERT INTO evenements (nom, id_types, id_salles) VALUES('exposition Channel', (select id from types where nom = 'musee Orsay'), (select id from salles where nom = 'Salle Pyramide'));


INSERT INTO agendas ( date_debut, date_fin, horaire_debut, horaire_fin, id_evenements ) VALUES ( '2023-01-02', '2023-01-02' , '20:00:00' , '22:00:00', (select id from evenements where nom = 'concert Shakira'));
INSERT INTO agendas ( date_debut, date_fin, horaire_debut, horaire_fin, id_evenements ) VALUES ( '2023-05-03', '2023-05-03' , '10:00:00' , '12:00:00', (select id from evenements where nom = 'exposition Victor Hugo'));
INSERT INTO agendas ( date_debut, date_fin, horaire_debut, horaire_fin, id_evenements ) VALUES ( '2023-12-02', '2023-12-02' , '20:00:00' , '22:00:00', (select id from evenements where nom = 'concert Rihanna'));
INSERT INTO agendas ( date_debut, date_fin, horaire_debut, horaire_fin, id_evenements ) VALUES ( '2023-06-28', '2023-06-28' , '12:00:00' , '17:00:00', (select id from evenements where nom = 'exposition art'));
INSERT INTO agendas ( date_debut, date_fin, horaire_debut, horaire_fin, id_evenements ) VALUES ( '2023-04-02', '2023-04-02' , '20:00:00' , '22:00:00', (select id from evenements where nom = 'exposition art'));
INSERT INTO agendas ( date_debut, date_fin, horaire_debut, horaire_fin, id_evenements ) VALUES ( '2023-01-02', '2023-01-02' , '10:00:00' , '15:00:00', (select id from evenements where nom = 'exposition plastique'));
INSERT INTO agendas ( date_debut, date_fin, horaire_debut, horaire_fin, id_evenements ) VALUES ( '2023-08-05', '2023-08-05' , '10:00:00' , '18:00:00', (select id from evenements where nom = 'exposition Channel'));
INSERT INTO agendas ( date_debut, date_fin, horaire_debut, horaire_fin, id_evenements ) VALUES ( '2023-04-08', '2023-04-08' , '11:00:00' , '15:00:00', (select id from evenements where nom = 'exposition Channel'));
INSERT INTO agendas ( date_debut, date_fin, horaire_debut, horaire_fin, id_evenements ) VALUES ( '2023-03-02', '2023-03-02' , '20:00:00' , '22:00:00', (select id from evenements where nom = 'exposition Victor Hugo'));



INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle Louis', '50' , (SELECT id from lieux where nom = 'Louvre')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle Charles', '30' , (SELECT id from lieux where nom = 'Louvre')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle Jeanne', '90' , (SELECT id from lieux where nom = 'Louvre')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle Marion', '20' , (SELECT id from lieux where nom = 'Louvre')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle Joconde', '20' , (SELECT id from lieux where nom = 'Louvre')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle Vitor', '50' , (SELECT id from lieux where nom = 'Louvre')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle Musique', '100' , (SELECT id from lieux where nom = 'Louvre')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle Pyramide', '50' , (SELECT id from lieux where nom = 'Louvre')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle Cleopatre', '20' , (SELECT id from lieux where nom = 'Louvre')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle Paris', '50' , (SELECT id from lieux where nom = 'Louvre')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle Charles', '30' , (SELECT id from lieux where nom = 'Louvre')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle libre', '20' , (SELECT id from lieux where nom = 'Louvre')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle 1', '30' , (SELECT id from lieux where nom = 'Orsay')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle 2', '20' , (SELECT id from lieux where nom = 'Orsay')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle 3', '25' , (SELECT id from lieux where nom = 'Orsay')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle 4', '30' , (SELECT id from lieux where nom = 'Orsay')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle 5', '35' , (SELECT id from lieux where nom = 'Orsay')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle 6', '20' , (SELECT id from lieux where nom = 'Orsay')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle 7', '50' , (SELECT id from lieux where nom = 'Orsay')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle 8', '40' , (SELECT id from lieux where nom = 'Orsay')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle 9', '20' , (SELECT id from lieux where nom = 'Orsay')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle 10', '50' , (SELECT id from lieux where nom = 'Orsay')) ;  
INSERT INTO salles (nom , capacite, id_lieux) VALUES ( 'Salle 11', '40' , (SELECT id from lieux where nom = 'Orsay')) ;  

INSERT INTO places(categorie, prix, id_salles) VALUES ('vip', '100', (SELECT id from salles where nom = 'Salle Joconde')) ; 
INSERT INTO places(categorie, prix, id_salles) VALUES ('classe 1', '50', (SELECT id from salles where nom = 'Salle Joconde'));
INSERT INTO places(categorie, prix, id_salles) VALUES ('classe 2', '30', (SELECT id from salles where nom = 'Salle Joconde'));
INSERT INTO places(categorie, prix, id_salles) VALUES ('vip', '100', (SELECT id from salles where nom = 'Salle Pyramide'));
INSERT INTO places(categorie, prix, id_salles) VALUES ('classe', '50', (SELECT id from salles where nom = 'Salle Pyramide'));
INSERT INTO places(categorie, prix, id_salles) VALUES ('classe', '30', (SELECT id from salles where nom = 'Salle Pyramide'));
INSERT INTO places(categorie, prix, id_salles) VALUES ('vip', '100', (SELECT id from salles where nom = 'Salle Louis'));
INSERT INTO places(categorie, prix, id_salles) VALUES ('classe', '50', (SELECT id from salles where nom = 'Salle Louis'));
INSERT INTO places(categorie, prix, id_salles) VALUES ('classe', '30', (SELECT id from salles where nom = 'Salle Louis'));
INSERT INTO places(categorie, prix, id_salles) VALUES ('vip', '100', (SELECT id from salles where nom = 'Salle Cleopatre'));
INSERT INTO places(categorie, prix, id_salles) VALUES ('classe', '50', (SELECT id from salles where nom = 'Salle Cleopatre'));
INSERT INTO places(categorie, prix, id_salles) VALUES ('classe', '30', (SELECT id from salles where nom = 'Salle Cleopatre'));
INSERT INTO places(categorie, prix, id_salles) VALUES ('vip', '100', (SELECT id from salles where nom = 'Salle Musique'));
INSERT INTO places(categorie, prix, id_salles) VALUES ('classe', '50', (SELECT id from salles where nom = 'Salle Musique'));
INSERT INTO places(categorie, prix, id_salles) VALUES ('classe', '30', (SELECT id from salles where nom = 'Salle Musique'));
INSERT INTO places(categorie, prix, id_salles) VALUES ('vip', '100', (SELECT id from salles where nom = 'Salle Marion'));
INSERT INTO places(categorie, prix, id_salles) VALUES ('classe', '50', (SELECT id from salles where nom = 'Salle Marion'));
INSERT INTO places(categorie, prix, id_salles) VALUES ('classe', '30', (SELECT id from salles where nom = 'Salle Marion'));


INSERT INTO artistes(nom , genre) VALUES ('Rihanna', 'Rnb'); 
INSERT INTO artistes(nom , genre) VALUES ('Shakira', 'Pop'); 
INSERT INTO artistes(nom , genre) VALUES ('Channel', 'mode'); 
INSERT INTO artistes(nom , genre) VALUES ('Jean Francois', 'art'); 
INSERT INTO artistes(nom , genre) VALUES ('Victor Hugo', 'art');