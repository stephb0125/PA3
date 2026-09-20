# COP2073C PA3
# Stephanie Johnson
# 09/19/2026
# Assignment three

# creating  data frame
employee_data <- data.frame(
  EmployeeID = c(1001, 1002, 1003, 1004, 1005),
  LastName = c("Smith", "Norris", "Johnson", "Hart", "Owens"),
  Salary = c(45000, 51000, 36000, 39000, 42000),
  stringsAsFactors = FALSE
)

# display the data frame
employee_data

# summary of data frame
summary(employee_data)

# adding the excempt column
# making the vector containing the two possible values
exempt_values <- c("N", "Y")

# using the logical condition salary > 50000
# add 1 so true / false is valid index 2/1
employee_data <- cbind(
  employee_data,
  Exempt = exempt_values[(employee_data$Salary > 50000) + 1]
)

# display updated data frame
employee_data

# extract and display the first two rows
employee_data[1:2, ]

# display structure of the data frame
str(employee_data)

# add the new employee using rbind()
employee_data <- rbind(
  employee_data,
  c(1006, "Rogers", 55000, "Y")
)

# display  final data frame
employee_data


