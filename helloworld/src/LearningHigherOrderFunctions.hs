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
        --filter if element is greater than 5
        let filterLambda item = item > 5
        let filteredList = filter filterLambda orderList
        putStrLn ("Filtered list " ++ show filteredList)
        --filter if element is grater than 5 and even
        let filterLambdaWithPowers item = filterLambda item && even item
        let filteredList = filter filterLambdaWithPowers orderList
        putStrLn ("Filtered list 2" ++ show filteredList)

        {-
        An anonymous function is a function without a name. It is a Lambda
        abstraction and might look like this: \x -> x + 1. (That backslash
        is Haskell's way of expressing a λ and is supposed to look like a
        Lambda.) 
        let's create a add anonymous function
        -}
        let add = (\x -> (+) x 1)
        {-
        This can be improved like this: 
        add x = (+) x 1
        -}
        putStrLn (" 5 + 1 = " ++ show(add 5))

