
CREATE TABLE AGENDAS (
    id int auto_increment, 
    date_debut date, 
    date_fin date, 
    horaire_debut date, 
    horaire_fin date, 
    id_evenements int,
    PRIMARY KEY (id),
    FOREIGN KEY(id_evenements) REFERENCES EVENEMENTS(id)
);

CREATE TABLE RESERVATIONS (
    id INT auto_increment, 
    id_qrcodes INT, 
    id_personnes INT, 
    id_places INT, 
    id_evenements INT,
    PRIMARY KEY (id),
    CONSTRAINT QRCODES_FK FOREIGN KEY(id_qrcodes) REFERENCES QRCODES(id), 
    CONSTRAINT PERSONNES_FK FOREIGN KEY(id_personnes) REFERENCES PERSONNES(id),
    CONSTRAINT PLACES_FK FOREIGN KEY(id_places) REFERENCES PLACES(id),
    CONSTRAINT EVENEMENTS_RESERVATIONS_FK FOREIGN KEY(id_evenements) REFERENCES EVENEMENTS(id),
    CONSTRAINT UNICITE UNIQUE(id_personnes, id_places, id_evenements)
);
