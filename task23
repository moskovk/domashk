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
 
function do_simmetry!(robot, side, flag = false)
    if !isborder(robot, side) && !flag
        move!(robot, side)
        do_simmetry!(robot, side)
        move!(robot, side)
    elseif !isborder(robot, backside(side))
        move!(robot, backside(side))
        do_simmetry!(robot, side, true)
    else return end
end
