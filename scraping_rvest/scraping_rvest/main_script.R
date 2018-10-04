
version
# platform       x86_64-pc-linux-gnu
# arch           x86_64
# os             linux-gnu
# system         x86_64, linux-gnu
# status
# major          3
# minor          4.4
# year           2018
# month          03
# day            15
# svn rev        74408
# language       R
# version.string R version 3.4.4 (2018-03-15)
# nickname       Someone to Lean On

## Not working :( ====================================
## Please use script from file main_script_avoidErr.R

funList <- list.files("./functions/codes/")
for(f in funList)
{
  source(file = paste0("./functions/codes/", f))
}; rm(f, funList)

# load("data/offers.RData")

getOffersInfo(
  offer.type = "u", ## Possible values: "a" - all; "n" - new; "u" - used
  startPageNr = 1, ## Page number to start; default 1
  stopPageNr = 2, ## Page number to stop; default 10; if NULL then running function to last page
  init.df = NULL, ## Declare data frame as a character you've already had if you want add info about new offers to it
  output.name = "offers", ## An output data frame name. Function create date frame with that name; default "offers"
  sleep = 5, ## Forced break between scraping next offer pages; default 10; do not overload the website with your activity
  timeout = 4000000 ## Time required to interrupt the connection. Too low value should cause errors.
)
nrow(offers)
length(unique(offers$Id))

## save(offers, file = "./data/offers.RData")
