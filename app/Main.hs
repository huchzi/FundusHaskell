module Main where

import Lib (processFile)

main :: IO ()
main = do
    -- CLI-Args holen
    args <- getArgs
    case args of
        [input] -> parseJSON input
        _ -> putStrLn "Usage: myproject <input.json>"