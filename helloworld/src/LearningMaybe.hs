module LearningMaybe(
    call
) where
    import Data.Maybe(fromMaybe)
    call :: IO()
    call = do
        putStrLn "Wellcome to learning Maybe in Haskell."
        let orderedList = [1..15]
        let mapped = map (fromMaybe 0 . getUserId) orderedList
        putStrLn ("Mapped: " ++ show mapped)

    safeDiv :: Integral a => a -> a -> a
    safeDiv a b | b == 0 = 0
        | otherwise  = div a b

    getUserId :: Integral a => a -> Maybe a
    getUserId a | even a = Nothing
        | otherwise = Just a
    