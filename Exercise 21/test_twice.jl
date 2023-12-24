include("twice.jl")
r=Robot("../TestSits/start_cond.sit"; animate=true)
print(twice!(r,West))