
#' Filtrar vídeos pelas categorias
#'
#' Essa função tem como objetivo filtrar a base de vídeos extraída do canal
#' Brasil Paralelo a partir do critério de categoria, estabelecida conforme
#' a classificação do YouTube, junto aos critérios de mês e ano do vídeo
#' em questão.
#'
#' @param filtro_categorias filtra as categorias, categorias disponíveis "Educação", "Política", "Entretenimento" e "Diversos".
#' @param filtro_mes filtra os vídeos com base no mês.
#' @param filtro_ano filtra o vídeo com base no ano.
#'
#' @return um data frame
#' @export
#'
#' @examples filtrar_videos_por_categorias(filtro_categorias = "Educação", filtro_mes = 02, filtro_ano = 2022)
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




