# remove folders that quarto copies into docs/ even though all slides and
# pages use embed-resources: true and don't need them
dirs <- list.dirs("docs", recursive = TRUE)
superfluous <- dirs[grepl("/(media|data|[^/]+_files)$", dirs)]
unlink(superfluous, recursive = TRUE, force = TRUE)
