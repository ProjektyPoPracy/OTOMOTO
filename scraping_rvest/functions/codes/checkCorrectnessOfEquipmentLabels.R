
checkCorrectnessOfEquipmentLabels <- function(equipment)
{
  
  if(!is.vector(equipment) || !is.character(equipment))
  {
    stop("Equipment object is not a character vector. The object looks like:\n", equipment)
  }
  
  return(invisible())
  
}

