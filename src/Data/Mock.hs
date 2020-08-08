
module Data.Mock
  (
    users
  ) where

import           Butler.Types.User (Name (..), User (..))

users :: [User]
users = [ User 1 (Name "Justin" "Thong" ) "tintinthong" "tintinthong@gmail.com" Nothing
        , User 2 (Name "Rachel" "Tan") "melodichamster" "melodichamster@gmail.com" Nothing
        ]
