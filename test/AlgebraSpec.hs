module AlgebraSpec where

import Test.Hspec (Spec, describe, context, it, shouldBe)

import HCash.Algebra as Algebra
import HCash.Control (foreach)

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
    it "all operators should work" $ do  -- forM_ loop
      foreach [False, True] $ \a -> do
        foreach [False, True] $ \b -> do
          Algebra.or a b `shouldBe` a || b
          Algebra.and a b `shouldBe` a && b
          Algebra.nor a b `shouldBe` Prelude.not(a || b)
          Algebra.nand a b `shouldBe` Prelude.not(a && b)
          Algebra.xor a b `shouldBe` a /= b
          Algebra.not a `shouldBe` Prelude.not(a)
