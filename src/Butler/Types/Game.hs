
{-# LANGUAGE TemplateHaskell #-}

module Butler.Types.Game
  (
    Game(..)
  ) where

import           Butler.Types.Team (Team (..))
import           Data.Aeson.TH     (defaultOptions, deriveJSON)

data Game = Game
    { gameId   :: Int
    , gameTeam :: (Team, Team)
    }
    deriving (Eq, Show)

$(deriveJSON defaultOptions ''Game)
