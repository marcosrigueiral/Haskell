module Aula4 where

-- HIGH-ORDER FUNCTIONS: UMA FUNCAO QUE
-- RECEBE VIA PARAMETRO OU RETORNA 
-- OUTRA FUNCAO. 

foo :: (Int -> Int) -> Int
foo f = 1 + f 5

somar' :: Int -> (Int -> Int)
somar' x = \y -> x+y



-- LAMBDAS: FUNCOES ANONIMAS

-- CURRYING: EH O ATO DE CHAMAR UMA FUNCAO
-- COM MENOS PARAMETROS DO QUE O PEDIDO.
-- ASSIM, CRIAR-SE-Á UMA NOVA FUNCAO 
-- QUE RECEBE OS PARAMETROS FALTANTES.
somar :: Int -> Int -> Int -> Int
somar x y z = x+y+z