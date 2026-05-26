# In this script, I will prep the data for mapping by using the R package 
# 'tidygeocoder'.

library(tidyverse)
library(tidygeocoder)

buildings <- read.csv2("data/raw_listed_buildings.csv")
buildings_map <- buildings %>% 
  mutate(full_address = paste0(Adresse, ", ", Kommune, ", Danmark"))

buildings_geocoded <- buildings_map %>%
  geocode(address = full_address, method = 'osm', lat = latitude , long = longitude)

write_excel_csv2(buildings_geocoded, "data/listed_buildings_geocoded.csv")


