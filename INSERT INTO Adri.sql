INSERT INTO LIEUX(nom, pays, adresse, region) VALUES
('Paris La Defense Arena', 'France', '99 Jard. de lArche, 92000 Nanterre', 'Ile-De-France'),
('Accor Arena', 'France', '8 Bd de Bercy, 75012 Paris', 'Ile-De-France');

INSERT INTO TYPES(nom) VALUES
('Concert Rap'),
('Concert Pop');

INSERT INTO ARTISTES(nom, genre) VALUES
('Halsey', 'Pop Americaine'),
('RAYE', 'Rap/Pop Anglais');

INSERT INTO PERSONNES(nom, prenom, mail, mdp, telephone, accreditation) VALUES ('Chaigneau', 'Adrien', 'adrienchaigneau974@gmail.com', '123', '0686413716', 'admin');

INSERT INTO SALLES(nom, capacite, id_lieux) VALUES
('Defense', 20, (SELECT id from LIEUX WHERE nom = 'Paris La Defense Arena')),
('Bercy', 20, (SELECT id from LIEUX WHERE nom = 'Accor Arena'));

INSERT INTO PLACES(categorie, prix, id_salles) VALUES
('1', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('1', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('1', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('1', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('1', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('1', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('1', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('1', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('2', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('2', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('2', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('2', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('2', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('2', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('2', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('VIP', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('VIP', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('VIP', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('VIP', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('VIP', 50, (SELECT id from SALLES WHERE nom = 'Bercy')),
('1', 50, (SELECT id from SALLES WHERE nom = 'Defense')),
('1', 50, (SELECT id from SALLES WHERE nom = 'Defense')),
('1', 50, (SELECT id from SALLES WHERE nom = 'Defense')),
('1', 50, (SELECT id from SALLES WHERE nom = 'Defense')),
('1', 50, (SELECT id from SALLES WHERE nom = 'Defense')),
('1', 50, (SELECT id from SALLES WHERE nom = 'Defense')),
('2', 100, (SELECT id from SALLES WHERE nom = 'Defense')),
('2', 100, (SELECT id from SALLES WHERE nom = 'Defense')),
('2', 100, (SELECT id from SALLES WHERE nom = 'Defense')),
('2', 100, (SELECT id from SALLES WHERE nom = 'Defense')),
('2', 100, (SELECT id from SALLES WHERE nom = 'Defense')),
('2', 100, (SELECT id from SALLES WHERE nom = 'Defense')),
('2', 100, (SELECT id from SALLES WHERE nom = 'Defense')),
('2', 100, (SELECT id from SALLES WHERE nom = 'Defense')),
('2', 100, (SELECT id from SALLES WHERE nom = 'Defense')),
('VIP', 150, (SELECT id from SALLES WHERE nom = 'Defense')),
('VIP', 150, (SELECT id from SALLES WHERE nom = 'Defense')),
('VIP', 150, (SELECT id from SALLES WHERE nom = 'Defense')),
('VIP', 150, (SELECT id from SALLES WHERE nom = 'Defense')),
('VIP', 150, (SELECT id from SALLES WHERE nom = 'Defense'));



INSERT INTO EVENEMENTS(nom, id_types, id_salles) VALUES
('Concert Halsey Jour 1', (SELECT id from TYPES WHERE nom = 'Concert Pop'), (SELECT id from LIEUX WHERE nom = 'Accor Arena')),
('Concert Halsey Jour 2', (SELECT id from TYPES WHERE nom = 'Concert Pop'), (SELECT id from LIEUX WHERE nom = 'Accor Arena')),
('Concert Raye', (SELECT id from TYPES WHERE nom = 'Concert Rap'), (SELECT id from LIEUX WHERE nom = 'Paris La Defense Arena'));

INSERT INTO AGENDAS(date_debut, date_fin, horaire_debut, horaire_fin, id_evenements) VALUES
('2023-06-14', '2023-06-14', '19:00:00', '20:00:00', (SELECT id FROM EVENEMENTS WHERE nom = 'Concert Halsey Jour 1')),
('2023-06-15', '2023-06-15', '19:00:00', '21:00:00', (SELECT id FROM EVENEMENTS WHERE nom = 'Concert Halsey Jour 1')),
('2023-11-24', '2023-11-24', '19:00:00', '20:30:00', (SELECT id FROM EVENEMENTS WHERE nom = 'Concert Raye'));

