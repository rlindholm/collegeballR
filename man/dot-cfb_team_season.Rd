% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cfb_team_season.R
\name{.cfb_team_season}
\alias{.cfb_team_season}
\title{Extract overall team stats for a CFB team (one season)}
\usage{
.cfb_team_season(team_id, year, sprt = "MFB")
}
\arguments{
\item{team_id}{Team ID (form team_mapping)}

\item{year}{Select year, (example: 2015-2016 season is 2016)}

\item{sport}{Tradiational Sport Name}
}
\description{
Option to select data per season or per game
}
\examples{

.cfb_team_season(697,2018,sprt="MFB")

}
\keyword{Stats}
\keyword{Team}
