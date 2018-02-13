__precompile__()

module StaticFFTs

using Primes, StaticArrays

export fft

include("construct_fft.jl")
include("interface.jl")


end # module
