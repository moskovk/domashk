using HorizonSideRobots
include("../RobotHell.jl")

function HorizonSideRobots.move!(r :: CoordRobot, side :: HorizonSide)
    switch(side) do side
        side==Nord && (r.y+=1)
        side==West && (r.x+=1)
        side==Sud && (r.y-=1)
        side==Ost && (r.x-=1)
    end
    putmarker!(r),move!(r.robot,side)
end

function fill(cond :: Function, r :: CoordRobot; marks=true) 
    coords=Set{NTuple{2,Int}}(); ownmarkers=Set{NTuple{2,Int}}()
    function recursive()
        ((r.x,r.y) in coords) && return
        push!(coords,(r.x,r.y))
        for side in (Nord, West, Sud, Ost)
            if !cond(r,side) || ((r.x,r.y) in ownmarkers) && marks
                push!(ownmarkers,((r.x,r.y)))
                move!(r,side); recursive(); move!(r,inverse(side))
            end
        end
    end
    recursive()
end

function markfill!(r :: Robot)  cr=CoordRobot(r); fill((x...)->ismarker(r),cr) end

function borderfill!(r :: Robot)  cr=CoordRobot(r);fill((r,side)->isborder(r,side), cr; marks=false) end