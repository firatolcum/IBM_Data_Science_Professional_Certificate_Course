# Load Data
library(datasets)
data(mtcars)

# View first 5 rows
head(mtcars, 5)

# Get help
?mtcars

# load ggplot package
library(ggplot2)

# Creatre a scatterplot of displacement and miles per gallon
# Add a Title and Change axis name
ggplot(aes(x = disp, y = mpg), data=mtcars)+geom_point() +
  ggtitle("displacement vs miles per gallon") + labs(x="Displacement", y= "Miles per Gallon")

# Make vs a factor
mtcars$vs <- as.factor(mtcars$vs)

# Create boxplot of the distribution for v-shaped and straigt Engine
ggplot(aes(x = vs, y=mpg), data=mtcars)+geom_boxplot(alpha=0.3) +
       theme(legend.position = "none")

# Create the histogram of weight (Wt)
ggplot(aes(x = wt), data=mtcars) +geom_histogram(binwidth = 0.5)
