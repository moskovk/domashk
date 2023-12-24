using InteractiveUtils
include("typeoutput.jl")

println(get_supertype(Vector))
get_subtypes(get_supertype(Vector))