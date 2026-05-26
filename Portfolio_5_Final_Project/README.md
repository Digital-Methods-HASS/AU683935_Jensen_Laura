# Final Exam Portfolio: Spatial and Temporal Distributions of Danish Listed Buildings

## Project Overview
This project aims to analyze and visualize the spatial and temporal distributions of national listed buildings (*fredede bygninger*) across Denmark from 1918 to 2026. 

The project investigates how Danish cultural heritage management practices have evolved over the past century in response to changing cultural values, geopolitical milestones, and legislative revisions.

## Technical Pipeline & Environment
* **Operating System:** macOS Tahoe 26.3.1 (8 GB RAM)
* **Software:** R (desktop version) and RStudio (2026.04.0+526)
* **Key Packages Used:** `tidyverse`, `tidygeocoder`, `ggplot2`, `leaflet`, `leaflet.extras`, `htmltools`, `htmlwidgets`, and `mapview`.

## Data Sourcing & Curation
* **Source Database:** Official municipal heritage registries curated by the Danish Agency for Culture and Palaces (*Slots- og Kulturstyrelsen*).
* **Data Extraction:** I utilized generative AI (Google Gemini) to systematically parse the text-based municipal lists into a unified, clean CSV format containing six initial columns: *Municipality, Address, Building Name, Year of Listing, Year of Construction,* and *Building Description*.
* **Geocoding:** Spatial coordinates (Latitude and Longitude) were generated programmatically using the `tidygeocoder` package based on the parsed addresses. The final dataset was saved as an independent CSV file to eliminate the need for redundant API geocoding calls.
