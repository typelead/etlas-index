let types = ./types.dhall

in    λ(P : Type)
    → λ(pkg : types.Package → P)
    → { array =
          pkg { name = "array", version = "0.5.2.0" }
      , base =
          pkg { name = "base", version = "4.11.1.0" }
      , binary =
          pkg { name = "binary", version = "0.8.5.1" }
      , containers =
          pkg { name = "containers", version = "0.5.10.2" }
      , deepseq =
          pkg { name = "deepseq", version = "1.4.3.0" }
      , directory =
          pkg { name = "directory", version = "1.3.1.0" }
      , eta-boot =
          pkg { name = "eta-boot", version = "0.8.6" }
      , eta-boot-meta =
          pkg { name = "eta-boot-meta", version = "0.8.6" }
      , eta-meta =
          pkg { name = "eta-meta", version = "0.8.6.4" }
      , eta-repl =
          pkg { name = "eta-repl", version = "0.8.6.4" }
      , filepath =
          pkg { name = "filepath", version = "1.4.1.2" }
      , ghc-prim =
          pkg { name = "ghc-prim", version = "0.4.0.0" }
      , integer =
          pkg { name = "integer", version = "0.5.1.0" }
      , pretty =
          pkg { name = "pretty", version = "0.5.1.0" }
      , rts =
          pkg { name = "rts", version = "0.1.0.0" }
      , template-haskell =
          pkg { name = "template-haskell", version = "2.11.1.0" }
      , time =
          pkg { name = "time", version = "1.8.0.3" }
      }
