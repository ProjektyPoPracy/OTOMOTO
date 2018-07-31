

yesOrNoQuestion <- function(question)
{
  answer <- readline(prompt = question)
  while(!(answer %in% c("y", "Y", "yes", "Yes", "YES", "n", "N", "no", "No", "NO")))
  {
    message("Please answer yes (y) or no (n).")
  }
  
  answer.logical <- ifelse(answer %in% c("y", "Y", "yes", "Yes", "YES"), TRUE, FALSE)
  
  return(answer.logical)
  
}
