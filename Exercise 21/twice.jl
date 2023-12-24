using HorizonSideRobots

inverse( side :: HorizonSide ) = HorizonSide( mod( Int( side ) +2 ,4 ) )

function twice!(r :: Robot, side :: HorizonSide)
    if !isborder(r,side)
        move!(r,side)
        twice!(r,side)
        for i in 1:2
            if isborder(r,inverse(side)) return false end
            move!(r,inverse(side))
        end
        return true
    end
end