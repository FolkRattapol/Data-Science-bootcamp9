# This is R programming.
print("Hello World")

# test export into github
kmitl_filter <- kmitl %>%
          select(firstname, lastname, age) %>%
          filter(age = 22) %>%
          arrange(firstname) 