library(arules)
transactions <- read.csv("C:\\Users\\aakas\\OneDrive\\Desktop\\DWM\\DWM_R.csv")
transactions <- split(transactions$day_of_week, transactions$day, transactions$month,transactions$year, transactions$itemDescription, transactions$Member_number)
transactions <- as(transactions, "transactions")
rules <- apriori(transactions, parameter=list(support=0.4, confidence=0.8))
inspect(rules)
