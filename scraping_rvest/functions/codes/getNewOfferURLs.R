
getNewOfferURLs <- function(page, offersTable)
{
  
  offersTags <- getOfferTags(page = page)
  offerIds <- getOfferIdsFromBoard(tags=offersTags)
  offerURLs <- getOfferURLsFromBoard(tags=offersTags)
  
  ifUniqueOffer <- checkIfUniqueOffer(newIds = offerIds, alreadyScrapedIds = offersTable$Id)
  newOfferURLs <- offerURLs[ifUniqueOffer]
  
  return(newOfferURLs)
  
}
