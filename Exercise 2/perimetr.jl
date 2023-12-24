using HorizonSideRobots
include("../RobotHell.jl")

function perimetr!(r :: Union{SampleRobot,Robot})
    wayhome= collibrate!(r)
    for side in (Ost,Sud,West,Nord)
        along!((x...)->!isborder(r,side), Painter( r ), side)
    end
    gohome!(r,wayhome)
end