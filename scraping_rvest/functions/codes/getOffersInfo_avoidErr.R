


getOffersInfo_avoidErr <- function(offer.type = "a", startPageNr = 1, stopPageNr = 10, init.df = NULL, output.name = "offers", sleep = 10, timeout = 4000000, n_iter = 100)
{
  
  for(i in seq_len(n_iter))
  {
    tryCatch(
      expr = {
        getOffersInfo(
          offer.type = offer.type, ## Possible values: "a" - all; "n" - new; "u" - used
          startPageNr = startPageNr, ## Page number to start; default 1
          stopPageNr = stopPageNr, ## Page number to stop; default 10; if NULL then running function to last page
          init.df = init.df, ## Declare data frame you have if you want add info about new offers to it
          output.name = output.name, ## An output data frame name. Function create date frame with that name; default "offers"
          sleep = sleep, ## Forced break between scraping next offer pages; default 10; do not overload the website with your activity
          timeout = timeout ## Time required to interrupt the connection. Too low value should cause errors.
        )
      },
      error = function(e)
      {
        message("An error has occured. I am restarting the function.")
      }
    )
  }
  
  return(invisible())
  
}
