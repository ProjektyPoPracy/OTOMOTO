


getOfferURLs <- function(page)
{
  
  offer.URLs <- page %>%
    rvest::html_nodes(xpath = "//div/h2/a[@class='offer-title__link']") %>%
    rvest::html_attr(name = "href")
  
  return(offer.URLs)
  
}
