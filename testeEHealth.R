
## preparing the workspace for new simulations
rm(list=ls(all=TRUE));

path = "Desktop/eHealthApproach/eHealthData.R"

source(path);

valueData <- HealthDataSerie(4);

valueData[1:200]
timeHorizon = 1:200;

plot(timeHorizon, valueData[1:200], col = "red")
lines(valueData[1:200], col = "black")
grid(5,5,col = "cornsilk2")