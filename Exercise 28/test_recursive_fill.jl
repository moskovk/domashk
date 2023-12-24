include("recursive_fill.jl")

r=Robot("test1.sit")
markfill!(r)
show!(r)

r1=Robot("test2.sit")
borderfill!(r1)
show!(r1)