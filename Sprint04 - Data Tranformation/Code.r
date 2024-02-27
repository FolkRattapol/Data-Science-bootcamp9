## install.packages
## install.packages("dplyr")

## load packages
library(readr)
library(dplyr)

## read csv file into RStudio
imdb <- read.csv("imdb.csv", stringsAsFactors = FALSE) 
View(imdb)

## review data structure
glimpse(imdb)

## print head and tail of data
head(imdb, 10) # ดูข้อมูล 10 แถวบนสุด
tail(imdb, 10) # ดูข้อมูล 10 แถวล่างสุด

## select columns
select(imdb, MOVIE_NAME, RATING)
select(imdb,1,2)

## rename columns
select(imdb, movie_name = MOVIE_NAME, released_year = YEAR)
#select(Table_name, new_name = old_name)

## pipe operator
imdb %>% 
  select(movie_name = MOVIE_NAME, released_year = YEAR) %>%
  head(10)

# load dplyr
library(dplyr)

# select columns
select(mtcars, mpg, wt, hp)
mtcars %>% select(mpg, wt, hp)

## filter data
filter(imdb, SCORE >= 9.0)
imdb %>% filter(SCORE >= 9.0)

names(imdb) <- tolower(names(imdb))

imdb %>%
  select(movie_name, year, score) %>%
  filter(score >= 9.0 & year > 2000) # and operator

imdb %>%
  select(movie_name, length, score) %>%
  filter(score == 8.8 | score == 8.3 | score == 9.0) # or operator

imdb %>%
  select(movie_name, length, score) %>%
  filter(score %in% c(8.8, 8.3, 9.0)) # in operator

## create new columns
imdb %>%
  select(movie_name, score, length) %>%
  mutate(score_group = if_else(score >= 9, "High Rating", "Low Rating"),
         length_group = if_else(length >= 120, "Long Film", "Short Film")) 

imdb %>% 
  select(movie_name, score) %>%
  mutate(score = score + 0.2) %>%
  head(10)\

## arrange data
head(imdb)

imdb %>%
  arrange(length) %>%
  head(10)

imdb %>%
  arrange(desc(length)) %>% # descending order
  head(10)

imdb %>%
  arrange(rating, desc(length))

## summarise and group_by 
imdb %>%
  filter(rating != "") %>%
  group_by(rating) %>%
  summarise(mean_length = mean(length),
            sum_length = sum(length), 
            sd_length = sd(length),
            min_length = min(length),
            max_length = max(length),
            n = n()) # n() การนับจำนวน row ทั้งที่มีใน dataframe

## join data
favorite_films <- data.frame(id = c(3,14,25,46,58))

favorite_films %>% 
  inner_join(imdb, by = c("id" = "no"))
#inner_join(name_table_refer, by = c("foreign_key" = "primary_key"))

## write csv file (export result)
imdb_prep <- imdb %>%
  select(movie_name, released_year = year, rating, length, score) %>%
  filter(rating == "R" & released_year > 2000)

## export file
write.csv(imdb_prep,"imdb_prep.csv", row.names = FALSE)

# install.packages("tidyverse")
# dplyr tidyr ggplot2
library(tidyverse)

# data.frame vs. tibble

df_tibble <- tibble(id = 1:3, name = c("Folk", "Mameaw", "Soobin"))
data.frame(id = 1:3, name = c("Folk", "Mameaw", "Soobin"))

# convert dataframe to tibble
mtcars
mtcars_tibble <- tibble(mtcars)
# tibble have data type and fit output

## sample_n

set.seed(24)
sample_n(mtcars, size = 8)

sample_frac(mtcars, size = 0.5, replace = T) # replace = TRUE สุ่มตัวอย่างโดยซ้ำกันได้

## slice
mtcars %>%
  slice(1:5)

mtcars %>%
  slice(6:10)

mtcars %>%
  slice(c(2,4,6))

mtcars %>%
  slice(sample(nrow(mtcars),10))
# note : slice() ใช้ดึง rows ที่เราต้องการจาก dataframe / tibble

