```r
# Example illustrating the issue
df <- data.frame(x = c(1, 2, NA, 4), y = c(5, NA, 7, 8))

# Incorrect use of complete.cases
result1 <- df[complete.cases(df),]

# Correct use of complete.cases to handle NA's and remove rows with NA values
result2 <- na.omit(df)

#Another method to handle NAs
result3 <- df[rowSums(is.na(df))==0,]

#Verify that all methods are equivalent
identical(result2, result3) #TRUE
```