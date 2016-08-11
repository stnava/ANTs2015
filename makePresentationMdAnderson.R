#!/usr/bin/env Rscript

####################
#
#   August 11, 2016
#
#
#
#
#####################

library( ggplot2 )
library( rmarkdown )

srcDir <- "./"
buildrmd <- 'mdAnderson.Rmd'

########   Morning    ##########

# Retrospective

rawrmds <- c( "format.Rmd",
              "background/people2.Rmd",
#               "licenses/licenses.Rmd",
              "background/background.Rmd",
#               "competitions/competitions.Rmd",
              "papers/papers.Rmd",
              "evaluation/antsvfreesurfer2.Rmd"
#               "antsr/antsr.Rmd"
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
