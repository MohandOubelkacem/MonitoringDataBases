# -*- coding: utf-8 -*-
"""
Created on Mon Mar 30 21:18:33 2020

@author: FARID MEZHOUD
"""

import mysql.connector
from mysql.connector import errorcode

try:
  cnx = mysql.connector.connect(user='root', password='',
                                database='Historisation')
except mysql.connector.Error as err:
  if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
    print("Something is wrong with your user name or password")
  elif err.errno == errorcode.ER_BAD_DB_ERROR:
    print("Database does not exist")
  else:
    print(err)
else: print("Connection OK")

  
mycursor = cnx.cursor()
#selectionner depuis la table X
#récuperation des indicateurs pour entrainer le ANN
mycursor.execute("SELECT * FROM test ")

myresult = mycursor.fetchall()

for x in myresult:
  print(x)
cnx.close() 
