library(readr)
library(dplyr)

# importing the data 
stroop_data_1_ <- read_csv("~/Master DS/DS510/Critical Thinking/CT4/stroop_data _1_.csv")
# measures of central tendency and variability
summary(stroop_data_1_)
var(stroop_data_1_)
sqrt(var(stroop_data_1_)) 

# t test  
t.test(stroop_data_1_$Congruent,stroop_data_1_$Incongruent, paired = TRUE)

# plot the boxplot 
test_stroop <- mutate(test_stroop, diff = test_stroop$Congruent - test_stroop$Incongruent)
boxplot(test_stroop)