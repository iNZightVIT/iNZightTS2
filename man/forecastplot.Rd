% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/forecastplot.R
\name{predict.inz_ts}
\alias{predict.inz_ts}
\alias{plot.inz_frct}
\title{Produce forecasts for inzightts objects}
\usage{
\method{predict}{inz_ts}(
  object,
  var = NULL,
  h = 8,
  mult_fit = FALSE,
  pred_model = "auto",
  confint_width = 0.95,
  model_range = NULL,
  ...
)

\method{plot}{inz_frct}(x, t_range = NULL, xlab = NULL, ylab = NULL, title = NULL, ...)
}
\arguments{
\item{object}{an inzightts (\code{inz_ts}) object}

\item{var}{a character vector of the variable(s) to forecast, or \code{NULL}}

\item{h}{The forecast horison}

\item{mult_fit}{If \code{TRUE}, a multiplicative model is used, otherwise
an additive model is used by default.}

\item{pred_model}{a \code{fable} model function name or \code{"auto"}}

\item{confint_width}{a decimal, the width of the prediction interval}

\item{model_range}{range of data to be fitted for forecasts, specified as
dates or years}

\item{...}{additional arguments (ignored)}

\item{x}{an \code{inz_frct} object}

\item{t_range}{range of data to be plotted, specified as dates or years}

\item{xlab}{a title for the x axis}

\item{ylab}{a title for the y axis}

\item{title}{a title for the graph}
}
\value{
an \code{inz_frct} object
}
\description{
Produce future predictions of the time series from an inzightts object.
}
\details{
The output object includes the predicted mean and prediction intervals,
as well as the raw data and fitted values.
}
\examples{
t <- inzightts(visitorsQ, var = c(2, 4))
## The following two examples are equivalent
pred <- predict(t, names(t)[-1], h = "2 years")
pred <- predict(t, names(t)[-1], h = 8)

\dontrun{
plot(pred)
}

}
\seealso{
\code{\link[fable]{fable-package}}
}
