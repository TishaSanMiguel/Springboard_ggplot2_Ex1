install.packages("ggplot2")
library(tidyverse)
library(ggplot2)

titanic_cleaned <- read_csv("C:/Users/tishas/Desktop/personal/Springboard/exercises/Springboard_ggplot2_Ex1/titanic_cleaned.csv")
titanic_cleaned %>% glimpse

posn.jd <- position_jitterdodge(0.5, 0, 0.6)
ggplot(titanic_cleaned, aes(x = Pclass, y = Age, color = Sex)) +
  geom_point(size = 3, alpha = 0.5, position = posn.jd) +
  facet_grid(. ~ Survived)