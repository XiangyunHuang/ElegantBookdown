options(bookdown.post.latex = function(x) {
  # https://pandoc.org/MANUAL.html#columns
  x <- gsub("\\begin{columns}[T]", "", x, fixed = TRUE)
  x <- gsub("\\end{columns}", "", x, fixed = TRUE)
  
  i2 <- which(x == "\\end{column}")
  
  # if(length(i2) > 0){
    i <- seq(length(i2) / 2)
    x <- x[-(i2[2 * i - 1] + 1)] # delete newline
    
    x <- gsub(x,
              pattern = "(\\\\begin\\{)column(\\}\\{)(0.\\d+)(\\\\textwidth\\})",
              replacement = "\\1minipage\\2\\3\\4", fixed = FALSE
    )
    x <- gsub("\\end{column}", "\\end{minipage}", x, fixed = TRUE)
  # }
  x
})
