module Aula3 where

data Curso = ADS | SI | GE | GP | LOG deriving Show

-- RECORD SYNTAX: NOMEACAO DE CAMPOS
data Disciplina = Disciplina{
           disciplinaNome :: String
         , disciplinaCarga :: Int
         } deriving Show
         
data Aluno = Aluno{
           alunoNome :: String
         , alunoCurso :: Curso
         , alunoDisciplinas :: [Disciplina]
         } deriving Show         
         
transferirLog :: Aluno -> Aluno
transferirLog (Aluno nome _ _) = 
         Aluno nome LOG [Disciplina "Logistica I" 80] 

-- O PATTERN MATCHING ESTA A SERVICO DA 
-- DESCONSTRUCAO DO TIPO ALUNO. COM ISSO,
-- GANHAMOS ACESSO A SEUS CAMPOS
matricula :: Disciplina -> Aluno -> Aluno
matricula disc (Aluno nome curso lista) = 
         Aluno nome curso (disc:lista)
