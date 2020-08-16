{-# LANGUAGE TemplateHaskell #-}

module Butler.Types.Player
  (
    Player(..)
  ) where

import           Butler.Types.Game (Game (..))
import           Butler.Types.Team (Team (..))
import           Data.Aeson.TH     (defaultOptions, deriveJSON)

data Player = Player
    { playerId    :: Int
    , playerGames :: Maybe [Game]
    }
    deriving (Eq, Show)

$(deriveJSON defaultOptions ''Player)
