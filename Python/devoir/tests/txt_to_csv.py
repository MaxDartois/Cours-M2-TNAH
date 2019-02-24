import csv

with open('/Desktop/Master_TNAH/M2/Python/devoir/Collection_initiale/La_Marseillaise.txt', mode='r', newline=' ') as csvfile:
	nouveau_fichier = csv.reader(csvfile, delimiter=' ', quotechar='|')

	for row in fichier:
		print(','.join(row))		
