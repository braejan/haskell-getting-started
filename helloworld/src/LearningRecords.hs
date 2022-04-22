{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant bracket" #-}
module LearningRecords(
    call
) where

    data Person = Person {
        firstName :: String,
        lastName :: String,
        age :: Integer,
        active :: Bool
    } | Employee{
        person :: Person,
        company :: String
    }

    call :: IO()
    call = do
        putStrLn "Wellcome to learn Records in Haskell"
        let braejan = Person "Braejan" "Arias" 32 True
        putStrLn (greet braejan)
        let employee = Employee braejan "Sonatype"
        putStrLn (greet (person employee))
    greet :: Person -> String
    greet person = ("Hi " ++ firstName person ++ " \
        \" ++ lastName person ++ "!" ++ "\nAge: \
        \" ++ show (age person) ++ "\nActive? \
        \" ++ show (active person))
