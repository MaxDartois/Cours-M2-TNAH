from flask import Flask, render_template, make_response

app = Flask(__name__)

@app.route('/sitemap.xml')
def sitemap():

    values = [
        {'name': 'John', 'surname': 'Doe', 'age': 25},
        {'name': 'Jane', 'surname': 'Doe', 'age': 19}
    ]

    template = render_template('sitemap.xml', values=values)
    response = make_response(template)
    response.headers['Content-Type'] = 'application/xml'

    return response

    #<?xml version="1.0" encoding="UTF-8"?>
	#<TEI xmlns="http://www.tei-c.org/ns/1.0">
		#<dts:fragment xmlns:dts="https://w3id.org/dts/api#">
    		#<!-- XML or string of the passage requested here -->
		#</dts:fragment>
	#</TEI>
	#fragment de TEI à ajouter à tous les documents de la base de donnée dans le render_template. 