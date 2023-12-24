using HorizonSideRobots
include("../RobotHell.jl")

function fill!( robot :: Robot)
    wayhome=collibrate!(r); side=Ost
    painter=Painter( robot )
    while true
        along!( (x...) -> !isborder( painter,side ) , painter, side )
        if isborder( painter , Sud ) break end
        move!( painter , Sud ); side = inverse( side )
    end
    collibrate!(painter ; track=false); gohome!(painter,wayhome)
end