module Aula2 where

trd :: (Int,Int,Int) -> Int
trd (x,y,z) = z

somar' :: (Int, Int, Int) -> Int
somar' (x,y,z) = x+y+z

somar :: Int -> Int -> Int -> Int 
somar x y z = x+y+z

divisores :: Int -> [Int]
divisores n = [x| x<-[1..n], mod n x == 0]

ehPrimo :: Int -> Bool
ehPrimo n = length(divisores n) == 2

mil :: [Int]
mil = [1..1000]

pin :: Int -> String
pin x
   | mod x 4 == 0 = "PIN"
   | otherwise = show x