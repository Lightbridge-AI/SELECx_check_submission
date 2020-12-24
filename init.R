# init.R
#
# Example R code to install packages if not already installed
#

my_packages = c("shinyFeedback", "tidyverse","lubridate",
                "vroom","tools","readxl","openxlsx")

install_if_missing = function(p) {
  if (p %in% rownames(installed.packages()) == FALSE) {
    install.packages(p)
  }
}

invisible(sapply(my_packages, install_if_missing))