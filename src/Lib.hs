{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

module Lib
    ( startApp
    , app
    ) where

import           Butler.Controller.User
import           Butler.Types.Api         (UserAPI)
import           Butler.Types.User
import           Data.Aeson.TH
import           Data.Mock
import           Network.Wai
import           Network.Wai.Handler.Warp
import           Servant

startApp :: IO ()
startApp = run 8080 app

app :: Application
app = serve api server

api :: Proxy UserAPI
api = Proxy

server :: Server UserAPI
server = getUsers :<|>
         getUser
