#Criando objetos Vector, Factor, Matrix, Data frame, List, Time-series e Expression

#Limpar memória
rm(list=ls())

#---------------Vector--------------------------------------
#Vetor lógico
vector(mode = "logical", length = 4) 
#Vetor de caracter
character(5)
#Outra forma de criar vetor lógico
logical(3)
#Vetor numperico
numeric(4) 

#---------------Factor--------------------------------------
#Cria o vetor de dados
status <- c("Lo", "Hi", "Med", "Med", "Hi")
#Cria as categorias a partir do vetor status
ordered.status <- factor(status, levels=c("Lo", "Med", "Hi"), ordered=TRUE)
ordered.status

#Outros exemplos
factor(1:3)

factor(1:5, levels=1:3)

factor(1:3, labels=c("A", "B", "C"))

factor(1:5, exclude=4)

#cria um vetor como entrada e atribui a data
data <- c("East","West","East","North","North","East","West","West","West","East","South")
factor_data <- factor(data)

categories <- factor(c(2, 4), levels=2:5)
categories 

levels(categories )

#---------------Matrix--------------------------------------
matrix(data=5, nr=2, nc=2)

matrix(1:6, 2, 3)

matrix(1:6, 2, 3, byrow=TRUE)

# Define os nomes das colunas e das linhas.
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")

p <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))
p

x <- 1:15
x

dim(x)

dim(x) <- c(5, 3)
x

#---------------Data frame--------------------------------------
x <- 1:4; n <- 10; M <- c(10, 35); y <- 2:4
data.frame(x, n)

data.frame(x, M)

x
n

data.frame(x, y)

data.frame (x, n)

df = data.frame (A1 = x, A2 = n)
df

df <- data.frame (A1 = x, A2 = n, row.names = c("line 01", "line 02", "line 03", "line 04"))
df

dim(df)

#---------------List--------------------------------------
L1 <- list(x, y); L2 <- list(A=x, B=y)
L1

L2

#---------------Time-series-------------------------------
ts(1:10, start = 1959)

ts(1:47, frequency = 12, start = c(1959, 2))

my.ts <- ts(1:12, start=c(2009, 1), end=c(2019, 12), frequency=12)
my.ts

ts(1:10, frequency = 4, start = c(1959, 2))

ts(matrix(rpois(36, 5), 12, 3), start=c(1961, 1), frequency=12)
   
#---------------Expression-------------------------------
x1 <- expression(3 * 5)
x1

eval(x1)

x <- 3; y <- 2.5; z <- 1

exp1 <- expression(x / (y + exp(z)))
exp1

eval(exp1)

#Derivadas parciais
D(exp1, "x")

D(exp1, "y")

D(exp1, "z")