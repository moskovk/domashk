include("symmetric.jl")
r=Robot("start_cond.sit"; animate=true)
#putmarker!(r)
symmetric!(r,West)
#putmarker!(r)