## preparing the workspace for new simulations
rm(list=ls(all=TRUE));

source("C:\\Users\\MaurícioM\\OneDrive\\Documentos\\eHealthData.R");

valueDataX <- HealthDataSerie(15);
valueDataY <- HealthDataSerie(16);
valueDataZ <- HealthDataSerie(17);

X <- valueDataX[1:200]
Y <-valueDataY[1:200]
Z <-valueDataZ[1:200]

g_range <- range(0, X, Y, Z)

length(X)
length(Y)
length(Z)

timeHorizon = 1:200;

# Graph cars using a y axis that ranges from 0 to 12
plot(X, type="o", col="blue", ylim=g_range)

# Graph trucks with red dashed line and square points
lines(Y, pch=22, lty=2, col="red")

lines(Z, pch=22, lty=2, col="green")

# Create a title with a red, bold/italic font
title(main="Acelerometro", col.main="blue", font.main=4)

grid()