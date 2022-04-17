module ListExercise(
    callThem,
    ListExercise.elem
) where

    elem ::(Eq a) => a -> [a] ->Bool
    elem _[] = False 
    elem e (x:xs) = (e == x) || ListExercise.elem e xs

    nub :: (Eq a) => [a] -> [a]
    nub [] = []
    nub (x:xs)
        | ListExercise.elem x xs = nub xs
        | otherwise = x: nub xs
    
    isAsc :: [Int] -> Bool 
    isAsc [] = True 
    isAsc [x] = True
    isAsc (x:y:xs) = x <= y && isAsc (y:xs)


    callThem :: IO() 
    callThem = do
        let exists = ListExercise.elem 5 [1..20]
        putStrLn ("Exists 5 in list " ++ show [1..20] ++ ": " ++ show exists)

        let cleanList = nub [1, 2, 3 ,3, 7, 9, 5, 5, 5, 3 , 2, 9]
        putStrLn ("Clean list: " ++ show cleanList)

        let isAscendingList = isAsc cleanList
        putStrLn ("Is Clean List ascending? " ++ show isAscendingList)