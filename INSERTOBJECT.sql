INSERT INTO TYPE (nom) VALUES
('concert'),
('musee'),
('cinema'),
('theatre'),
('festival'),
('exposition');

INSERT INTO ADRESSE (numero, rue, ville, codepostal, region, pays)VALUES
(1,'Jardin_des_Tuileries','Paris',75001,'ile_de_france','France'),
(8,'Avenue du Mahatma Gandhi','Paris',75116,'ile_de_france','France'),
(1,'Rue de Rivoli','Paris',75001,'ile_de_france','France'),
(1,'Rue de la legion d"honneur','Paris',75007,'ile_de_france','France'),
(99,'Jardin de l"Arche','Nanterre',92000,'ile_de_france','France'),
(8,'Boulevard de Bercy','Paris',75012,'ile_de_france','France'),
(13,'Rue des Ornes','Franconville',95130,'ile_de_france','France'),
(1,'Rue des Chevaux Bleus','Paris',75016,'ile_de_france','France'),
(1,'Rue de la Defense','Nanterre',92000,'ile_de_france','France'),
(1,'Place des Martyrs de Chateaubriant','Chelles',77500,'ile_de_france','France'),
(3,'Rue Sadi Carnot','Chatillon',92320,'ile_de_france','France'),
(1,'Place de Bel Ebat','Guyancourt',78280,'ile_de_france','France'),
(88,'Rue Racine','Montrouge',92120,'ile_de_france','France'),
(7,'Rue Francis Pressense','Paris',75014,'ile_de_france','France');

INSERT INTO LIEU (nom, id_adresse)VALUES 
('musee de l"orangerie',1),
('fondation louis vuitton',2),
('Louvre',3), 
('Orsay',4),
('Paris La Defense Arena',5),
('Accor Arena',6),
('espace michel blanc',7),
('hippodrome paris',8),
('la defense',9),
('theatre_de_chelles',10),
('theatre_de_chatillon',11),
('la_ferme_de_bel_ebat',12),
('cinema_montrouge',13),
('entrepot',14);

INSERT INTO SALLE (nom, capacite, id_lieu)VALUES 
('toutes zones', 20,(select id from lieu where nom ='musee de l"orangerie')),
('toutes zones', 16,(select id from lieu where nom ='fondation louis vuitton')),
('Salle Louis', 50, (SELECT id from lieu where nom = 'Louvre')),
('Salle Charles', 30, (SELECT id from lieu where nom = 'Louvre')),
('Salle Jeanne', 90, (SELECT id from lieu where nom = 'Louvre')), 
('Salle Marion', 20, (SELECT id from lieu where nom = 'Louvre')), 
('Salle Joconde', 20, (SELECT id from lieu where nom = 'Louvre')), 
('Salle Vitor', 50, (SELECT id from lieu where nom = 'Louvre')),
('Salle Musique', 100, (SELECT id from lieu where nom = 'Louvre')),
('Salle Pyramide', 50, (SELECT id from lieu where nom = 'Louvre')),
('Salle Cleopatre', 20, (SELECT id from lieu where nom = 'Louvre')),
('Salle Paris', 50, (SELECT id from lieu where nom = 'Louvre')),
('Salle Charles', 30, (SELECT id from lieu where nom = 'Louvre')),
('Salle libre', 20, (SELECT id from lieu where nom = 'Louvre')),
('Salle 1', 30, (SELECT id from lieu where nom = 'Orsay')),  
('Salle 2', 20, (SELECT id from lieu where nom = 'Orsay')), 
('Salle 3', 25, (SELECT id from lieu where nom = 'Orsay')),  
('Salle 4', 30, (SELECT id from lieu where nom = 'Orsay')),  
('Salle 5', 35, (SELECT id from lieu where nom = 'Orsay')),  
('Salle 6', 20, (SELECT id from lieu where nom = 'Orsay')),  
('Salle 7', 50, (SELECT id from lieu where nom = 'Orsay')), 
('Salle 8', 40, (SELECT id from lieu where nom = 'Orsay')),  
('Salle 9', 20, (SELECT id from lieu where nom = 'Orsay')),  
('Salle 10', 50, (SELECT id from lieu where nom = 'Orsay')),  
('Salle 11',40 , (SELECT id from lieu where nom = 'Orsay')),
('Defense',20, (SELECT id from LIEU WHERE nom = 'Paris La Defense Arena')),
('Bercy', 20, (SELECT id from LIEU WHERE nom = 'Accor Arena')),
('hippodrome 1', 5000, (select id from lieu where nom = 'hippodrome paris')),
('hippodrome 2', 4500, (select id from lieu where nom = 'hippodrome paris')),
('grande salle', 250, (select id from lieu where nom = 'espace michel blanc')),
('petite salle', 100, (select id from lieu where nom = 'espace michel blanc')),
('la defense arena', 4500, (select id from lieu where nom ='la defense')),
('laurent', 12, (SELECT id FROM LIEU WHERE nom= 'theatre_de_chelles')),
('septere', 16, (SELECT id FROM LIEU WHERE nom= 'theatre_de_chatillon')),
('vache', 10, (SELECT id FROM LIEU WHERE nom= 'la_ferme_de_bel_ebat')),
('numero_1_montrouge', 8,(SELECT id FROM LIEU WHERE nom = 'cinema_montrouge')),
('numero_2_montrouge', 6,(SELECT id FROM LIEU WHERE nom = 'cinema_montrouge')),
('numero_1_entrepot', 10,(SELECT id FROM LIEU WHERE nom = 'entrepot')),
('numero_2_entrepot', 6,(SELECT id FROM LIEU WHERE nom = 'entrepot')),
('numero_3_entrepot', 6,(SELECT id FROM LIEU WHERE nom = 'entrepot'));


INSERT INTO PLACE (categorie, prix, id_salle)VALUES
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',12,(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('normal',18,(select id from salle where id_lieu = (select id from lieu where nom = 'fondation louis vuitton'))),
('normal',18,(select id from salle where id_lieu = (select id from lieu where nom = 'fondation louis vuitton'))),
('normal',18,(select id from salle where id_lieu = (select id from lieu where nom = 'fondation louis vuitton'))),
('normal',18,(select id from salle where id_lieu = (select id from lieu where nom = 'fondation louis vuitton'))),
('normal',18,(select id from salle where id_lieu = (select id from lieu where nom = 'fondation louis vuitton'))),
('normal',18,(select id from salle where id_lieu = (select id from lieu where nom = 'fondation louis vuitton'))),
('normal',18,(select id from salle where id_lieu = (select id from lieu where nom = 'fondation louis vuitton'))),
('normal',18,(select id from salle where id_lieu = (select id from lieu where nom = 'fondation louis vuitton'))),
('normal',18,(select id from salle where id_lieu = (select id from lieu where nom = 'fondation louis vuitton'))),
('normal',18,(select id from salle where id_lieu = (select id from lieu where nom = 'fondation louis vuitton'))),
('normal',18,(select id from salle where id_lieu = (select id from lieu where nom = 'fondation louis vuitton'))),
('normal',18,(select id from salle where id_lieu = (select id from lieu where nom = 'fondation louis vuitton'))),
('normal',18,(select id from salle where id_lieu = (select id from lieu where nom = 'fondation louis vuitton'))),
('normal',18,(select id from salle where id_lieu = (select id from lieu where nom = 'fondation louis vuitton'))),
('normal',18,(select id from salle where id_lieu = (select id from lieu where nom = 'fondation louis vuitton'))),
('normal',18,(select id from salle where id_lieu = (select id from lieu where nom = 'fondation louis vuitton'))),
('vip', 100, (SELECT id from salle where nom = 'Salle Joconde')),
('classe 1', 50, (SELECT id from salle where nom = 'Salle Joconde')),
('classe 2', 30, (SELECT id from salle where nom = 'Salle Joconde')),
('vip', 100, (SELECT id from salle where nom = 'Salle Pyramide')),
('classe', 50, (SELECT id from salle where nom = 'Salle Pyramide')),
('classe', 30, (SELECT id from salle where nom = 'Salle Pyramide')),
('vip', 100, (SELECT id from salle where nom = 'Salle Louis')),
('classe', 50, (SELECT id from salle where nom = 'Salle Louis')),
('classe', 30, (SELECT id from salle where nom = 'Salle Louis')),
('vip', 100, (SELECT id from salle where nom = 'Salle Cleopatre')),
('classe', 50, (SELECT id from salle where nom = 'Salle Cleopatre')),
('classe', 30, (SELECT id from salle where nom = 'Salle Cleopatre')),
('vip', 100, (SELECT id from salle where nom = 'Salle Musique')),
('classe', 50, (SELECT id from salle where nom = 'Salle Musique')),
('classe', 30, (SELECT id from salle where nom = 'Salle Musique')),
('vip', 100, (SELECT id from salle where nom = 'Salle Marion')),
('classe', 50, (SELECT id from salle where nom = 'Salle Marion')),
('classe', 30, (SELECT id from salle where nom = 'Salle Marion')),
('1', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('1', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('1', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('1', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('1', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('1', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('1', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('1', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('2', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('2', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('2', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('2', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('2', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('2', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('2', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('VIP', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('VIP', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('VIP', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('VIP', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('VIP', 50, (SELECT id from SALLE WHERE nom = 'Bercy')),
('1', 50, (SELECT id from SALLE WHERE nom = 'Defense')),
('1', 50, (SELECT id from SALLE WHERE nom = 'Defense')),
('1', 50, (SELECT id from SALLE WHERE nom = 'Defense')),
('1', 50, (SELECT id from SALLE WHERE nom = 'Defense')),
('1', 50, (SELECT id from SALLE WHERE nom = 'Defense')),
('1', 50, (SELECT id from SALLE WHERE nom = 'Defense')),
('2', 100, (SELECT id from SALLE WHERE nom = 'Defense')),
('2', 100, (SELECT id from SALLE WHERE nom = 'Defense')),
('2', 100, (SELECT id from SALLE WHERE nom = 'Defense')),
('2', 100, (SELECT id from SALLE WHERE nom = 'Defense')),
('2', 100, (SELECT id from SALLE WHERE nom = 'Defense')),
('2', 100, (SELECT id from SALLE WHERE nom = 'Defense')),
('2', 100, (SELECT id from SALLE WHERE nom = 'Defense')),
('2', 100, (SELECT id from SALLE WHERE nom = 'Defense')),
('2', 100, (SELECT id from SALLE WHERE nom = 'Defense')),
('VIP', 150, (SELECT id from SALLE WHERE nom = 'Defense')),
('VIP', 150, (SELECT id from SALLE WHERE nom = 'Defense')),
('VIP', 150, (SELECT id from SALLE WHERE nom = 'Defense')),
('VIP', 150, (SELECT id from SALLE WHERE nom = 'Defense')),
('VIP', 150, (SELECT id from SALLE WHERE nom = 'Defense')),
('forfait 3j', 140, (select id from salle where nom = 'hippodrome 1')),
('forfait 3j', 140, (select id from salle where nom = 'hippodrome 1')),
('forfait 3j', 140, (select id from salle where nom = 'hippodrome 1')),
('forfait 3j', 140, (select id from salle where nom = 'hippodrome 1')),
('forfait 3j', 140, (select id from salle where nom = 'hippodrome 1')),
('forfait 1j', 49, (select id from salle where nom = 'hippodrome 1')),
('forfait 1j', 49, (select id from salle where nom = 'hippodrome 1')),
('forfait 1j', 49, (select id from salle where nom = 'hippodrome 1')),
('forfait 1j', 49, (select id from salle where nom = 'hippodrome 1')),
('forfait 1j', 49, (select id from salle where nom = 'hippodrome 1')),
('forfait 3j', 120, (select id from salle where nom = 'hippodrome 2')),
('forfait 3j', 120, (select id from salle where nom = 'hippodrome 2')),
('forfait 3j', 120, (select id from salle where nom = 'hippodrome 2')),
('forfait 3j', 120, (select id from salle where nom = 'hippodrome 2')),
('forfait 3j', 120, (select id from salle where nom = 'hippodrome 2')),
('forfait 1j', 39, (select id from salle where nom = 'hippodrome 2')),
('forfait 1j', 39, (select id from salle where nom = 'hippodrome 2')),
('forfait 1j', 39, (select id from salle where nom = 'hippodrome 2')),
('forfait 1j', 39, (select id from salle where nom = 'hippodrome 2')),
('forfait 1j', 39, (select id from salle where nom = 'hippodrome 2')),
('carre or', 100, (select id from salle where nom = 'grande salle')),
('carre or', 100, (select id from salle where nom = 'grande salle')),
('carre or', 100, (select id from salle where nom = 'grande salle')),
('carre or', 100, (select id from salle where nom = 'grande salle')),
('carre or', 100, (select id from salle where nom = 'grande salle')),
('fosse', 60, (select id from salle where nom = 'grande salle')),
('fosse', 60, (select id from salle where nom = 'grande salle')),
('fosse', 60, (select id from salle where nom = 'grande salle')),
('fosse', 60, (select id from salle where nom = 'grande salle')),
('fosse', 60, (select id from salle where nom = 'grande salle')),
('carre or', 80, (select id from salle where nom = 'petite salle')),
('carre or', 80, (select id from salle where nom = 'petite salle')),
('carre or', 80, (select id from salle where nom = 'petite salle')),
('carre or', 80, (select id from salle where nom = 'petite salle')),
('carre or', 80, (select id from salle where nom = 'petite salle')),
('fosse', 50, (select id from salle where nom = 'petite salle')),
('fosse', 50, (select id from salle where nom = 'petite salle')),
('fosse', 50, (select id from salle where nom = 'petite salle')),
('fosse', 50, (select id from salle where nom = 'petite salle')),
('fosse', 50, (select id from salle where nom = 'petite salle')),
('carre or', 120, (select id from salle where nom = 'la defense arena')),
('carre or', 120, (select id from salle where nom = 'la defense arena')),
('carre or', 120, (select id from salle where nom = 'la defense arena')),
('carre or', 120, (select id from salle where nom = 'la defense arena')),
('carre or', 120, (select id from salle where nom = 'la defense arena')),
('fosse', 90, (select id from salle where nom = 'la defense arena')),
('fosse', 90, (select id from salle where nom = 'la defense arena')),
('fosse', 90, (select id from salle where nom = 'la defense arena')),
('fosse', 90, (select id from salle where nom = 'la defense arena')),
('fosse', 90, (select id from salle where nom = 'la defense arena')),
('classique', 21.99, (SELECT id FROM SALLE WHERE nom = 'laurent')),
('classique', 21.99, (SELECT id FROM SALLE WHERE nom = 'laurent')),
('classique', 21.99, (SELECT id FROM SALLE WHERE nom = 'laurent')),
('classique', 21.99, (SELECT id FROM SALLE WHERE nom = 'laurent')),
('classique', 21.99, (SELECT id FROM SALLE WHERE nom = 'laurent')),
('classique', 21.99, (SELECT id FROM SALLE WHERE nom = 'laurent')),
('classique', 21.99, (SELECT id FROM SALLE WHERE nom = 'laurent')),
('classique', 21.99, (SELECT id FROM SALLE WHERE nom = 'laurent')),
('classique', 21.99, (SELECT id FROM SALLE WHERE nom = 'laurent')),
('classique', 21.99, (SELECT id FROM SALLE WHERE nom = 'laurent')),
('classique', 21.99, (SELECT id FROM SALLE WHERE nom = 'laurent')),
('classique', 21.99, (SELECT id FROM SALLE WHERE nom = 'laurent')),
('classique', 15.99, (SELECT id FROM SALLE WHERE nom = 'septere')),
('classique', 15.99, (SELECT id FROM SALLE WHERE nom = 'septere')),
('classique', 15.99, (SELECT id FROM SALLE WHERE nom = 'septere')),
('classique', 15.99, (SELECT id FROM SALLE WHERE nom = 'septere')),
('classique', 15.99, (SELECT id FROM SALLE WHERE nom = 'septere')),
('classique', 15.99, (SELECT id FROM SALLE WHERE nom = 'septere')),
('classique', 15.99, (SELECT id FROM SALLE WHERE nom = 'septere')),
('classique', 15.99, (SELECT id FROM SALLE WHERE nom = 'septere')),
('classique', 15.99, (SELECT id FROM SALLE WHERE nom = 'septere')),
('classique', 15.99, (SELECT id FROM SALLE WHERE nom = 'septere')),
('classique', 15.99, (SELECT id FROM SALLE WHERE nom = 'septere')),
('classique', 15.99, (SELECT id FROM SALLE WHERE nom = 'septere')),
('classique', 15.99, (SELECT id FROM SALLE WHERE nom = 'septere')),
('classique', 15.99, (SELECT id FROM SALLE WHERE nom = 'septere')),
('classique', 15.99, (SELECT id FROM SALLE WHERE nom = 'septere')),
('classique', 15.99, (SELECT id FROM SALLE WHERE nom = 'septere')),
('premium', 42, (SELECT id FROM SALLE WHERE nom = 'vache')),
('premium', 42, (SELECT id FROM SALLE WHERE nom = 'vache')),
('premium', 42, (SELECT id FROM SALLE WHERE nom = 'vache')),
('premium', 42, (SELECT id FROM SALLE WHERE nom = 'vache')),
('premium', 42, (SELECT id FROM SALLE WHERE nom = 'vache')),
('premium', 42, (SELECT id FROM SALLE WHERE nom = 'vache')),
('premium', 42, (SELECT id FROM SALLE WHERE nom = 'vache')),
('premium', 42, (SELECT id FROM SALLE WHERE nom = 'vache')),
('premium', 42, (SELECT id FROM SALLE WHERE nom = 'vache')),
('premium', 42, (SELECT id FROM SALLE WHERE nom = 'vache')),
('normal',10,(SELECT id FROM SALLE WHERE nom = 'numero_1_montrouge')),
('normal',10,(SELECT id FROM SALLE WHERE nom = 'numero_1_montrouge')),
('normal',10,(SELECT id FROM SALLE WHERE nom = 'numero_1_montrouge')),
('normal',10,(SELECT id FROM SALLE WHERE nom = 'numero_1_montrouge')),
('normal',10,(SELECT id FROM SALLE WHERE nom = 'numero_1_montrouge')),
('normal',10,(SELECT id FROM SALLE WHERE nom = 'numero_1_montrouge')),
('normal',10,(SELECT id FROM SALLE WHERE nom = 'numero_1_montrouge')),
('normal',10,(SELECT id FROM SALLE WHERE nom = 'numero_1_montrouge')),
('normal',10,(SELECT id FROM SALLE WHERE nom = 'numero_2_montrouge')),
('normal',10,(SELECT id FROM SALLE WHERE nom = 'numero_2_montrouge')),
('normal',10,(SELECT id FROM SALLE WHERE nom = 'numero_2_montrouge')),
('normal',10,(SELECT id FROM SALLE WHERE nom = 'numero_2_montrouge')),
('normal',10,(SELECT id FROM SALLE WHERE nom = 'numero_2_montrouge')),
('normal',10,(SELECT id FROM SALLE WHERE nom = 'numero_2_montrouge')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_1_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_1_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_1_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_1_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_1_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_1_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_1_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_1_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_1_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_2_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_2_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_2_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_2_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_2_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_2_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_3_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_3_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_3_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_3_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_3_entrepot')),
('normal',15,(SELECT id FROM SALLE WHERE nom = 'numero_3_entrepot'));

INSERT INTO EVENEMENT (nom, detail, id_type, id_salle)VALUES
('exposition universelle','exposition internationale de Paris',(select id from type where nom ='expositions'), (select id from salle where id_lieu = (select id from lieu where nom = 'fondation louis vuitton'))),
('art deco france','decouverte d"art deco',(select id from type where nom ='expositions'),(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('street art','decouverte du genre street art en famille',(select id from type where nom ='expositions'),(select id from salle where id_lieu = (select id from lieu where nom = 'musee de l"orangerie'))),
('exposition Victor Hugo',' ',(select id from type where nom = 'musee'), (select id from salle where nom = 'Salle Louis')),
('concert Shakira',' ',(select id from type where nom = 'concert'), (select id from salle where nom = 'Salle Cleopatre')),
('concert Rihanna',' ',(select id from type where nom = 'concert'), (select id from salle where nom = 'Salle Musique')),
('exposition art',' ',(select id from type where nom = 'exposition'), (select id from salle where nom = 'Salle Joconde')),
('exposition plastique',' ',(select id from type where nom = 'exposition'), (select id from salle where nom = 'Salle Marion')),
('exposition Channel', ' ',(select id from type where nom = 'exposition'), (select id from salle where nom = 'Salle Pyramide')),
('ConcertHalsey Jour1', ' ',(SELECT id from TYPE WHERE nom = 'concert'), (SELECT id from LIEU WHERE nom = 'Accor Arena')),
('ConcertHalsey Jour2', ' ',(SELECT id from TYPE WHERE nom = 'concert'), (SELECT id from LIEU WHERE nom = 'Accor Arena')),
('Concert Raye', ' ',(SELECT id from TYPE WHERE nom = 'concert'), (SELECT id from LIEU WHERE nom = 'Paris La Defense Arena')),
('festival sardines', 'le festival des sardines rassemble chaque annee les amateurs de sardines', (select id from type where nom = 'festival'), (select id from salle where nom = 'grande salle')),
('jazz festival', 'un festival de jazz annuel salue par la critique', (select id from type where nom = 'festival'), (select id from salle where nom = 'la defense arena')),
('lollapalooza', 'festival de musiques actuelles mondialement celebre', (select id from type where nom = 'festival'), (select id from salle where nom = 'hippodrome 1')),
('Le_Bourgeois_Gentilhomme','piece_de_Moliere', (SELECT id FROM TYPE WHERE nom = 'theatre'), (SELECT id FROM SALLE WHERE nom = 'laurent')),
('Le_Lapin','Oeuvre_burlesque_de_la_troupe_Petit_pains', (SELECT id FROM TYPE WHERE nom = 'theatre'), (SELECT id FROM SALLE WHERE nom = 'septere')),
('AIE','Les_cactus_ca_pique', (SELECT id FROM TYPE WHERE nom = 'theatre'), (SELECT id FROM SALLE WHERE nom = 'vache')),
('creed_3', 'suite_de_creed_2',(SELECT id FROM TYPE WHERE nom = 'cinema'),(SELECT id FROM SALLE WHERE nom = 'numero_1_entrepot')), 
('avatar_2', 'suite_de_avatar',(SELECT id FROM TYPE WHERE nom = 'cinema'),(SELECT id FROM SALLE WHERE nom = 'numero_2_entrepot')), 
('antman_3', 'suite_de_antman_2',(SELECT id FROM TYPE WHERE nom = 'cinema'),(SELECT id FROM SALLE WHERE nom = 'numero_3_entrepot')),
('creed_3', 'suite_de_creed_2',(SELECT id FROM TYPE WHERE nom = 'cinema'),(SELECT id FROM SALLE WHERE nom = 'numero_1_montrouge')),
('avatar_2', 'suite_de_avatar',(SELECT id FROM TYPE WHERE nom = 'cinema'),(SELECT id FROM SALLE WHERE nom = 'numero_2_montrouge'));

INSERT INTO AGENDA (date_debut, date_fin, horaire_debut, horaire_fin, id_evenement)VALUES
('2023-10-21','2024-03-06','09:00:00','18:00:00',(select id from EVENEMENT where nom = 'exposition universel')),
('2023-07-24','2024-06-21','09:00:00','18:00:00',(select id from EVENEMENT where nom = 'art deco france')),
('2023-09-06','2024-03-04','08:00:00','20:00:00',(select id from EVENEMENT where nom = 'street art')),
('2023-01-02', '2023-01-02' , '20:00:00' , '22:00:00', (select id from EVENEMENT where nom = 'concert Shakira')),
('2023-05-03', '2023-05-03' , '10:00:00' , '12:00:00', (select id from EVENEMENT where nom = 'exposition Victor Hugo')),
('2023-12-02', '2023-12-02' , '20:00:00' , '22:00:00', (select id from EVENEMENT where nom = 'concert Rihanna')),
('2023-06-28', '2023-06-28' , '12:00:00' , '17:00:00', (select id from EVENEMENT where nom = 'exposition art')),
('2023-04-02', '2023-04-02' , '20:00:00' , '22:00:00', (select id from EVENEMENT where nom = 'exposition art')),
('2023-01-02', '2023-01-02' , '10:00:00' , '15:00:00', (select id from EVENEMENT where nom = 'exposition plastique')),
('2023-08-05', '2023-08-05' , '10:00:00' , '18:00:00', (select id from EVENEMENT where nom = 'exposition Channel')),
('2023-04-08', '2023-04-08' , '11:00:00' , '15:00:00', (select id from EVENEMENT where nom = 'exposition Channel')),
('2023-03-02', '2023-03-02' , '20:00:00' , '22:00:00', (select id from EVENEMENT where nom = 'exposition Victor Hugo')),
('2023-06-14', '2023-06-14', '19:00:00', '20:00:00', (SELECT id FROM EVENEMENT WHERE nom = 'Concert Halsey Jour 1')),
('2023-06-15', '2023-06-15', '19:00:00', '21:00:00', (SELECT id FROM EVENEMENT WHERE nom = 'Concert Halsey Jour 1')),
('2023-11-24', '2023-11-24', '19:00:00', '20:30:00', (SELECT id FROM EVENEMENT WHERE nom = 'Concert Raye')),
('2023-05-11', '2023-05-11', '20:00:00', '22:30:00', (select id from EVENEMENT where nom = 'festival sardines')),
('2023-07-26', '2023-08-02', '16:00:00', '23:00:00', (select id from EVENEMENT where nom = 'jazz festival')),
('2023-07-21','2023-07-23', '15:00:00', '22:00:00', (select id from EVENEMENT where nom = 'lollapalooza')),
('2023-05-03','2023-05-03', '20:30:00', '22:30:00', (SELECT id FROM EVENEMENT WHERE nom = 'Le_Bourgeois_Gentilhomme')),
('2023-03-26','2023-03-26', '16:15:00', '17:45:00', (SELECT id FROM EVENEMENT WHERE nom = 'septere')),
('2024-01-13','2024-01-13', '13:00:00', '15:00:00', (SELECT id FROM EVENEMENT WHERE nom = 'vache')),
('2023-03-01','2023-03-15','16:00:00','18:00:00',(SELECT id FROM EVENEMENT WHERE id_salle = (SELECT id FROM SALLE WHERE nom = 'numero_1_entrepot'))),
('2023-02-15','2023-03-22','18:00:00','20:00:00',(SELECT id FROM EVENEMENT WHERE id_salle = (SELECT id FROM SALLE WHERE nom = 'numero_2_entrepot'))),
('2023-03-08','2023-03-29','16:00-00','18:00:00',(SELECT id FROM EVENEMENT WHERE id_salle = (SELECT id FROM SALLE WHERE nom = 'numero_3_entrepot'))),
('2023-03-01','2023-03-15','18:00-00','20:00:00',(SELECT id FROM EVENEMENT WHERE id_salle = (SELECT id FROM SALLE WHERE nom = 'numero_1_montrouge'))),
('2023-02-15','2023-03-08','20:00-00','22:00:00',(SELECT id FROM EVENEMENT WHERE id_salle = (SELECT id FROM SALLE WHERE nom = 'numero_2_montrouge')));

INSERT INTO ARTISTE (nom, genre)VALUES
('basquiat','neo-expresionnisme'),
('banksy','urbain'),
('Rihanna', 'Rnb'), 
('Shakira', 'Pop'), 
('Channel', 'mode'), 
('Jean Francois', 'art'), 
('Victor Hugo', 'art'),
('Halsey', 'Pop Americaine'),
('RAYE', 'Rap/Pop Anglais'),
('line-up ete', 'alternatif'),
('line-up cool', 'jazz'),
('line-up poisson', 'pop'), 
('Les_folichons', 'troupe_de_theatre'),
('la_camaraderie', 'troupe_de_theatre'),
('Jean_dupont', 'comedien'),
('michael_b_jordan', 'drame_sportif'),
('james_cameron', 'science_fiction'),
('peyton_reed', 'super_heros');

INSERT INTO ROLE (libelle)VALUES 
('administrateur'),
('developpeur');

INSERT INTO EQUIPE (nom, prenom, mail, motdepasse, telephone, id_role, CREATION)VALUES 
('verdier', 'johanan','johanan.verdier@gmail.com','motdepasse','0660564031', (select id from ROLE where libelle = 'developpeur'), CURRENT_TIMESTAMP),
('romain', 'serrano', 'rom.serrano99@gmail.com', 'tokenmdp','0652835471', (select id from ROLE where libelle = 'developpeur'),CURRENT_TIMESTAMP),
('bergeret', 'antoine', 'monmailamoi@mail.fr', 'ceciestunmdpcommeunautre', '0651512323', (select id from ROLE where libelle = 'developpeur'), CURRENT_TIMESTAMP),
('chaigneau', 'adrien', 'adrienchaigneau974@gmail.com', '123', '0686413716', (select id from ROLE where libelle = 'developpeur'), CURRENT_TIMESTAMP),
('mansouri', 'sara', 'mansouri@gmail', 'slm', '0602030155', (select id from ROLE where libelle = 'developpeur'), CURRENT_TIMESTAMP),
('gabriel','ramalho','gramalho@consultants-solutec.fr','mot de passe','0675014669', (select id from ROLE where libelle = 'developpeur'), CURRENT_TIMESTAMP);

