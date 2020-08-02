
{-# LANGUAGE TypeOperators   #-}
{-# LANGUAGE DataKinds       #-}

module Butler.Types.Api
  (
    UserAPI
  ) where

import Servant
import Butler.Types.User


type UserAPI = "users" :> Get '[JSON] [User]
           :<|> "users" :> Capture "userId" Int :> Get '[JSON] User

