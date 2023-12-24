include("avoid.jl")
r=Robot("start_cond.sit",animate=true)
#putmarker!(r)
avoid!(r,Ost)
