  ##
  #
  # Pig Latin Translator Program - R
  # K Rasku RN
  #
  ##
  
  
  #Clear the environment & call tidyverse
  rm(list = ls())
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
  #For now, change this string if you want to translate something else
  #TODO: Turn this into a function
  #
  sampletext <- "There once was a man named James Lynch.  He was a singing astronaut, who enjoyed yodeling and playing stringed instruments underwater."
  samplelist <- as.list(scan(text=sampletext, what=""))
  
  ftext <- ""
  
  for (i in samplelist) {
    
    #Check word case, so we know to title or upper-case the word when we are finished transforming it
    t <- str_to_title(i)
    u <- str_to_upper(i)
    if (i == t) { tcflag <- TRUE } else if (i == u) { ucflag <- TRUE }
    
    #Check to see if letter one is a vowel
    if (str_detect(vowelstring, str_sub(i, 1, 1)) ) { flv <- TRUE } 
    
    #Check to see if letter two is a consonant
    if (str_detect(consonantstring, str_sub(i, 2, 2)) ) { slc <- TRUE }
    
    #Check for punctuation, and if it is present save it to be re-added after transformation
    if(str_detect(i, punctuationexpr)) { 
        punct <- TRUE
        pc <- str_sub(i, -1, -1) 
        i <- str_sub(i, 1, str_length(i)-1)
    }
    
    #Initialize transformed string and create default prefix as first letter and default suffix as the rest of the word
    ts <- ""
    pre <- str_sub(i, start = 1, end = 1)
    post <- str_sub(i, start = 2, end = str_length(i))
    
    #If the first letter is a vowel there is no prefix and the suffix is the whole word
    if (flv) { 
      
      pre <- ""
      post <- i
      
    #If the second letter is a consonant (also) ...
    } else if (slc) { 
      
      #find the vowel index
      j <- 1
      vi <- 0
      while(j < str_length(i)) {
        if (str_detect(vowelstring, str_sub(i, j, j))) { 
          vi <- j
          break
        }
        j <- j+1
      }
      
      pre <- str_sub(i, start = 1, end = vi-1) 
      post <- str_sub(i, start = vi, end = str_length(i))  
   
    }
    
   ts <- str_c(post, pre) 
   
   #If first letter is a vowel add "way", otherwise add "ay"
   if (flv) { ts <- str_c(ts, "way") } else { ts <- str_c(ts, "ay") }
   
   #Restore title or upper case, if it was detected
   if (tcflag) { ts <- str_to_title(ts) } else if (ucflag) { ts <- str_to_upper(ts) }
   
   #Add punctuation back in, if it was detected
   if(punct) {
     ts <- str_c(ts, pc, " ")
   }
   
   #Add the new word, followed by a space
   ftext <- str_c(ftext, ts, sep = " ")
   ftext <- str_trim(ftext)
   
   #reset flags
   tcflag <- FALSE
   ucflag <- FALSE
   
   slc <- FALSE
   flv <- FALSE
   punct <- FALSE
   pc <- ""
  
  }
  
  #Print final translation
  print(ftext)
