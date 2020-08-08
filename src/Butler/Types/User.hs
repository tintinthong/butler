{-# LANGUAGE TemplateHaskell #-}

module Butler.Types.User
  (
    User(..)
    , Name(..)
  ) where

import           Butler.Types.Player (Player)
import           Data.Aeson.TH       (defaultOptions, deriveJSON)

data Name = Name
    { firstName :: String
    , lastName  :: String
    }
    deriving (Eq, Show)

data User = User
    { userId     :: Int
    , userName   :: Name
    , userAlias  :: String
    , userEmail  :: String
    , userPlayer :: Maybe Player
    }
    deriving (Eq, Show)

$(deriveJSON defaultOptions ''Name)
$(deriveJSON defaultOptions ''User)
