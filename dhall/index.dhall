let types = ./types.dhall

let empty = [] : List Text

in    λ(P : Type)
    → λ(gpkg : types.IndexedPackage → P)
    → let pkg =
              λ(n : Text)
            → λ(vs : List Text)
            → λ(pref : List Text)
            → λ(last : Text)
            → gpkg { name = n, versions = vs, preferred = pref, lastest = last }
      
      in  { dhall-eta =
              pkg "dhall-eta" [ "1.0.0" ] empty "1.0.0"
          , eta-java-interop =
              pkg
              "eta-java-interop"
              [ "0.1.0.0", "0.1.1.0", "0.1.3.0", "0.1.5.0" ]
              empty
              "0.1.5.0"
          , eta-jdbc =
              pkg "eta-jdbc" [ "0.1.0.0", "0.2.0.0" ] empty "0.2.0.0"
          , eta-kafka-client =
              pkg "eta-kafka-client" [ "0.5.0", "0.5.1" ] empty "0.5.1"
          , eta-kafka-conduit =
              pkg "eta-kafka-conduit" [ "0.5.0", "0.5.1" ] empty "0.5.1"
          , eta-spark =
              pkg "eta-spark" [ "0.1.0.0" ] empty "0.1.0.0"
          , eta-spark-core =
              pkg "eta-spark-core" [ "0.1.1.0" ] empty "0.1.1.0"
          , wai-servlet =
              pkg
              "wai-servlet"
              [ "0.1.0.0"
              , "0.1.1.0"
              , "0.1.2.0"
              , "0.1.3.0"
              , "0.1.4.0"
              , "0.1.5.0"
              , "0.1.5.1"
              ]
              empty
              "0.1.5.1"
          , wai-servlet-handler-jetty =
              pkg
              "wai-servlet-handler-jetty"
              [ "0.1.0.0", "0.1.1.0", "0.1.2.0" ]
              empty
              "0.1.2.0"
          , Agda =
              pkg "Agda" empty [ "2.5.4.1" ] "2.5.4.1"
          , Elm =
              pkg "Elm" empty [ "0.13" ] "0.13"
          , FontyFruity =
              pkg "FontyFruity" empty [ "0.5.3.3" ] "0.5.3.3"
          , Glob =
              pkg "Glob" empty [ "0.9.1", "0.9.2" ] "0.9.2"
          , HaXml =
              pkg "HaXml" empty [ "1.25.4" ] "1.25.4"
          , JuicyPixels =
              pkg "JuicyPixels" empty [ "3.2.9.5", "3.3" ] "3.3"
          , MissingH =
              pkg "MissingH" empty [ "1.4.0.1" ] "1.4.0.1"
          , OneTuple =
              pkg "OneTuple" empty [ "0.2.1" ] "0.2.1"
          , QuickCheck =
              pkg "QuickCheck" empty [ "2.10.0.1", "2.10.1", "2.9.2" ] "2.9.2"
          , aeson =
              pkg
              "aeson"
              empty
              [ "0.11.0.0"
              , "0.11.3.0"
              , "1.1.0.0"
              , "1.1.1.0"
              , "1.1.2.0"
              , "1.2.0.0"
              , "1.2.1.0"
              , "1.2.2.0"
              , "1.2.3.0"
              , "1.2.4.0"
              , "1.4.0.0"
              ]
              "1.4.0.0"
          , aeson-pretty =
              pkg
              "aeson-pretty"
              empty
              [ "0.8.0", "0.8.1", "0.8.2", "0.8.3", "0.8.4", "0.8.5" ]
              "0.8.5"
          , affine =
              pkg "affine" empty [ "0.1.1.0" ] "0.1.1.0"
          , alex =
              pkg "alex" empty [ "3.2.4" ] "3.2.4"
          , alg =
              pkg "alg" empty [ "0.2.8.0" ] "0.2.8.0"
          , alternators =
              pkg "alternators" empty [ "1.0.0.0" ] "1.0.0.0"
          , amazonka-core =
              pkg "amazonka-core" empty [ "1.6.0" ] "1.6.0"
          , ansi-terminal =
              pkg
              "ansi-terminal"
              empty
              [ "0.6.2.3", "0.6.3.1", "0.7.1.1", "0.8.0.4" ]
              "0.8.0.4"
          , api-builder =
              pkg "api-builder" empty [ "0.15.0.0" ] "0.15.0.0"
          , appar =
              pkg "appar" empty [ "0.1.5" ] "0.1.5"
          , array =
              pkg "array" empty [ "0.5.1.1", "0.5.2.0" ] "0.5.2.0"
          , attoparsec =
              pkg
              "attoparsec"
              empty
              [ "0.13.2.0", "0.13.2.1", "0.13.2.2" ]
              "0.13.2.2"
          , avro =
              pkg "avro" empty [ "0.3.2.0" ] "0.3.2.0"
          , base-compat =
              pkg
              "base-compat"
              empty
              [ "0.10.1", "0.10.4", "0.9.1", "0.9.3" ]
              "0.9.3"
          , base-orphans =
              pkg "base-orphans" empty [ "0.5.4", "0.6", "0.7", "0.8" ] "0.8"
          , base-prelude =
              pkg "base-prelude" empty [ "1.2.0.1" ] "1.2.0.1"
          , base16-bytestring =
              pkg "base16-bytestring" empty [ "0.1.1.6" ] "0.1.1.6"
          , basement =
              pkg "basement" empty [ "0.0.4", "0.0.5", "0.0.6" ] "0.0.6"
          , basic-prelude =
              pkg "basic-prelude" empty [ "0.7.0" ] "0.7.0"
          , bifunctors =
              pkg "bifunctors" empty [ "5.5.3" ] "5.5.3"
          , binary =
              pkg "binary" empty [ "0.8.5.1" ] "0.8.5.1"
          , blaze-builder =
              pkg
              "blaze-builder"
              empty
              [ "0.3.3.4", "0.4.0.0", "0.4.0.1", "0.4.0.2", "0.4.1.0" ]
              "0.4.1.0"
          , blaze-textual =
              pkg "blaze-textual" empty [ "0.2.1.0" ] "0.2.1.0"
          , blockchain =
              pkg "blockchain" empty [ "0.0.3" ] "0.0.3"
          , bytes =
              pkg "bytes" empty [ "0.15.3" ] "0.15.3"
          , bytestring =
              pkg "bytestring" empty [ "0.10.8.1", "0.10.8.2" ] "0.10.8.2"
          , bytestring-show =
              pkg "bytestring-show" empty [ "0.3.5.6" ] "0.3.5.6"
          , bytestring-trie =
              pkg "bytestring-trie" empty [ "0.2.4.1" ] "0.2.4.1"
          , cassava =
              pkg "cassava" empty [ "0.5.1.0" ] "0.5.1.0"
          , cborg =
              pkg "cborg" empty [ "0.2.0.0", "0.2.1.0" ] "0.2.1.0"
          , cipher-aes =
              pkg "cipher-aes" empty [ "0.2.11" ] "0.2.11"
          , clock =
              pkg "clock" empty [ "0.7.2" ] "0.7.2"
          , cmdargs =
              pkg "cmdargs" empty [ "0.10.18", "0.10.19", "0.10.20" ] "0.10.20"
          , code-page =
              pkg "code-page" empty [ "0.1.3" ] "0.1.3"
          , comonad =
              pkg "comonad" empty [ "5", "5.0.1", "5.0.2" ] "5.0.2"
          , concurrent-output =
              pkg "concurrent-output" empty [ "1.10.6" ] "1.10.6"
          , conduit =
              pkg "conduit" empty [ "1.3.0.3" ] "1.3.0.3"
          , conduit-combinators =
              pkg "conduit-combinators" empty [ "1.1.2" ] "1.1.2"
          , containers =
              pkg
              "containers"
              empty
              [ "0.5.10.1", "0.5.10.2", "0.5.8.1", "0.5.8.2", "0.5.9.1" ]
              "0.5.9.1"
          , contravariant =
              pkg "contravariant" empty [ "1.3.3", "1.4" ] "1.4"
          , cql-io =
              pkg "cql-io" empty [ "1.0.1.1" ] "1.0.1.1"
          , crdt =
              pkg "crdt" empty [ "10.0", "9.3" ] "9.3"
          , criterion =
              pkg "criterion" empty [ "1.5.1.0" ] "1.5.1.0"
          , criterion-measurement =
              pkg "criterion-measurement" empty [ "0.1.1.0" ] "0.1.1.0"
          , crypto-api =
              pkg "crypto-api" empty [ "0.13.2" ] "0.13.2"
          , crypto-cipher-tests =
              pkg "crypto-cipher-tests" empty [ "0.0.11" ] "0.0.11"
          , crypto-random =
              pkg "crypto-random" empty [ "0.0.9" ] "0.0.9"
          , cryptohash =
              pkg "cryptohash" empty [ "0.11.9" ] "0.11.9"
          , cryptohash-md5 =
              pkg "cryptohash-md5" empty [ "0.11.100.1" ] "0.11.100.1"
          , cryptohash-sha1 =
              pkg "cryptohash-sha1" empty [ "0.11.100.1" ] "0.11.100.1"
          , cryptohash-sha256 =
              pkg "cryptohash-sha256" empty [ "0.11.101.0" ] "0.11.101.0"
          , cryptonite =
              pkg "cryptonite" empty [ "0.24" ] "0.24"
          , deepseq =
              pkg "deepseq" empty [ "1.4.3.0" ] "1.4.3.0"
          , dhall =
              pkg
              "dhall"
              empty
              [ "1.16.1"
              , "1.17.0"
              , "1.18.0"
              , "1.19.0"
              , "1.19.1"
              , "1.20.0"
              , "1.20.1"
              ]
              "1.20.1"
          , dhall-json =
              pkg
              "dhall-json"
              empty
              [ "1.2.1", "1.2.4", "1.2.5", "1.2.6" ]
              "1.2.6"
          , digest =
              pkg "digest" empty [ "0.0.1.2" ] "0.0.1.2"
          , directory =
              pkg
              "directory"
              empty
              [ "1.3.0.0", "1.3.0.1", "1.3.0.2", "1.3.1.0" ]
              "1.3.1.0"
          , distributed-process-p2p =
              pkg "distributed-process-p2p" empty [ "0.1.3.2" ] "0.1.3.2"
          , distributive =
              pkg
              "distributive"
              empty
              [ "0.5.0.2", "0.5.1", "0.5.2", "0.5.3" ]
              "0.5.3"
          , dlist =
              pkg "dlist" empty [ "0.7.1.2" ] "0.7.1.2"
          , double-conversion =
              pkg "double-conversion" empty [ "2.0.2.0" ] "2.0.2.0"
          , easy-file =
              pkg "easy-file" empty [ "0.2.1" ] "0.2.1"
          , entropy =
              pkg "entropy" empty [ "0.4" ] "0.4"
          , erf =
              pkg "erf" empty [ "2.0.0.0" ] "2.0.0.0"
          , extra =
              pkg "extra" empty [ "1.6.2", "1.6.3" ] "1.6.3"
          , fail =
              pkg "fail" empty [ "4.9.0.0" ] "4.9.0.0"
          , fast-logger =
              pkg "fast-logger" empty [ "2.4.10", "2.4.11" ] "2.4.11"
          , file-embed =
              pkg "file-embed" empty [ "0.0.10.1", "0.0.11" ] "0.0.11"
          , filepath =
              pkg "filepath" empty [ "1.4.1.0", "1.4.1.1", "1.4.1.2" ] "1.4.1.2"
          , foldl =
              pkg "foldl" empty [ "1.2.5" ] "1.2.5"
          , foreign-store =
              pkg "foreign-store" empty [ "0.2" ] "0.2"
          , formatting =
              pkg "formatting" empty [ "6.3.2", "6.3.4" ] "6.3.4"
          , foundation =
              pkg "foundation" empty [ "0.0.17", "0.0.18", "0.0.19" ] "0.0.19"
          , free =
              pkg "free" empty [ "4.12.4" ] "4.12.4"
          , fsnotify =
              pkg "fsnotify" empty [ "0.3.0.1" ] "0.3.0.1"
          , generic-deriving =
              pkg
              "generic-deriving"
              empty
              [ "1.10.7", "1.11", "1.11.1", "1.11.2" ]
              "1.11.2"
          , generics-sop =
              pkg "generics-sop" empty [ "0.3.2.0" ] "0.3.2.0"
          , geniplate-mirror =
              pkg "geniplate-mirror" empty [ "0.7.6" ] "0.7.6"
          , genvalidity =
              pkg "genvalidity" empty [ "0.5.1.0" ] "0.5.1.0"
          , half =
              pkg "half" empty [ "0.3" ] "0.3"
          , happy =
              pkg "happy" empty [ "1.19.9" ] "1.19.9"
          , hashable =
              pkg
              "hashable"
              empty
              [ "1.2.4.0", "1.2.5.0", "1.2.6.0", "1.2.6.1", "1.2.7.0" ]
              "1.2.7.0"
          , hashtables =
              pkg
              "hashtables"
              empty
              [ "1.2.1.0"
              , "1.2.1.1"
              , "1.2.2.0"
              , "1.2.2.1"
              , "1.2.3.0"
              , "1.2.3.1"
              ]
              "1.2.3.1"
          , haskeline =
              pkg "haskeline" empty [ "0.7.4.3" ] "0.7.4.3"
          , haste-prim =
              pkg "haste-prim" empty [ "0.6.0.0" ] "0.6.0.0"
          , haxl =
              pkg "haxl" empty [ "2.0.0.0", "2.0.1.0" ] "2.0.1.0"
          , hedgehog =
              pkg "hedgehog" empty [ "0.5.3", "0.6" ] "0.6"
          , highlighting-kate =
              pkg "highlighting-kate" empty [ "0.6.4" ] "0.6.4"
          , hmatrix =
              pkg "hmatrix" empty [ "0.19.0.0" ] "0.19.0.0"
          , hostname =
              pkg "hostname" empty [ "1.0" ] "1.0"
          , hourglass =
              pkg "hourglass" empty [ "0.2.10", "0.2.11" ] "0.2.11"
          , hslogger =
              pkg "hslogger" empty [ "1.2.10" ] "1.2.10"
          , hspec-core =
              pkg "hspec-core" empty [ "2.4.6", "2.5.5" ] "2.5.5"
          , html =
              pkg "html" empty [ "1.0.1.2" ] "1.0.1.2"
          , http-api-data =
              pkg
              "http-api-data"
              empty
              [ "0.3.5", "0.3.7", "0.3.7.1" ]
              "0.3.7.1"
          , http-client =
              pkg
              "http-client"
              empty
              [ "0.5.11", "0.5.12", "0.5.12.1", "0.5.13", "0.5.13.1", "0.5.14" ]
              "0.5.14"
          , http-conduit =
              pkg "http-conduit" empty [ "2.3.2" ] "2.3.2"
          , http2 =
              pkg "http2" empty [ "1.6.2", "1.6.3", "1.6.4" ] "1.6.4"
          , idris =
              pkg "idris" empty [ "1.3.0" ] "1.3.0"
          , ieee754 =
              pkg "ieee754" empty [ "0.8.0" ] "0.8.0"
          , integer-logarithms =
              pkg "integer-logarithms" empty [ "1.0.2" ] "1.0.2"
          , io-streams-haproxy =
              pkg "io-streams-haproxy" empty [ "1.0.0.2" ] "1.0.0.2"
          , language-glsl =
              pkg "language-glsl" empty [ "0.2.1" ] "0.2.1"
          , language-javascript =
              pkg "language-javascript" empty [ "0.6.0.11" ] "0.6.0.11"
          , lens =
              pkg
              "lens"
              empty
              [ "4.15.1"
              , "4.15.2"
              , "4.15.3"
              , "4.15.4"
              , "4.16"
              , "4.16.1"
              , "4.17"
              ]
              "4.17"
          , lens-aeson =
              pkg "lens-aeson" empty [ "1.0.2" ] "1.0.2"
          , lens-labels =
              pkg "lens-labels" empty [ "0.2.0.1" ] "0.2.0.1"
          , lifted-base =
              pkg "lifted-base" empty [ "0.2.3.10", "0.2.3.11" ] "0.2.3.11"
          , linear =
              pkg "linear" empty [ "1.20.6", "1.20.7" ] "1.20.7"
          , log-domain =
              pkg "log-domain" empty [ "0.12" ] "0.12"
          , machines =
              pkg "machines" empty [ "0.6.1", "0.6.2", "0.6.3" ] "0.6.3"
          , math-functions =
              pkg "math-functions" empty [ "0.2.1.0" ] "0.2.1.0"
          , megaparsec =
              pkg
              "megaparsec"
              empty
              [ "5.3.1", "6.4.1", "6.5.0", "7.0.3", "7.0.4" ]
              "7.0.4"
          , memory =
              pkg
              "memory"
              empty
              [ "0.14.10", "0.14.11", "0.14.12", "0.14.14" ]
              "0.14.14"
          , microlens-th =
              pkg "microlens-th" empty [ "0.4.1.1" ] "0.4.1.1"
          , mwc-random =
              pkg "mwc-random" empty [ "0.13.6.0" ] "0.13.6.0"
          , named =
              pkg "named" empty [ "0.2.0.0" ] "0.2.0.0"
          , network =
              pkg "network" empty [ "2.6.3.1", "2.6.3.2" ] "2.6.3.2"
          , network-info =
              pkg "network-info" empty [ "0.2.0.10" ] "0.2.0.10"
          , network-multicast =
              pkg "network-multicast" empty [ "0.2.0" ] "0.2.0"
          , network-transport =
              pkg "network-transport" empty [ "0.4.4.0", "0.5.2" ] "0.5.2"
          , network-uri =
              pkg
              "network-uri"
              empty
              [ "2.6.0.2", "2.6.0.3", "2.6.1.0" ]
              "2.6.1.0"
          , old-time =
              pkg "old-time" empty [ "1.1.0.3" ] "1.1.0.3"
          , optparse-applicative =
              pkg
              "optparse-applicative"
              empty
              [ "0.13.2.0", "0.14.0.0", "0.14.2.0" ]
              "0.14.2.0"
          , pandoc =
              pkg "pandoc" empty [ "2.5" ] "2.5"
          , pandoc-types =
              pkg "pandoc-types" empty [ "1.17.5.4" ] "1.17.5.4"
          , parsec =
              pkg "parsec" empty [ "3.1.13.0" ] "3.1.13.0"
          , path-io =
              pkg "path-io" empty [ "1.4.0" ] "1.4.0"
          , pretty =
              pkg "pretty" empty [ "1.1.3.6" ] "1.1.3.6"
          , pretty-show =
              pkg "pretty-show" empty [ "1.6.16", "1.7", "1.8.1" ] "1.8.1"
          , primitive =
              pkg
              "primitive"
              empty
              [ "0.6.1.0", "0.6.2.0", "0.6.4.0" ]
              "0.6.4.0"
          , process =
              pkg "process" empty [ "1.6.2.0" ] "1.6.2.0"
          , proto-lens =
              pkg "proto-lens" empty [ "0.3.1.0" ] "0.3.1.0"
          , protolude =
              pkg "protolude" empty [ "0.2.2" ] "0.2.2"
          , purescript =
              pkg "purescript" empty [ "0.12.0" ] "0.12.0"
          , reflection =
              pkg "reflection" empty [ "2.1.2" ] "2.1.2"
          , regex-pcre-builtin =
              pkg "regex-pcre-builtin" empty [ "0.94.4.8.8.35" ] "0.94.4.8.8.35"
          , regex-posix =
              pkg "regex-posix" empty [ "0.95.2" ] "0.95.2"
          , regex-tdfa =
              pkg "regex-tdfa" empty [ "1.2.1", "1.2.2", "1.2.3.1" ] "1.2.3.1"
          , repa =
              pkg "repa" empty [ "3.4.1.2", "3.4.1.3" ] "3.4.1.3"
          , resourcet =
              pkg "resourcet" empty [ "1.1.11" ] "1.1.11"
          , rio =
              pkg "rio" empty [ "0.1.5.0" ] "0.1.5.0"
          , sandi =
              pkg "sandi" empty [ "0.4.2" ] "0.4.2"
          , sbv =
              pkg "sbv" empty [ "6.1" ] "6.1"
          , scientific =
              pkg
              "scientific"
              empty
              [ "0.3.4.9", "0.3.5.0", "0.3.5.1" ]
              "0.3.5.1"
          , semigroupoids =
              pkg
              "semigroupoids"
              empty
              [ "5.1", "5.2", "5.2.1", "5.2.2", "5.3", "5.3.1" ]
              "5.3.1"
          , semigroups =
              pkg "semigroups" empty [ "0.18.3", "0.18.5" ] "0.18.5"
          , serialise =
              pkg "serialise" empty [ "0.2.0.0", "0.2.1.0" ] "0.2.1.0"
          , servant =
              pkg "servant" empty [ "0.10", "0.11" ] "0.11"
          , servant-docs =
              pkg
              "servant-docs"
              empty
              [ "0.10", "0.10.0.1", "0.11", "0.9.1.1" ]
              "0.9.1.1"
          , servant-server =
              pkg
              "servant-server"
              empty
              [ "0.10", "0.11", "0.11.0.1", "0.12", "0.9.1.1" ]
              "0.9.1.1"
          , setenv =
              pkg "setenv" empty [ "0.1.1.3" ] "0.1.1.3"
          , shake =
              pkg "shake" empty [ "0.16.2", "0.16.3", "0.16.4" ] "0.16.4"
          , singletons =
              pkg "singletons" empty [ "2.0.1" ] "2.0.1"
          , skein =
              pkg "skein" empty [ "1.0.9.4" ] "1.0.9.4"
          , statistics =
              pkg "statistics" empty [ "0.14.0.2" ] "0.14.0.2"
          , stm-chans =
              pkg "stm-chans" empty [ "3.0.0.4" ] "3.0.0.4"
          , streaming-bytestring =
              pkg "streaming-bytestring" empty [ "0.1.6" ] "0.1.6"
          , streaming-commons =
              pkg "streaming-commons" empty [ "0.1.18", "0.1.19" ] "0.1.19"
          , superbuffer =
              pkg "superbuffer" empty [ "0.3.1.1" ] "0.3.1.1"
          , system-fileio =
              pkg "system-fileio" empty [ "0.3.16.3" ] "0.3.16.3"
          , system-filepath =
              pkg "system-filepath" empty [ "0.4.13.4" ] "0.4.13.4"
          , tasty =
              pkg
              "tasty"
              empty
              [ "0.11.2.4", "0.11.2.5", "1.1.0.3", "1.1.0.4" ]
              "1.1.0.4"
          , template-haskell =
              pkg "template-haskell" empty [ "2.11.1.0" ] "2.11.1.0"
          , temporary =
              pkg "temporary" empty [ "1.2.1.1" ] "1.2.1.1"
          , terminal-size =
              pkg "terminal-size" empty [ "0.3.2.1" ] "0.3.2.1"
          , test-framework =
              pkg "test-framework" empty [ "0.8.2.0" ] "0.8.2.0"
          , text =
              pkg "text" empty [ "1.2.2.1", "1.2.2.2", "1.2.3.0" ] "1.2.3.0"
          , text-short =
              pkg "text-short" empty [ "0.1.1" ] "0.1.1"
          , tf-random =
              pkg "tf-random" empty [ "0.5" ] "0.5"
          , th-lift-instances =
              pkg "th-lift-instances" empty [ "0.1.11" ] "0.1.11"
          , time =
              pkg
              "time"
              empty
              [ "1.6.0.1"
              , "1.7"
              , "1.7.0.1"
              , "1.8"
              , "1.8.0.1"
              , "1.8.0.2"
              , "1.8.0.3"
              ]
              "1.8.0.3"
          , transformers =
              pkg "transformers" empty [ "0.4.2.0", "0.5.5.0" ] "0.5.5.0"
          , transient =
              pkg "transient" empty [ "0.6.0.1" ] "0.6.0.1"
          , trifecta =
              pkg "trifecta" empty [ "1.7.1.1" ] "1.7.1.1"
          , turtle =
              pkg "turtle" empty [ "1.5.10" ] "1.5.10"
          , typed-process =
              pkg "typed-process" empty [ "0.2.0.0", "0.2.2.0" ] "0.2.2.0"
          , unbounded-delays =
              pkg "unbounded-delays" empty [ "0.1.1.0" ] "0.1.1.0"
          , unix-time =
              pkg "unix-time" empty [ "0.3.7" ] "0.3.7"
          , unliftio =
              pkg "unliftio" empty [ "0.2.7.0", "0.2.7.1", "0.2.8.1" ] "0.2.8.1"
          , unordered-containers =
              pkg "unordered-containers" empty [ "0.2.9.0" ] "0.2.9.0"
          , uri-bytestring =
              pkg
              "uri-bytestring"
              empty
              [ "0.2.3.1", "0.2.3.2", "0.2.3.3", "0.3.0.0", "0.3.0.1" ]
              "0.3.0.1"
          , validity =
              pkg "validity" empty [ "0.7.0.0" ] "0.7.0.0"
          , vector =
              pkg
              "vector"
              empty
              [ "0.11.0.0", "0.12.0.0", "0.12.0.1" ]
              "0.12.0.1"
          , vector-th-unbox =
              pkg "vector-th-unbox" empty [ "0.2.1.6" ] "0.2.1.6"
          , vinyl =
              pkg "vinyl" empty [ "0.8.1.1" ] "0.8.1.1"
          , wai-app-static =
              pkg "wai-app-static" empty [ "3.1.6.2" ] "3.1.6.2"
          , wai-extra =
              pkg "wai-extra" empty [ "3.0.21.0", "3.0.22.0" ] "3.0.22.0"
          , wai-logger =
              pkg "wai-logger" empty [ "2.3.1" ] "2.3.1"
          , warp =
              pkg "warp" empty [ "3.2.22" ] "3.2.22"
          , websockets =
              pkg "websockets" empty [ "0.12.5.1", "0.12.5.2" ] "0.12.5.2"
          , word8 =
              pkg "word8" empty [ "0.1.2", "0.1.3" ] "0.1.3"
          , x509-system =
              pkg "x509-system" empty [ "1.6.6" ] "1.6.6"
          , xhtml =
              pkg "xhtml" empty [ "3000.2.2.1" ] "3000.2.2.1"
          , yesod =
              pkg "yesod" empty [ "1.6.0" ] "1.6.0"
          , yesod-core =
              pkg "yesod-core" empty [ "1.6.6" ] "1.6.6"
          , yesod-static =
              pkg "yesod-static" empty [ "1.6.0" ] "1.6.0"
          , zip-archive =
              pkg "zip-archive" empty [ "0.3.3" ] "0.3.3"
          , zlib =
              pkg "zlib" empty [ "0.6.1.2" ] "0.6.1.2"
          , zlib-bindings =
              pkg "zlib-bindings" empty [ "0.1.1.5" ] "0.1.1.5"
          }
