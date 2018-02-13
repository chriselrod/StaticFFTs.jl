# StaticFFTs




[![Build Status](https://travis-ci.org/chriselrod/StaticFFTs.svg?branch=master)](https://travis-ci.org/chriselrod/StaticFFTs)

[![Coverage Status](https://coveralls.io/repos/chriselrod/StaticFFTs.jl/badge.svg?branch=master&service=github)](https://coveralls.io/github/chriselrod/StaticFFTs.jl?branch=master)

[![codecov.io](http://codecov.io/github/chriselrod/StaticFFTs.jl/coverage.svg?branch=master)](http://codecov.io/github/chriselrod/StaticFFTs.jl?branch=master)


This package implements StaticFFTs. It is a work in progress.
Short term goals (likely to be added in the next commit or two, when I get around to it):

- [ ] iffts
- [ ] rffts and irffts

Little longer, but also near term if I end up using this:

- [ ] Splitting operations of real and complex numbers. Will make it easier to drop needless calculations (ie, 0 * x).
- [ ] See about getting some more SIMD action?


Long term, fork and make use of this???
- [ ] https://github.com/JuliaLang/julia/pull/6193

Currently, `FFTW` overtakes StaticFFTs in performance for relatively small vectors (eg, FFTW is faster for vectors of length 50).
Adding the above could probably keep StaticFFTs reasonably close up to much larger sizes, which would be great for automatic differentiation, using BigFloats or other more creative data types.
Highly parallel algorithms that call for many mini ffts can benefit from using them within a GPU kernel if they're written in pure Julia.
