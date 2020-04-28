
correlation <- function(directory,threshold=0){
  csv_files <- list.files(directory,full.names = TRUE)
  df <- data.frame()
  ans <- vector(mode = "numeric",length = 0)
  for(i in length(csv_files)){
    temp <- read.csv(csv_files[i])
    total <- sum(complete.cases(temp))
    if(total>threshold){
      xSulphate <- xSulphate[which(!is.na(temp$sulfate)),]
      allPollutants <- xSulphate[which(!is.na(xSulphate$nitrate)),]
      ans <- c(ans,cor(allPollutants$sulfate, allPollutants$nitrate))
    }
  }
  return (ans)
  
}

correlation(directory, 2000)
  
x <-correlation(directory, 129)
x
