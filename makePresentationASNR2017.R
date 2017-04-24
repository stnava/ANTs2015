#!/usr/bin/env Rscript

####################
#
#   July 19, 2016
#
#
#
#
#####################

library( ggplot2 )
library( rmarkdown )

srcDir <- "./"
buildrmd <- 'asnr2017.Rmd'

########   Morning    ##########

# Retrospective

rawrmds <- c( "format.Rmd",
              "background/background3.Rmd",
              "competitions/competitions.Rmd",
              "evaluation/antsvfreesurfer2.Rmd",
              "evaluation/antsvfreesurfer2_extra.Rmd",
              "antsr/antsr.Rmd",
              "finalSlide.Rmd"
               )

for ( x in 1:length(rawrmds) ) {
  if ( x == 1 )
    {
    cmd<-paste( "cat ", rawrmds[x], " > ", buildrmd )
    } else {
      cmd<-paste( "cat ", rawrmds[x], " >> ", buildrmd )
    }
  system( cmd )
  }

render( buildrmd, clean = TRUE )
