test_that("filtrar_rel funciona", {

  expect_error(filtrar_rel())

  resultado <- filtrar_rel(filtro_likes = 100, filtro_comen = 200)

  expect_equal(ncol(resultado), 12)

  expect_s3_class(resultado, "tbl_df")


})
