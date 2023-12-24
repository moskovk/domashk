using HorizonSideRobots

inverse(side :: HorizonSide) = HorizonSide(mod(Int(side)+2,4))

function half!(r :: Robot, side :: HorizonSide)
    if !isborder(r,side)
        move!(r,side)
    else
        return 
    end
    if !isborder(r,side)
        move!(r,side)
        half!(r,side)
        move!(r,inverse(side))
    else
        return 
    end
end