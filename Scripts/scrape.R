library(rvest)
# General-purpose data wrangling
library(tidyverse)  

# Parsing of HTML/XML files  
library(rvest)    

# String manipulation
library(stringr)   

# Verbose regular expressions
library(rebus)   

#Specifying the url for desired website to be scrapped
url <- 'view-source:http://www.192.com/atoz/business/norfolk/farming-arable/'

html <- read_html(url)

#get the number of pages
get_last_page <- function(html){
  
  pages_data <- html %>% 
    # The '.' indicates the class
    html_nodes('.mapContent') %>% 
    # Extract the raw text as a list
    html_text()                   
  
  # The second to last of the buttons is the one
  pages_data[(length(pages_data))] %>%            
    # Take the raw string
    unname() %>%                                     
    # Convert to number
    as.numeric()                                     
}

get_last_page(html)





map_df(1:10

#Reading the HTML code from the website
webpage <- read_html(url)

data_names_html <- html_nodes(webpage,'.name')

#Converting the ranking data to text
data_names_text <- html_text(data_names_html)

#Let's have a look at the rankings
data_names_text