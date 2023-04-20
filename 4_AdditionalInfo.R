setwd("C:/Users/meule01a/OneDrive - Sanquin/A3 Project FINDEM (OD)")
library(tidyverse)       
library(haven)           # inporting SPSS data files
library(furniture)       # nice tables of descriptives
library(corrplot)        # visualize correlations
library(GGally)          # extensions to ggplot2
library(sjlabelled)      # work with SPSS data
library(lubridate)       # dates
library(lme4)            # mixed models
library(car) 

data_raw <- read_sav("01 Data/Donaties_4meetweken_plus.sav") #using my project folder structure, adapt to yours.

#for descriptives, we need to know the total number of donors that did N and V donations between these dates:
summary(data_raw$Donatiedatum)

donaties <- readRDS("C:/Users/meule01a/OneDrive - Sanquin/Data/2023-01-13/alledonaties_2008_2022.rds")
donaties <- subset(donaties, donaties$Donatiedatum >= "2017-09-11" )
donaties <- subset(donaties, donaties$Donatiedatum <= "2020-11-27" )
donaties <- subset(donaties, donaties$Donatiesoortcode == "Nieuwe donorkeuring" | donaties$Donatiesoortcode == "Volbloed")

#aantal donaties:
length(donaties$KeyID)

#aantal donors:
length(unique(donaties$KeyID))

#donatiecentrum
donaties$Donatiecentrumcode <- droplevels(donaties$Donatiecentrumcode)

steps <- subset(data_raw, select = c("stap", "cluster"))
steps <- steps[!duplicated(steps), ]
clusters <- read.csv("01 Data/ALlevels2.csv", sep = ";")
colnames(clusters)[which(names(clusters) == "ï..Donatiecentrum")] <- "Donatiecentrumcode"

donaties2 <- merge(donaties, clusters, all.x = T, by = "Donatiecentrumcode")
donaties3 <- merge(donaties2, steps, all.x=T, by.x="Cluster", by.y="cluster")

stap1 <- subset(donaties3, donaties3$stap==1)
stap21 <- subset(donaties3, donaties3$stap==2.1)
stap22 <- subset(donaties3, donaties3$stap==2.2)
stap31 <- subset(donaties3, donaties3$stap==3.1)
stap32 <- subset(donaties3, donaties3$stap==3.2)
stap4 <- subset(donaties3, donaties3$stap==4)

stap1$periode <- 0
stap1$periode[stap1$Donatiedatum<"2017-12-01"]<-1
stap1$periode[stap1$Donatiedatum>="2017-12-01" & stap1$Donatiedatum<"2018-06-01"]<-2
stap1$periode[stap1$Donatiedatum>="2018-06-01" & stap1$Donatiedatum<"2018-11-01"]<-3
stap1$periode[stap1$Donatiedatum>="2018-11-01" & stap1$Donatiedatum<"2019-04-01"]<-4
stap1$periode[stap1$Donatiedatum>="2019-04-01" & stap1$Donatiedatum<"2019-11-01"]<-5
stap1$periode[stap1$Donatiedatum>="2019-11-01" & stap1$Donatiedatum<"2019-12-01"]<-6
stap1$periode[stap1$Donatiedatum>="2019-12-01" & stap1$Donatiedatum<"2020-12-01"]<-7


stap21$periode <- 0
stap21$periode[stap21$Donatiedatum<"2017-12-01"]<-1
stap21$periode[stap21$Donatiedatum>="2017-12-01" & stap21$Donatiedatum<"2018-06-01"]<-2
stap21$periode[stap21$Donatiedatum>="2018-06-01" & stap21$Donatiedatum<"2018-11-01"]<-3
stap21$periode[stap21$Donatiedatum>="2018-11-01" & stap21$Donatiedatum<"2019-04-01"]<-4
stap21$periode[stap21$Donatiedatum>="2019-04-01" & stap21$Donatiedatum<"2019-11-01"]<-5
stap21$periode[stap21$Donatiedatum>="2019-11-01" & stap21$Donatiedatum<"2019-12-01"]<-6
stap21$periode[stap21$Donatiedatum>="2019-12-01" & stap21$Donatiedatum<"2020-12-01"]<-7

stap22$periode <- 0
stap22$periode[stap22$Donatiedatum<"2017-12-01"]<-1
stap22$periode[stap22$Donatiedatum>="2017-12-01" & stap22$Donatiedatum<"2018-06-01"]<-2
stap22$periode[stap22$Donatiedatum>="2018-06-01" & stap22$Donatiedatum<"2018-11-01"]<-3
stap22$periode[stap22$Donatiedatum>="2018-11-01" & stap22$Donatiedatum<"2019-04-01"]<-4
stap22$periode[stap22$Donatiedatum>="2019-04-01" & stap22$Donatiedatum<"2019-11-01"]<-5
stap22$periode[stap22$Donatiedatum>="2019-11-01" & stap22$Donatiedatum<"2019-12-01"]<-6
stap22$periode[stap22$Donatiedatum>="2019-12-01" & stap22$Donatiedatum<"2020-12-01"]<-7
table(stap22$periode)

stap31$periode <- 0
stap31$periode[stap31$Donatiedatum<"2017-12-01"]<-1
stap31$periode[stap31$Donatiedatum>="2017-12-01" & stap31$Donatiedatum<"2018-06-01"]<-2
stap31$periode[stap31$Donatiedatum>="2018-06-01" & stap31$Donatiedatum<"2018-11-01"]<-3
stap31$periode[stap31$Donatiedatum>="2018-11-01" & stap31$Donatiedatum<"2019-04-01"]<-4
stap31$periode[stap31$Donatiedatum>="2019-04-01" & stap31$Donatiedatum<"2019-11-01"]<-5
stap31$periode[stap31$Donatiedatum>="2019-11-01" & stap31$Donatiedatum<"2019-12-01"]<-6
stap31$periode[stap31$Donatiedatum>="2019-12-01" & stap31$Donatiedatum<"2020-12-01"]<-7
table(stap31$periode)

stap32$periode <- 0
stap32$periode[stap32$Donatiedatum<"2017-12-01"]<-1
stap32$periode[stap32$Donatiedatum>="2017-12-01" & stap32$Donatiedatum<"2018-06-01"]<-2
stap32$periode[stap32$Donatiedatum>="2018-06-01" & stap32$Donatiedatum<"2018-11-01"]<-3
stap32$periode[stap32$Donatiedatum>="2018-11-01" & stap32$Donatiedatum<"2019-04-01"]<-4
stap32$periode[stap32$Donatiedatum>="2019-04-01" & stap32$Donatiedatum<"2019-11-01"]<-5
stap32$periode[stap32$Donatiedatum>="2019-11-01" & stap32$Donatiedatum<"2019-12-01"]<-6
stap32$periode[stap32$Donatiedatum>="2019-12-01" & stap32$Donatiedatum<"2020-12-01"]<-7
table(stap32$periode)

stap4$periode <- 0
stap4$periode[stap4$Donatiedatum<"2017-12-01"]<-1
stap4$periode[stap4$Donatiedatum>="2017-12-01" & stap4$Donatiedatum<"2018-06-01"]<-2
stap4$periode[stap4$Donatiedatum>="2018-06-01" & stap4$Donatiedatum<"2018-11-01"]<-3
stap4$periode[stap4$Donatiedatum>="2018-11-01" & stap4$Donatiedatum<"2019-04-01"]<-4
stap4$periode[stap4$Donatiedatum>="2019-04-01" & stap4$Donatiedatum<"2019-11-01"]<-5
stap4$periode[stap4$Donatiedatum>="2019-11-01" & stap4$Donatiedatum<"2019-12-01"]<-6
stap4$periode[stap4$Donatiedatum>="2019-12-01" & stap4$Donatiedatum<"2020-12-01"]<-7
table(stap4$periode)
