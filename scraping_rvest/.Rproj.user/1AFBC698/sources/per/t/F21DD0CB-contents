
## offer.type = c("a", "n", "u") 
### "a" - all (https://www.otomoto.pl/osobowe/) ;
### "n" - new (https://www.otomoto.pl/osobowe/uzywane/) ;
### "u" - used (https://www.otomoto.pl/osobowe/nowe/)

getOffersInfo <- function(offer.type = "a", startPageNr = 1, stopPageNr = NULL, init.df = NULL, output.name = "offerInformation", sleep = 10)
{
  
  loadPackages(pckgs = c("tidyverse", "xml2"))
  options(stringsAsFactors = FALSE)
  
  offersInfoOutput <- defineInitialDataFrameWithOfferInfo(init.df = init.df)
  
  url.core <- defineURLcore(offerType = offer.type)
  URL.suffix <- "?page="
  pageNumber <- startPageNr
  boardURL <- paste0(url.core, URL.suffix, pageNumber)
  
  boardPage <- goToPage(URL = boardURL)
  numberOfPagesToScraping <- defineNumberOfPagesToScraping(board.page = boardPage, last.page = stopPageNr)
  
  ## ----------------------------------------------------------
  for(pageNumber in startPageNr:numberOfPagesToScraping)
  {
    boardURL <- paste0(url.core, URL.suffix, pageNumber)
    boardPage <- goToPage(URL = boardURL)
    newOffers <- getOffersInfoFromSingleBoard(page = boardPage, offersTable = offersInfoOutput, sleep = sleep)  
    offersInfoOutput <- rbind(offersInfoOutput, newOffers)
    assign(x = output.name, value = offersInfoOutput, envir = globalenv())
  }
  ## ----------------------------------------------------------
  
  return(offersInfoOutput)
  
}











