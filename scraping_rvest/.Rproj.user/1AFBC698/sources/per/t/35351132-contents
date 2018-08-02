

getOffersInfoFromSingleBoard <- function(page, offersTable, sleep)
{
  
  # offersTags <- getOfferTags(page = page)
  # offerIds <- getOfferIdsFromBoard(tags=offersTags)
  # offerURLs <- getOfferURLsFromBoard(tags=offersTags)
  # 
  # ifUniqueOffer <- checkIfUniqueOffer(newIds = offerIds, alreadyScrapedIds = offersTable$Id)
  # newOfferURLs <- offerURLs[ifUniqueOffer]
  
  kolumny <- names(offersTable)
  offersTable <- data.frame(A=character(0), B=character(0), C=character(0))
  names(offersTable) <- kolumny
  
  newOfferURLs <- getNewOfferURLs(page = page, offersTable = offersTable)
  
  for(url in newOfferURLs)
  {
    singleOfferValues <- getSingleOffer(URL = url, sleep = sleep)
    offersTable <- rbind(offersTable, singleOfferValues)
  }
  
  return(offersTable)
}
