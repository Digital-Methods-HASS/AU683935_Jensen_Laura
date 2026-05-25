# Portfolio 3: Mapping Danish Market Towns (Købstæder) with Leaflet
This folder contains my solutions for portfolio assignment 3, the goal of which was to harvest or create a custom digital dataset and display it on an interactive map using the `leaflet` package. I chose to map Danish market towns (*købstæder*), which historically held royal monopolies on trade and crafts until those privileges were mostly repealed in 1857.
## About the data
* **Data Sourcing:** Because there wasn't a single pre-made spreadsheet available, I manually created and curated this dataset. I collected the list of towns and the historical years they were granted status by cross-referencing public articles on **Lex.dk** (Den Store Danske) and **Wikipedia**. I typed up the dataset in a Google Sheet and used the `googlesheets4` package with `gs4_deauth()` to read the data into R.
## Packages Used
* `leaflet`
* `tidyverse`
* `googlesheets4`
* `htmlwidgets`
