#!/usr/bin/env Rscript
#
# ants wip / future work
#
library(ggplot2)
library(shiny)
library(ggvis)
library(rmarkdown)
srcdir<-"./"
pre='ants2015'
render( paste(pre,".Rmd",sep=''), clean=TRUE, "revealjs_presentation", output_file='index.html' ) 
