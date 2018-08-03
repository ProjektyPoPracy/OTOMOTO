
filterNewOfferURLs <- function(page, offersTable, timeout)
{
  options(timeout = timeout)
  
  offersTags <- getOfferTags(page = page, timeout = timeout)
  offerIds <- getOfferIdsFromBoard(tags=offersTags)
  offerURLs <- getOfferURLsFromBoard(tags=offersTags)
  
  ifUniqueOffer <- checkIfUniqueOffer(newIds = offerIds, alreadyScrapedIds = offersTable$Id)
  newOfferURLs <- offerURLs[ifUniqueOffer]
  
  return(newOfferURLs)
  
}
