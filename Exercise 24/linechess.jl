using HorizonSideRobots
function step!( r :: Robot, side :: HorizonSide)
    isborder(r,side) && return
    move!(r,side)
    paint_step!(r,side)
end

function paint_step!(r :: Robot, side :: HorizonSide)
    putmarker!(r)
    isborder(r,side) && return
    move!(r,side)
    step!(r,side)
end

function linechess!(r :: Robot, side :: HorizonSide; markstart=false)
    if markstart
        paint_step!(r,side) 
    else 
        step!(r,side) 
    end
end