#remove os objetos que estão na memória
rm(list = ls ())

#Pega o path do work directory
getwd()

#Define o path do work directory
setwd("C:/Users/toti.cavalcanti/Documents/MyProjects/R_projects/curso_r/")

#Cria e popula o dataframe de exemplo 
exemplo_df <- data.frame(coluna_de_strings = c("primeira string", "segunda string", "terceira string"), 
                        coluna_de_valores = c(1,3,5) )

#------------write.table------------------#

#Exemplo com col.names = TRUE
#Vai escrever o nome das colunas e das linhas no arquivo.
write.table(exemplo_df, file = "write_table_exemplo01.csv", sep = ",", col.names = TRUE, 
            qmethod = "double")

#Exemplo com row.names = FALSE, col.names = False
#Não vai escrever nem o nome das colunas nem das linhas no arquivo
write.table(exemplo_df, file = "write_table_exemplo02.csv", sep = ",", row.names = FALSE, 
            col.names = FALSE, qmethod = "double")

#Outro exemplo para explicar o parâmetro qmethod do write.table
#Limpa a memória
rm(list = ls ())

#Cria o dataframe chamdo df com 
df <- data.frame(a = "a \" quote", b = pi)

write.table(df, file = "qmethod_test.csv", sep = ",", col.names = NA,
            qmethod = "double")
                         
            
#------------write------------------#

#Cria uma matriz de 2 linhas e 3 colunas com  
#10 elementos numéricos (de 1 a 10)
mat <- matrix(1:10, ncol = 5)

#Cria e escreve no arquivo dados_mat.txt a matriz mat,
#usando tabulação como separador
write(x, file = "dados_mat.txt", sep = "\t")

#--------save.image, save e load(".RData")---------------#

#--------save.image()------------------------#

#Salva as variáveis na memória 
save.image("save_image_example.RData")

#remove os objetos que estão na memória
rm(list = ls ())

#Carrega de volta os objetos que estavam na memória
load("save_image_example.RData")

#----------------save-------------------------#

#Limpa a memória
rm(list = ls ())

#Cria 3 objetos
x <- "String 01"
y <- rnorm(200)
z <- 97

# salva 
save(x, y, z, file = "xyz.RData")

#Limpa novamente a memória
rm(x, y, z)

#Carrega as variáveis de volta
load("xyz.RData")