import Distribution.Simple
import Distribution.Simple.Utils
import System.FilePath
import Distribution.Simple.Setup
import Distribution.PackageDescription
import Distribution.Simple.LocalBuildInfo

main = defaultMainWithHooks
       (
         simpleUserHooks
         {
           postHaddock = customPostHaddock
         }
       )

customPostHaddock :: Args -> HaddockFlags -> PackageDescription -> LocalBuildInfo -> IO ()
customPostHaddock _ flags pd lbi = do
  let docPref = docdir (absoluteInstallDirs pd lbi (fromFlag (copyDest defaultCopyFlags)))
  rawSystemExit (fromFlag $ haddockVerbosity flags) "cp"
    ["extra-docs" </> "someFunc.html" , docPref]
