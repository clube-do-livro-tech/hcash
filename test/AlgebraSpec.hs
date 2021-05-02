module AlgebraSpec where

import Test.Hspec (Spec, describe, context, it, shouldBe)
import HCash.Algebra as Algebra

-- |Required for auto-discpvery
spec :: Spec
spec = do
  describe "HCash.Algebra - Arithmetic" $ do
    it "sum should work" $ do
      Algebra.sum 1 2 `shouldBe` 3
      (1 `Algebra.sum` 2) `shouldBe` 3 -- infix notation
    it "successor should work" $ do
      Algebra.successor 10 `shouldBe` 11  
    it "multiply should work" $ do
      Algebra.multiply 5 4 `shouldBe` 20
    it "square should work" $ do
      Algebra.square 4 `shouldBe` 16
  describe "HCash.Algebra - Boolean Operators" $ do
    it "or should work" $ do
      Algebra.or True False `shouldBe` True
      Algebra.or True True `shouldBe` True
      Algebra.or False True `shouldBe` True
      Algebra.or False False `shouldBe` False
    it "and should work" $ do
      Algebra.and True False `shouldBe` False
      Algebra.and True True `shouldBe` True
      Algebra.and False True `shouldBe` False
      Algebra.and False False `shouldBe` False
    it "nor should work" $ do
      Algebra.nor True False `shouldBe` False
      Algebra.nor True True `shouldBe` False
      Algebra.nor False True `shouldBe` False
      Algebra.nor False False `shouldBe` True
    it "nand should work" $ do
      Algebra.nand True False `shouldBe` True
      Algebra.nand True True `shouldBe` False
      Algebra.nand False True `shouldBe` True
      Algebra.nand False False `shouldBe` True
    it "xor should work" $ do
      Algebra.xor True False `shouldBe` True
      Algebra.xor True True `shouldBe` False
      Algebra.xor False True `shouldBe` True
      Algebra.xor False False `shouldBe` False
    it "not should work" $ do
      Algebra.not True `shouldBe` False
      Algebra.not False `shouldBe` True