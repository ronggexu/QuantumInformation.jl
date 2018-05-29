using QI
if VERSION>v"0.7.0-DEV"
    using LinearAlgebra
    using SparseArrays
    using Test
else
    const ComplexF64 = Complex128
    using Base.Test
end

my_tests = ["utils.jl", "base.jl", "ptrace.jl", "ptranspose.jl", "reshuffle.jl",
"functionals.jl", "randommatrix.jl", "randomstate.jl", "gates.jl"]

for my_test in my_tests
    include(my_test)
end

if VERSION>v"0.7.0-DEV"
    # Convex.jl does not support julia 0.7 yet
else
    include("convex.jl")
end
