# Build package

# turn on/off development mode
# devtools::dev_mode()

# check documentation ----
roxygen2::roxygenise()
devtools::check_man()
spelling::spell_check_package()
# spelling::update_wordlist()

# check for Linux (local) ----
devtools::check(document = TRUE, manual = TRUE, force_suggests = TRUE, run_dont_test = TRUE)
