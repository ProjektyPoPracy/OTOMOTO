
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


options(stringsAsFactors = FALSE)
library(tidyverse)
library(xml2)

URL.core <- "https://www.otomoto.pl/osobowe/uzywane/"
URL.suffix <- "?page="
pageNumber <- 1

URL <- paste0(URL.core, URL.suffix, pageNumber)



offer.URLs <- xml2::read_html(URL) %>%
  rvest::html_nodes(xpath = "//div/h2/a[@class='offer-title__link']") %>%
  rvest::html_attr(name = "href")

offer.URL <- offer.URLs[20]
offer.URL <- "https://www.otomoto.pl/oferta/mercedes-benz-w124-1984-1993-coupe-300ce-ID6AmpFl.html#3471ec01f4"

p <- xml2::read_html(offer.URL)
x <- getOfferPrice(p)
x

offer.id <- xml2::read_html(offer.URL) %>%
  rvest::html_nodes(xpath = "//div[@class='offer-content__metabar']/div[@class='offer-meta']/span[@class='offer-meta__item']/span[@class='offer-meta__value']") %>%
  rvest::html_text()
offer.id


parameters.table <- xml2::read_html(offer.URL) %>%
  rvest::html_node(xpath = "//div[@id='parameters']") 


labels <- parameters.table %>%
  rvest::html_nodes(xpath = "//ul/li/span[@class='offer-params__label']") %>%
  rvest::html_text() %>%
  gsub(pattern = " ", replacement = ".", x = .)

values <- parameters.table %>%
  rvest::html_nodes(xpath = "//ul/li/div[@class='offer-params__value']") %>%
  rvest::html_text() %>%
  gsub(pattern = "\\s{2,}", replacement = "", x = .)

labels
values
length(labels)==length(values)


equipment <- xml2::read_html(offer.URL) %>%
  rvest::html_nodes(xpath = "//div[@class='offer-features__row']/ul[@class='offer-features__list']/li[@class='offer-features__item']") %>%
  rvest::html_text() %>%
  gsub(pattern = "\\s{2,}", replacement = "", x = .)

equipment


description <- xml2::read_html(offer.URL) %>%
  rvest::html_nodes(xpath = "//div[@id='description']/div") %>%
  rvest::html_text() %>%
  gsub(pattern = "\\n", replacement = "", x = .) %>%
  gsub(pattern = "\\r", replacement = "", x = .) %>%
  gsub(pattern = "\\t", replacement = "", x = .) %>%
  gsub(pattern = "\\\"", replacement = "'", x = .) %>%
  gsub(pattern = "^\\s{2,}", replacement = "", x = .) %>%
  gsub(pattern = "\\s{2,}$", replacement = "", x = .) %>%
  gsub(pattern = "\\s{2,}", replacement = " ", x = .)

description


## lokalizacja

l <- p %>%
  rvest::html_node(xpath = "//div[@class='offer-content__aside']/div[@class='seller-box']/div[@class='seller-box__seller-address']/span[@class='seller-box__seller-address__label']") %>%
  rvest::html_text() %>%
  gsub(pattern = "\\s{2,}", replacement = "", x = .)
l

## forma prawna sprzedawcy
vendor <- p %>%
  rvest::html_node(xpath = "//div[@class='offer-content__aside']/div[@class='seller-box']/div[@class='seller-box__seller-info']/small[@class='seller-box__seller-type']") %>%
  rvest::html_text() %>%
  gsub(pattern = "\\s{2,}", replacement = "", x = .)
vendor



## Połączenie informacji:
offer.id
length(labels)==length(values)
x
l
vendor
labels
values
equipment
description

n <- length(labels) + length(equipment) + length(c(description, offer.id[1], vendor, l, x))
n_equipment <- length(equipment)

one.offer <- data.frame(
  Id = rep(offer.id[2], n),
  Label = c(labels, equipment, "Opis", "Data.oferty", "Sprzedawca", "Lokalizacja", names(x)),
  Value = c(values, rep(1, n_equipment), description, offer.id[1], vendor, l, x)
)
one.offer











 
