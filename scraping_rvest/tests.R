
funList <- list.files("./functions/codes/")
for(f in funList)
{
  source(file = paste0("./functions/codes/", f))
}; rm(f, funList)

url <- offer.URLs[runif(1, min = 1, max = 30)]
so <- getSingleOffer(URL = url, sleep = 0)


x <- getOffersInfo()


