

defineNumberOfPagesToScraping <- function(board.page, last.page)
{
  
  pageNumbersList <- getPageNumbersList(page = board.page)
  maximumPageNumber <- chooseMaximumPageNumber(page.numbers = pageNumbersList)
  last.page <- assignNewMaxPageNumber(declared.last.page = last.page, maxPossibleNumber = maximumPageNumber)
  
  return(last.page)
  
}

