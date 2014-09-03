#!/usr/bin/env Rscript
#
# ants wip / future work
#
library(ggplot2)
library(shiny)
library(ggvis)
library(rmarkdown)
srcdir<-"./"
buildrmd='ants2015build.Rmd'
rawrmds<-c("ants2015.Rmd","background/background1.Rmd","impact/impact1.Rmd","templates/templates.Rmd","evaluation/evaluation1.Rmd","evaluation/antsvfreesurfer.Rmd","longitudinal/longitudinal.Rmd","lesions/lesions.Rmd","conclusion/conclusion.Rmd","lastslide.Rmd")
for ( x in 1:length(rawrmds) ) {
  if ( x == 1 )  cmd<-paste( "cat ",rawrmds[x]," > ",buildrmd ) else cmd<-paste( "cat ",rawrmds[x]," >> ",buildrmd )
  system(cmd)
}
render(buildrmd, clean=TRUE, "revealjs_presentation", output_file='index.html' ) 
