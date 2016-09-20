keygen <- function(){
  set.seed(sum(as.numeric(charToRaw("Text_Manipulation_Functions"))))
  pran <- function(n = 1){
    replicate(n, sample(c(LETTERS, letters, 0:9), 1))
  }
  ks <- replicate(4, paste0(pran(4), collapse = ""))
  set.seed(NULL)
  pn <- sample(1:16, 1)
  kn <- sample(1:4, 1)
  sss <- paste(sample(c(LETTERS, letters, 0:9), 16-pn), collapse = "")
  eee <- paste(sample(c(LETTERS, letters, 0:9), pn), collapse = "")
  paste0(sss, ks[kn], eee)  
}

# Get the swirl state
getState <- function(){
  # Whenever swirl is running, its callback is at the top of its call stack.
  # Swirl's state, named e, is stored in the environment of the callback.
  environment(sys.function(1))$e
}

# Get the value which a user either entered directly or was computed
# by the command he or she entered.
getVal <- function(){
  getState()$val
}

# Get the last expression which the user entered at the R console.
getExpr <- function(){
  getState()$expr
}

get_coursera_log <- function(){
  clog_path <- file.path(getState()$udat, "rpe3.rds")
  if(!file.exists(clog_path)){
    clog <- data.frame(ln = c("Text_Manipulation_Functions",
                              "Regular_Expressions",
                              "The_stringr_Package"), complete = rep("incorrect", 3),
                       stringsAsFactors = FALSE)
    saveRDS(clog, clog_path)
  }
  
  clog <- readRDS(clog_path)
  clog$complete[which(clog$ln == "Text_Manipulation_Functions")] <- "correct"
  saveRDS(clog, clog_path)
  clog
}

coursera_on_demand <- function(){
  selection <- getState()$val
  if(selection == "Yes"){
    email <- readline("What is your email address? ")
    token <- readline("What is your assignment token? ")
    
    clog <- get_coursera_log()
    
    payload <- sprintf('{  
                       "assignmentKey": "nxrW12vOEea_xxKfzxlohw",
                       "submitterEmail": "%s",  
                       "secret": "%s",  
                       "parts": {  
                       "aK1aR": {  
                       "output": "%s"  
                       },
                       "8nqlM": {  
                       "output": "%s"  
                       },
                       "W3utJ": {  
                       "output": "%s"  
                       }
                       }  
  }', email, token, clog$complete[1], clog$complete[2], clog$complete[3])
    url <- 'https://www.coursera.org/api/onDemandProgrammingScriptSubmissions.v1'
    
    respone <- httr::POST(url, body = payload)
    if(respone$status_code >= 200 && respone$status_code < 300){
      message("Grade submission succeeded!")
    } else {
      message("Grade submission failed.")
      message("Press ESC if you want to exit this lesson and you")
      message("want to try to submit your grade at a later time.")
      return(FALSE)
    }
} else if(selection == "No"){
  return(TRUE)
} else {
  message("Submit the following code as the answer")
  message("to a quiz question on Coursera.\n")
  message("#########################\n")
  message(keygen(), "\n")
  message("#########################")
  return(TRUE)
}
  }