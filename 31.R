data(airquality)
mean_temp <- sum(airquality$Temp, na.rm = TRUE) / length(airquality$Temp)
cat("Mean Temperature:", mean_temp, "\n")
first_five_rows <- airquality[1:5, ]
print(first_five_rows)
selected_columns <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
print(selected_columns)
coldest_day <- airquality$Date[which.min(airquality$Temp)]
cat("Coldest Day:", coldest_day, "\n")
wind_gt_17_days <- sum(airquality$Wind > 17, na.rm = TRUE)
cat("Number of days with wind speed greater than 17 mph:", wind_gt_17_days, "\n")
