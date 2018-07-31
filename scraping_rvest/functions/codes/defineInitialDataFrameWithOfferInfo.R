

defineInitialDataFrameWithOfferInfo <- function(init.df)
{
  
  if(is.null(init.df))
  {
    answer <- yesOrNoQuestion(question = "Are you sure to run function without initial data frame? (y/n): ")
    if(!answer) stop("\r Function has been stopped by user.")
    
    init.df <- data.frame(
      Id = character(0),
      Label = character(0),
      Value = character(0)
    )
  }
  else
  {
    message("Run function with initial data frame.")
  }
  
  return(init.df)
  
}
