# The following library is for the dashbaord
library(shiny)
# The following libraries is for data cleaning
library(tidyverse)
library(dplyr)
library(tidyr)
library(readr)
# The folloiwng libraries are for plotting data
library(ggplot2)
library(scales)
# The following libraries are for creating the dashboard
library(shiny)
library(shinydashboard)

data <- read.csv("survey_data.csv", header=TRUE)
recs <- read.csv("recs.csv", header=TRUE)

# =============================Messing with LineGraph Data======================
week_Data <- grocery_data |>
  filter(Store != "") |>
  mutate(
    days = row_number(),  # Create a column with day numbers (1 to 30)
    week = case_when(
      days <= 8 ~ 1,  # Days 1 to 8 assigned to week 1
      days <= 16 ~ 2,  # Days 9 to 16 assigned to week 2
      days <= 24 ~ 3,  # Days 17 to 24 assigned to week 3
      TRUE ~ 4         # Days 25 to 30 assigned to week 4
    )
  )

joined_data <- left_join(wee)
