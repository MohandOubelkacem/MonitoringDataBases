#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Mar 30 20:28:37 2020

@author: makhoukhene
"""
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.model_selection import cross_val_score
from sklearn.model_selection import KFold
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import MinMaxScaler
from tensorflow.python.keras.models import Sequential
from tensorflow.python.keras.layers import Dense
from tensorflow.python.keras.wrappers.scikit_learn import KerasRegressor

#préparation des données 
dataset = pd.read_csv('/home/makhoukhene/MesFichiers/L3AH/IA/convert1csv.csv')
#création des matrices de variables input 
#repération des bons indices
#selection des indices  
x = dataset.iloc[:,[0,1,3,4]].values
 
#redimmensionnement de y
 
y = dataset.iloc[:,[2]].values
y=np.reshape(y, (-1,1))
#eviter qu'une variable trop differentes prennent le dessus et influances les autres valeurs  
scaler_x = MinMaxScaler()
scaler_y = MinMaxScaler()
print(scaler_x.fit(x))
xscale=scaler_x.transform(x)
print(scaler_y.fit(y))
yscale=scaler_y.transform(y)

from sklearn.model_selection import train_test_split
x_train,x_test,y_train,y_test=train_test_split(x,y,test_size=0.2)
#Changer l'échelle
#On changera l'échel des variables pour qu'aucune var n'influence une autre
from sklearn.preprocessing import StandardScaler
sc_x=StandardScaler()
x_train=sc_x.fit_transform(x_train)
x_test=sc_x.transform(x_test)

#Initialiser un réseau de neuronne
classifier=Sequential()

#Ajouter la couche d'entrée et unc couche caché
classifier.add(Dense(units=4,activation='sigmoid',
                     input_dim=4))
#Ajouter une deuxième couche cachée
classifier.add(Dense(units=4,activation='sigmoid'))

#Ajouter la couche de sortie 
classifier.add(Dense(units=1,activation='linear'))
classifier.summary()

#compiler l'algo en utilisant l'ago de gradient->adam, loss =fonction de coût 
classifier.compile(loss='mse', optimizer='adam', metrics=['mse','mae'])

#évaluation du modèle 
history = classifier.fit(x_train, y_train, epochs=150, batch_size=50,  verbose=1, validation_split=0.2)

#Visualisation des courbes 
print(history.history.keys())
# "Loss"
plt.plot(history.history['loss'])
plt.plot(history.history['val_loss'])
plt.title('model loss')
plt.ylabel('loss')
plt.xlabel('epoch')
plt.legend(['train', 'validation'], loc='upper left')
plt.show()

#♦make predicitons
from sklearn.linear_model import LinearRegression
regressor = LinearRegression()
regressor.fit(x_train, y_train)


y_pred = regressor.predict(x_test)

for layer in classifier.layers:
    weights = layer.get_weights() # list of numpy arrays



#make statistic 
import statsmodels.formula.api as sm
x = np.append(arr = np.ones((1184, 3)).astype(int), values = x, axis = 1)
X_opt = x[:,[0, 1, 2, 3, 4,5]]

