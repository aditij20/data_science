
# awesome smoking graph

setwd("~/my_homework/ggplot_assignment")

smoking <- read.csv ("training_SyncPatientSmokingStatus.csv")
smoking_status <- read.csv ("SyncSmokingStatus.csv")

smokingtotal <- merge (smoking, smoking_status)

# 4,427 unique patients from 4,940 total rows
# possible future todo: select only most recent
# for each patient.

library(ggplot2)
smoking_plot <- ggplot (data = smokingtotal) +
  aes (x = Description) + geom_bar() +
  coord_flip() + xlab("Frequency")

png("smoking_plot.png", width=800, height=480)
smoking_plot
dev.off()
