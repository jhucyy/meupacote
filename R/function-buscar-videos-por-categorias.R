
filtrar_videos_por_categorias <- function(filtro_categorias,
                                          filtro_mes, filtro_ano){
  brasil_paralelo %>%
    dplyr::mutate(ano = lubridate::year(data_de_publicação),
                  mes = lubridate::month(data_de_publicação)) %>%
    dplyr::group_by(categorias, mes, ano) %>%
    dplyr::ungroup() %>%
    dplyr::filter(categorias == filtro_categorias) %>%
    dplyr::filter(ano == filtro_ano & mes == filtro_mes)

}


