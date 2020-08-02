module Butler.Controller.User
  ( getUsers
  , getUser
  )where

import           Butler.Types.User
import           Data.Mock
import Servant

getUsers :: Handler [User]
getUsers = return users 

getUser :: Int -> Handler User
getUser id = return $ head $ filter (\user -> userId user == id) users

