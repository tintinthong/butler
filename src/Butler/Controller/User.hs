module Butler.Controller.User
  ( getUsers
  , getUser
  )where

import           Butler.Types.User (User (..))
import           Data.Mock         (users)
import           Servant           (Handler (..))

getUsers :: Handler [User]
getUsers = return users

getUser :: Int -> Handler User
getUser id = return $ head $ filter (\user -> userId user == id) users

