## create variables
income <- 50000
expense <- 30000
saving <- income - expense

## remove variables
rm(saving)

## compare values
1 + 1 == 2
2 * 2 <= 4
5 >= 10 
5 - 3 != 3
10 < 9
20 > 9

## compare texts/ character
"Hello" == "hello"
"Folk" == "Folk"
'Mameaw' == 'Mameaw'

# Data Types

## numeric
age <- 22
print(age)
class(age) # check data type

## character
my_name <- "Folk"
my_university <- 'Kmitl'
print(my_name)
print(my_university)
class(my_name); class(my_university)

## logical
result <- 1 + 1 == 2
print(result)
class(result)

## factor
animals <- c("dog", "cat", "panda", "pig", "panda", "elephant")
print(animals)
class(animals)

animals <- factor(animals)
print(animals)
class(animals)

## date/time
time_now <- Sys.time()
class(time_now)

# Convert Data Types

## main functions
## as.numeric()
## as.character()
## as.logical()

x <- 100
class(x)

char_x <- as.character(x)
char_x
num_x <- as.numeric(char_x)
num_x

## logical: TRUE(1)/FALSE(0)
as.logical(0)
as.logical(1)
as.numeric(TRUE)
as.numeric(FALSE)

## Vector -- การสร้างชุดข้อมูลที่เรียงต่อกัน และเก็บข้อมูลได้แค่ 1 ประเภทเท่านั้น
1:10
20:3

## sequence generation
seq(from = 1, to = 100, by = 5)

## help("name functions")  
help("seq")

## function c
friends <- c("Folk", "Panda", "Elephant")
age <- c(22, 23, 24)
is_male <- c(TRUE, FALSE, TRUE)

## Matrix
x <- 1:25
length(x)
dim(x) <- c(5,5) # การสร้าง matrix จาก dim

m1 <- matrix(1:25, ncol = 5) # การสร้าง matrix จาก matrix function
m2 <- matrix(1:6, ncol = 3, nrow = 2, byrow = T) 

## element wise computation
m2 + 100
m2 * 4

## List -เก็บข้อมูลได้หลายชนิด
my_name <- "Folk"
my_pet <- c("cat", "dog", "panda")
m1 <- matrix(1:20, ncol = 5)
mameaw_is_cute <- TRUE

my_list <- list(item1 = my_name,
                item2 = my_pet,
                item3 = m1,
                item4 = mameaw_is_cute)
my_list$item1
my_list$item2

## Data Frame

friends <- c("Folk", "Mameaw", "Soobin", "Yeonjun", "Beomgyu")

ages <- c(22, 23, 23, 24, 22)

locations <- c("Bangkok", "Phuket", "Sangnok-gu", "Seoul", "Daegu")

anime_lover <- c(TRUE, TRUE, TRUE, FALSE, FALSE)

## 1 create data frame from list
my_list <- list(friends = friends,
                ages = ages,
                locations = locations,
                anime = anime_lover)
data.frame(my_list)


## 2 create data frame from data.frame
df <- data.frame(friends,
                 ages,
                 locations,
                 anime_lover)

View(df)
