################################################################################
### Proxy network settings

# UFRRJ
system("git config --global http.proxy http://gwia.ufrrj.br:3128")
setGitProxy <-
  function (proxy, port, auto = "ufrrj") {
    if (auto == "ufrrj") {
      system("git config --global http.proxy http://gwia.ufrrj.br:3128")
    } else {
      system(paste("git config --global http.proxy http://",
                   proxy, ":", port, sep = ""))
    }
  }

# Checking
system("git config --get --global http.proxy")
getGitProxy <-
  function () {
    system("git config --get --global http.proxy")
  }

# Removing
system("git config --unset --global http.proxy")
rmGitProxy <-
  function () {
    system("git config --unset --global http.proxy")
  }

