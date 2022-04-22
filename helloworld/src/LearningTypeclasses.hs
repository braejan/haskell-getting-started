module LearningTypeclasses(
    call
) where
    data Time = Millisecond Integer | Second Integer | Minute Integer
    
    instance Eq Time where
        (==) (Millisecond a) (Millisecond b) = a == b
        (==) (Second a) (Second b) = a == b
        (==) (Minute a) (Minute b) = a == b
        (==) (Millisecond a) (Second b) = do
            let ms = secondToMillisecond b
            a == ms
        (==) (Millisecond a) (Minute b) = do
            let ms = minuteToMillisecond b
            a == ms
        (==) (Second a) (Millisecond b) = do
            let ms = secondToMillisecond a
            b == ms
        (==) (Second a) (Minute b) = do
            let s = minuteToSecond b
            a == s
        (==) (Minute a) (Millisecond b) = do
            let ms = minuteToMillisecond a
            b == ms
        (==) (Minute a) (Second b) = do
            let s = minuteToSecond a
            b == s
    call :: IO()
    call = do
        putStrLn "Wellcome to learn typeclasses in haskell."
        let ms = Millisecond 60000
        let s = Second 60
        let m = Minute 1
        putStrLn ("60000 milliseconds equal to 60 seconds? " ++ show (ms == s))
        putStrLn ("60000 milliseconds equal to 1 minute? " ++ show (ms == m))
        putStrLn ("60 seconds equal to 60000 milliseconds? " ++ show (s == ms))
        putStrLn ("60 seconds equal to 1 minute? " ++ show (s == m))
        putStrLn ("1 minute equal to 60 seconds? " ++ show (m == s))
        putStrLn ("1 minute equal to 60000 milliseconds? " ++ show (m == ms))
    secondToMillisecond :: Integer  -> Integer 
    secondToMillisecond x = (*) x 1000

    minuteToSecond :: Integer -> Integer 
    minuteToSecond x = (*) x 60

    minuteToMillisecond :: Integer -> Integer 
    minuteToMillisecond x = (*) (minuteToSecond x) 1000