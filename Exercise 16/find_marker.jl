using HorizonSideRobots
include("../RobotHell.jl")

function find_marker!(r :: Robot)
    base=BaseRobot(r)
    spiral!((x...)->!ismarker(base),base)
end