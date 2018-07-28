
checkCorrectnessOfDealerLocation <- function(dealerLocation)
{
  
  if(!is.vector(dealerLocation) || length(dealerLocation) != 1 || !is.character(dealerLocation))
  {
    stop("Offer dealerLocation is not a character vector of length 1. The object looks like:\n", dealerLocation)
  }
  
  return(invisible())
  
}
