% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/results-methods.R
\name{total_rate}
\alias{total_rate}
\title{Summarise rates by adding up over the life time}
\usage{
total_rate(x, age_width_df = NULL, interval = 0.95)
}
\arguments{
\item{x}{An object of class \code{"BayesRates_results"},
constructed via a call to \code{\link[=smooth_age]{smooth_age()}} or
\code{\link[=smooth_agetime]{smooth_agetime()}}.}

\item{age_width_df}{A data frame with columns \code{"age"}
and \code{"width"}, giving the widths of each age group.
Required if the age group labels used in
\code{\link[=smooth_age]{smooth_age()}} and \code{\link[=smooth_agetime]{smooth_agetime()}} were
non-integer.}

\item{interval}{Width of credible intervals.
A number between 0 and 1. Default is \code{0.95}.}
}
\value{
A tibble with the following columns:
\itemize{
\item the time variable specified by \code{timevar},
if \code{x} was created by a call to \code{\link[=smooth_agetime]{smooth_agetime()}}
\item further classifying variables, as specified by
\code{byvar} in the original call to \code{\link[=smooth_age]{smooth_age()}} or
\code{\link[=smooth_agetime]{smooth_agetime()}}
\item \code{.fitted}. Point estimates from the model.
(Posterior medians.)
\item \code{.lower}, \code{.upper}. Lower and upper limits
of the credible interval specified by \code{interval}.
\item \code{.probability}. A list column containing all draws
from the posterior distribution.
\item \code{.observed}. Total rates constructed from
direct estimates, ie events divided by population,
with no smoothing.
}
}
\description{
Construct a summary measure for age-specific rates
by summing up the rates, weighted by the width of each
age group. The calculations are equivalent to those
used to construct the total fertility rate (TFR).
}
\details{
If the original data (arguments \code{nevent_df} and \code{py_df}
supplied to \code{\link[=smooth_age]{smooth_age()}} or \code{\link[=smooth_agetime]{smooth_agetime()}}) used
character or factor age labels that could not
be interpreted as integers, then \code{total_rate()}
needs help interpreting the labels. This help is
provided through the \code{age_width_df} argument.
\code{age_width_df} is a data frame showing the
the width to be used for each age group. If the
final age group is open (ie has no upper limit)
then the width should approximately equal the expected
number of years lived in that age group.
}
\examples{
## example where age groups are integers
res_cn <- smooth_agetime(nevent_df = BayesRates::cn_divorces,
                         py_df = BayesRates::cn_population,
                         byvar = "sex",
                         spec_time = TimeFixed())
total_rate(res_cn)

## example where age groups are character
res_nz <- smooth_age(nevent_df = BayesRates::nz_divorces_2020,
                     py_df = BayesRates::nz_population_2020)
total_rate(res_nz, age_width_df = BayesRates::nz_age_width_df)
}
\seealso{
\itemize{
\item \code{\link[=smooth_age]{smooth_age()}} and \code{\link[=smooth_agetime]{smooth_agetime()}} to estimate rates
\item \code{\link[=components]{components()}} and \code{\link[=augment]{augment()}} to extract rates
}
}