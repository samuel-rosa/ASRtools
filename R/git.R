#' git settings
#' 
#' Tools to configure git.
#' 
#' @param proxy Proxy address without the \code{"http://"}.
#' 
#' @param port Port number.
#' 
#' @param auto Use a default http.proxy.
#' @author
#' Alessandro Samuel-Rosa \email{alessandrosamuelrosa@@gmail.com}
#' @aliases setGitProxy getGitProxy rmGitProxy
#' @export
# SET HTTP.PROXY ###############################################################
setGitProxy <-
  function (proxy, port, auto = "ufrrj") {
    if (auto == "ufrrj") {
      system("git config --global http.proxy http://gwia.ufrrj.br:3128")
    } else {
      system(paste("git config --global http.proxy http://",
                   proxy, ":", port, sep = ""))
    }
  }
# CHECK HTTP.PROXY #############################################################
#' @rdname git
#' @export
getGitProxy <-
  function () {
    system("git config --get --global http.proxy")
  }
# REMOVE HTTP.PROXY ############################################################
#' @rdname git
#' @export
rmGitProxy <-
  function () {
    system("git config --unset --global http.proxy")
  }
