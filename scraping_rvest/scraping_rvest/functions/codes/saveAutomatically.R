

saveAutomatically <- function(x, if_autosave)
{
  
  if( if_autosave )
  {
    if( !any(list.dirs(".")=="./autosave") )
    {
      dir.create("autosave")
    }
    save(x, file = "./autosave/offers_autosave.RData", precheck = FALSE)
  }
  
  return( invisible() )
  
}


