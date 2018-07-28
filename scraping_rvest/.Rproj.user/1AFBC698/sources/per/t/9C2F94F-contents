
getSingleOffer <- function(URL, sleep = 10L)
{
  
  cat("Read offer from web adress:", URL)
  
  offerPage <- goToPage(URL = URL)
  
  offerId <-              getOfferId(page = offerPage)
  offerPrice <-           getOfferPrice(page = offerPage)
  dealerType <-           getDealerType(page = offerPage)
  dealerLocation <-       getDealerLoacation(page = offerPage)
  offerParametersTable <- getOfferParamTable(page = offerPage)
  offerParameterLabels <- getOfferParamLabels(paramElement = offerParametersTable)
  offerParameterValues <- getOfferParamValues(paramElement = offerParametersTable)
  offerEquipment <-       getOfferEquipmentLabels(page = offerPage)
  offerDescription <-     getOfferDescription(page = offerPage)
  
  checkCorrectnessOfOfferValues(offerId = offerId,
                                offerPrice = offerPrice,
                                dealerType = dealerType,
                                dealerLocation = dealerLocation,
                                paramLabels = offerParameterLabels, 
                                paramValues = offerParameterValues, 
                                equipmentLabels = offerEquipment, 
                                description = offerDescription)
  
  tableWithOfferValues <- mergeOfferValues(offerId = offerId,
                                           offerPrice = offerPrice,
                                           dealerType = dealerType,
                                           dealerLocation = dealerLocation,
                                           paramLabels = offerParameterLabels, 
                                           paramValues = offerParameterValues, 
                                           equipmentLabels = offerEquipment, 
                                           description = offerDescription)
  
  Sys.sleep(sleep)
  
  return(tableWithOfferValues)
  
}
