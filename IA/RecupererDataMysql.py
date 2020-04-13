"""
Created on Wed Apr  1 01:52:51 2020

@author: bouredjioua
"""

# Récupérer les données depuis Mysql et les insérer dans un fichier Csv

#importer le connector de mysql
import mysql.connector 
import csv

#etablir la connexion a la base de sonnées mysql
baseDeDonnees = mysql.connector.connect(host="localhost",user="root",password="", database="registration")

fname = 'data.csv'
fichier = open(fname, "w")

curseur = baseDeDonnees.cursor()

## Pour récupérer les noms des colonnes: "Ca ne marche pas encore !"
        
curseur.execute("SELECT * FROM TABLE_NAME ")    
   
try:  
    writer= csv.writer(fichier)
    
    writer.writerow(curseur.column_names)
    for line in curseur.fetchall():
        
        writer.writerow(line)


finally:
    
    fichier.close
    baseDeDonnees.close



