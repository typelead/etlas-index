import System.Directory
import System.FilePath ((</>), dropExtension)
import Data.List
import Data.Traversable (for)
import System.Directory.Tree
import System.IO.Temp
import System.Process

main = do
  pkgs  <- getPackages
  prefs <- getPreferences
  writeFile "00-index.tar" $ unlines $ pkgs ++ prefs

getPackages = do
  (_ :/ Dir _ pkgDirs') <- readDirectoryWith return "packages"
  let pkgDirs = sortOn (\(Dir pkg _) -> pkg) pkgDirs'
  fmap concat $
    for pkgDirs $ \(Dir pkg vers) ->
      for vers $ \(Dir ver [File _ cabalFile]) ->
        return $ "pkg: " <> pkg <> " " <> ver <> " p# " <> cabalFile

getPreferences =
  withSystemTempDirectory "eta-hackage" $ \tmpDir -> do
    callCommand $ "git clone https://github.com/typelead/eta-hackage " <> tmpDir
    pkgVers1 <- fromPatchesFolder tmpDir
    pkgVers2 <- fromWorkingFile tmpDir
    let preferences = map toPreference
                    . groupBy (\(a1,_) (a2,_) -> a1 == a2)
                    . map splitPkgVersion
                    . sort
                    . nub
                    $ pkgVers1 ++ pkgVers2
        splitPkgVersion pkgVer = (reverse (drop 1 rest), reverse reverseVer)
            where (reverseVer, rest) = break (== '-') $ reverse pkgVer
        toPreference pairs@((pkg,_):_) =
            "pref-ver: " ++ pkg ++ " " ++ intercalate " || " versions
            where versions = map ((\v -> "== " ++ v) . snd) pairs
    return preferences


fromPatchesFolder dir = do
  patchFiles <- getDirectoryContents (dir </> "patches")
  return . map dropExtension
         . filter (\p -> p `notElem` ["",".",".."])
         $ patchFiles

fromWorkingFile dir = do
  contents <- readFile (dir </> "WORKING")
  let makePkgVers l = map ((pkg <> "-") <>) vers
        where (pkg:vers) = words l
  return $ concatMap makePkgVers $ lines $ contents
