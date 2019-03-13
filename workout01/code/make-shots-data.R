---
  title: "make-shots-data"
output: github_document
---
library(dplyr) 
library(tidyverse)
library(caret)
library(magrittr)
setwd("/users/kristawaugh/Documents/Spring19/Stat133/workout01/code")
  
iguodala000 <- read.csv("../data/andre-iguodala.csv", stringsAsFactors = FALSE, sep = ",")
iguodala00 <- iguodala000 %>% mutate(shot_made_flag = recode(shot_made_flag, "y" = "shot_yes", "n" = "shot_no"))
iguodala0 <- mutate(iguodala00, Name = "Andre Iguodala")
iguodala <- mutate(iguodala0, minute = period * 12 + (12 - minutes_remaining))
iguodala


curry000 <- read.csv("../data/stephen-curry.csv", stringsAsFactors = FALSE, sep = ",")
curry00 <- curry000 %>% mutate(shot_made_flag = recode(shot_made_flag, "y" = "shot_yes", "n" = "shot_no"))
curry0 <- mutate(curry00, Name = "Stephen Curry")
curry <- mutate(curry0, minute = period * 12 + (12 - minutes_remaining))
curry



green000 <- read.csv("../data/draymond-green.csv", stringsAsFactors = FALSE, sep = ",")
green00 <- green000 %>% mutate(shot_made_flag = recode(shot_made_flag, "y" = "shot_yes", "n" = "shot_no"))
green0 <- mutate(green00, Name = "Draymond Green")
green <- mutate(green0, minute = period * 12 + (12 - minutes_remaining))
green


durant000 <- read.csv("../data/kevin-durant.csv", stringsAsFactors = FALSE, sep = ",")
durant00 <- green000 %>% mutate(shot_made_flag = recode(shot_made_flag, "y" = "shot_yes", "n" = "shot_no"))
durant0 <- mutate(durant00, Name = "Kevin Durant")
durant <- mutate(durant0, minute = period * 12 + (12 - minutes_remaining))
durant


thompson000 <- read.csv("../data/klay-thompson.csv", stringsAsFactors = FALSE, sep = ",")
thompson00 <- thompson000 %>% mutate(shot_made_flag = recode(shot_made_flag, "y" = "shot_yes", "n" = "shot_no"))
thompson0 <- mutate(thompson00, Name = "Klay Thompson")
thompson <- mutate(thompson0, minute = period * 12 + (12 - minutes_remaining))
thompson

sink(file = "../output/klay-thompson-summary.txt")
summary(thompson)
sink()

sink(file = "../output/kevin-durant-summary.txt")
summary(durant)
sink()

sink(file = "../output/stephen-curry-summary.txt")
summary(curry)
sink()

sink(file = "../output/andre-iguodala-summary.txt")
summary(iguodala)
sink()

sink(file = "../output/draymond-green-summary.txt")
summary(green)
sink()

shots_data <- rbind(thompson, curry, iguodala, durant, green)
shots_data

write.csv(shots_data,'shots_data.csv')

sink(file = "../output/shots-data-summary.txt")
summary(shots_data)
sink()

