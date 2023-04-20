

## 'smooth_age' -----------------------------------------------------------

test_that("'smooth_age' works with valid data - no 'by' variables", {
    set.seed(0)
    nevent_df <- tibble(age = 0:9,
                        nevent = rpois(n = 10, lambda = 11:20))
    py_df <- tibble(age = 0:9,
                    py = 100)
    ans <- smooth_age(nevent_df = nevent_df,
                      py_df = py_df)
    expect_s3_class(ans, "BayesRates_results")
})

## 'smooth_agetime' -----------------------------------------------------------

test_that("'smooth_agetime' works with valid data - no 'by' variables", {
    set.seed(0)
    nevent_df <- expand.grid(age = 0:9, time = 2011:2020,
                             KEEP.OUT.ATTRS = FALSE)
    nevent_df$nevent <- rpois(n = nrow(nevent_df), lambda = outer(11:20, 5:14))
    py_df <- expand.grid(age = 0:9, time = 2011:2020,
                         KEEP.OUT.ATTRS = FALSE)
    py_df$py <- 100
    ans <- smooth_agetime(nevent_df = nevent_df,
                          py_df = py_df,
                          spec_time = TimeFixed())
    expect_s3_class(ans, "BayesRates_results")
})
