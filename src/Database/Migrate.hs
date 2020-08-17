{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE EmptyDataDecls             #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE GADTs                      #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE QuasiQuotes                #-}
{-# LANGUAGE StandaloneDeriving         #-}
{-# LANGUAGE TemplateHaskell            #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE UndecidableInstances       #-}
import           Control.Monad.IO.Class  (liftIO)
import           Database.Persist
import           Database.Persist.Quasi
import           Database.Persist.Sqlite
import           Database.Persist.TH

share [mkPersist sqlSettings, mkMigrate "migrateAll"] $(persistFileWith lowerCaseSettings "./Models.persistentmodels")


doMigrate :: IO ()
doMigrate = runSqlite "../../butler.db" $ do
    runMigration migrateAll
    justinId <- insert $ User "Justin Thong" "justinthong93@gmail.com" True
    justin <- get justinId
    liftIO $ print (justin :: Maybe User)
