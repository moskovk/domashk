using HorizonSideRobots

function recursive_along!(r :: Robot, side :: HorizonSide) 
    isborder(r,side) && return
    move!(r,side)
    recursive_along!(r, side)
end