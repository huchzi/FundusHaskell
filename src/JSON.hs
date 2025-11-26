{-# LANGUAGE DeriveGeneric #-}

module JSON (MyShape(..), MyStructure(..), decodeStructure) where

import Data.Aeson
import GHC.Generics
import qualified Data.ByteString.Lazy as BL

data MyShape = Circle { radius :: Double, color :: String }
             | Rect   { width :: Double, height :: Double, color :: String }
             deriving (Show, Eq, Generic)

data MyStructure = MyStructure
    { shapes :: [MyShape] }
    deriving (Show, Eq, Generic)

-- Automatische JSON-Instanzen
instance FromJSON MyShape
instance FromJSON MyStructure

decodeStructure :: BL.ByteString -> Either String MyStructure
decodeStructure = eitherDecode