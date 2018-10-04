
getOfferPrice <- function(page, timeout)
{
  options(timeout = timeout)
  
  offerPriceNumber <- page %>%
    rvest::html_node(xpath = "//section[@class='offer-header']/div[@class='offer-header__row']/div[@class='offer-price']/span[@class='offer-price__number']") %>%
    rvest::html_text() %>%
    gsub(pattern = "[^0-9.]", replacement = "", x = .)
  
  offerPriceCurrency <- page %>%
    rvest::html_node(xpath = "//section[@class='offer-header']/div[@class='offer-header__row']/div[@class='offer-price']/span[@class='offer-price__number']/span[@class='offer-price__currency']") %>%
    rvest::html_text()
  
  offerPriceDetails <- page %>%
    rvest::html_node(xpath = "//section[@class='offer-header']/div[@class='offer-header__row']/div[@class='offer-price']/span[@class='offer-price__details']") %>%
    rvest::html_text() %>%
    strsplit(split = ", ") %>%
    unlist() %>%
    unname()
  
  
  offerPriceAll <- c(Cena = offerPriceNumber, Waluta = offerPriceCurrency, CenaDodInfo = offerPriceDetails)
  
  return(offerPriceAll)
  
}

