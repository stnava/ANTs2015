#!/usr/bin/env Rscript
#
# ants wip / future work
#
library(ggplot2)
library(shiny)
library(ggvis)
library(rmarkdown)
# library(revealjs)
srcdir<-"./"
buildrmd='ants2015build.Rmd'

####################
#
#             May 19
#
####################

########   Morning    ##########

# Retrospective
rawrmds <- c( "retrospective/retrospective.Rmd", "retrospective/neuroimage_fmri.Rmd",
              "background/people.Rmd", "background/background.Rmd",
              "papers/papers.Rmd",
              "philosophy/circularity/circularity.Rmd",
              "competitions/competitions.Rmd",
              "summary/summary.Rmd"
                )

# Research talk
# rawrmds <- c( "evaluation/antsvfreesurfer2.Rmd",
#                "evaluation/antsvfreesurfer2_extra.Rmd",
#                "longitudinal/longitudinal2.Rmd" )

########   Afternoon    ##########
# rawrmds <- c( "installation/installation.Rmd",
#               "installation/ants_installation.Rmd",
#               "installation/snap_installation.Rmd" )

# rawrmds<-c("ants2015.Rmd","background/background1.Rmd","impact/impact1.Rmd","templates/templates.Rmd","evaluation/evaluation1.Rmd","evaluation/antsvfreesurfer2.Rmd","longitudinal/longitudinal.Rmd","lesions/lesions.Rmd","antsr/antsrdemo.Rmd","conclusion/conclusion.Rmd","lastslide.Rmd")
# rawrmds<-c("ants2015.Rmd","evaluation/antsvfreesurfer.Rmd","longitudinal/longitudinal.Rmd","lesions/lesions.Rmd","antsr/antsrdemo.Rmd","conclusion/conclusion.Rmd","lastslide.Rmd")
# rawrmds<-c("ants2015_GE.Rmd", "evaluation/antsvfreesurfer2.Rmd", "lesions/lesions.Rmd", "longitudinal/longitudinal.Rmd" )
# rawrmds<-c( "ants2015_GE.Rmd", "philosophy/circularity/circularity.Rmd", "evaluation/antsvfreesurfer2.Rmd" )
for ( x in 1:length(rawrmds) ) {
  if ( x == 1 )  cmd<-paste( "cat ",rawrmds[x]," > ",buildrmd ) else cmd<-paste( "cat ",rawrmds[x]," >> ",buildrmd )
  system(cmd)
}
render(buildrmd, clean=TRUE )
