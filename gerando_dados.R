#remove os objetos que estão na memória
rm(list = ls ())

#Pega o path do work directory
getwd()

#Define o path do work directory
setwd("C:/Users/toti.cavalcanti/Documents/MyProjects/R_projects/curso_r/")

#Scripts da aula 12 - gerando dados com R

x <- 1:30

1:10

1:10-1

1:(10-1)

1:10-2

1-1:10-1

seq(1, 5, 0.5)

seq(length=9, from=1, to=5)

c(1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5)

rep(1, 30)

sequence(4:5)

sequence(c(10,5))

gl(3, 5)

gl(3, 5, length=30)

gl(2, 6, label=c("Male", "Female"))

gl(2, 10)

gl(2, 1, length=20)

gl(2, 2, length=20)

expand.grid(h=c(60,80), w=c(100, 300), sex=c("Male", "Female"))



