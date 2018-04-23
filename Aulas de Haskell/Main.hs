module Main where

-- A MONADA IO
-- data () = ()
-- IO () == void do Java

-- F = [], G = Maybe
safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead xs = Just (head xs)

-- getLine eh um IO String
main :: IO ()
main = do
    putStrLn "Digite um nome: "
    nome <- fmap safeHead getLine
    case nome of
        Nothing -> putStrLn "Erro..."
        (Just x) -> putStrLn  $ "A letra eh: " ++ show x
    

main'' :: IO ()
main'' = do 
    putStrLn "Digite um nome: " 
    x <- getLine  
    putStrLn ("Ola " ++ x)


main' :: IO ()
main' = putStrLn "Digite um nome: " >> getLine >>= \x -> putStrLn ("Ola " ++ x)
