#' Title Read Gardasil data from csv file
#'
#' @param other.as.NA
#' If FALSE (default), unknown/other race is treated as its own category.
#' If TRUE, treat unknown/other race as NA.
#' @details
#' The other.as.NA option is provided because the
#' original manuscript was unclear about how other/unknown race was treated.
#' Reproducing the reported results requires this parameter to be FALSE, but
#' its coefficients are not reported.
#'
#' @return
#' Cleaned/formatted data.frame. This data.frame could be documented here as its
#' codebook, but such documentation is demonstrated under the prepared
#' `gardasil` dataset (see `?gardasil`)
#' @export
#'
#' @examples
#' gardasil2 <- read_gardasil()
#' summary(gardasil2)
read_gardasil <- function(other.as.NA = FALSE) {
  filename <- system.file("extdata/gardasil.csv", package="ProjectAsPackage")
  gardasil <- utils::read.csv(filename, as.is=TRUE)
  gardasil$AgeGroup <-
    factor(gardasil$AgeGroup,
           labels = c("18-26", "11-17"),
           levels = 1:0)
  gardasil$Race <-
    factor(
      gardasil$Race,
      labels = c("white", "black", "hispanic", "other/unknown"),
      levels = 0:3
    )
  gardasil$Completed <-
    factor(gardasil$Completed,
           labels = c("no", "yes"),
           levels = 0:1)
  gardasil$InsuranceType <-
    factor(
      gardasil$InsuranceType,
      labels = c(
        "medical assistance",
        "private payer",
        "hospital based",
        "military"
      ),
      levels = 0:3
    )
  gardasil$MedAssist <-
    factor(gardasil$MedAssist,
           labels = c("yes", "no"),
           levels = 1:0)
  gardasil$Location <-
    factor(
      gardasil$Location,
      labels = c(
        "Odenton",
        "White Marsh",
        "Johns Hopkins Outpatient Center",
        "Bayview"
      ),
      levels = 1:4
    )
  gardasil$LocationType <-
    factor(
      gardasil$LocationType,
      labels = c("urban", "suburban"),
      levels = 1:0
    )
  gardasil$PracticeType <-
    factor(
      gardasil$PracticeType,
      labels = c("pediatric", "family practice", "OB-GYN"),
      levels = 0:2
    )
  ##Create a RaceSummary variable that is just white/minority, with white as the
  ## reference group, and other/unknown coded as NA:
  gardasil$RaceSummary <- gardasil$Race
  levels(gardasil$RaceSummary) <-
    c("white", "minority", "minority", "other/unknown")
  if (other.as.NA)
    gardasil$Race[gardasil$Race == "other/unknown"] <- NA
    gardasil$Race <- factor(gardasil$Race)
    gardasil$RaceSummary[gardasil$RaceSummary == "other/unknown"] <- NA
    gardasil$RaceSummary <- factor(gardasil$RaceSummary)
  return(gardasil)
}
