# Portfolio 3: Interactive Maps
This folder contains my solutions for portfolio assignment 3, the goal of which was to harvest or create a custom digital dataset and display it on an interactive map using the `leaflet` package. I chose to map Danish market towns (*købstæder*) and the years they were granted status as market towns.
## About the data
* **Data Sourcing:** Because there wasn't a pre-made spreadsheet available, I manually created this dataset. I collected the list of towns and the years they were granted status by cross-referencing public articles on **Lex.dk** (Den Store Danske) and **Wikipedia**. I typed up the dataset in a Google Sheet and used the `googlesheets4` package with `gs4_deauth()` to read the data into R.
## Packages Used
* `leaflet`
* `tidyverse`
* `googlesheets4`
* `htmlwidgets`
