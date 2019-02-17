import sqlite3
connexion = sqlite3.connect("bd-celebrites.sq3")
curseur = connexion.cursor()

# creation d'une table
curseur.execute("CREATE TABLE IF NOT EXISTS celebrites (nom TEXT, prenom TEXT, annee INTEGER)")

# ajout de données à la base
curseur.execute("INSERT INTO celebrites(nom, prenom) VALUES('Turing','Alan', ???)")
curseur.execute("INSERT INTO celebrites(nom, prenom) VALUES('Lovelace','Ada')")
curseur.execute("INSERT INTO celebrites(nom, prenom) VALUES('Shannon','Claude')")
curseur.execute("INSERT INTO celebrites(nom, prenom) VALUES('Hooper','Grace')")

# valider l'enregistrement dans la base
connexion.commit()

# charger toutes les données de la base dans un tableau
curseur.execute("SELECT * FROM celebrites")
resultat = curseur.fetchall()

# affichage en console du résultat
print(resultat)
for r in resultat:
    print(r[0],r[1],r[2])

# Modifier un enregistrement
curseur.execute("UPDATE celebrites SET prenom='Alan Mathison' WHERE nom='Turing'")
connexion.commit()

# Accèder à l'enregistrement
curseur.execute("SELECT * FROM celebrites WHERE nom = 'Turing'")
resultat = list(curseur)
print(resultat)

# fermer la base
connexion.close()
