
filtrar_rel <- function(filtro_likes, filtro_comen){
  brasil_paralelo %>%
  dplyr::filter(likes >= filtro_likes, comentários >= filtro_comen)

}

