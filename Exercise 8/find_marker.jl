using HorizonSideRobots

clockwise(side :: HorizonSide) = HorizonSide(mod(Int(side)+1,4))

function go_till_marker!(r :: Robot,side :: HorizonSide, steps :: Int)
    while !ismarker(r) && steps>0
        move!(r,side)
        steps-=1
    end
end


function find_marker!(r :: Robot)
    steps=1
    side=Nord
    while !ismarker(r)
        go_till_marker!(r,side,steps)
        side=clockwise(side)
        go_till_marker!(r,side,steps)
        side=clockwise(side)
        steps+=1
    end
end