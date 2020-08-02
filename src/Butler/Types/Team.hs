
{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

module Butler.Types.Team
  (
    Team(Team)
  ) where

import Butler.Types.Stats

data Team = Team
    { teamId     :: Int
    , teamStats :: TeamStats
    }
    deriving (Eq, Show)
