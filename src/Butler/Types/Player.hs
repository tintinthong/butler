
{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

module Butler.Types.Player
  (
    Player(Player)
  ) where

import Butler.Types.Team
import Butler.Types.Stats
import Butler.Types.Game

data Player = Player
    { playerId   :: Int
    , playerGames :: [Game]
    }
    deriving (Eq, Show)
