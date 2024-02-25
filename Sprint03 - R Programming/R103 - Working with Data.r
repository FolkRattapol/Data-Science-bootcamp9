# install packages
install.packages(c("readr", 
                   "readxl", 
                   "googlesheets4",
                   "jsonlite",
                   "dplyr",
                   "sqldf",
                   "RSQLite"))

# load library
library(readr)
library(readxl)
library(googlesheets4)
library(jsonlite)
library(dplyr)
library(sqldf)
library(RSQLite)

student <- read_table("student.txt")

student2 <- read_csv("student.csv")

result <- list()

for (i in 1:3) {
  result[[i]] <- read_excel("students.xlsx", sheet=i)
}

result[[1]]
result[[2]]
result[[3]]

gs4_deauth()
url <- "https://docs.google.com/spreadsheets/d/1Sg0ZjO6NRdjkqWARAafeBqN4O4Rr5ItYQd3z2zrAnLI/edit?usp=sharing"
df <- read_sheet(url, sheet="students")

library(jsonlite)

txt <- data.frame(fromJSON("tomorrowbytogether.json"))

View(txt)

library(dplyr)
library(readxl)

# read excel file
econ <- read_excel("students.xlsx", sheet=1)
business <- read_excel("students.xlsx", sheet=2)
data <- read_excel("students.xlsx", sheet=3)

# bind_rows == SQL UNION ALL
list_df <- list(econ, business, data)
full_df <- bind_rows(list_df)

# loop
list_df2 <- list()

for (i in 1:3) {
  list_df2[[i]] <- read_excel("students.xlsx",sheet=i)
}
full_df2 <- bind_rows(list_df2)

# bind_cols() != join

df1 <- data.frame(
  id = 1:5,
  name = c("Yeonjun", "Soobin", "Beomgyu", "Yaehyun", "Kai")
)

df2 <- data.frame(
  id = 1:5,
  city = c( rep("BKK",3), rep("LONDON",2)),
  country = c( rep("TH",2), rep("US",3))
)

bind_cols(df1, df2)
left_join(df1, df2, by="id")

# load library sqldf
library(sqldf)
library(readr)

school <- read_csv("school.csv")

sqldf("select * from school;")

sqldf("select avg(student), sum(student) from school;")

sqldf("select school_id, school_name, country from school;")

sql_query <- "select * from school where country = 'USA';"
usa_school <- sqldf(sql_query)

# load library
library(RSQLite)

# connect to SQLite database (.db file)
# 1. open connection
conn <- dbConnect(SQLite(), "chinook.db")

# 2. get data
dbListTables(conn)
dbListFields(conn, "customers")

df <- dbGetQuery(conn, "select * from customers where country = 'USA'")
df2 <- dbGetQuery(conn, "select * from customers where country = 'United Kingdom'")

# 3. close connection
dbDisconnect(conn)

save.image(file = "data.RData")
load(file = "data.RData")

saveRDS(business, file = "business.RDS")
business <- readRDS("business.RDS")

                
