module HCash.Control where

import Control.Monad.Cont (forM_)

foreach :: (Foldable t, Monad m) => t a -> (a -> m b) -> m ()
foreach = forM_ -- a better name