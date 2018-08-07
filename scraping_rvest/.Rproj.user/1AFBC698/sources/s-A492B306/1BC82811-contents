
funList <- list.files("./functions/codes/")
for(f in funList)
{
  source(file = paste0("./functions/codes/", f))
}; rm(f, funList)


getOffersInfo(
  offer.type = "u", ## Possible values: "a" - all; "n" - new; "u" - used
  startPageNr = 1, ## Page number to start; default 1
  stopPageNr = 10, ## Page number to stop; default 10; if NULL then running function to last page
  init.df = "offers", ## Declare data frame as a character you've already had if you want add info about new offers to it
  output.name = "offers", ## An output data frame name. Function create date frame with that name; default "offers"
  sleep = 5, ## Forced break between scraping next offer pages; default 10; do not overload the website with your activity
  timeout = 4000000 ## Time required to interrupt the connection. Too low value should cause errors.
)
nrow(offers)
length(unique(offers$Id))
# [1] 8297
# [1] 122

## save(offers, file = "./data/offers.RData")
