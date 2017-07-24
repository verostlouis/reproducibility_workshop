# Linear regression of RIKZ data

### Preamble

# load libraries

remove(list=ls())

### Step 1. Load data

load(file="data/processed_data/rikz.Rdata")

### Step 2. Linear regression
lm.out<-lm(Richness~NAP,data=rikz.data)

### Step 3. Plot relationship
plot(rikz.data$NAP,rikz.data$Richness)
abline(lm.out)
