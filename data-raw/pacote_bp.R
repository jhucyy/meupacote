# ideia preliminar, buscar os vídeos mais assistidos da BP
# library(usethis)
# library(tidyverse)
# library(lubridate)
# library(devtools)
# base de dados -----------------------------------------------------------
library(readxl)
brasil_paralelo <- readxl::read_excel("./brasil_paralelo.xls")

# Carregar as funções e checar o script -----------------------------------

devtools::load_all()
devtools::check()

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
filtrar_videos_por_categorias(filtro_categorias = "Educação", filtro_mes = 09,
                              filtro_ano = 2021)




# Função02: Filtrar os vídeos com base no Número de likes e coment --------


