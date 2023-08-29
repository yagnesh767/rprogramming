# Load the built-in dataset
data(airquality)

# Check if it's a data frame
is_data_frame <- is.data.frame(airquality)
print(paste("Is airquality a data frame?", is_data_frame))

# Order the data frame by the first and second column
ordered_airquality <- airquality[order(airquality$Temp, airquality$Month), ]

# Remove the 'Solar.R' and 'Wind' variables
airquality_subset <- ordered_airquality[, !(names(ordered_airquality) %in% c("Solar.R", "Wind"))]

# Display the resulting data frame
print(airquality_subset)
