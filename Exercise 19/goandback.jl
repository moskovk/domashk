using HorizonSideRobots

inverse( side :: HorizonSide) = HorizonSide(mod(Int(side)+2,4))

function goandback!(r :: Robot, side :: HorizonSide) 
    if isborder(r,side) 
        putmarker!(r) 
    else
        move!(r,side)
        goandback!(r, side)
        move!(r,inverse(side))
    end
end