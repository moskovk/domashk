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

function along_rec!(robot, side1, side2 = ((side1 == Nord) || (side1 == Sud)) ? West : Nord)
    if isborder(robot, side1)
        move!(robot, side2)
        along_rec!(robot, side1)
        move!(robot, backside(side2))
    else move!(robot, side1) 
    end
end
