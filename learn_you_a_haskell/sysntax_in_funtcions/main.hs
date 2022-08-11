
--lucky function
lucky :: (Integral a) => a -> String
lucky 15 = "You win!! Fifteen is a lucky number!"
lucky x = "Sorry! It wasn't your lucky day."

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial x = x * factorial (x - 1)

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)


firstName :: (a, b, c) -> a
firstName (a, _, _) = a


capital :: String -> String
capital "" = "Not valid input."
capital all@(x:xs) = "Capital letter for " ++ all ++ " is " ++ [x]


howOlder :: Integer -> String
howOlder age
  | age <= 0 = "You need to born first!"
  | age < 5 = "You are a kid."
  | age < 18 = "You are a young person."
  | age < 25 = "You are a young adult!"
  | age < 40 = "You are a adult."
  | age < 70 = "You are old."
  | otherwise = "You are really old."

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weigth height
  | bmi <= 18.5 = "You are underweigth."
  | bmi <= 25.0 = "You are supposedly normal"
  | bmi <= 30.0 = "Hey! you are fat."
  | otherwise = "You are a whale."
  where bmi = weigth / height^2






