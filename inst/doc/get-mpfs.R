## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----get_mpfs, eval = FALSE, echo = TRUE--------------------------------------
#  # Example, code not run within vignette itself.
#  # Result is hardcoded and displayed for illustrative purposes.
#  
#  library(cms)
#  
#  # download and view first few rows of 2020 MPFS database
#  mpfs20 <- get_mpfs(20, storage_path = 'storage', keep_downloads = TRUE)
#  head(mpfs20, 3)

## ----head(mpfs20), echo = FALSE-----------------------------------------------
structure(list(Year = c(2020, 2020, 2020), `Carrier Number` = c("01112", 
"01112", "01112"), Locality = c("05", "06", "07"), `HCPCS Code` = c("G0076", 
"G0076", "G0076"), Modifier = structure(c(1L, 1L, 1L), .Label = c("none", 
"26", "53", "TC"), class = "factor"), `PCTC Indicator` = c("0", 
"0", "0"), `Status Code` = c("A", "A", "A"), `Multiple Surgery Indicator` = c("0", 
"0", "0"), `50% Therapy Reduction Amount (non-institutional)` = c("0000000.00", 
"0000000.00", "0000000.00"), `50% Therapy Reduction Amount (institutional)` = c("0000000.00", 
"0000000.00", "0000000.00"), `OPPS Indicator` = c("9", "9", "9"
), `Facility Fee` = c(63.64, 63.64, 63.64), `Non-Facility Fee` = c(63.64, 
63.64, 63.64), `OPPS Facility Fee` = c(0, 0, 0), `OPPS Non-Facility Fee` = c(0, 
0, 0)), row.names = c(NA, -3L), class = c("tbl_df", "tbl", "data.frame"
))

## ----get_mpfs locality, eval = FALSE, echo = TRUE-----------------------------
#  # Example, code not run within vignette itself.
#  # Result is hardcoded and displayed for illustrative purposes.
#  
#  mpfs20_ohio <- get_mpfs(20, storage_path = 'storage', locality = '1520200')
#  head(mpfs20_ohio, 3)

## ----head(mpfs20_ohio), echo = FALSE------------------------------------------
structure(list(Year = c(2020, 2020, 2020), `Carrier Number` = c("15202", 
"15202", "15202"), Locality = c("00", "00", "00"), `HCPCS Code` = c("G0076", 
"G0077", "G0078"), Modifier = structure(c(1L, 1L, 1L), .Label = c("none", 
"26", "53", "TC"), class = "factor"), `PCTC Indicator` = c("0", 
"0", "0"), `Status Code` = c("A", "A", "A"), `Multiple Surgery Indicator` = c("0", 
"0", "0"), `50% Therapy Reduction Amount (non-institutional)` = c("0000000.00", 
"0000000.00", "0000000.00"), `50% Therapy Reduction Amount (institutional)` = c("0000000.00", 
"0000000.00", "0000000.00"), `OPPS Indicator` = c("9", "9", "9"
), `Facility Fee` = c(55.71, 79.54, 131.29), `Non-Facility Fee` = c(55.71, 
79.54, 131.29), `OPPS Facility Fee` = c(0, 0, 0), `OPPS Non-Facility Fee` = c(0, 
0, 0)), row.names = c(NA, -3L), class = c("tbl_df", "tbl", "data.frame"
))

## ----locality_dict------------------------------------------------------------
mpfs20_locality <- cms::locality_dict
head(mpfs20_locality, 3)

