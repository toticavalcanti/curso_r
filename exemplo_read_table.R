#remove os objetos que estão na memória
rm(list = ls ())

#Pega o path do work directory
getwd()

#Define o path do work directory
setwd("C:/Users/toti.cavalcanti/Documents/MyProjects/R_projects/curso_r")

#            file       header  separador
df <- read.table("drinks.txt", TRUE, sep = ",", quote = "\"", 
                 na.strings = TRUE, strip.white = TRUE, comment.char = "$",
                 blank.lines.skip = TRUE)
