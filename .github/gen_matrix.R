install.packages("jsonlite")
os <- list.dirs("builds", recursive = FALSE, full.names = FALSE)
builds <- lapply(os,
\(x) {
    vs <- list.dirs(paste0("builds/", x),
    recursive = FALSE, full.names = FALSE)
    lapply(vs, \(v) {
    l <- list(
        os = x,
        v = v,
        r = "release"
    )
    if (file.exists(file.path("builds", x, v, "rspm.txt")))
        l$rspm <- readLines(file.path("builds", x, v, "rspm.txt"))[1]
    l
    })
}
)
json <- jsonlite::toJSON(do.call(c, builds), auto_unbox = TRUE)

cat(json)