#Funções Estatísticas e Geração de Sequências Randômicas
#Exemplo 1

#Questão 01
#Qual é a probabilidade de uma cirurgia ACL, em um hospital com alto volume de cirurgias
#, requerer um tempo maior do que dois desvios-padrão acima da média?

#Limpar memória
rm(list=ls())

1 - pnorm(2)

#Questão 02
#Qual é a probabilidade de uma cirurgia ACL, em um hospital com alto volume de cirurgias
#ser completada em menos de 100 minutos?

#100 cirurgias completadas em menos de 100 minutos
#129 é a média
#14 é o desvio padrão

#(100 - 129) / 14 = -2.0714
(100 - 129) / 14

pnorm(-2.0714)

#Questão 03
#Em qual tempo a probabilidade de uma cirurgia ACL em um hospital com alto volume de 
#cirurgias é igual a 0.95?

qnorm(0.95)

#Outro exemplo
#Encontre um número z positivo para que a área sob a curva normal 
#padrão entre ???z e z seja 0,95.

#1 - 0.975 = 0.025
qnorm(0.025) 
#0.025 + 0.95 = 0.975
qnorm(0.975)

#Instalação dos pacotes necessários
install.packages("tigerstats")
install.packages("abd")
install.packages("mosaic")
install.packages("psych")
require(tigerstats)

#Gera o gráfico
pnormGC(c(-1.96,1.96),region="between",mean=0,
        sd=1,graph=TRUE)

#valor da densidade da normal no ponto -1
dnorm(-1)

#probabilidade no ponto -1
pnorm(-1)

#gera uma amostra de 10 elementos da normal padrão.
rnorm(10)

#Teste qui-quadrado com x^2 = 3.84 com df (Degrees of freedom) = 1
1 - pchisq(3.84, 1)


