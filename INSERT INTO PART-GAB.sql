
INSERT INTO LIEUX (nom, pays, adresse, region) values
    ("musee de l'orangerie","france","Jardin Tuileries, 75001 Paris","ile-de-france"),
    ("fondation louis vuitton","france","8 Av. du Mahatma Gandhi, 75116 Paris","ile-de-france");

INSERT INTO SALLES (nom, capacite, id_lieux) values
    ("toutes zones",20,(select id from lieux where nom ="musee de l'orangerie")),
    ("toutes zones",16,(select id from lieux where nom ="fondation louis vuitton"));

INSERT INTO PLACES (categorie, prix, id_salles) values 
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",12,(select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("normal",18,(select id from salles where id_lieux = (select id from lieux where nom = "fondation louis vuitton"))),
    ("normal",18,(select id from salles where id_lieux = (select id from lieux where nom = "fondation louis vuitton"))),
    ("normal",18,(select id from salles where id_lieux = (select id from lieux where nom = "fondation louis vuitton"))),
    ("normal",18,(select id from salles where id_lieux = (select id from lieux where nom = "fondation louis vuitton"))),
    ("normal",18,(select id from salles where id_lieux = (select id from lieux where nom = "fondation louis vuitton"))),
    ("normal",18,(select id from salles where id_lieux = (select id from lieux where nom = "fondation louis vuitton"))),
    ("normal",18,(select id from salles where id_lieux = (select id from lieux where nom = "fondation louis vuitton"))),
    ("normal",18,(select id from salles where id_lieux = (select id from lieux where nom = "fondation louis vuitton"))),
    ("normal",18,(select id from salles where id_lieux = (select id from lieux where nom = "fondation louis vuitton"))),
    ("normal",18,(select id from salles where id_lieux = (select id from lieux where nom = "fondation louis vuitton"))),
    ("normal",18,(select id from salles where id_lieux = (select id from lieux where nom = "fondation louis vuitton"))),
    ("normal",18,(select id from salles where id_lieux = (select id from lieux where nom = "fondation louis vuitton"))),
    ("normal",18,(select id from salles where id_lieux = (select id from lieux where nom = "fondation louis vuitton"))),
    ("normal",18,(select id from salles where id_lieux = (select id from lieux where nom = "fondation louis vuitton"))),
    ("normal",18,(select id from salles where id_lieux = (select id from lieux where nom = "fondation louis vuitton"))),
    ("normal",18,(select id from salles where id_lieux = (select id from lieux where nom = "fondation louis vuitton")));

insert into TYPES (nom) values("expositions");

insert into EVENEMENTS (nom, detail, id_types, id_salles) values
    ("exposition universelle","exposition internationale de Paris",
        (select id from types where nom ="expositions"), 
        (select id from salles where id_lieux = (select id from lieux where nom = "fondation louis vuitton"))),
    ("art deco france","decouverte d'art deco",
        (select id from types where nom ="expositions"),
        (select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie"))),
    ("street art","decouverte du genre street art en famille",
        (select id from types where nom ="expositions"),
        (select id from salles where id_lieux = (select id from lieux where nom = "musee de l'orangerie")));


insert into AGENDAS (date_debut, date_fin, horaire_debut, horaire_fin, id_evenements) values
    ("2023-10-21","2024-03-06","09:00:00","18:00:00",(select id from EVENEMENTS where nom = "exposition universel")),
    ("2023-07-24","2024-06-21","09:00:00","18:00:00",(select id from EVENEMENTS where nom = "art deco france")),
    ("2023-09-06","2024-03-04","08:00:00","20:00:00",(select id from EVENEMENTS where nom = "street art"));

insert into ARTISTES (nom,genre) values 
    ("basquiat","neo-expresionnisme"),
    ("banksy","urbain");

INSERT INTO PERSONNES (nom, prenom, mail, mdp, telephone, accreditation) values
    ("gabriel","ramalho","gramalho@consultants-solutec.fr","mot de passe","0675014669","admin");



