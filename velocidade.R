## preparing the workspace for new simulations
rm(list=ls(all=TRUE));

source("C:\\Users\\Mauricio\\Downloads\\eHealthApproach-master\\eHealthData.R");

valueDataX <- HealthDataSerie(15);
valueDataY <- HealthDataSerie(16);
valueDataZ <- HealthDataSerie(17);

X = valueDataX[1:200]
Y = valueDataY[1:200]
Z = valueDataZ[1:200]
velocityX = 0;
velocityY = 0;
velocityZ = 0;
timeHorizon = 1:200;


for (a in 1:200) {
  velocityX[a] = 0;
  velocityY[a] = 0;
  velocityZ[a] = 0;
}

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

plot(timeHorizon, velocityX, col = "black")
lines(timeHorizon,velocityY, col = "blue")
lines(timeHorizon, velocityZ, col = "red")
title(main = "gráfico de Velocidade", xlab = "time", ylab = "Velocity", line = NA)