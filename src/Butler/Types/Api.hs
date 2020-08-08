
{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

module Butler.Types.Api
  (
    UserAPI
  ) where

import           Butler.Types.User (User (..))
import           Servant           ((:<|>), (:>), Capture, Get, JSON (..))


type UserAPI = "users" :> Get '[JSON] [User]
           :<|> "users" :> Capture "userId" Int :> Get '[JSON] User

