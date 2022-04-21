module LearningDatatypes(
    call
) where
    data BasicCalculator = 
        Add Integer Integer |
        Sub Integer Integer |
        Mul Integer Integer |
        Div Integer Integer deriving Show
    call :: IO()
    call = do
        putStrLn "Learning Datatypes in Haskell"
        putStrLn "Using a basic calculator (no zero division)"
        let  addBasicCalculator= Add 15 10
        putStrLn ("sumResult: " ++ show (calc addBasicCalculator))

    
    calc :: BasicCalculator -> Integer 
    calc (Add x y) = (+) y x
    calc (Sub x y) = (-) y x
    calc (Mul x y) = (*) y x
    calc (Div x y) = div y x
    
