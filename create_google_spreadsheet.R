#################################################
### Code to create the spreadsheet for abstract submission ####
library(googlesheets)

filler <- matrix("-", nrow = 1, ncol = 17,
                 dimnames = list(NULL,c('First','Last','Email','Country','Affiliation','Career','Handle',
                                        'TimeZone','TimeZoneDST','SocialMedia','OtherSocial','Title','Abstract','Session','Keywords','Language','OtherAbs')))


## prepare the OAuth token and set up the target sheet:
##  - do this interactively
##  - do this EXACTLY ONCE

shiny_token <- gs_auth() # authenticate w/ your desired Google identity here
### A new token must be generated for a new app
saveRDS(shiny_token, "google_token.rds")
ss <- gs_new("WSTC5_Registration",
             row_extent = 1, col_extent = 17, input = filler)
