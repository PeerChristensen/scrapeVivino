library(rvest)
library(tidyverse)


url <- "https://www.vivino.com"
url <- "https://www.vivino.com/explore?e=eJzLLbI11jNVy83MszVQy02ssDUyMFBLrrR18VZLBhLeagW2hmrpabZliUWZqSWJOWq5ybZq-UlAbJuSWpysVl4SHWtrCADsIhXO"

d <- read_html(url)
d %>% html_nodes("div") %>% html_nodes(xpath = '//*[contains(concat( " ", @class, " " ), concat( " ", "explorerPage__results--3wqLw", " " ))]')


xp <- '//*[contains(concat( " ", @class, " " ), concat( " ", "wineCard__wineCard--2DJJJ", " " )) and (((count(preceding-sibling::*) + 1) = 1) and parent::*)]'


d <- read_html("techstars.html")
d %>% html_nodes("div") %>% html_nodes(xpath = xp) %>% html_attrs()

url <- "https://profile.codersrank.io/leaderboard?country=Denmark&technology=R"

url %>% read_html() %>% html_nodes("div button")

//*[contains(concat( " ", @class, " " ), concat( " ", "explorerPage__results--3wqLw", " " ))]


url <- "https://www.vivino.com/search/wines?q=a"

url %>% read_html() %>% html_nodes(".wine-price-value")
