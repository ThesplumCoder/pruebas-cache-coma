library(tidyverse)
library(ggthemes)

raw_filenames <- list.files("../data/raw")

for (filename in raw_filenames) {
  path <- paste0("../data/raw/", filename)
  tryCatch({
    raw_data <- read_csv(path)
    raw_data$responseCode = as.character(raw_data$responseCode)
    raw_data[raw_data$responseCode == "Non HTTP response code: org.apache.http.ConnectionClosedException", "responseCode"] <- "ConnectionClosedException"
    write_csv(raw_data, paste0("../data/clean/", filename), append = FALSE)
  
  }, error = function(err) {
    print(paste0("The file ", path, " doesn't exist."))
    print(err)
  }, warning = function(warr) {
    print(warr)
  })
}