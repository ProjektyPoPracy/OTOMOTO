

checkCorrectnessOfOfferId <- function(offerId)
{
  
  if(!is.vector(offerId) || length(offerId) != 2 || !is.character(offerId))
  {
    stop("Offer ID object is not a character vector of length 2. The object looks like:\n", offerId)
  }
  
  suppressWarnings({numericOfferId <- as.numeric(offerId[2])})
  if(is.na(numericOfferId))
  {
    stop("Offer ID object contains non-numerical values. The original value of offer ID looks like:\n", offerId[2])
  }
  
  if(!grepl(pattern = "^\\d{4}\\-\\d{2}\\-\\d{2}$", x = offerId[1]))
  {
    stop("Offer date has incorrect format:\n", offerId[1])
  }
  
  return(invisible())
  
}
