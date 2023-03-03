INSERT INTO
    TYPES (nom)
    VALUES
    ("concert"),
    ("musee"),
    ("cinema"),
    ("theatre"),
    ("festival"),
    ("expositions")
;
    
INSERT INTO
    LIEUX (nom,pays,adresse,region) 
    VALUES
        ("theatre_de_chelles", "france", "place_des_martyrs_de_chateaubriant_77500_chelles", "ile_de_france"),
        ("theatre_de_chatillon", "france", "3_rue_sadi_carnot_92320_chatillon", "ile_de_france"),
        ("la_ferme_de_bel_ebat","france", "1_place_de_bel_ebat_78280_guyancourt", "ile_de_france")
;
INSERT INTO
    SALLES (nom,capacite,id_lieux)
    VALUES
    ("laurent", 12, (SELECT id FROM LIEUX WHERE nom= "theatre_de_chelles")),
    ("septere", 16, (SELECT id FROM LIEUX WHERE nom= "theatre_de_chatillon")),
    ("vache", 10, (SELECT id FROM LIEUX WHERE nom= "la_ferme_de_bel_ebat"))
;

INSERT INTO
    PLACES (categorie,prix,id_salles)
    VALUES
    ("classique", 21.99, (SELECT id FROM SALLES WHERE nom = "laurent")),
    ("classique", 21.99, (SELECT id FROM SALLES WHERE nom = "laurent")),
    ("classique", 21.99, (SELECT id FROM SALLES WHERE nom = "laurent")),
    ("classique", 21.99, (SELECT id FROM SALLES WHERE nom = "laurent")),
    ("classique", 21.99, (SELECT id FROM SALLES WHERE nom = "laurent")),
    ("classique", 21.99, (SELECT id FROM SALLES WHERE nom = "laurent")),
    ("classique", 21.99, (SELECT id FROM SALLES WHERE nom = "laurent")),
    ("classique", 21.99, (SELECT id FROM SALLES WHERE nom = "laurent")),
    ("classique", 21.99, (SELECT id FROM SALLES WHERE nom = "laurent")),
    ("classique", 21.99, (SELECT id FROM SALLES WHERE nom = "laurent")),
    ("classique", 21.99, (SELECT id FROM SALLES WHERE nom = "laurent")),
    ("classique", 21.99, (SELECT id FROM SALLES WHERE nom = "laurent")),
    ("classique", 15.99, (SELECT id FROM SALLES WHERE nom = "septere")),
    ("classique", 15.99, (SELECT id FROM SALLES WHERE nom = "septere")),
    ("classique", 15.99, (SELECT id FROM SALLES WHERE nom = "septere")),
    ("classique", 15.99, (SELECT id FROM SALLES WHERE nom = "septere")),
    ("classique", 15.99, (SELECT id FROM SALLES WHERE nom = "septere")),
    ("classique", 15.99, (SELECT id FROM SALLES WHERE nom = "septere")),
    ("classique", 15.99, (SELECT id FROM SALLES WHERE nom = "septere")),
    ("classique", 15.99, (SELECT id FROM SALLES WHERE nom = "septere")),
    ("classique", 15.99, (SELECT id FROM SALLES WHERE nom = "septere")),
    ("classique", 15.99, (SELECT id FROM SALLES WHERE nom = "septere")),
    ("classique", 15.99, (SELECT id FROM SALLES WHERE nom = "septere")),
    ("classique", 15.99, (SELECT id FROM SALLES WHERE nom = "septere")),
    ("classique", 15.99, (SELECT id FROM SALLES WHERE nom = "septere")),
    ("classique", 15.99, (SELECT id FROM SALLES WHERE nom = "septere")),
    ("classique", 15.99, (SELECT id FROM SALLES WHERE nom = "septere")),
    ("classique", 15.99, (SELECT id FROM SALLES WHERE nom = "septere")),
    ("premium", 42, (SELECT id FROM SALLES WHERE nom = "vache")),
    ("premium", 42, (SELECT id FROM SALLES WHERE nom = "vache")),
    ("premium", 42, (SELECT id FROM SALLES WHERE nom = "vache")),
    ("premium", 42, (SELECT id FROM SALLES WHERE nom = "vache")),
    ("premium", 42, (SELECT id FROM SALLES WHERE nom = "vache")),
    ("premium", 42, (SELECT id FROM SALLES WHERE nom = "vache")),
    ("premium", 42, (SELECT id FROM SALLES WHERE nom = "vache")),
    ("premium", 42, (SELECT id FROM SALLES WHERE nom = "vache")),
    ("premium", 42, (SELECT id FROM SALLES WHERE nom = "vache")),
    ("premium", 42, (SELECT id FROM SALLES WHERE nom = "vache"))

;

INSERT INTO
    EVENEMENTS (nom,detail,id_types,id_salles)
    VALUES
    ("Le_Bourgeois_Gentilhomme","piece_de_Molière", (SELECT id FROM TYPES WHERE nom = "theatre"), (SELECT id FROM SALLES WHERE nom = "laurent")),
    ("Le_Lapin","Oeuvre_burlesque_de_la_troupe_Petit_pains", (SELECT id FROM TYPES WHERE nom = "theatre"), (SELECT id FROM SALLES WHERE nom = "septere")),
    ("AIE","Les_cactus_ca_pique", (SELECT id FROM TYPES WHERE nom = "theatre"), (SELECT id FROM SALLES WHERE nom = "vache"))
;

INSERT INTO
    AGENDAS (date_debut, date_fin, horaire_debut, horaire_fin, id_evenements)
    VALUES
    ("2023-05-03", "2023-05-03",  "20:30:00", "22:30:00", (SELECT id FROM EVENEMENTS WHERE nom = "Le_Bourgeois_Gentilhomme")),
    ("2023-03-26", "2023-03-26",  "16:15:00", "17:45:00", (SELECT id FROM EVENEMENTS WHERE nom = "septere")),
    ("2024-01-13", "2024-01-13",  "13:00:00", "15:00:00", (SELECT id FROM EVENEMENTS WHERE nom = "vache"))
;

INSERT INTO
    ARTISTES (nom, genre)
    VALUES
    ("Les_folichons", "troupe_de_theatre"),
    ("la_camaraderie", "troupe_de_theatre"),
    ("Jean_dupont", "comedien")
;

INSERT INTO
    PERSONNES (nom, prenom, mail, mdp, telephone, accreditation, CREATION)
    VALUES ("Romain", "Serrano", "rom.serrano99@gmail.com", "tokenmdp","0652835471", "client", CURRENT_TIMESTAMP)

;

