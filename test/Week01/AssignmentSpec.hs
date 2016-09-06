module Week01.AssignmentSpec (main, spec) where

import Test.Hspec
import Week01.Assignment

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
        describe "toDigits" $ do
                it "splits an integer into an array of integers" $ do
                        toDigits 1234 `shouldBe` [1,2,3,4]
                it "should return [] for zero" $ do
                        toDigits 0 `shouldBe` []
                it "should return [] for negative integers" $ do
                        toDigits (-7) `shouldBe` []
        describe "toDigitsRev" $ do
                it "splits an integer into an array of integers" $ do
                        toDigitsRev 1234 `shouldBe` [4,3,2,1]
                it "should return [] for zero" $ do
                        toDigitsRev 0 `shouldBe` []
                it "should return [] for negative integers" $ do
                        toDigitsRev (-17) `shouldBe` []
