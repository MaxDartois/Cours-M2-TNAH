PRAGMA encoding = 'UTF-8';
-- base CNSM, correction du DS


-- Structure de la table 'professeur'
CREATE TABLE IF NOT EXISTS professeur (
  id_professeur  INTEGER PRIMARY KEY,
  nom            TEXT NOT NULL,
  prenom         TEXT NOT NULL,
  date_naissance INTEGER NOT NULL
);

-- Contenu de la table 'professeur'
INSERT INTO professeur ('id_professeur', 'nom', 'prenom', 'date_naissance') VALUES
  (1, 'Ravel', 'Maurice', 1962),
  (2, 'Beethoven', 'Ludovic', 1954),
  (3, 'Debussy', 'Claude', 1968),
  (4, 'Schumann', 'Bob', 1954);



-- Structure de la table 'enseignement'
CREATE TABLE IF NOT EXISTS enseignement (
  id_enseignement INTEGER PRIMARY KEY,
  intitule        TEXT NOT NULL,
  coeff           INTEGER NOT NULL
);

-- Contenu de la table 'enseignement'
INSERT INTO enseignement ('id_enseignement', 'intitule', 'coeff') VALUES
  (1, 'composition', 3),
  (2, 'harmonie', 5),
  (3, 'solfège', 5),
  (4, 'histoire', 2),
  (5, 'jazz', 2),
  (6, 'improvisation', 3);



-- Structure de la table 'instrument'
CREATE TABLE IF NOT EXISTS instrument (
  id_instrument INTEGER PRIMARY KEY,
  instrument    TEXT NOT NULL
);

-- Contenu de la table 'instrument'
INSERT INTO instrument ('id_instrument', 'instrument') VALUES
  (1, 'violon'),
  (2, 'piano'),
  (3, 'guitare'),
  (4, 'alto'),
  (5, 'violoncelle'),
  (6, 'contrebasse'),
  (7, 'clarinette'),
  (8, 'saxophone'),
  (9, 'hautbois'),
  (10, 'trompette');


-- Structure de la table 'salle'
CREATE TABLE IF NOT EXISTS salle (
  id_salle  INTEGER PRIMARY KEY,
  nom_salle TEXT NOT NULL,
  capacite  INTEGER NOT NULL
);

-- Contenu de la table 'salle'
INSERT INTO salle ('id_salle', 'nom_salle', 'capacite') VALUES
  (1, 'Quicherat', 15),
  (2, 'Delisle', 50),
  (3, 'Berlioz', 200);



-- Structure de la table 'enseigne'
CREATE TABLE IF NOT EXISTS enseigne (
  professeur_id   INTEGER NOT NULL REFERENCES professeur(id_professeur),
  enseignement_id INTEGER NOT NULL REFERENCES enseignement(id_enseignement),
  PRIMARY KEY (professeur_id, enseignement_id)
);

-- Contenu de la table 'enseigne'
INSERT INTO enseigne ('enseignement_id', 'professeur_id') VALUES
  (2, 1),
  (1, 2),
  (4, 2),
  (2, 3),
  (5, 3),
  (3, 4),
  (6, 4);



-- Structure de la table 'cours'
CREATE TABLE IF NOT EXISTS cours (
  id_cours        INTEGER PRIMARY KEY,
  enseignement_id INTEGER NOT NULL REFERENCES enseignement(id_enseignement),
  salle_id        INTEGER NOT NULL REFERENCES salle(id_salle),
  date_cours      TEXT NOT NULL
);

-- Contenu de la table 'cours'
INSERT INTO cours ('id_cours', 'enseignement_id', 'salle_id', 'date_cours') VALUES
  (1, 1, 1, '2018-12-18'),
  (2, 1, 1, '2019-01-31'),
  (3, 1, 1, '2019-02-06'),
  (4, 2, 2, '2019-01-20'),
  (5, 2, 2, '2019-02-20'),
  (6, 3, 2, '2018-12-18'),
  (7, 3, 2, '2019-02-08'),
  (8, 4, 1, '2019-03-13'),
  (9, 4, 1, '2019-04-03'),
  (10, 6, 2, '2018-12-18'),
  (11, 6, 2, '2019-02-20');



-- Structure de la table 'etudiant'
CREATE TABLE IF NOT EXISTS etudiant (
  id_etudiant     INTEGER PRIMARY KEY,
  nom             TEXT NOT NULL,
  prenom          TEXT NOT NULL,
  date_naissance  TEXT NOT NULL,
  classe          INTEGER NOT NULL,
  instrument_id   INTEGER NOT NULL REFERENCES instrument(id_instrument)
);

-- Contenu de la table 'etudiant'
INSERT INTO etudiant ('id_etudiant', 'nom', 'prenom', 'date_naissance', 'classe', 'instrument_id') VALUES
  (1, 'Dupont', 'Daniel', 1992, 1, 4),
  (2, 'Alexandre', 'Renaud', 1989, 3, 8),
  (3, 'Artaud', 'François', 1991, 2, 2),
  (4, 'Ascoli', 'Sophie', 1990, 2, 4),
  (5, 'Aubenas', 'Stéphanie', 1993, 1, 1),
  (6, 'Barthe', 'Philippe', 1989, 3, 4),
  (7, 'Barthe', 'Samira', 1990, 3, 9),
  (8, 'Bazzoni', 'Caroline', 1991, 2, 9),
  (9, 'Chaprot', 'Eleve', 1991, 2, 1),
  (10, 'Benrubi', 'Claire', 1992, 1, 1);


-- Structure de la table 'etudie'
CREATE TABLE IF NOT EXISTS etudie (
  enseignement_id INTEGER NOT NULL REFERENCES enseignement(id_enseignement),
  etudiant_id     INTEGER NOT NULL REFERENCES etudiant(id_etudiant),
  note            INTEGER NOT NULL,
  PRIMARY KEY (enseignement_id, etudiant_id)
);

-- Contenu de la table 'etudie'
INSERT INTO etudie ('enseignement_id', 'etudiant_id', 'note') VALUES
  (3, 1, 12),
  (4, 1, 9),
  (3, 10, 10),
  (4, 10, 14),
  (3, 5, 12),
  (4, 5, 13),
  (1, 3, 15),
  (2, 3, 12),
  (3, 3, 9),
  (1, 4, 18),
  (2, 4, 15),
  (3, 4, 16),
  (1, 8, 10),
  (2, 8, 14),
  (3, 8, 7),
  (1, 9, 9),
  (2, 9, 12),
  (3, 9, 7),
  (1, 2, 18),
  (2, 2, 15),
  (6, 2, 16),
  (1, 6, 16),
  (2, 6, 12),
  (6, 6, 12),
  (1, 7, 14),
  (2, 7, 13),
  (6, 7, 10);


