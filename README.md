# R: Handling Missing Values (NA) with `complete.cases()`

This example demonstrates a common, subtle error when using `complete.cases()` in R to handle missing data.  The function `complete.cases()` only returns `TRUE` if *all* columns for a given row are non-missing.  Improper use can lead to unexpected results.

The provided code shows the correct and incorrect ways to use `complete.cases()` to remove rows containing missing values, comparing it to `na.omit()` which provides the same functionality.

### Incorrect Use

The `complete.cases()` function is used incorrectly and can lead to unexpected omissions if you have more columns with NA than just the ones handled.

### Correct Use

The corrected code utilizes `na.omit()` or directly uses `rowSums` to remove rows containing any NA values, providing a more robust solution for handling missing data in data frames.