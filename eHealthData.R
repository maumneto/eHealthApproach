# --------------------------------------------------------- #
# ----- Code to health data for IoT ----------------------- #
#   @Code made by Mauricio M. Neto -- @maumneto@gmail.com   #
# --------------------------------------------------------- #

# A brief explanation: The values of x vary from 1 - 11. Each value corresponds to a column of data values captured. 
  rm(list=ls(all=TRUE));
  ## Setting parameters
  # Load the Health data
  
  HealthDataSerie <- function(column){
  
    healthData <- read.table("C:\\Users\\MaurícioM\\Downloads\\MHEALTHDATASET\\mHealth_subject1.log", header = FALSE, sep = "");
    
    if (column == 1){
      dataAccelerationChestX <- as.double(healthData$V1);
      return(dataAccelerationChestX);
    }
    else if (column == 2){
      dataAccelerationChestY <- as.double(healthData$V2);
      return(dataAccelerationChestY);
    }
    
    else if (column == 3){
      dataAccelerationChestZ <- as.double(healthData$V3);
      return(dataAccelerationChestZ);
    }
    
    else if (column == 4){
      dataECGsignal1 <- as.double(healthData$V4);
      return(dataECGsignal1);
    }
    
    else if (column == 5){
      dataECGsignal2 <- as.double(healthData$V5);
      return(dataECGsignal2);
    }
    
    else if (column == 6){
      dataAccelerationAnkleX <- as.double(healthData$V6);
      return(dataAccelerationAnkleX);
    }
    
    else if (column == 7){
      dataAccelerationAnkleY <- as.double(healthData$V7);
      return(dataAccelerationAnkleY);
    }
    
    else if (column == 8){
      dataAccelerationAnkleZ <- as.double(healthData$V8);
      return(dataAccelerationAnkleZ);
    }
    
    else if (column == 9){
      dataGyroAnkleX <- as.double(healthData$V9);
      return(dataGyroAnkleX);
    }
    
    else if (column == 10){
      dataGyroAnkleY <- as.double(healthData$V10)
      return(dataGyroAnkleY)
    }
    
    else if (column == 11){
      dataGyroAnkleZ <- as.double(healthData$V11);
      return(dataGyroAnkleZ);
    }
    
    else if (column == 12){
      dataMagnetometerAnkleX <- as.double(healthData$V12);
      return(dataMagnetometerAnkleX);
    }
    
    else if (column == 13){
      dataMagnetometerAnkleY <- as.double(healthData$V13);
      return(dataMagnetometerAnkleY);
    }
    
    else if (column == 14){
      dataMagnetometerAnkleZ <- as.double(healthData$V14);
      return(dataMagnetometerAnkleZ);
    }
    
    else if (column == 15){
      dataAccelerationRightLowerArmX <- as.double(healthData$V15);
      return(dataAccelerationRightLowerArmX);
    }
    
    else if (column == 16){
      dataAccelerationRightLowerArmY <- as.double(healthData$V16);
      return(dataAccelerationRightLowerArmY);
    }
    
    else if (column == 17){
      dataAccelerationRightLowerArmZ <- as.double(healthData$V17);
      return(dataAccelerationRightLowerArmZ);
    }
    
    else if (column == 18){
      dataGyroRightLowerArmX <- as.double(healthData$V18);
      return(dataGyroRightLowerArmX);
    }
    
    else if (column == 19){
      dataGyroRightLowerArmY <- as.double(healthData$V19);
      return(dataGyroRightLowerArmY);
    }
    
    else if (column == 20){
      dataGyroRightLowe0ArmZ <- as.double(healthData$V20);
      return(dataGyroRightLowerArmZ);
    }
    
    else if (column == 21){
      dataMagnetometerRightLowerArmX <- as.double(healthData$V21);
      return(dataMagnetometerRightLowerArmX);
    }
    
    else if (column == 22){
      dataMagnetometerRightLowerArmY <- as.double(healthData$V22);
      return(dataMagnetometerRightLowerArmY);
    }
    
    else if (column == 23){
      dataMagnetometerRightLowerArmZ <- as.double(healthData$V23);
      return(dataMagnetometerRightLowerArmZ);
    }
    
    else if (column == 24){
      nullValue <- as.double(healthData$V24);
      return(nullValue);
    }
  }
  
