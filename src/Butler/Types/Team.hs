{-# LANGUAGE TemplateHaskell #-}

module Butler.Types.Team
  (
    Team(..)
  ) where

import           Butler.Types.Stats (TeamStats (..))
import           Data.Aeson.TH      (defaultOptions, deriveJSON)

data Team = Team
    { teamId    :: Int
    , teamStats :: TeamStats
    }
    deriving (Eq, Show)

$(deriveJSON defaultOptions ''Team)
