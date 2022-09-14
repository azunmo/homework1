# Part 1
# Q1.1
# It's because the dataset is incomplete. Some values for the "positive" column
# (which is supposedly the cumulative number of positive tests) are zero for 
# some countries and are thus unreliable for total status. For example, there 
# were no entries for Myanmar on May 31st, 2020.

# Q1.2
n <- 1:100
n
x <- 100*(n^2)
y <- 2^n
x > y
# the smallest value of n = 14

# Q1.3
# Memory usage, RAM usage, CPU, Storage system


# Part 2
# Q2.1.
# These two data sets present the points of interests in Boston within each 
# business category along with their addresses, postal codes, etc.

# Q2.2.
library(dplyr)

brand_info <- read.csv(file.choose())
View(brand_info)

your_data <- read.csv(file.choose())
View(your_data)

your_data_obs <-your_data %>%
  count(top_category)
View(your_data_obs)

brand_info_obs <-brand_info %>%
  count(top_category)
View(brand_info_obs)

# There is a big difference in observations for the top_category "Lessors
# of Real Estate". 

# Q2.3. 
your_data_POI <-your_data %>%
  count(postal_code)
View(your_data_POI)
#Postal code 2135 has the largest number of POIs.

# Q2.4.
# I would group by the same area - longitude, latitude, etc and assign them 
# as one zone, then add a new column to the dataset.

# Q2.5.
top_catg_Naics <- your_data %>%
  group_by(top_category, naics_code) %>%
  count()
View(top_catg_Naics)
# top_category is the label associated with the first 4 digits of the POI’s 
# NAICS category. naics_code is the code that describes the business.

# Q2.6.
your_data_obs <-your_data %>%
  count(top_category)
View(your_data_obs)

brand_info_obs <-brand_info %>%
  count(top_category)
View(brand_info_obs)

# Q2.7.
your_data$naics_code2 <- as.numeric(substr(your_data$naics_code, 1, 2))
top_catg_Naics <- your_data %>%
  count(naics_code2)
View(top_catg_Naics) 

# Q2.8.
# The number of POIs in the bottom eight are the only ones under 100
# so we might need to eliminate these industries in the research analysis.


