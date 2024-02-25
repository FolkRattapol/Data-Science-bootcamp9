# Google Sheet 101

## Why use google sheets?

- Store : เก็บข้อมูล
- Analyze : วิเคราะห์
- Present : นำเสนอข้อมูล

## Data Type

- Number : ชิดขวา
- Text : ชิดขวา
- Date : ชิดขวา
- Boolean : ตรงกลาง

## Input Data 

- Input Array เป็นแนวนอนโดยใช้ "," -> {1, 2, 3, 4} 
- Input Array เป็นแนวตั้งโดยใช้ ";" -> {1; 2; 3; 4}

## Cell Reference

- shortcut : F4 เพื่อล็อก Cell
- A1 : ปล่อย free
- $A$1 : ล็อค Cell
- A$1 : ล็อค row 1, ปล่อย column A
- $A1 : ล็อค colunm, ปล่อย row 1

## What is Function?
- เราเขียนฟังก์ชัน เพื่อช่วยให้เราทำงานต่างๆได้สะดวกขึ้น (Abstract)
- การเปลี่ยน Input -> Output
- ฟังก์ชันจะรับ input หรือที่เราเรียกในภาษา Programming ว่า argument
- Function_name(Required,[Optional])
  ### IF, IFS, SWITCH
  - SWITCH : คล้ายกับ IFS แต่คำสั่งจะสั้นกว่าและอ่านง่ายกว่านิดหน่อย

# Google Sheet 102

## Import Data

- คัดลองลิงค์ที่เป็น File CSV มาวางใน Google sheet จากการใช้ฟังก์ชัน "importdata"
  - IMPORTDATA(URL, Delimiter, locale)
- Import HTML ลิงค์
  - เข้าไปหน้าเว็บหา table ในเว็บที่เราต้องการจากนั้น Highlight บางส่วนใน table แล้วคลิก -> inspect จะแสดงหน้า code ภาษา HTML ขึ้นมา
  - IMPORTHTML(URL, "table", Index)
 
# Google Sheet 103

## Query Functions

- Query() คือ คล้ายกับการเขียน SQL ใน Google Sheet
- สิ่งที่ Query ฟังก์ชันทำได้
  - Select data
  - filter data
  - sort data
  - summarize data
  - summarize data by group
- Verb ที่สำคัญในการ Manipulate data
  - Select
  - Where
  - Order by
  - Group by
  - Aggregate function : avg, sum, min, max, count
  - limit
  - like - pattern matching จะอยู่หลัง where
-QEURY(DATA, QUERY, [HEADERS])
  - EX. QUERY(IMDB, "SELECT A, B, C")
  - ชื่อที่ Column ที่เราเลือกมาใช้ต้องเป็นพิมพ์ใหญ่
  - ลำดับในการเขียน SQL Query : select -> limit -> where -> like -> group by -> label

## Google Sheet 104

- Pivot Table Formula
  - ใช้วิเคราะห์ข้อมูล และทำรายงานใน Excel/ Google sheets
  - Dimension : column แบบ categorical data ใช้แบ่งข้อมูลเป็นกลุ่ม
  - Measurement หรือ Metric : colunm แบบ numerical data ใช้ทำ aggregation ได้
  
