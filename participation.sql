CREATE TABLE PARTICIPATIONS (
    id int AUTOINCREMENT,
    id_evenements int,
    id_artistes int,
    PRIMARY KEY (id)
    CONSTRAINT fk_evenements FOREIGN KEY (id_evenements) REFERENCES EVENEMENTS(id),
    CONSTRAINT fk_artistes FOREIGN KEY (id_artistes) REFERENCES ARTISTES(id)
) ;