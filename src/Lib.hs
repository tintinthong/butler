{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

module Lib
    ( startApp
    , app
    ) where

import           Butler.Controller.User   (getUser, getUsers)
import           Butler.Types.Api         (UserAPI)
import           Network.Wai.Handler.Warp (run)
import           Servant                  ((:<|>) (..), Application, Proxy (..),
                                           Server (..), serve)

startApp :: IO ()
startApp = run 8080 app

app :: Application
app = serve api server

api :: Proxy UserAPI
api = Proxy

server :: Server UserAPI
server = getUsers :<|>
         getUser
