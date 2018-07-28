
checkCorrectnessOfDescription <- function(description)
{
  
  if(!is.vector(description) || length(description) > 1 || !is.character(description))
  {
    stop("Offer description is not a character vector of length 1. The object looks like:\n", description)
  }
  
  return(invisible())
  
}