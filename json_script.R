library(jsonlite)

# creating a json data for blockchain
rm(list=ls(all=TRUE))

path = "C:\\Users\\Mauricio\\Documents\\GitHub\\eHealthApproach\\eHealthData.R"

# Using the dataset 
source(path)

heartBeats <- HealthDataSerie(4)

hb <- heartBeats[1:200]

dataHeartBeats <- data.frame("eV", hb)

dataHeartBeatsJson <- toJSON(dataHeartBeats)

save(dataHeartBeatsJson, file="C:\\Users\\Mauricio\\Documents\\GitHub\\eHealthApproach\\mhealthdata.json")

dataHeartBeatsJson
