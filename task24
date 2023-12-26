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
 
function rec1!(robot, side)
    if !isborder(robot, side)
        move!(robot, side)
        rec2!(robot, side)
        move!(robot, backside(side))
    end
    return
end
 
function rec2!(robot, side)
    if !isborder(robot, side)
        move!(robot, side)
        rec1!(robot, side)
    end
    return
end
