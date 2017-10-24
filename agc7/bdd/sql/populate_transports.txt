CREATE TABLE transports
(id   INTEGER,
 nom  VARCHAR(16),
 pere INTEGER);

INSERT INTO transports (id, nom, pere)       VALUES (0, 'Transport', NULL);
INSERT INTO transports (id, nom, pere)       VALUES (1, 'Terrestre', 0);
INSERT INTO transports (id, nom, pere)       VALUES (2, 'Marin', 0);
INSERT INTO transports (id, nom, pere)       VALUES (3, 'Aérien', 0);
INSERT INTO transports (id, nom, pere)       VALUES (4, 'Voiture', 1);
INSERT INTO transports (id, nom, pere)       VALUES (5, 'Camion', 1);
INSERT INTO transports (id, nom, pere)       VALUES (6, 'Moto', 1);
INSERT INTO transports (id, nom, pere)       VALUES (7, 'Vélo', 1);
INSERT INTO transports (id, nom, pere)       VALUES (8, 'Hélico', 3);
INSERT INTO transports (id, nom, pere)       VALUES (9, 'Avion', 3);
INSERT INTO transports (id, nom, pere)       VALUES (10, 'ULM', 3);
INSERT INTO transports (id, nom, pere)       VALUES (11, 'Fusée', 3);
INSERT INTO transports (id, nom, pere)       VALUES (12, 'Parachute', 3);
INSERT INTO transports (id, nom, pere)       VALUES (13, 'Planeur', 3);
INSERT INTO transports (id, nom, pere)       VALUES (14, 'Voilier', 2);
INSERT INTO transports (id, nom, pere)       VALUES (15, 'Paquebot', 2);
INSERT INTO transports (id, nom, pere)       VALUES (16, 'Planche à voile', 2);
INSERT INTO transports (id, nom, pere)       VALUES (17, 'Trail', 6);
INSERT INTO transports (id, nom, pere)       VALUES (18, 'Side-car', 6);
INSERT INTO transports (id, nom, pere)       VALUES (19, 'Civil', 9);
INSERT INTO transports (id, nom, pere)       VALUES (20, 'Tourisme', 9);
INSERT INTO transports (id, nom, pere)       VALUES (21, 'Militaire', 9);