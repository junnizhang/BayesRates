
#' Divorces in New Zealand
#'
#' Counts of divorces by age, sex,
#' and calendar year, in New Zealand, 1992-2021
#'
#' @format A data frame with 660 rows and the
#' following variables:
#' - `age`: Age, in 5-year age groups, 15-19 to 65+
#' - `sex`: `"Female"` or `"Male"`
#' - `time`: Calendar year
#' - `divorces`: Numbers of divorces during year.
#'
#' @source Derived from data in table "Age at divorces by
#' sex (marriages and civil unions) (Annual-Dec)"
#' in the online database Infoshare
#' on the Statistics New Zealand website.
#' Data downloaded on 22 March 2023.
"nz_divorces"


#' Adult population of New Zealand
#'
#' Counts of population aged 15+ by age, sex,
#' and calendar year, in New Zealand, 1992-2021
#'
#' @format A data frame with 660 rows and the
#' following variables:
#' - `age`: Age, in 5-year age groups, 15-19 to 65+
#' - `sex`: `"Female"` or `"Male"`
#' - `time`: Calendar year
#' - `population`: Estimated average population during year.
#'
#' @source Derived from data in table
#' "Estimated Resident Population by Age and Sex (1991+)
#' (Annual-Dec)" in the online
#' database Infoshare
#' on the Statistics New Zealand website.
#' Data downloaded on 26 March 2023.
"nz_population"