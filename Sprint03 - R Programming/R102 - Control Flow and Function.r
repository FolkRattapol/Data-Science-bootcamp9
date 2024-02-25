## IF
## =IF() in google sheet

score <- 49

if (score >= 90){
  print("Passed")
} else {
  print("Failed")
}

if (score >= 90){
  print("Passed")
} else if (score >= 50){
  print("OK")
} else {
  print("Enroll again!!")
}

## IFELSE
ifelse(score >= 80, "Passed", "Failed")

ifelse(score >= 80, "Passed", ifelse(
      score >= 50, "OK", "Enroll again!"
))

## FOR
friends <- c("Soobin", "Beomgyu", "Mameaw", "Jisu")

for (friend in friends){
  print(paste("Hi!",friend)) # paste เป็นการเชื่อมข้อความ
}

for (num in nums){
  print(num - 2)
}

# Vectorization
paste("Hi", friends)

(nums <- c(4, 5, 9, 19))
(nums <- nums + 2)
 # การใส่วงเล็บเพิ่มจะทำให้หน้าต่าง console แสดงผลค่าออกมาเลยโดยไม่ต้องเขียนเพิ่ม

## While loop
count <- 0

while (count < 5){
  print("Hi!")
  count <- count + 1
}

# create first function

greeting <- function(){
  print("Hello World!")
}

greeting_name <- function(name) {
  print( paste("Hello!", name))
}

func <- function() {
  greeting()
  greeting_name("Folk")
}

# add_two_nums() function
add_two_nums <- function(val1, val2){
  return(val1 + val2) # return is optional
} 

# cube() function
cube <- function(base, power = 3){
  return(base ** power)
}

# count_ball() function
balls <- c("green","red","blue","blue","red","blue","purple")

count_ball <- function(balls, color){
  sum(balls == color)
}

# loop over a dataframe
data() # ข้อมูล build in ที่มีอยู่ใน R

nrow(USArrests) # nrow : นับจำนวน row ของ data
ncol(USArrests) # ncol : นับจำนวน column ของ data
head(USArrests) # head : เป็น preview หน้าตาของ dataframe ออกมาแค่บางส่วน

for (i in 1:ncol(USArrests)) {
  print( names(USArrests)[i])
  print( mean(USArrests[[i]]))
}

class(USArrests[1]) # data type : data.frame
class(USArrests[[1]]) # data type : numeric
# Note : [[]] จะได้ data type จริงๆของ column นั้นเลย
# data$col_name = data[["col_name"]] = data[[5]]

###############################################
cal_mean_by_col <- function(df) {
  for (i in 1:ncol(df)) {
    print( names(df)[i])
    print( mean(df[[i]]))
  }
}

# refactor : การปรับให้ code เราอ่านง่ายขึ้น แสดงผลได้ดีขึ้น รันเร็วขึ้น แต่ผลรับยังคงเดิม

cal_mean_by_col2 <- function(df) {
  col_name <- names(df)
  
  for (i in 1:ncol(df)) {
    avg_col <- mean(df[[i]])
    print(paste(col_name[i], ":", avg_col))
  }
}

# apply function
avg_by_row_mtcars <- apply(mtcars, MARGIN = 1, mean) 
avg_by_col_mtcars <- apply(mtcars, MARGIN = 2, mean) 

apply(mtcars, MARGIN = 2, sum)
apply(mtcars, MARGIN = 2, sd)
apply(mtcars, MARGIN = 2, median)
apply(mtcars, MARGIN = 2, mean)
