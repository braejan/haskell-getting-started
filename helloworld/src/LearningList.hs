module LearningList(
    workWithLists
) where

workWithLists :: IO()

workWithLists = do
    let list = [1..10]
    putStrLn ("List generated " ++ show list)
    putStrLn ("Head of the list " ++ show (head list))
    putStrLn ("List length " ++ show (length list))
    putStrLn ("Is empty this list? " ++ show(null list))
    let booleanList = [True, False, True, False, False]
    putStrLn ("and in list " ++ show booleanList ++ " = " ++ show (and booleanList))
    putStrLn ("or in list " ++ show  booleanList ++ " = " ++ show (or booleanList))
    let xList = [1, 3, 5, 7, 9]
    let powerList = [ (*)x x | x <- xList]
    putStrLn ("Power list: " ++ show powerList)
    let touple = [(x, y) |x <- xList, y <- booleanList]
    putStrLn ("Touple created: " ++ show touple)
