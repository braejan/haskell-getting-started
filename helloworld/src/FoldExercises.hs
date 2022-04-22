module FoldExercises(
    call
) where
    call :: IO()
    call = do
        putStrLn "Wellcome to Fold exercises in haskell"
        let orderedList = [1..20]
        let revList = rev orderedList
        putStrLn ("Reverse list " ++ show revList)
        let prefixesLists = prefixes orderedList
        putStrLn ("Prefixes lists " ++ show prefixesLists)


    rev :: [a] -> [a]
    rev = foldl (flip (:)) []

    prefixes :: [a] -> [[a]]
    prefixes = foldr (\x acc -> [x] : map (x:) acc) []
    --                 xs             x
    --lagrange :: [(Float, Float)] -> Float -> Float
    --lagrange xs x = foldl ()
    
