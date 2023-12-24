function qfibbo(n :: Int)
    x, y= 1, 1
    for i in 3:(n-1)
        x, y =y, x+y
    end
    return y
end

function recfibbo(n :: Int)
    n==1 && return 0
    n==2 && return 1
    return recfibbo(n-2)+recfibbo(n-1)
end

function qrecfibbo(n :: Int)
    memory=zeros(Int,n)
    function fibbo(n :: Int)
        n==1 && return 0
        n==2 && return 1
        if memory[n-1]==0
            memory[n-1]=fibbo(n-1)
        end
        if memory[n-2]==0
            memory[n-2]=fibbo(n-2)
        end
        return memory[n-2]+memory[n-1]
    end
    return fibbo(n)
end