####################
# Title: test
# Date Created: 11/07/2024
# Author: Chen Chen
# Purpose: make figures for the longterm wildfire smoke on mortality KPSC project
####################

library(data.table)
library(readxl)
library(ggplot2)
library(cowplot)
library(RColorBrewer)

indir1 <- "C:/Users/valky/OneDrive - UC San Diego/Documents/PostDoc/Tarik_Benmarhnia/Mis/lara_schwarz/long-term-wildfire-mortality"
# indir1 <- "C:/Users/valky/Documents/PostDoc/Tarik_Benmarhnia/Mis/lara_schwarz/long-term-wildfire-mortality"

if (!dir.exists(file.path(indir1, "figures"))) dir.create(file.path(indir1, "figures"))

metrics <- c("mean_wf_pm", "mean_daily_peak_week", "non_zero_day",       
             "weeks_gt_5", "smoke_waves", "non_wf_pm")
names(metrics) <- c("Mean daily wildfire PM2.5",
                    "Mean daily wildfire PM2.5 during peak week",
                    "Number of days with wildfire PM2.5 > 0",
                    "Number of weeks with wildfire PM2.5 > 5",
                    "Number of smoke waves",
                    "Mean daily non-WF PM2.5") ## retiered because of pm2.5
exposure_labels <- c(expression("Mean daily wildfire PM"[2.5]), 
                     expression("Mean daily wildfire PM"[2.5]~"during peak week"),
                     expression("Number of days with wildfire PM"[2.5]~">0"),
                     expression("Number of weeks with wildfire PM"[2.5]~">5"),
                     expression("Number of smoke waves"),
                     expression("Mean daily non-WF"[2.5]))