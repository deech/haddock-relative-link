# haddock-relative-link

Example of copying custom HTML documents into the 'doc' directory so Haddock can relative link to them.

Doing `stack haddock` makes the relative link in [Lib]( https://github.com/deech/haddock-relative-link/blob/master/src/Lib.hs ) resolve to [custom HTML](https://github.com/deech/haddock-relative-link/blob/master/extra-docs/someFunc.html). The annoying bit is having to dig through the Cabal API to [copy it over to the right directory](https://github.com/deech/haddock-relative-link/blob/master/Setup.hs#L18).
