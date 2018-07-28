

mergeOfferValues <- 
  function(
    offerId,
    offerPrice,
    dealerType,
    dealerLocation,
    paramLabels,
    paramValues,
    equipmentLabels,
    description
  )
  {
    
    noOfRows <- length(paramLabels) + length(equipmentLabels) + length(c(description, offerId[1], dealerType, dealerLocation, offerPrice))
    noOfEquipmentRows <- length(equipmentLabels)
    
    singleOfferTable <- data.frame(
      Id = rep(offerId[2], noOfRows),
      Label = c(paramLabels, equipmentLabels, "Opis", "Data.oferty", "Sprzedawca", "Lokalizacja", names(offerPrice)),
      Value = c(paramValues, rep(1, noOfEquipmentRows), description, offerId[1], dealerType, dealerLocation, offerPrice)
    )
    
    return(singleOfferTable)
    
  }



