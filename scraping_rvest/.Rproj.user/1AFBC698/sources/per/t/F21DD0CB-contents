
## offer.type = c("a", "n", "u") 
### "a" - all (https://www.otomoto.pl/osobowe/) ;
### "n" - new (https://www.otomoto.pl/osobowe/uzywane/) ;
### "u" - used (https://www.otomoto.pl/osobowe/nowe/)

getOffersInfo <- function(offer.type = "a", startPageNr = 1, stopPageNr = NULL, init.df = NULL, output.name = "offerInformation", sleep = 10)
{
  
  loadPackages(pckgs = c("tidyverse", "xml2"))
  options(stringsAsFactors = FALSE)
  
  df <- defineInitialDataFrameWithOfferInfo(init.df = init.df)
  
  url.core <- defineURLcore(offerType = offer.type)
  URL.suffix <- "?page="
  pageNumber <- 1
  boardURL <- paste0(url.core, URL.suffix, pageNumber)
  
  offersTags <- getOfferTags(URL = boardURL)
  
  offerIds <- getOfferIdsFromBoard(tags=offersTags)
  offerURLs <- getOfferURLsFromBoard(tags=offersTags)
  
  ifUniqueOffer <- checkIfUniqueOffer(newIds = offerIds, alreadyScrapedIds = df$Id)
  newOfferURLs <- offerURLs[ifUniqueOffer]
  
  for(url in newOfferURLs)
  {
    singleOfferValues <- getSingleOffer(URL = url, sleep = sleep)
    df <- rbind(df, singleOfferValues)
  }
  
  return(df)
  
}











