#Fun��es Estat�sticas e Gera��o de Sequ�ncias Rand�micas
#Exemplo 1

#Quest�o 01
#Qual � a probabilidade de uma cirurgia ACL, em um hospital com alto volume de cirurgias
#, requerer um tempo maior do que dois desvios-padr�o acima da m�dia?

#Limpar mem�ria
rm(list=ls())

1 - pnorm(2)

#Quest�o 02
#Qual � a probabilidade de uma cirurgia ACL, em um hospital com alto volume de cirurgias
#ser completada em menos de 100 minutos?

#100 cirurgias completadas em menos de 100 minutos
#129 � a m�dia
#14 � o desvio padr�o

#(100 - 129) / 14 = -2.0714
(100 - 129) / 14

pnorm(-2.0714)

#Quest�o 03
#Em qual tempo a probabilidade de uma cirurgia ACL em um hospital com alto volume de 
#cirurgias � igual a 0.95?

qnorm(0.95)

#Outro exemplo
#Encontre um n�mero z positivo para que a �rea sob a curva normal 
#padr�o entre ???z e z seja 0,95.

#1 - 0.975 = 0.025
qnorm(0.025) 
#0.025 + 0.95 = 0.975
qnorm(0.975)

#Instala��o dos pacotes necess�rios
install.packages("tigerstats")
install.packages("abd")
install.packages("mosaic")
install.packages("psych")
require(tigerstats)

#Gera o gr�fico
pnormGC(c(-1.96,1.96),region="between",mean=0,
        sd=1,graph=TRUE)

#valor da densidade da normal no ponto -1
dnorm(-1)

#probabilidade no ponto -1
pnorm(-1)

#gera uma amostra de 10 elementos da normal padr�o.
rnorm(10)

#Teste qui-quadrado com x^2 = 3.84 com df (Degrees of freedom) = 1
1 - pchisq(3.84, 1)


