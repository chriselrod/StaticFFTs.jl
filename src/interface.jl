
const TypedLength{N,T} = Union{NTuple{N,T}, StaticArray{Tuple{N},T}}

to_complex(::Type{A}) where {A <: StaticArray} = SVector
to_complex(::Type{A}) where {A <: NTuple} = NTuple

@generated function fft(x::A) where {N, T, A <: TypedLength{N,T}}
    fft_expr = fft_expression(N,T, to_complex(A))
    quote
    #    $(Expr(:meta, :inline))
        @inbounds begin
            Base.Cartesian.@nextract $N x x
        end
        $fft_expr
    end
end
