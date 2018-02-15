#!/usr/bin/env Rscript

####################
#
#   Feb 15, 2018
#
#
#
#
#####################

library( ggplot2 )
library( rmarkdown )

srcDir <- "./"
buildrmd <- 'cohen.Rmd'

########   Morning    ##########

# Retrospective

#
#  Should add
#    fmri processing

rawrmds <- c( "format.Rmd",
              "background/background3.Rmd",
              "competitions/competitions.Rmd",
              "papers/papers.Rmd",
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
