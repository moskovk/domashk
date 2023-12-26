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

function along_rec!(robot, side)
    if isborder(robot, side) putmarker!(robot)
    else
        move!(robot, side)
        along_rec!(robot, side)
        move!(robot, backside(side))
    end
end
