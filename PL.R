#Clear the environment

rm(list = ls())

#Load Tidyverse

library(tidyverse)

#Initialize variables and default flags
vowelstring <- "aeiouy"
consonantstring <- "bcdfghjklmnpqrstvwxz"
punctuationexpr <- "[.?!,:;]$"

tcflag <- FALSE
ucflag <- FALSE

slc <- FALSE
flv <- FALSE
punct <- FALSE
pc <- ""


#Create some sample text to translate and convert it to a list of words
sampletext <- "There once was a man named James Lynch.  He was a singing astronaut, and enjoyed yodeling."
samplelist <- as.list(scan(text=sampletext, what=""))

ftext <- ""

for (i in samplelist) {
  
  #Check word case
  t <- str_to_title(i)
  u <- str_to_upper(i)
  if (i == t) { tcflag <- TRUE } else if (i == u) { ucflag <- TRUE }
  
  #Check letter one
  if (str_detect(vowelstring, str_sub(i, 1, 1)) ) { flv <- TRUE } 
  #Check letter two
  if (str_detect(consonantstring, str_sub(i, 2, 2)) ) { slc <- TRUE }
  
  #Check for punctuation
  if(str_detect(i, punctuationexpr)) { 
      punct <- TRUE
      pc <- str_sub(i, -1, -1) 
      i <- str_sub(i, 1, str_length(i)-1)
  }
  
  ts <- ""
  pre <- str_sub(i, start = 1, end = 1)
  post <- str_sub(i, start = 2, end = str_length(i))
  
  if (flv) { 
    
    pre <- ""
    post <- i
    
    
  } else if (slc) { 
    
    pre <- str_sub(i, start = 1, end = 2) 
    post <- str_sub(i, start = 3, end = str_length(i))  
 
  }
  
 ts <- str_c(post, pre) 
 
 if (flv) { ts <- str_c(ts, "way") } else { ts <- str_c(ts, "ay") }
 
 if (tcflag) { ts <- str_to_title(ts) } else if (ucflag) { ts <- str_to_upper(ts) }
 
 if(punct) {
   ts <- str_c(ts, pc, " ")
 }
 
 ftext <- str_c(ftext, ts, sep = " ")
 ftext <- str_trim(ftext)
 
 tcflag <- FALSE
 ucflag <- FALSE
 
 slc <- FALSE
 flv <- FALSE
 punct <- FALSE
 pc <- ""

}

print(ftext)
