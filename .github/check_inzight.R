library(iNZight)
ui <- iNZight()
Sys.sleep(10L)

if (!ui$is_initialized) {
  message("iNZight not loaded")
  quit(status = 1)
}

ui$close()
quit(status = 0)
