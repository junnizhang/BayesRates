% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/results-methods.R
\name{augment.BayesRates_results}
\alias{augment.BayesRates_results}
\title{Obtain estimates of rates, combined with original data}
\usage{
\method{augment}{BayesRates_results}(x, interval = 0.95, ...)
}
\arguments{
\item{x}{A \code{"BayesRates_results"} object created
by calling function \code{\link[=smooth_age]{smooth_age()}}
or \code{\link[=smooth_agetime]{smooth_agetime()}}.}

\item{interval}{Width of credible intervals.
A number between 0 and 1. Default is \code{0.95}.}

\item{...}{Not currently used.}
}
\value{
A \link[tibble:tibble-package]{tibble},
constructed by merging \code{nevent_df} and
\code{py_df}, and the creating six new columns:
\itemize{
\item \verb{<agevar>.mid}: Midpoints of age groups
(which is useful for plotting.)
\item \code{.fitted}: Point estimates (posterior medians) of rates.
\item \code{.lower}, \code{.upper}: Lower and upper bounds of
credible intervals specified by \code{interval}.
\item \code{.probability}: A list column with all draws
from the posterior distribution.
\item \code{.observed}: Direct estimates of rates.
}
}
\description{
Extract estimated rates from an object
created by a call to \code{\link[=smooth_age]{smooth_age()}}
or \code{\link[=smooth_agetime]{smooth_agetime()}}, and combine these
with the original data.
}
\details{
In addition to the modelled rates,
\code{augment()} also displayed 'direct'
estimates of rates. Direct estimates are
estimates obtained by dividing events
by populations at risk, with no smoothing.
}
\examples{
results <- smooth_agetime(nevent_df = nz_divorces,
                          py_df = nz_population,
                          age_width_df = nz_age_width_df,
                          age_min = 15)
augment(results)
}
\seealso{
\itemize{
\item \code{\link[=smooth_age]{smooth_age()}} smooths rates over age.
\item \code{\link[=smooth_agetime]{smooth_agetime()}} smooths rates over age and time.
\item \code{\link[=components.BayesRates_results]{components()}}
extracts rates, age effects, time effects, and hyper-parameters.
\item \code{\link[=n_draw<-]{n_draw()}} sets the default number
of draws from the posterior distribution.
\item \code{\link[=total_rate]{total_rate()}} calculates a summary indicator.
}
}
