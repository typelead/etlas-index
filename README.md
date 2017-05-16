# Index for Etlas, the Eta Package Repository

## Quick Jump
- [Package Listing](#package-listing)
- [Submitting a Package](#submitting-a-package)

## Package Listing

- [eta-spark-0.1.0.0](https://github.com/Jyothsnasrinivas/eta-spark) - Eta bindings for Apache Spark
- [eta-jdbc-0.1.0.0](https://github.com/Jyothsnasrinivas/eta-jdbc) - Eta bindings for JBDC.
- [wai-servlet-0.1.0.0](https://github.com/jneira/wai-servlet) - Library to integrate [eta](http://eta-lang.org) [wai](https://github.com/yesodweb/wai) applications with the [servlet api](http://docs.oracle.com/javaee/7/api/javax/servlet/package-summary.html)
- [wai-servlet-handler-jetty-0.1.0.0](https://github.com/jneira/wai-servlet-handler-jetty) - Wai handler to run [eta](http://eta-lang.org) [wai](https://github.com/yesodweb/wai) applications in a embedded jetty server

## Submitting a Package

Suppose you want to upload a package you've written, `somepackage-0.1.0.1` to the Etlas repo.

1. Decide the name of tag you want to create for you release, but do not create it yet. We'll refer to this as `[tag]`. This will mostly be the version of the package you want to release, so in this case it can be `0.1.0.1`, `v0.1.0.1`, or any convention that suits you.

2. Add the following section to your Cabal file:

```
source-repository this
  type: git
  location: [location] 
  tag: [tag] 
```

  - `[location]` - Url of the repository
  - `[tag]` - Mentioned in (1)

3. Commit & push your changes.

```
git add somepackage.cabal
git commit -m "[commit-msg]"
git push
```
  - `[commit-msg]` - Commit message of your choice, something like "Releasing somepackage-0.1.0.1".

4. Create & push the tag.

```
git tag [tag]
git push --tags
```

5. If you haven't already, fork this repo and clone it locally.

6. Create a new branch with the name of your package.

```
git checkout -b somepackage-0.1.0.1
```

7. Copy the Cabal file from (2) into `packages/somepackage/0.1.0.1/somepackage.cabal`.

8. Add a new entry into the `00-index.tar` file (you can open it in a text editor):

```
pkg: somepackage 0.1.0.1 p# packages/somepackage/0.1.0.1/somepackage.cabal
```

9. Add an entry for your package to the listing in `README.md`.

10. Commit & push your changes.

```
git add .
git commit -m "Releasing somepackage-0.1.0.1"
git push
```

11. Submit a pull request to this repo.
