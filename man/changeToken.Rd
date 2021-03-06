% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/alation.R
\name{changeToken}
\alias{changeToken}
\title{Change token to use API}
\usage{
changeToken(user = "", password = "", url = "")
}
\arguments{
\item{user}{A valid Alation username.}

\item{password}{A valid Alation corp password.}

\item{url}{- the Alation URL}
}
\value{
An Alation token used in subsequent calls.
}
\description{
As a side effect this caches the token for other API calls to utilise
}
\examples{
\dontrun{
changeToken(user="magardner",password="secret", url="https://alation.corp.ebay.com")
}
}

