{-# LANGUAGE TemplateHaskell #-}

module Butler.Types.Team
  (
    Team(Team)
  ) where

import Butler.Types.Stats
import Data.Aeson.TH

data Team = Team
    { teamId     :: Int
    , teamStats :: TeamStats
    }
    deriving (Eq, Show)

$(deriveJSON defaultOptions ''Team)
