include("../Exercise 33-35/specrobot.jl")

function markborder!( robot :: Robot )
    around_the_world!(Painter( robot ))
end