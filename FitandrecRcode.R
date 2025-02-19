library(readxl)
Fitness_and_Recreation_Survey_Responses_ <- read_excel("C:/Users/Dospe/Downloads/Fitness and Recreation Survey (Responses).xlsx", 
                                                         +     col_types = c("numeric", "text", "skip", 
                                                                             +         "skip", "numeric", "text", "text", 
                                                                             +         "text", "text", "skip"))
View(Fitness_and_Recreation_Survey_Responses_)

#histogram for favorite activity

#checking the class
class(Fitness_and_Recreation_Survey_Responses_$`Which one do you like doing the most?`)
#changing the class from factor to numeric to create a histogram 
Fitness_and_Recreation_Survey_Responses_$`Which one do you like doing the most?` <- as.numeric(Fitness_and_Recreation_Survey_Responses_$`Which one do you like doing the most?`)
#checking the class again to make sure it changes correctly
class(Fitness_and_Recreation_Survey_Responses_$`Which one do you like doing the most?`)
#creating the histogram
hist(Fitness_and_Recreation_Survey_Responses_$`Which one do you like doing the most?`, xlab = "Activities", main = "Favorite Activities")


#histogram most popular time of day

#checking the class
class(Fitness_and_Recreation_Survey_Responses_$`What time of day do you like going to the Rec center the most?`)
#creating histogram
hist(Fitness_and_Recreation_Survey_Responses_$`What time of day do you like going to the Rec center the most?`, xlab = "Time of Day", main = "Busy Times")


#histogram for average age

#checking the class
class(Fitness_and_Recreation_Survey_Responses_$Age)
#creating histogram
hist(Fitness_and_Recreation_Survey_Responses_$Age,xlab = "Age Ranges", main = "Patrons Ages")