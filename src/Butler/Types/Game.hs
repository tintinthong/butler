
{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

module Butler.Types.Game
  (
    Game(Game)
  ) where

import Butler.Types.Team
import Butler.Types.Stats

data Game = Game
    { gameId     :: Int
    , gameTeam   :: (Team, Team)
    }
    deriving (Eq, Show)
