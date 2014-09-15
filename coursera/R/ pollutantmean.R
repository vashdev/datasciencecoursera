
pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  ## Parse Dir
  #files <- list.files("/home/ash/coursera/R/specdata")
  files <- list.files(directory,full.names=TRUE)
  
  dat <- data.frame()  
  files
  length(files)
  
  #for(i in 1:length(files))
  for(i in id)
  {
    dat <- rbind(dat, read.csv(files[i]))
    
  }
 
  ##description
 ##str(dat)
  ## summary
 ##summary(dat)
 ## mean
 mean(dat[[pollutant]],na.rm=TRUE)
  
}

