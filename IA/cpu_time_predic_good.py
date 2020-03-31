# -*- coding: utf-8 -*-
"""
Created on Wed Jul 17 09:11:46 2019

@author: lizat
"""

# -*- coding: utf-8 -*-
"""


@author: lizat
"""

# importation des librairies et des modules 
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
 
y = dataset.iloc[:,-1].values
y=np.reshape(y, (-1,1))




#eviter qu'une variable trop differentes prennent le dessus et influances les autres valeurs  
scaler_x = MinMaxScaler()
scaler_y = MinMaxScaler()
print(scaler_x.fit(x))
xscale=scaler_x.transform(x)
print(scaler_y.fit(y))
yscale=scaler_y.transform(y)

#séparation du jeu de donnée entre une partie entrainnement et une partie test
X_train, X_test, y_train, y_test = train_test_split(xscale, yscale)



#modéle : Régression linéaire
import keras as ks 
model = Sequential()
#model.add(Dense(2, input_dim=3, kernel_initializer=ks.initializers.Constant(value=0.2), activation='sigmoid'))
#model.add(Dense(2,kernel_initializer=ks.initializers.Constant(value=1), activation='sigmoid'))
model.add(Dense(4, input_dim=4, activation='sigmoid'))
model.add(Dense(4,activation='sigmoid'))

model.add(Dense(1, activation='linear'))
model.summary()

#compilation
model.compile(loss='mse', optimizer='adam', metrics=['mse','mae'])

#évaluation du modèle 
history = model.fit(X_train, y_train, epochs=150, batch_size=50,  verbose=1, validation_split=0.2)

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
regressor.fit(X_train, y_train)


yy_pred = regressor.predict(X_test)


for layer in model.layers:
    weights = layer.get_weights() # list of numpy arrays



#make statistic 
import statsmodels.formula.api as sm
x = np.append(arr = np.ones((1184, 3)).astype(int), values = x, axis = 1)
X_opt = x[:,[0, 1, 2, 3, 4,5]]

