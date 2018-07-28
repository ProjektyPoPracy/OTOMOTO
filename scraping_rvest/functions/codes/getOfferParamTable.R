

getOfferParamTable <- function(page)
{
  paramTable <- page %>%
    rvest::html_node(xpath = "//div[@id='parameters']") 
  
  return(paramTable)
  
}
