let types = ./types/package.dhall

let boot =
      { base =
          { name = "base", version = "4.11.1.0" }
      , eta-boot =
          { name = "eta-boot", version = "0.8.6" }
      , eta-boot-meta =
          { name = "eta-boot-meta", version = "0.8.6" }
      , eta-meta =
          { name = "eta-meta", version = "0.8.6.4" }
      , eta-repl =
          { name = "eta-repl", version = "0.8.6.4" }
      , ghc-prim =
          { name = "ghc-prim", version = "0.4.0.0" }
      , integer =
          { name = "integer", version = "0.5.1.0" }
      , rts =
          { name = "rts", version = "0.1.0.0" }
      }

in  boot
