let types =
      https://raw.githubusercontent.com/eta-lang/dhall-to-etlas/master/dhall/types.dhall sha256:2d82ad75489e7e70eda49fcc0fc3af37656fa8924bd3a254bce9ff1ac9f8aa95

let v =
      https://raw.githubusercontent.com/eta-lang/dhall-to-etlas/master/dhall/Version/v.dhall

let or =
      https://raw.githubusercontent.com/eta-lang/dhall-to-etlas/master/dhall/VersionRange/unionVersionRanges.dhall

let pkg =
        λ(name : Text)
      → λ(version-range : types.VersionRange)
      → { package = name, bounds = version-range }

in pkg
