
checkCorrectnessOfParamLabelsAndValues <- function(labels, values)
{
  
  if(!is.vector(labels) || !is.character(labels))
  {
    stop("Parameter labels object is not a character vector. The object looks like:\n", labels)
  }
  
  if(!is.vector(values) || !is.character(values))
  {
    stop("Parameter values object is not a character vector. The object looks like:\n", values)
  }
  
  if(length(labels) != length(values))
  {
    stop("Parameter labels and parameters values do not have equal length. \nThe legth of labels: ", length(labels), "\nThe length of values: ", length(values))
  }
  
  return(invisible())
  
}