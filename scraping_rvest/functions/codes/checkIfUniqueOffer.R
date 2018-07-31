

checkIfUniqueOffer <- function(newIds = offerIds, alreadyScrapedIds = df$Id)
{
  
  ifUniqueId <- !(newIds %in% alreadyScrapedIds)
  return(ifUniqueId)
  
}

