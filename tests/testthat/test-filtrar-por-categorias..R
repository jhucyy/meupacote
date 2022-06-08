test_that("filtrar_videos_por_categorias() funciona", {

  resultado_test01 <- filtrar_videos_por_categorias(filtro_categorias = "Educação",
                                filtro_ano = 2020, filtro_mes = 5)

  expect_equal(ncol(resultado_test01), 14)

  expect_error(filtrar_videos_por_categorias())

  expect_s3_class(resultado_test01, "tbl_df")



})




