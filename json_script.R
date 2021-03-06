library(jsonlite)

# creating a json data for blockchain
rm(list=ls(all=TRUE))

#path = "Desktop/eHealthApproach/eHealthData.R"

# Using the code previusly done 
source("Desktop/eHealthApproach/velocidade.R")

# index for json
indexData = 1:200

# data that will be storage
heartBeats <- HealthDataSerie(4)[1:200]
speed <- velocityX[1:200]
acelerometerX <- HealthDataSerie(15)[1:200]
acelerometerY <- HealthDataSerie(16)[1:200]
acelerometerZ <- HealthDataSerie(17)[1:200]

# creating a dataframe
eHealthData <- data.frame(heartBeats, speed, acelerometerX, acelerometerY, acelerometerZ, indexData)

# creating a jsonData
eHealthDataJson <- toJSON(eHealthData, pretty = FALSE)

# saving the json in the project
write_json(eHealthData, path = "Desktop/eHealthApproach/dataehealth.json")

# show the json
eHealthDataJson


