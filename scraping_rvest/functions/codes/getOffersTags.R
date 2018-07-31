
getOfferTags <- function(URL)
{
  offers <- xml2::read_html(URL) %>%
    rvest::html_nodes(xpath = "//div/h2/a[@class='offer-title__link']")
  
  return(offers)
}

