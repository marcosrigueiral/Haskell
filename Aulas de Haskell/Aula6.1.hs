module Aula6 where

data Cont x a = Cont {runCont :: (a -> x) -> x}

instance Functor (Cont x) where 
    fmap ab (Cont axx) = Cont $ \bx -> axx $ bx . ab 
    
instance Applicative (Cont x) where 
    pure a = Cont $ \ax -> ax a
    -- (Cont abxx) <*> (Cont axx) = Cont $ \bx -> 
    
g :: (Integer -> Integer) -> (Integer -> Integer)
g x = \n -> if n == 0 then 1 else n * x (n-1)

x0 :: Integer -> Integer
x0 = undefined

(f0:f1:f2:f3:f4:fs) = iterate g x0

data Empty

ff :: Empty -> ()
ff _ = ()

gg :: () -> Empty
gg () = undefined