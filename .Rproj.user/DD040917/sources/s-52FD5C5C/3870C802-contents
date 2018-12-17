
## if you version control your app, don't forget to ignore the token file!
## e.g., put it into .gitignore

googlesheets::gs_auth(token = "google_token.rds")
sheet_key <- "1Eniw4dtP3F0icmQBc_KCzgzPCQt1irsVWdG5za7rsCA" ## Get this from the google spreadsheet URL

ss <- googlesheets::gs_key(sheet_key)
options(shiny.sanitize.errors = FALSE)