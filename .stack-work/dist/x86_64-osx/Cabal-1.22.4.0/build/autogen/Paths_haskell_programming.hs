module Paths_haskell_programming (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/rakeshkasinathan/code/haskell-programming/.stack-work/install/x86_64-osx/lts-3.17/7.10.2/bin"
libdir     = "/Users/rakeshkasinathan/code/haskell-programming/.stack-work/install/x86_64-osx/lts-3.17/7.10.2/lib/x86_64-osx-ghc-7.10.2/haskell-programming-0.1.0.0-KsiGrfu8egR9jvWPkSGL0O"
datadir    = "/Users/rakeshkasinathan/code/haskell-programming/.stack-work/install/x86_64-osx/lts-3.17/7.10.2/share/x86_64-osx-ghc-7.10.2/haskell-programming-0.1.0.0"
libexecdir = "/Users/rakeshkasinathan/code/haskell-programming/.stack-work/install/x86_64-osx/lts-3.17/7.10.2/libexec"
sysconfdir = "/Users/rakeshkasinathan/code/haskell-programming/.stack-work/install/x86_64-osx/lts-3.17/7.10.2/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "haskell_programming_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "haskell_programming_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "haskell_programming_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "haskell_programming_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "haskell_programming_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
