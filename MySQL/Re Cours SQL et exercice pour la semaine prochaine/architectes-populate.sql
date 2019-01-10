PRAGMA encoding = 'UTF-8';
-- renseigner la base de données architectes.sqlite


-- référentiel des professions des pères des architectes
INSERT INTO fatherWork(label) VALUES('artisan'), ('artiste'), ('BTP'), ('entrepreneur'), ('rentier'), ('autre');

-- référentiel des fonctions des architectes
INSERT INTO job(label) VALUES('architecte'), ('inspecteur'), ('suppléant'), ('honoraire');

-- référentiel des domaines de compétence des architecte
INSERT INTO skill(label) VALUES('cathédrale'), ('séminaire'), ('église'), ('tout');

-- référentiel des bâtiments
INSERT INTO building(id, label) VALUES (1, 'Albi, cathédrale'), (2, 'Angoulême, lycée'), (3, 'Angoulême, église Saint-Jacques'), (4, 'Aulnous, salines'), (5, 'Baron, hospice'), (6, 'Bayonne, cathédrale'), (7, 'Bouxier-aux-Dames, mairie-école'), (8, 'Chaligny, groupe scolaire'), (9, 'Chaumont, église Saint-Jean-Baptiste'), (10, 'Clermont-Ferrand, cathédrale'), (11, 'Coucy, château'), (12, 'Douai, lycée'), (13, 'Essey-lès-Nancy, hospice'), (14, 'Essey-lès-Nancy, mairie-école'), (15, 'Gripport, mairie-école'), (16, 'Héaux-de-Bréhat, phare'), (17, 'Laon, cathédrale'), (18, 'Limoges, Tribunal'), (19, 'Limoges, cathédrale'), (20, 'Londres, pavillon pour l’exposition universelle de Londres de 1862'), (21, 'Lucy, mairie-école'), (22, 'Luçon, cathédrale'), (23, 'Marancourt, groupe scolaire'), (24, 'Maréville, hospice'), (25, 'Moulins, cathédrale'), (26, 'Nancy, palais des ducs de Lorraine'), (27, 'Nancy, église Saint-Joseph'), (28, 'Nancy, église des Cordeliers'), (29, 'Neuviller, église'), (30, 'Niederhaslach, église Saint-Florent'), (31, 'Niedermünster, église Saint-Nicolas'), (32, 'Nîmes, cathédrale'), (33, 'Nîmes, église Saint-Paul'), (34, 'Paimpol (port), jetée'), (35, 'Paris, Sainte Chapelle'), (36, 'Paris, asile Quinze-Vingts'), (37, 'Paris, bibliothèque nationale'), (38, 'Paris, cathédrale Notre-Dame'), (39, 'Paris, mairie'), (40, 'Paris, palais du champ de Mars'), (41, 'Paris, école polytechnique'), (42, 'Ploeuc, église'), (43, 'Pompey, asile Lasalle'), (44, 'Rennes, cathédrale'), (45, 'Rennes, séminaire'), (46, 'Saint-Aaron, église'), (47, 'Saint-Brieuc, grand séminaire'), (48, 'Saint-Brieuc, lycée des Cordeliers'), (49, 'Saint-Brieuc, tribunal'), (50, 'Saint-Denis, abbatiale'), (51, 'Saint-Germer, église'), (52, 'Saint-Nicolas-de-Port, asile Saint-François'), (53, 'Saint-Quay-Portrieux, église'), (54, 'Thann, église'), (55, 'Thorcy, mairie-école'), (56, 'Toul, cathédrale'), (57, 'Troyes, cathédrale'), (58, 'Vignory, église');

-- nos départements
INSERT INTO dpt(code, label) VALUES
  ('01', 'Ain'),
  ('02', 'Aisne'),
  ('03', 'Allier'),
  ('04', 'Alpes-de-Haute-Provence'),
  ('05', 'Hautes-Alpes'),
  ('06', 'Alpes-Maritimes'),
  ('07', 'Ardèche'),
  ('08', 'Ardennes'),
  ('09', 'Ariège'),
  ('10', 'Aube'),
  ('11', 'Aude'),
  ('12', 'Aveyron'),
  ('13', 'Provence-Alpes-Côte d’Azur'),
  ('14', 'Calvados'),
  ('15', 'Cantal'),
  ('16', 'Charente'),
  ('17', 'Charente-Maritime'),
  ('18', 'Cher'),
  ('19', 'Corrèze'),
  ('2A', 'Corse-du-Sud'),
  ('2B', 'Haute-Corse'),
  ('21', 'Côte-d’Or'),
  ('22', 'Côte-d’Armor'),
  ('23', 'Creuse'),
  ('24', 'Dordogne'),
  ('25', 'Doubs'),
  ('26', 'Drôme'),
  ('27', 'Eure'),
  ('28', 'Eure-et-Loir'),
  ('29', 'Finistère'),
  ('30', 'Gard'),
  ('31', 'Haute-Garonne'),
  ('32', 'Gers'),
  ('33', 'Gironde'),
  ('34', 'Hérault'),
  ('35', 'Ile-et-Vilaine'),
  ('36', 'Indre'),
  ('37', 'Indre-et-Loire'),
  ('38', 'Isère'),
  ('39', 'Jura'),
  ('40', 'Landes'),
  ('41', 'Loir-et-Cher'),
  ('42', 'Loire'),
  ('43', 'Haute-Loire'),
  ('44', 'Loire-Atlantique'),
  ('45', 'Loiret'),
  ('46', 'Lot'),
  ('47', 'Lot-et-Garonne'),
  ('48', 'Lozère'),
  ('49', 'Maine-et-Loire'),
  ('50', 'Manche'),
  ('51', 'Marne'),
  ('52', 'Haute-Marne'),
  ('53', 'Mayenne'),
  ('54', 'Meurthe-et-Moselle'),
  ('55', 'Meuse'),
  ('56', 'Morbihan'),
  ('57', 'Moselle'),
  ('58', 'Nièvre'),
  ('59', 'Nord'),
  ('60', 'Oise'),
  ('61', 'Orne'),
  ('62', 'Pas-de-Calais'),
  ('63', 'Puy-de-Dôme'),
  ('64', 'Pyrénées-Atlantiques'),
  ('65', 'Hautes-Pyrénées'),
  ('66', 'Pyrénées-Orientales'),
  ('67', 'Bas-Rhin'),
  ('68', 'Haut-Rhin'),
  ('69', 'Rhône'),
  ('70', 'Haute-Saône'),
  ('71', 'Saône-et-Loire'),
  ('72', 'Sarthe'),
  ('73', 'Savoie'),
  ('75', 'Paris'),
  ('76', 'Seine-Maritime'),
  ('77', 'Seine-et-Marne'),
  ('78', 'Yvelines'),
  ('79', 'Deux-Sèvres'),
  ('80', 'Somme'),
  ('81', 'Tarn'),
  ('82', 'Tarn-et-Garonne'),
  ('83', 'Var'),
  ('84', 'Vaucluse'),
  ('85', 'Vendée'),
  ('86', 'Vienne'),
  ('87', 'Haute-Vienne'),
  ('88', 'Vosges'),
  ('89', 'Yonne'),
  ('90', 'Territoire de Belfort'),
  ('91', 'Essonne'),
  ('92', 'Hauts-de-Seine'),
  ('93', 'Seine-Saint-Denis'),
  ('94', 'Val-de-Marne'),
  ('95', 'Val-d’Oise'),
  ('971', 'Guadeloupe'),
  ('972', 'Martinique'),
  ('973', 'Guyane'),
  ('974', 'La Réunion'),
  ('976', 'Mayotte');

-- les architectes
INSERT INTO architect(id, name, firstname, birth, death, birthdpt, deathdpt, barts, bartsyear, training, rating, fatherWork) VALUES
  (1,"Abadie","Paul (père)","1783-07-22","1868-12-24","33","33",0,NULL,NULL,3,3),
  (2,"Abadie","Paul (fils)","1812-12-10","1884-08-12","75","78",0,1839,NULL,4,1),
  (3,"Béziers-Lafosse","Albert","1840","1908-09-14","22","75",0,1866,NULL,NULL,1),
  (4,"Durant","Simon","1776-11-24","1857","30","30",0,NULL,"Polytechnique",NULL,4),
  (5,"Millet","Eugène","1819-05-21","1879-02-24","75","06",1,1837,NULL,3,NULL),
  (6,"Reynaud","François Léonce","1803","1880","69","14",1,1824,"Polytechnique;Ponts et Chaussées",NULL,NULL),
  (7,"Truelle",NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),
  (8,"Vérolles","Paul","1808","1856",NULL,NULL,0,NULL,NULL,2,NULL),
  (9,"Aigueparse","Etienne","1834-10-07",NULL,"15",NULL,1,NULL,NULL,NULL,NULL),
  (10,"Bourdon","Gaston","1801","1854",NULL,NULL,0,NULL,"beaux-arts de Nîmes",NULL,NULL),
  (11,"Boullé","Vincent","1803","1864","56",NULL,1,1824,NULL,NULL,NULL),
  (12,"Daly","César","1811","1894","55",NULL,1,NULL,NULL,2,NULL),
  (13,"Hardy","Amédée Léopold","1829","1894","75",NULL,1,1845,NULL,NULL,NULL),
  (14,"Labrouste","Henri","1801","1875","75","77",1,1818,NULL,NULL,NULL),
  (15,"Labrouste","Pierre François Léon","1846-03-02","1907-05-21","75","75",1,1872,NULL,NULL,2),
  (16,"Guépin","Alphonse (père)",NULL,"1878",NULL,NULL,0,NULL,NULL,2,NULL),
  (17,"Guépin","Alphonse Marie François (fils)","1852",NULL,"22",NULL,1,NULL,NULL,NULL,2),
  (18,"Genay","Victor Marie Ferdinand","1846-11-13","1909-03-10","54",NULL,1,1871,NULL,NULL,2),
  (19,"Boeswillwald","Emile","1815","1896","67","75",1,1837,"Tailleur de pierre",4,NULL),
  (20,"Boeswillwald","Paul Louis","1844","1931","75",NULL,1,NULL,NULL,NULL,2),
  (21,"Abric","Pierre-Charles","1800-10-10",NULL,"34",NULL,1,1825,NULL,NULL,NULL),
  (22,"Alavoine","Jean-Antoine","1778","1834",NULL,NULL,1,1808,NULL,NULL,2),
  (23,"André","Louis Jules","1819-06-24","1890-01-30","75",NULL,1,NULL,NULL,NULL,NULL),
  (24,"Andrieu","Auguste",NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),
  (25,"Aribal","Pierre",NULL,"1905-12-22",NULL,NULL,0,NULL,"université",NULL,NULL),
  (26,"Artigala","Pierre","1788",NULL,"65",NULL,0,NULL,"beaux-arts de Toulouse",NULL,NULL),
  (27,"Arveuf-Fransquin","Jean-Jacques","1802","1876","75",NULL,1,1822,NULL,3,NULL),
  (28,"Aubry","Marie Paul Gaston","1853-11-15","1901","45",NULL,1,1873,NULL,NULL,NULL),
  (29,"Aurignac","Guillaume","1838-03-18",NULL,"31",NULL,0,NULL,NULL,NULL,NULL),
  (30,"Auvray","Emile","1864-12-30","1933-09-03","76",NULL,0,NULL,"beaux-arts de Rouen",NULL,NULL),
  (31,"Auxcousteau",NULL,"1814","1872",NULL,NULL,1,NULL,NULL,NULL,NULL),
  (32,"Babet","Charles","1860-03-29",NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),
  (33,"Bailly","Antoine Nicolas","1811","1891-12-31","75",NULL,1,1830,NULL,NULL,6),
  (34,"Balleyguier","Georges Eugène Marie","1855",NULL,"75",NULL,1,1873,NULL,NULL,NULL),
  (35,"Ballu","Albert","1849","1939",NULL,NULL,1,1872,NULL,NULL,2),
  (36,"Ballu","Théodore","1817","1885","75",NULL,1,1835,NULL,NULL,NULL),
  (37,"Baltard","Victor","1805-06-10","1874-01-13","75",NULL,0,NULL,NULL,2,NULL),
  (38,"Baralle de","André Louis","1804","1872",NULL,NULL,1,1825,NULL,4,NULL),
  (39,"Baralle de","Henry Joseph","1827-12-16","1882","59",NULL,1,1846,NULL,NULL,2),
  (40,"Barbet","Lucien","1852-01-06",NULL,"75",NULL,1,NULL,NULL,NULL,NULL);

-- RELATIONS
-- un architecte restaure des bâtiments...
INSERT INTO restore(archid, buildingid) VALUES (1, 2), (1, 3), (2, 38), (3, 39), (4, 32), (4, 41), (4, 36), (5, 10), (5, 25), (5, 57), (6, 16), (6, 34), (10, 32), (10, 33), (10, 50), (11, 19), (11, 18), (12, 1), (12, 12), (13, 20), (13, 28), (13, 40), (14, 37), (14, 44), (14, 45), (15, 37), (16, 48), (16, 49), (16, 47), (17, 47), (17, 42), (17, 46), (17, 53), (18, 4), (18, 5), (18, 7), (18, 8), (18, 13), (18, 14), (18, 15), (18, 21), (18, 23), (18, 24), (18, 43), (18, 52), (18, 55), (19, 6), (19, 9), (19, 11), (19, 17), (19, 22), (19, 28), (19, 26), (19, 29), (19, 30), (19, 31), (19, 38), (19, 35), (19, 51), (19, 54), (19, 56), (19, 58);

-- un architecte a des parents...
INSERT INTO hasParents(archid, parentid) VALUES (1,2), (4,10), (14,15), (16,17), (19,20), (35,36), (38,39);

-- un architecte a des compétences reconnues
INSERT INTO hasSkills(archid, skill, fromdate, todate) VALUES
  (1,"tout",1849,1864),
  (7,"tout",1845,1848),
  (7,"église",1848,1850),
  (7,"séminaire",1848,1850),
  (5,"cathédrale",1848,1850),
  (5,"tout",1850,1875),
  (8,"tout",1843,1848),
  (8,"séminaire",1848,1854),
  (8,"église",1848,1854),
  (14,"séminaire",1848,1855),
  (14,"cathédrale",1854,1855);

-- un architecte occupe plusieurs postes au cours de sa carrière
INSERT INTO hasJobs(archid, jobid, fromdate, todate, diocese) VALUES
  (1,2,1849,1864,"16"),
  (2,1,1849,1880,"16"),
  (2,1,1849,1880,"24"),
  (2,1,1849,1880,"46"),
  (2,1,1874,1884,"75"),
  (2,1,1881,1884,"33"),
  (2,2,1872,1884,NULL),   -- "général"
  (3,2,1881,1905,"35"),
  (5,1,1848,1875,"10"),
  (5,1,1848,1875,"51"),
  (5,1,1874,1875,"63"),
  (5,2,1875,1879,NULL),   -- "général"
  (6,2,1853,1856,NULL),   -- "général"
  (7,1,1845,1850,"10"),
  (8,1,1843,1854,"14"),
  (8,4,1854,1856,"10"),
  (9,2,1854,1864,"15"),
  (9,1,1864,"","15"),
  (10,1,1836,1848,"30"),
  (11,1,1828,1838,"87"),
  (12,1,1845,1877,"81"),
  (13,1,1873,1892,"54"),
  (13,1,1879,1883,"81"),
  (13,1,1883,1892,"59"),
  (13,1,1892,1894,"87"),
  (14,1,1848,1855,"35"),
  (15,1,1882,1892,"39"),
  (15,1,1892,1905,NULL),  -- "Algérie"
  (16,1,1850,1856,"22"),
  (17,2,"",1879,"22"),
  (18,2,1873,1905,"54"),
  (19,2,1845,1846,"75"),
  (19,1,1846,1854,"85"),
  (19,1,1852,1880,"64"),
  (19,1,1854,1880,"02"),
  (19,1,1855,1880,"45"),
  (19,1,1857,1880,"28"),
  (19,1,1857,1876,"72"),
  (20,1,1876,1888,"72"),
  (20,1,1880,1888,"37"),
  (20,1,1883,1888,"18"),
  (20,2,1888,1905,NULL),  -- "général"
  (23,1,1856,1867,"2A"),
  (24,2,1877,1883,"12"),
  (25,2,1850,1857,"34"),
  (26,1,NULL,1848,"65"),
  (27,1,1832,1862,"51"),
  (28,1,1888,1894,"59"),
  (28,1,1894,1901,"71"),
  (29,2,1878,NULL,"81"),
  (30,2,1903,1905,"76"),
  (31,2,1854,1878,"60"),
  (33,1,1850,1854,"18"),
  (33,1,1850,1854,"26"),
  (33,1,1850,1854,"06"),
  (33,1,1875,1886,"87"),
  (34,1,1905,1905,"85"),
  (35,1,1879,NULL,"13"),
  (35,1,NULL,1899,NULL),  --"Algérie"
  (35,2,1899,NULL,NULL),  --"général"
  (36,2,1874,NULL,NULL),  --"général"
  (37,1,NULL,1854,"75"),
  (38,1,NULL,1857,"59"),
  (39,3,1849,1857,"59"),
  (39,1,1857,NULL,"59"),
  (40,1,1891,NULL,"84")