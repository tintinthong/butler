{-# LANGUAGE TemplateHaskell #-}

module Butler.Types.Stats
  (
    PlayerStats(PlayerStats)
    , TeamStats(TeamStats)
  ) where

import Data.Aeson.TH

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
