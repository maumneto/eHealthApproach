
## preparing the workspace for new simulations
rm(list=ls(all=TRUE));

source("C:\\Users\\MaurícioM\\OneDrive\\Documentos\\eHealthData.R");

valueData <- HealthDataSerie(4);

valueData[1:200]
timeHorizon = 1:200;

plot(timeHorizon, valueData[1:200], col = "red")
lines(valueData[1:200], col = "black")
grid(5,5,col = "cornsilk2")