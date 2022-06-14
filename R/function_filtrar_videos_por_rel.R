
#' Filtrar vídeos pelas métricas de relevância
#'
#' Essa função tem como objetivo simplificar a triagem dos vídeos da base
#'  do canal Brasil Paralelo, com base em dois critérios que enumerei
#' para representar o grau de relevância dos vídeos, o número de likes
#' e o número de comentários dos vídeos. Os critérios devem ser designados
#' conforme a numeração escolhida, e colocados nos argumentos filtro_likes = x
#' para o número de likes desejados e filtro_comen = x para o número de
#' comentários estabelecido. Importante destacar que o número de likes
#' e comentários retornado corresponde a todos os vídeos
#'  com as métricas iguais ou maiores(>=) que "x".
#'
#' @param filtro_likes  quantidade de likes
#' @param filtro_comen  quantidade de comentários
#'
#' @return um data frame
#' @export
#'
#' @examples filtrar_rel(filtro_likes = 1000, filtro_comen = 200)
filtrar_rel <- function(filtro_likes, filtro_comen){
  brasil_paralelo %>%
  dplyr::filter(likes >= filtro_likes, comentários >= filtro_comen)

}

