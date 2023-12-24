include("find_marker.jl")
r=Robot("start_cond.sit"; animate=true)
find_marker!(r)
#show!(r)