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
