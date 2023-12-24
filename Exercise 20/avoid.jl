using HorizonSideRobots

clockwise( side :: HorizonSide) = HorizonSide(mod(Int(side)+1,4))

anticlockwise( side :: HorizonSide) = HorizonSide(mod(Int(side)+3,4))

function avoid!(r :: Robot, side :: HorizonSide) 
    if !isborder(r,side)
        move!(r,side)
    else
        move!(r,clockwise(side))
        avoid!(r,side)
        move!(r,anticlockwise(side))
    end
end