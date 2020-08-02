{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeOperators   #-}
{-# LANGUAGE DataKinds       #-}

module Lib
    ( startApp
    , app
    ) where

import Data.Aeson.TH
import Network.Wai
import Network.Wai.Handler.Warp
import Servant
import Butler.Types.User 
import Butler.Types.Api
import Data.Mock

startApp :: IO ()
startApp = run 8080 app

app :: Application
app = serve api server

api :: Proxy API
api = Proxy

server :: Server API
server = return users
