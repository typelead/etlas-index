let map =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/master/Prelude/List/map

let types =
      https://raw.githubusercontent.com/eta-lang/dhall-to-etlas/master/dhall/types.dhall sha256:2d82ad75489e7e70eda49fcc0fc3af37656fa8924bd3a254bce9ff1ac9f8aa95

let v =
      https://raw.githubusercontent.com/eta-lang/dhall-to-etlas/master/dhall/Version/v.dhall

let thisVersion =
      https://raw.githubusercontent.com/eta-lang/dhall-to-etlas/master/dhall/VersionRange/thisVersion.dhall

let Package =
      { name :
          Text
      , versions :
          List types.Version
      , lastest :
          types.VersionRange
      }

let pkg
    : Text → List Text → Text → Package
    =   λ(name : Text)
      → λ(versions : List Text)
      → λ(lastest : Text)
      → { name =
            name
        , versions =
            map Text types.Version v versions
        , lastest =
            thisVersion (v lastest)
        }

in  { dhall-eta =
        pkg "dhall-eta" [ "1.0.0" ] "1.0.0"
    , eta-java-interop =
        pkg
        "eta-java-interop"
        [ "0.1.0.0", "0.1.1.0", "0.1.3.0", "0.1.5.0" ]
        "0.1.5.0"
    }
