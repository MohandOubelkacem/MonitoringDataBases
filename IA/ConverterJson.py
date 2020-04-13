#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Apr  9 18:02:50 2020

@author: makhoukhene
"""

# Convertir un fichier JSON en CSV
import csv, json, sys

#check if you pass the input file and output file       
def convertir (fileJson,outputFile):
    inputFile = open(fileJson) #open json file
    outputFile = open(outputFile, 'w') #load csv file
    data = json.load(inputFile) #load json content
    inputFile.close() 
    output = csv.writer(outputFile)
    output.writerow(data[0].keys())
    for row in data:
        output.writerow(row.values())
