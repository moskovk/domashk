using HorizonSideRobots
r = Robot(animate = true)
 
function backside(side)
    if side == Nord 
        return Sud
    elseif side == Sud 
        return Nord
    elseif side == West
        return Ost
    else
        return West 
    end
end
 
function task22!(r, side)
    if isborder(r, side) == 0
        move!(r, side)
        task22!(r, side)
        move!(r, backside(side))
        move!(r, backside(side))
    end
end
