# Pacotes em R ------------------------------------------------------------

# Aula_parte1 -------------------------------------------------------------


# aprender a criar pacotes para guardar os scripts
# e facilitar a sua reprodutibilidade para terceiros

# para trabalhar nesse curso é preciso
# instalar o pacote RTools
# checar a disponibilidade depois

# esse pacote ajuda no fluxo de trabalho
install.packages("usethis")
library(usethis)


# função create_package cria um novo
# pacote
usethis::create_package()

# argumento para essa função é o
# caminho onde queremos que esse pacote
# seja criado.

usethis::create_package("~/Documents/meupacote")





# Pacotes_parte2 -----------------------------------------------------------------
# Licença

# todo pacote precisa ter uma licença

# alguns tipos de licenças para o
# uso do pacote, tem outras disponíveis
# a licença estipula coisas como os termos de uso
# e assegura a atribuição de créditos para os autores
# usethis::use_cc0_license()
# usethis::use_gpl3_license()
usethis::use_mit_license()

# usei a licença do mit para o exemplo


# função devtools::check() ------------------------------------------------

# essa função verifica se tudo está funcionando como devido.

# aprender a criar pacotes para guardar os scripts
# e facilitar a sua reprodutibilidade para terceiros

# para trabalhar nesse curso é preciso
# instalar o pacote RTools
# checar a disponibilidade depois

# esse pacote ajuda no fluxo de trabalho
install.packages("usethis")
library(usethis)


# função create_package cria um novo
# pacote
usethis::create_package()

# argumento para essa função é o
# caminho onde queremos que esse pacote
# seja criado.

usethis::create_package("~/Documents/meupacote")


# essa função carrega todas as funções do arquivo
# dentro do pacote
devtools::load_all()

devtools::check()



