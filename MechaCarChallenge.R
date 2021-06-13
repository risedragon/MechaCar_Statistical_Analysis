# Deliverable 1
library(dplyr)
mechacar_mpg <- read.csv("MechaCar_mpg.csv")
lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_mpg)
summary(lm)

# Deliverable 2
suspension_coil <- read.csv("Suspension_Coil.csv")
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Deliverable 3
t.test(suspension_coil$PSI, mu=1500)

lot1 <- subset(suspension_coil,Manufacturing_Lot=="Lot1")
t.test(lot1$PSI,mu=1500)

lot2 <- subset(suspension_coil,Manufacturing_Lot=="Lot2")
t.test(lot2$PSI,mu=1500)

lot3 <- subset(suspension_coil,Manufacturing_Lot=="Lot3")
t.test(lot3$PSI,mu=1500)


       