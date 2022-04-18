module LearningHigherOrderFunctions(
    call
) where
    call :: IO()
    call = do
        putStrLn "Wellcome to Learning Higher Order Funtions exercises."
        {-
        A higher order functions allows functions can by sent as arguments.
        map or filter is a example of that kind.
        -}
        let orderList = [0..10]
        let duplicate = (*) 2 --Lambda function 
        let doubleList = map duplicate orderList
        {-
        Haskell map definition (or type) is 'map :: (a -> b) -> [a] -> [b]'
        For each item in order list map apply 'duplicate' function.
        'duplicate' function was sent as parameter to map. As result it create
        a new list with duplicated values.
        -}
        putStrLn ("Doble list: " ++ show doubleList)
        --filter 
