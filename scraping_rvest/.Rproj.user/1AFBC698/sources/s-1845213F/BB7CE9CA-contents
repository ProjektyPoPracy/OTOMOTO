
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


parameters.table <- xml2::read_html(offer.URL) %>%
  rvest::html_node(xpath = "//div[@id='parameters']") 


offer.id <- xml2::read_html(offer.URL) %>%
  rvest::html_nodes(xpath = "//div[@class='offer-content__metabar']/div[@class='offer-meta']/span[@class='offer-meta__item']/span[@class='offer-meta__value']") %>%
  rvest::html_text()
offer.id



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
  gsub(pattern = "\\s{2,}", replacement = "", x = .)



description













 
