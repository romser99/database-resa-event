
CREATE TABLE TYPES(
    id int PRIMARY KEY AUTOINCREMENT,
    nom varchar(20),
    description varchar(500)
);

CREATE TABLE EVENEMENTS(
    id int PRIMARY KEY AUTOINCREMENT,
    nom varchar(20),
    id_types int,
    id_salles int,
    CONSTRAINT fk_types FOREIGN KEY(id_types) REFERENCES TYPES(ID),
    CONSTRAINT fk_salles FOREIGN KEY(id_salles) REFERENCES SALLES(ID)
);