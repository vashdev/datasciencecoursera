corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  ## source complete.R
  files <- list.files("/home/ash/coursera/R/specdata",full.names=TRUE)
  ##files <- list.files(directory,full.names=TRUE)
  ##mdat <- data.frame('date', 'sulphate','nitrate','ID')
  df = data.frame(matrix(vector(), 0, 4, dimnames=list(c(), c("Date", "nf", "nitrate","ID"))), stringsAsFactors=F)
   correlations <- numeric()
  ##files
  length(files)
  for(i in 1:length(files))
    ## for(i in id)
  {
     
    df<-  read.csv(files[i]) 
   if(NROW(na.omit(df))>threshold)
  {
     correlations <-c(correlations,cor(df$sulfate,df$nitrate, use="pairwise.complete.obs"))
    
    }
    
##cor(n_row)
}
correlations
}
