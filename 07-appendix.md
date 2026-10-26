# (APPENDIX) 附录 {#appendix .unnumbered} 

# R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:


``` r
summary(cars)
```

```
##      speed           dist       
##  Min.   : 4.0   Min.   :  2.00  
##  1st Qu.:12.0   1st Qu.: 26.00  
##  Median :15.0   Median : 36.00  
##  Mean   :15.4   Mean   : 42.98  
##  3rd Qu.:19.0   3rd Qu.: 56.00  
##  Max.   :25.0   Max.   :120.00
```

## Including Plots

You can also embed plots, for example:


``` r
par(mar = c(4, 4, .1, .1))
plot(pressure)
```

<div class="figure" style="text-align: center">
<img src="07-appendix_files/figure-epub3/nice-fig-02-1.png" alt="Here is another nice figure!" width="80%" />
<p class="caption">(\#fig:nice-fig-02)Here is another nice figure!</p>
</div>

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
