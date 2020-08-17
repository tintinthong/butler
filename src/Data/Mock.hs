
module Data.Mock
  (
    users
  ) where

import           Butler.Types.Player (Player (..))
import           Butler.Types.Team   (Team (..))
import           Butler.Types.User   (Name (..), User (..))
-- import           Data.Random.Extras  (sample)

users ::[User]
users = [ User 1 (Name "Justin" "Thong" ) "tintinthong" "tintinthong@gmail.com" Nothing
        , User 2 (Name "Rachel" "Tan") "melodichamster" "melodichamster@gmail.com" Nothing
        ]

players :: [Player]
players = genPlayers 100


genPlayers :: Int -> [Player]
genPlayers n = [ Player i Nothing | i <- [1..n]]
