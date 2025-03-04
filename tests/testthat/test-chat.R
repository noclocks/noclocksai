test_that("initialize_chat works", {
  chat <- initialize_chat()
  expect_s3_class(chat, "Chat")
})
