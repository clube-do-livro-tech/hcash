module AlgebraSpec where

import Test.Hspec (Spec, describe, context, it, shouldBe)
import HCash.Algebra as Algebra

-- |Required for auto-discpvery
spec :: Spec
spec =
  describe "HCash.Algebra" $ do
    it "sum should work" $ do
      Algebra.sum 1 2 `shouldBe` 3
    it "successor should work" $ do
      Algebra.successor 10 `shouldBe` 11  
    it "multiply should work" $ do
      Algebra.multiply 5 4 `shouldBe` 20
    it "square should work" $ do
      Algebra.square 4 `shouldBe` 16
