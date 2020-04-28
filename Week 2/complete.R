#Set directory
complete <- function(directory,id=1:332){
  csv_files <- list.files(directory,full.names = TRUE)
  df <- data.frame()
  for(i in id){
    temp <- read.csv(csv_files[i])
    total <- sum(complete.cases(temp))
    temp_df <- data.frame(i,total)
    df <- rbind(df,temp_df)
  }
  
  colnames(df) <- c("id","nobs")
  df
  
  
}

#1
complete(directory)

#2
cc <- complete(directory, c(6, 10, 20, 34, 100, 200, 310))
print(cc$nobs)

#3
cc <- complete(directory, 54)
print(cc$nobs)

#4
RNGversion("3.5.1")  
set.seed(42)
cc <- complete(directory, 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])


#5
cr <- corr(directory)                
cr <- sort(cr)   
RNGversion("3.5.1")
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)


#6
cr <- corr(directory, 129)                
cr <- sort(cr)                
n <- length(cr)    
RNGversion("3.5.1")
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)


#7
cr <- corr(directory, 2000)                
n <- length(cr)                
cr <- corr(directory, 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))
