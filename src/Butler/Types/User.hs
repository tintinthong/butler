{-# LANGUAGE TemplateHaskell #-}

module Butler.Types.User
  (
    User(User)
    , Name(Name)
  ) where

import           Butler.Types.Player
import           Data.Aeson.TH

data Name = Name
    { firstName :: String
    , lastName  :: String
    }
    deriving (Eq, Show)

data User = User
    { userId    :: Int
    , userName  :: Name
    , userAlias :: String
    , userEmail :: String
    , userPlayer    :: Maybe Player
    }
    deriving (Eq, Show)

$(deriveJSON defaultOptions ''Name)
$(deriveJSON defaultOptions ''User)
