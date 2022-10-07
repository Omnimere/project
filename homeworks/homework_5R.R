library(tidyverse)

data <- read.csv("/cloud/project/projects/My Data/simulated_data_pps_data.csv")

data_filtering <- function(dateset = data){
     Clean <- data %>% 
         drop_na()
     if (sum(is.na(data)) == 0){
         return(Clean)
     } else {
         print("NAs still present!")
      }
} 

Plot <- function(dataset = data_filtering){
  histogram <- ggplot(data = data, mapping = aes(x = Max.Pairwise.Difference.Excluding.Ambiguous)) + geom_histogram()
  ggsave("plot.png", final_plot)
  return(histogram)
}