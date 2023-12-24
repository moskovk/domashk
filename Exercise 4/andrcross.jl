using HorizonSideRobots
include("../RobotHell.jl")

function sidestep(r :: Robot, side1 :: HorizonSide, side2 :: HorizonSide, paint)
    if isborder(r,side1) || isborder(r,side2) || (ismarker(r) && paint)  return false end
    if paint putmarker!(r) end
    move!(r,side1)
    move!(r,side2)
    return true
end

function go_diagonal(r :: Robot, side1 :: HorizonSide, side2 :: HorizonSide; paint = false)
    while sidestep(r, side1, side2, paint) end
end

function andrcross!(r :: Robot)
    putmarker!(r)
    for i in 0:3
        side1=HorizonSide(i)
        side2=HorizonSide(mod(i+1,4))
        go_diagonal(r,side1,side2)
        go_diagonal(r,inverse(side1),inverse(side2); paint=true)
    end
end