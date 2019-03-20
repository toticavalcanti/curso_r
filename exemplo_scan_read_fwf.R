rm (list = ls ())

setwd("C:/Users/toti.cavalcanti/Documents/MyProjects/R_projects/curso_r")

mydata <- scan("20180901_SPU_ImoveisFuncionais_ListaPermissionarios.csv", sep = ";", 
               what = list("", "", "", "", ""))


mydata02 <- read.fwf("data.txt", widths = c(1, 4, 3))

