using HorizonSideRobots
include("../RobotHell.jl")

function cross!( robot :: Robot )
    painter=Painter( robot )
    putmarker!( robot )
    for side in (HorizonSide(i) for i in 0:3)
        along!( ( x...) -> !isborder( robot , side ) , robot, side)
        along!(( x... ) -> !ismarker( painter ), painter ,inverse( side ) )
    end
end