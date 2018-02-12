library(plyr)
library(dplyr)
library(dbplyr)
library(tidyverse)
library(data.table)

#Use a part of each company name to target misspelled Company names and standardize
refine_original$company[refine_original$company %like% "ps"] <- "phillips"
refine_original$company[refine_original$company %like% "pS"] <- "phillips"
refine_original$company[7:13] <- "akzo"
refine_original$company[refine_original$company %like% "er"] <- "unilever"
refine_original$company[refine_original$company %like% "ten"] <- "van houten"
View(refine_original)

#Separate Product code/number into two columns
library(tidyr)
columns_fixed <- separate(refine_original, "Product code / number", c("product code", "product number"))

#Add a new column for product Category, first by copying "product code".
product_category <- mutate(columns_fixed, category = columns_fixed$`product code`)

#Then change the one-letter code to the correct category
product_category$category[product_category$category == "p"] <- "Smartphone"
product_category$category[product_category$category == "x"] <- "Laptop"
product_category$category[product_category$category == "v"] <- "TV"
product_category$category[product_category$category == "q"] <- "Tablet"

# Concatenate the three address columns into "full_address" column
geocode <- product_category %>% unite(full_address, address, city, country, sep = ", ")

# Make 4 duplicate columns of company, in order to create binary variables
company_columns <- geocode %>% 
+ mutate(company_philips = geocode$company) %>%
+ mutate(company_unilever = geocode$company) %>%
+ mutate(company_akzo = geocode$company) %>%
+ mutate(company_van_houten = geocode$company)

# Convert new column values to binary
company_columns <- company_columns %>% mutate(company_philips = factor(ifelse(company_philips == "phillips", "1", "0")))
company_columns <- company_columns %>% mutate(company_unilever = factor(ifelse(company_unilever == "unilever", "1", "0")))
company_columns <- company_columns %>% mutate(company_van_houten = factor(ifelse(company_van_houten == "van houten", "1", "0")))
company_columns <- company_columns %>% mutate(company_akzo = factor(ifelse(company_akzo == "akzo", "1", "0")))
