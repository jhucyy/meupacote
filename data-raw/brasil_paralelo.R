## code to prepare `brasil_paralelo` dataset goes here

usethis::use_data(brasil_paralelo, overwrite = TRUE)
brasil_paralelo <- readxl::read_excel("data-raw/brasil_paralelo.xls")
