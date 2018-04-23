## preparing the workspace for new simulations
rm(list=ls(all=TRUE));

source("C:\\Users\\Mauricio\\Downloads\\eHealthApproach-master\\eHealthData.R");

valueDataX <- HealthDataSerie(15);
valueDataY <- HealthDataSerie(16);
valueDataZ <- HealthDataSerie(17);

X = valueDataX[1:200]
Y = valueDataY[1:200]
Z = valueDataZ[1:200]
vx = 0;

timeHorizon = 1:200;

for (a in 1:200) {
  vx[a] = 0;
}

for(i in 2:length(X)){
  #X[i] <- X;
  vx[i] = vx[i-1] + (X[i])*0.001;
  velocityR = vx[i];
  newValueR = vx[i-1];
}

plot(timeHorizon, vx)
lines(timeHorizon,vx)