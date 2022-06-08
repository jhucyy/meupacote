# ideia preliminar, buscar os vídeos mais assistidos da BP
rm(list = ls())
library(usethis)
library(tidyverse)
library(lubridate)
library(devtools)
# base de dados -----------------------------------------------------------
library(readxl)
brasil_paralelo <- readxl::read_excel("./brasil_paralelo.xls")

# Carregar as funções e checar o script -----------------------------------

devtools::load_all()
devtools::check()


# Função 01 ---------------------------------------------------------------


# base de lista de vídeos extraído do canal do youtube da Brasil Paralelo
# em 28/05/2022, base extraída com o programa Youtube Data Tools


# Função filtrar vídeos da base de dados Brasil Paralelo ------------------
# A função filtra os vídeos com base na categoria, mes e no ano.


# função para filtrar as categorias dos vídeos ----------------

filtrar_videos_por_categorias <- function(filtro_categorias,
                                          filtro_mes, filtro_ano){
   brasil_paralelo %>%  #base de dados
    dplyr::mutate(ano = lubridate::year(data_de_publicação),
                  mes = lubridate::month(data_de_publicação)) %>%
       group_by(categorias, mes, ano) %>%
       ungroup() %>%
  dplyr::filter(categorias == filtro_categorias) %>%
    dplyr::filter(ano == filtro_ano & mes == filtro_mes)

}


# ex:
filtrar_videos_por_categorias(filtro_categorias = "Educação", filtro_mes = 02,
                              filtro_ano = 2022)





# Função filtrar 2 --------------------------------------------------------
# filtra os vídeos com base no número de likes e comentários combinado
# os critérios dos números de likes e comentário são abertos para
# definição, assim, pode-se combinar qualquer parâmetro.

filtrar_rel <- function(filtro_likes, filtro_comen){
  brasil_paralelo %>%
    filter(likes >= filtro_likes, comentários >= filtro_comen)

}



# ex:
 filtrar_rel(filtro_likes = 100000, filtro_comen = 100)








