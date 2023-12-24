using HorizonSideRobots
include("../RobotHell.jl")

function undergap!(r :: Robot)
    base=BaseRobot(r)
    shuttle!((x...)->isborder(r,Nord),base,Ost)
end