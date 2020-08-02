{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

module Butler.Types.Stats
  (
    PlayerStats(PlayerStats)
    , TeamStats(TeamStats)
  ) where

import Data.Aeson.TH
import Data.Aeson

data GenericStats = GenericStats
    {
      points :: Int
    , rebounds :: Int
    , assists :: Int
    , steals :: Int
    }
    deriving (Eq, Show)

data PlayerStats = PlayerStats
    {
      playerstatsgeneric :: GenericStats
    }
    deriving (Eq, Show)

data TeamStats = TeamStats
    {
      teamstatsgeneric :: GenericStats
    }
    deriving (Eq, Show)


data GameStates = Home | Away

$(deriveJSON defaultOptions ''GenericStats)
$(deriveJSON defaultOptions ''PlayerStats)
$(deriveJSON defaultOptions ''TeamStats)
