using HorizonSideRobots

inverse(side :: HorizonSide) = HorizonSide(mod(Int(side)+2,4))

function recursive_along!(r :: Robot, side :: HorizonSide) 
    isborder(r,side) && return
    move!(r,side)
    recursive_along!(r, side)
end

function symmetric!(r :: Robot, side :: HorizonSide)
    if !isborder(r,side)
        move!(r,side)
        symmetric!(r,side)
        move!(r,side)
    else
        recursive_along!(r,inverse(side))
    end
end