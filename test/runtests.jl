using StaticFFTs, StaticArrays, FFTW
using Test

# write your own tests here
@testset "FFT" begin 
    sizes = [6,8,9,12,14,15,16,18,20,22,24,25,26,27,28,30,32]
    for s ∈ sizes
        x = @SVector randn(s)
        @test StaticFFTs.fft(x) ≈ FFTW.fft(Vector(x))
    end
end
