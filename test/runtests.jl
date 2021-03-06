using Test

using Petri
using AlgebraicPetri
using Catlab.Theories
using Catlab.CategoricalAlgebra.ShapeDiagrams
using Catlab.CategoricalAlgebra.FinSets

function compare_petricospan(p₁::PetriCospan, p₂::PetriCospan)
    @test dom(p₁) == dom(p₂)
    @test codom(p₁) == codom(p₂)
    @test force(left(p₁)) == force(left(p₂))
    @test force(right(p₁)) == force(right(p₂))
    @test decoration(p₁) == decoration(p₂)
end

@testset "Core" begin
    include("core.jl")
end

@testset "Petri" begin
    include("petri.jl")
end
