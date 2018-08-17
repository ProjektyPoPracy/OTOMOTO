

mergeOfferValues <- 
  function(
    offerId,
    offerPrice,
    dealerType,
    dealerLocation,
    paramLabels,
    paramValues,
    equipmentLabels,
    description,
    readingTime
  )
  {
    
    noOfRows <- length(paramLabels) + length(equipmentLabels) + length(c(description, offerId[1], dealerType, dealerLocation, offerPrice, readingTime))
    noOfEquipmentRows <- length(equipmentLabels)
    
    singleOfferTable <- data.frame(
      Id = rep(offerId[2], noOfRows),
      Label = c(paramLabels, equipmentLabels, "Opis", "Data.oferty", "Sprzedawca", "Lokalizacja", "Czas.pobrania", names(offerPrice)),
      Value = c(paramValues, rep(1, noOfEquipmentRows), description, offerId[1], dealerType, dealerLocation, readingTime, offerPrice)
    )
    
    return(singleOfferTable)
    
  }



