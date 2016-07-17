#!/usr/bin/env Rscript

library( ggplot2 )
library( shiny )
library( ggvis )
library( rmarkdown )

buildrmd <- 'simpleItkTalk.Rmd'

####################
#
#         * http://www.itk.org/Wiki/SimpleITK/Tutorials/MICCAI2015
#         * May 5, 2015
#
####################

rawrmds <- c( "format.Rmd",
              "simpleItkTalk/background.Rmd",
              "simpleItkTalk/itkv4.Rmd",
              "simpleItkTalk/antsBrief.Rmd"
               )

for ( x in 1:length( rawrmds ) ) {
  if ( x == 1 )  cmd<-paste( "cat ",rawrmds[x]," > ",buildrmd ) else cmd <- paste( "cat ", rawrmds[x], " >> ", buildrmd )
  system( cmd )
}
render( buildrmd, clean=TRUE )
