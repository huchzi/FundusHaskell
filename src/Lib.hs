module Lib
    ( parseJSON
    ) where

import JSON (decodeStructure)

parseJSON :: FilePath -> IO MyStructure
parseJSON fp = do
    contents <- BL.readFile fp
    decodeStructure contents