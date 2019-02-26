let Dependency =
      https://raw.githubusercontent.com/eta-lang/dhall-to-etlas/etlas/dhall/types/Dependency.dhall sha256:be82b2f78534259dd9daa761bf33e7445af07881ffce120ba0877d6fea43c882

let v =
      https://raw.githubusercontent.com/eta-lang/dhall-to-etlas/etlas/dhall/Version/v.dhall sha256:a3c7f7d2fbe8ea4358e1f11a0464db2ded38f239349cd0327dc10bcf09174863

let thisVersion =
      https://raw.githubusercontent.com/eta-lang/dhall-to-etlas/etlas/dhall/VersionRange/thisVersion.dhall sha256:ddbb6d0a440645550bb7bef162dc4377280da58fe385133552675f02907ee123

let idx-types = ./types.dhall

let idx = ./index.dhall

let boot = ./boot-packages.dhall

let idxPkgToDep =
        λ(pkg : idx-types.IndexedPackage)
      → { package = pkg.name, bounds = thisVersion (v pkg.lastest) }

let pkgToDep =
        λ(pkg : idx-types.Package)
      → { package = pkg.name, bounds = thisVersion (v pkg.version) }

let deps = idx Dependency idxPkgToDep ⫽ boot Dependency pkgToDep

in  deps
