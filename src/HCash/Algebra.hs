module HCash.Algebra where

-- Arithmetic

sum a b = a + b

successor :: Integer -> Integer
successor = HCash.Algebra.sum 1

multiply a b = a * b

square a = multiply a a

-- Boolean operators

or :: Bool -> Bool -> Bool
or True _ = True
or False b = b

and :: Bool -> Bool -> Bool
and True True = True
and _ _ = False

nand :: Bool -> Bool -> Bool
nand True True = False
nand _ _ = True

not :: Bool -> Bool
not True = False
not False = True

xor :: Bool -> Bool -> Bool
xor True a = HCash.Algebra.not a
xor False a = a

nor :: Bool -> Bool -> Bool
nor False False = True
nor _ _ = False
