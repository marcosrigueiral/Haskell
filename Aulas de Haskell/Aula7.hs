module Aula7 where 

data Dupla a = Dupla a a deriving Show

-- LEMBRETE: Functor restringe kind * -> *
instance Functor Dupla where  
    fmap f (Dupla x y) = Dupla (f x) (f y) 

safeDiv :: Double -> Double -> Maybe Double
safeDiv x 0 = Nothing
safeDiv x y = Just (x/y)

