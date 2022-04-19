module LearningComposition(
    call
)where
    import ListExercise(nub)
    call :: IO()
    call = do
        putStrLn "Wellcome to learn about Composition."
        {-
        Function composition is the act of pipelining the result 
        of one function, to the input of another, creating an entirely
        new function.
        For example, let create a list with repeated an unsorted values.
        Create a single function using the nub function previously created.
        -}
        let unsortedList = [9, 87, 6, 34, 98, 24, 34, 56, 87, 55, 1, 0, 9, 87]
        putStrLn ("call quicksort " ++ show (quicksort unsortedList))
        let cleanAndSortList = nub . reverse . quicksort -- Composition operator .
        let result = cleanAndSortList unsortedList
        putStrLn ("Clean and sorted list: " ++ show result)


    quicksort :: (Ord a) => [a] -> [a]
    quicksort [] = []
    quicksort [x] = [x]
    quicksort (x:xs)
        | x > head xs = x:quicksort xs 
        | otherwise = quicksort xs ++ [x] 
    