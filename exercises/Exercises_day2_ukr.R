# Вправи для вступного курсу з питань R
# ДЕНЬ 2

#### Вправа 3 ####
# а) Зчитайте набір даних inn "employees.csv" (у папці з даними) (data)
# ПІДКАЗКА: library(tidyverse)



# b) Створіть нову змінну для різниці у кількості працівників у 2017 та 2018 роках





# c) Набір даних містить поєднання рівнів для кодів стандартної галузевої класифікації (SIC). 
# Створіть нову змінну для рівня SIC. Ви можете використовувати "national" для національного рівня,
# "main" для основних категорій літер і "subdivision" для класифікацій із 2 цифр.
# або ви можете обрати власні ярлики.
# ПІДКАЗКА: використовуйте nchar() для підрахунку кількості цифр у SIC





# d) Створіть новий набір даних (з новою назвою), що включає лише рядки для основних промислових груп. (main)
# Використовуйте select(), щоб зберегти лише змінні SIC та різницю між 2016 та 2017 роками
# Яка основна промислова група мала найбільше зниження в частині кількості працівників?





# e) Скористайтеся фільтром, filter() щоб побачити, скільки працівників в Україні працювало у сфері операцій з нерухомим майном ("Real estate activities")
# ПІДКАЗКА: Це група L за SIC
# ПІДКАЗКА: Оскільки це змінна у рядку, вам потрібні взяти у лапки тестове значення ("L")




# f) Яка загальна кількість працівників у групах/секторах "Промисловість" та "Будівництво" у 2017 році?
# Підказка: Промисловість - це група D за SIC, а будівництво - це група F за SIC




# g) Скільки основних промислових груп згадується у наборі даних?
# ПІДКАЗКА: скористайтесь filter() та підсумуйте () та n()


################################################### ##################################
#### Вправа 4 ####

# а) Зчитайте набір даних "wages.csv"
# Цей набір даних містить середньомісячну заробітну плату за 2017 рік (wages2017) та відсоток збільшення заробітної плати з 2016 по 2017 рік (perc)




# b) Замініть змінну "year2017" у даних щодо заробітної плати на "wages2017"



# c) Приєднайте/об’єднайте дані щодо середньої заробітної плати за 2017 рік з набором даних щодо працівників
# ПІДКАЗКА: Застосовуйте змінні SIC як ключ для приєднання, але перевірте, чи збігаються назви в обох наборах даних. 



# d) Побудуйте діаграму/графік щодо кількості працівників у 2017 році в основних групах SIC
# Підказка: спочатку відфільтруйте основні групи, а потім використовуйте ggplot() з aes() та geom_bar()




# e) Надайте графіку відповідні назви осей




# f) Побудуйте діаграму/графік розсіювання щодо середньої заробітної плати та кількості працівників
# Ви бачите якийсь зв'язок?





# Наступне перетворює дані у "long format", де тепер рік є лише однією змінною
employees_long <- employees %>% gather(year, employees, 3:9)

#g) Використовуйте нові дані для створення лінійного графіку груп SIC: Промисловість, "Industry" (D) та Будівництво "Construction" (F)

# Підказка: спочатку відфільтруйте групи SIC
# Підказка: скористайтеся + geom_line()
# Підказка: скористайтеся group = SIC всередині aes (), щоб створити один рядок для кожної групи SIC


# h) Якщо ви ще не додали різні кольори до ліній
# Підказка: скористайтеся aes (color = ...) всередині geom_line 



