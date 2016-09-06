module Week01.Assignment where

toDigitsRev :: Integer -> [Integer]
toDigitsRev n
  | n > 0     = n `mod` 10 : toDigitsRev(n `div` 10)
  | otherwise = []

toDigits :: Integer -> [Integer]
toDigits n = reverse $ toDigitsRev n

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther = reverse . zipWith ($) (cycle [id, (*2)]) . reverse

sumDigits :: [Integer] -> Integer
sumDigits numbers = sum . concat $ map toDigits numbers

validate :: Integer -> Bool
validate number
  | result `mod` 10 == 0 = True
  | otherwise            = False
  where result = sumDigits . doubleEveryOther $ toDigits number
