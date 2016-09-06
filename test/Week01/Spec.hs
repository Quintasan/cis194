module Week01.Spec (main, spec) where

import Test.Hspec
import Week01.Assignment

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
	describe "toDigits" $ do
	 toDigits 1234 `shouldBe` [1,2,3,4]
