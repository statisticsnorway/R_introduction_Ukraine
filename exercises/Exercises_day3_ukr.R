# Вправи для вступного курсу з питань R
# ДЕНЬ 3

#### Вправа 5 ####


# а) Введіть набір даних із сукупністю ("population.csv") у програму R та відфільтруйте за усіма регіонами (не за Україною)



# b) Оберіть випадкову вибірку з 5 округів і спершу встановіть початкове число 



# c) Створіть нову змінну, яка означатиме, що округ є переважно міським або сільським



# d) Оберіть випадкову вибірку з 2 округів, як в частині міських, так й сільських округів



# e) Зчитайте набір даних inn "employees.csv" (у папці з даними)



# f) Встановіть два правила, згідно з якими кількість працівників у 2017 році не повинна бути меншою 30 та більшою 1000
#install.packages("validate")
library(validate)


# g) Зіставте дані з правилами



# h) проаналізуйте результати



# i) Встановіть ще декілька правил, зіставте дані з правилами та проаналізуйте результати 



################################################### ##################################
#### Вправа 6 ####

# а) Встановіть a rules based correction, тоді в усіх спостереженнях зі значенням менш ніж 30 мають бути відсутні дані нацрахунків
# install.packages("dcmodify")
library(dcmodify)


# b) Модифікуйте дані використовуючи це правило



# c) графік рік 2016 з порівняно з 2017 роком2016 проти 2017 року



# d) Імпутуйте відсутні дані за допомогою лінійної моделі (lm) і подивіться на результати
# install.packages("simputation")
library(simputation)


# e) Імпутуйте відсутні дані за допомогою predictive mean matching (pmm)
# Скористайтеся спочатку функцією довідки, щоб подивитися, як встановити параметр (?impute_pmm)



