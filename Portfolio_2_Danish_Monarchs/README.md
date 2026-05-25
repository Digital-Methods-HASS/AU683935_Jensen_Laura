# Assignment 1: Working with the Danish Kings Dataset in RStudio

## What this assignment does
This is the first introductory assignment where I learned how to set up an `.Rproj` workspace, load data using the `tidyverse` toolkit, and practice using `dplyr` pipes (`%>%`) to do basic calculations and plots.

## Steps and Data Fixes
* **Finding the Separator:** I checked the `kings.csv` file in a plain text editor and found that the data columns are separated by semicolons (`;`). Because of this, `read_csv()` loaded all 11 columns correctly, while `read_csv2()` bunched everything into one column.
* **Fixing Missing Data:** The raw dataset used the text `"NULL"` for missing values. I used `na_if()` to turn these into proper `NA` values so R could recognize them.
* **Coercing Types:** I converted the `Start_year` and `End_year` columns to numeric values using `as.numeric()` so I could calculate the total reign `Duration` for each king.
* **Fixing a Filter Warning:** When calculating the average reign, using the tidyverse `summarise()` function returned a tibble, which caused an error when filtering. I fixed this by using the base R vector approach (`mean(kings$Duration, na.rm = TRUE)`) which gave a clean number value of 19.58 years.
* **Leap Year Calculations:** For the top 3 longest-ruling kings, I multiplied the duration by 365 days and added a leap year calculation using integer division (`Duration %/% 4`) to find the exact number of days they ruled.

## Final Plot Trend
At the end of the script, I made a `ggplot` scatter plot with a trendline (`geom_smooth()`). The plot shows that the duration of reigns for Danish monarchs generally increases over time, which points toward fewer violent overthrows and better political stability as history progressed.

## Packages Used
* `tidyverse`
* `dplyr`
* `ggplot2`
