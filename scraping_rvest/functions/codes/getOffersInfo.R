
## offer.type = c("a", "n", "u") 
### "a" - all (https://www.otomoto.pl/osobowe/) ;
### "n" - new (https://www.otomoto.pl/osobowe/uzywane/) ;
### "u" - used (https://www.otomoto.pl/osobowe/nowe/)

getOffersInfo <- function(offer.type = "a", startPageNr = 1, stopPageNr = 10, init.df = NULL, output.name = "offers", sleep = 10, timeout = 4000000)
{
  
  loadPackages(pckgs = c("tidyverse", "xml2"))
  options(stringsAsFactors = FALSE, timeout = timeout)
  
  offersInfoOutput <- defineInitialDataFrameWithOfferInfo(init.df = init.df)
  
  url.core <- defineURLcore(offerType = offer.type)
  URL.suffix <- "?page="
  pageNumber <- startPageNr
  boardURL <- paste0(url.core, URL.suffix, pageNumber)
  
  boardPage <- goToPage(URL = boardURL, timeout = timeout)
  numberOfPagesToScraping <- defineNumberOfPagesToScraping(board.page = boardPage, last.page = stopPageNr, timeout = timeout)
  
  ## ----------------------------------------------------------
  for( pageNumber in startPageNr:numberOfPagesToScraping )
  {
    boardURL <- paste0(url.core, URL.suffix, pageNumber)
    boardPage <- goToPage(URL = boardURL, timeout = timeout)
    newOffers <- getOffersInfoFromSingleBoard(page = boardPage, offersTable = offersInfoOutput, sleep = sleep, timeout = timeout)  
    offersInfoOutput <- rbind(offersInfoOutput, newOffers)
    assign(x = output.name, value = offersInfoOutput, envir = globalenv())
  }
  ## ----------------------------------------------------------
  
  return(offersInfoOutput)
  
}











