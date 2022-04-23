module LearningIO(
    call
) where
    import Data.Char (toLower)
    import qualified Control.Monad
    call :: IO ()
    call = do
        putStrLn "Wellcome to learn In/Out in Hakell"
        greet

    greet :: IO()
    greet = do
        putStrLn "Who's around me? Who's around me!?"
        name <- getLine
        putStrLn ("Hello " ++ name ++ ".")
        Control.Monad.when (name == "braejan") $ do
            mirror

    mirror :: IO()
    mirror = do
        i <- getLine
        let command = map toLower i
        Control.Monad.when (command /= "quit") $ do
            putStrLn ("$ >>" ++ command)
            mirror
