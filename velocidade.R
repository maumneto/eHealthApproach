## preparing the workspace for new simulations
rm(list=ls(all=TRUE));
# Using the dataset 
source("C:\\Users\\Mauricio\\Downloads\\eHealthApproach-master\\eHealthData.R");

# Assignment of data column values
valueDataX <- HealthDataSerie(15);
valueDataY <- HealthDataSerie(16);
valueDataZ <- HealthDataSerie(17);

# Variables
X = valueDataX[1:200]
Y = valueDataY[1:200]
Z = valueDataZ[1:200]
velocityX = 0;
velocityY = 0;
velocityZ = 0;
timeHorizon = 1:200;

# Creating three vectors of zeros of X-,Y- and Z- axis
for (a in 1:200) {
  velocityX[a] = 0;
  velocityY[a] = 0;
  velocityZ[a] = 0;
}

# Calculating the velocity of the each axis (sampling time = 0.001s)
for(i in 2:length(X)){
  velocityX[i] = velocityX[i-1] + (X[i])*0.001;
  velocityCurentX = velocityX[i];
  velocityBeforeX = velocityX[i-1];
  
  velocityY[i] = velocityY[i-1] + (Y[i])*0.001;
  velocityCurentY = velocityY[i];
  velocityBeforeY = velocityY[i-1];
  
  velocityZ[i] = velocityZ + (Z[i])*0.001;
  velocityCurentZ = velocityZ[i];
  velocityBeforeZ = velocityZ[i-1];
}

# calculating the number of steps based on the 0.8m step
numberOfStepsX = (velocityCurentX*length(X))/0.8
numberOfStepsY = (velocityCurentY*length(Y))/0.8
numberOfStepsZ = (velocityCurentZ*length(Z))/0.8

#plot
plot(timeHorizon, velocityX, col = "black")
lines(timeHorizon,velocityY, col = "blue")
lines(timeHorizon, velocityZ, col = "red")
title(main = "gráfico de Velocidade", xlab = "time", ylab = "Velocity", line = NA)