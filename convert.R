#install.packages('foreign')
library(foreign)
df = read.spss('NHANES2012C.sav')
save(df, file='data.Rda')
