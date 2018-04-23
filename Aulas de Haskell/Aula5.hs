module Aula5 where

-- foldl :: (b -> a -> b) -> b -> [a] -> b

contVogal :: Int -> Char -> Int
contVogal ct l 
    | elem l "AEIOUaeiou" = ct+1
    | otherwise = ct
