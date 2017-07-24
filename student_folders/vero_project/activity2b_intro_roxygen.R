#' Linear regression of RIKZ data

#' ### Preamble

#' # load libraries

remove(list=ls())

#' ### Step 1. Load data

load(file="data/processed_data/rikz.Rdata")

#' ### Step 2. Linear regression
lm.out<-lm(Richness~NAP,data=rikz.data)

#' ### Step 3. Plot relationship
#+ rikz, fig.witdh=8,fig.height=5
plot(rikz.data$NAP,rikz.data$Richness)
abline(lm.out)

#' Footer
#' 
#' Session info

devtools::session_info()

#' ezspin("student_folders/vero_project/activity2b_intro_roxygen.R",out_dir = "student_folders/vero_project/reports",fig_dir="figures", keep_md = F)

