import sqlite3
connexion = sqlite3.connect("collectionTMR.sq3")
curseur = connexion.cursor()

# creation d'une table
curseur.execute("CREATE TABLE IF NOT EXISTS collectionTMR (id TEXT, parent TEXT, titre TEXT, auteur TEXT, date_creation INTEGER, fichier TEXT)")

# ajout de données à la base
curseur.execute("INSERT INTO collectionTMR(id) VALUES('collection_initiale')")
curseur.execute("INSERT INTO collectionTMR(id, parent, titre, auteur, date_creation, fichier) VALUES('revolution','collection_initiale', 'La Marseillaise', 'Rouget de l'Isle', '1792')")

# valider l'enregistrement dans la base
connexion.commit()

# fermer la base
connexion.close()