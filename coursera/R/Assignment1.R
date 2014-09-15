
 
  
  
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  ## Parse Dir
  files <- list.files("/home/ash/coursera/R/specdata",full.names=TRUE)
  ##files <- list.files(directory,full.names=TRUE)
  dat <- data.frame()
  ##files
  length(files)
  id<-1:332
  for(i in 1:length(files))
 ## for(i in id)
  {
    row1<-data.frame()
    row1<-  read.csv(files[i])
    
    
      v<-c(i,NROW(na.omit(row1)))     
    dat <- rbind(dat, v)
    names(dat) <- c("id", "nobs")
  }
 
  ##mean(dat$pollutant,na.rm=TRUE)
 str(dat)
head(dat)  
  ##mean(dat$nitrate,na.rm=TRUE)
  
