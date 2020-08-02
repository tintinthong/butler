
{-# LANGUAGE TypeOperators   #-}
{-# LANGUAGE DataKinds       #-}

module Butler.Types.Api
  (
    API
  ) where

import Servant
import Butler.Types.User


type API = "users" :> Get '[JSON] [User]
  
