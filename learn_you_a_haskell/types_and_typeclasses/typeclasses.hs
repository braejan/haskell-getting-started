
greet :: String -> String
greet x = "Hello " ++ x ++ ", It's nice to meet you!"

factorial :: Integer -> Integer
factorial x = product [1..x]

circumference :: Float -> Float
circumference r = 2 * pi * r

newCircumference :: Double -> Double
newCircumference r = 2 * pi * r
