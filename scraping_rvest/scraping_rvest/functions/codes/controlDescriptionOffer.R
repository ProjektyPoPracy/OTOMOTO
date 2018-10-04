

controlDescriptionOffer <- function(desc)
{
  if(length(desc) > 0)
  {
    desc <- desc[[1]]
  }
  else
  {
    desc <- ""
  }
  return(desc)
}