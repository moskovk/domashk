include("half.jl")
r=Robot("../TestSits/start_cond.sit"; animate=true)
putmarker!(r)
half!(r,West)
putmarker!(r)