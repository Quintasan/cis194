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
        describe "doubleEveryOther" $ do
            it "should double every other number" $ do
                doubleEveryOther [8,7,6,5] `shouldBe` [16,7,12,5]
                doubleEveryOther [1,2,3] `shouldBe` [1,4,3]
        describe "sumDigits" $ do
            it "should sum all digits in an array of Integers" $ do
                sumDigits [16,7,12,5] `shouldBe` (22 :: Integer)
        describe "validate" $ do
            it "should return True if the credit card number is valid" $ do
                validate 4012888888881881 `shouldBe` (True :: Bool)
            it "should return False otherwise" $ do
                validate 4012888888881882 `shouldBe` (False :: Bool)
