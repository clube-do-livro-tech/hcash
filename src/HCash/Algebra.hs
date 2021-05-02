module HCash.Algebra where

sum a b = a + b

successor :: Integer -> Integer
successor = HCash.Algebra.sum 1

multiply a b = a * b

square a = multiply a a