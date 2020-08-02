
{-# LANGUAGE TemplateHaskell #-}

module Butler.Types.Game
  (
    Game(Game)
  ) where

import Data.Aeson.TH
import Butler.Types.Team
import Butler.Types.Stats

data Game = Game
    { gameId     :: Int
    , gameTeam   :: (Team, Team)
    }
    deriving (Eq, Show)

$(deriveJSON defaultOptions ''Game) 
