# RIKZ Data Loading and Processing

## Preamble
remove(list=ls())

### Step 1. Load data from .csv
rikz.data.1<-read.csv("data/raw_data/RIKZ_1.csv")
rikz.data.2<-read.csv("data/raw_data/RIKZ_2.csv")
rikz.data.3<-read.csv("data/raw_data/RIKZ_3.csv")
rikz.data.4<-read.csv("data/raw_data/RIKZ_4.csv")


### Step 2. Combine datasets together
rikz.data<-rbind(rikz.data.1,
                 rikz.data.2,
                 rikz.data.3,
                 rikz.data.4)

table(rikz.data$week)
str(rikz.data)

### Step 3. Data processing
# convert beach to categorical
rikz.data$Beach<-as.character(rikz.data$Beach)

### Save our processed data

save(rikz.data,file="data/processed_data/rikz.Rdata")
