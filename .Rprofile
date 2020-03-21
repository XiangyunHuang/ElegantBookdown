options(
  citation.bibtex.max = 999,
  bitmapType = "cairo",
  stringsAsFactors = FALSE,
  knitr.graphics.auto_pdf = TRUE,
  width = 69,
  str = utils::strOptions(strict.width = "cut"),
  knitr.table.format = "pandoc"
)

# https://github.com/fyemath/elegantbookdown-demo/blob/6e2e6e7afd0bba80312f47bc5c4ad93f92c050fe/index.Rmd#L18-L36
options(bookdown.post.latex = function(x) {
  # x is the content of the LaTeX output file
  # The following codes is another way to removes amsthm environments

  start_row <- grep("package\\{amsthm", x)
  end_row <- grep("newtheorem\\*\\{solution", x)
  x <- x[-c(start_row:end_row)]

  # Remove \iffalse \fi\\
  x <- gsub("^\\\\iffalse.\\\\fi\\{\\}+?(\\\\)", "", x)
  x <- gsub("^\\\\tightlist", "", x)
  # fix theorem environments for elegantbook. Remove or modify if other book classes are using!!!
  x <- gsub("(^\\\\BeginKnitrBlock\\{)+(definition|axiom|theorem|lemma|corollary|proposition|postulate)+(\\}$)", "\\1\\2\\3\\{\\}\\{\\}", x)
  x <- gsub("(^\\\\BeginKnitrBlock\\{)+(definition|axiom|theorem|lemma|corollary|proposition|postulate)+(\\})+\\[(.*)\\]", "\\1\\2\\3\\{\\4\\}\\{\\}", x)
  x <- gsub("(^\\\\\begin\\{)+(definition|axiom|theorem|lemma|corollary|proposition|postulate)+(\\}$)", "\\1\\2\\3\\{\\}\\{\\}", x)
  x <- gsub("(^\\\\begin\\{)+(definition|axiom|theorem|lemma|corollary|proposition|postulate)+(\\})+(.*)", "\\1\\2\\3\\{\\4\\}\\{\\}", x)
})
