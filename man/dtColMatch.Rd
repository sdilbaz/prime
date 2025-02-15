% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{dtColMatch}
\alias{dtColMatch}
\title{Match two data-tables on multiple columns}
\usage{
dtColMatch(
  input,
  input_match_on,
  reference,
  reference_match_on,
  reference_return
)
}
\arguments{
\item{input}{Data.table (required): input-table to match}

\item{input_match_on}{Character vector (required): column-names in
input-table to match}

\item{reference}{Data.table (required): reference-table to match}

\item{reference_match_on}{Character vector (required): column-names in
reference-table to match}

\item{reference_return}{Character string (required): column-name in
reference-table that is returned (where values match)}
}
\value{
Character vector with values from reference_return column in
        reference_match_on data.table where values match
}
\description{
Returns vector with column-of-interest where columns match
}
\details{
If at least one value in any of the input_match_on columns matches with a
  value in any of the reference_match_on columns, the two rows will match
}
\examples{
dtColMatch (data.global, c("Country"), data.countryname,
  c("name1", "name2", "name3", "name4"), "iso3")

}
