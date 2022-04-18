module LearningFunctions
    ( inRange, calculations, greetings
    ) where

inRange :: Integer -> Integer -> Integer -> Bool
inRange min max x =
    x >= min && x <= max

calculations :: Integer -> Integer -> IO()
calculations a b = do
    let sum = (+) a b
    putStrLn (show a ++ " + " ++ show b ++ " = " ++ show sum)
    let minus = (-) a b
    putStrLn (show a ++ " - " ++ show b ++ " = " ++ show minus)
    let multiply = (*) a b
    putStrLn (show a ++ " * " ++ show b ++ " = " ++ show multiply)
    let division = (/) (fromInteger b) (fromInteger a)
    putStrLn (show b ++ " / " ++ show a ++ " = " ++ show division)
    let isEven = even b
    putStrLn ("is " ++ show b ++ " even? " ++ show isEven)

{-
This is a Guard. Haskell guards are used to test the properties of an expression;
it might look like an if-else statement from a beginner’s view, but they function
very differently. Haskell guards can be simpler and easier to read than pattern 
matching
-}
greetings :: String -> IO()
greetings name
        | isEmpty name = putStrLn "Hello Who Has No Name, How're you?" --First guard
        | otherwise  =  putStrLn ("Hello " ++ name ++ ", How're doing today?") -- Second guard

isEmpty :: String  -> Bool
isEmpty = null
