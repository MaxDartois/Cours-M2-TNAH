 with open(txtfile, 'r') as infile, open(csvfile, 'w') as outfile:
        stripped = (line.strip() for line in infile)
        lines = (line.split(",") for line in stripped if line)
        writer = csv.writer(outfile)
        writer.writerows(lines)

        

import pandas as pd
df = pd.read_fwf('log.txt')
df.to_csv('log.csv')

import csv
    import itertools

    with open('log.txt', 'r') as in_file:
        lines = in_file.read().splitlines()
        stripped = [line.replace(","," ").split() for line in lines]
        grouped = itertools.izip(*[stripped]*1)
        with open('log.csv', 'w') as out_file:
            writer = csv.writer(out_file)
            writer.writerow(('title', 'intro', 'tagline'))
            for group in grouped:
                writer.writerows(group)
import csv
import sys

txt_file = r"mytxt.txt"
csv_file = r"mycsv.csv"

in_txt = open(txt_file, "r")
out_csv = csv.writer(open(csv_file, 'wb'))

file_string = in_txt.read()

file_list = file_string.split('\n')

for row in ec_file_list:       
    out_csv.writerow(row)

 #Nouveau code.   

import csv

txt_file = r"mytxt.txt"
csv_file = r"mycsv.csv"

# use 'with' if the program isn't going to immediately terminate
# so you don't leave files open
# the 'b' is necessary on Windows
# it prevents \x1a, Ctrl-z, from ending the stream prematurely
# and also stops Python converting to / from different line terminators
# On other platforms, it has no effect
in_txt = csv.reader(open(txt_file, "rb"), delimiter = '\t')
out_csv = csv.writer(open(csv_file, 'wb'))

out_csv.writerows(in_txt)