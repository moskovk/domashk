function dmove!(r, side1, side2)
    move!(r, side1)
    move!(r, side2)
end 
function diagonalalongandback!(r, Side1, Side2, Side3, Side4)
    while !isborder(r, Side1) && !isborder(r, Side2)
        dmove!(r, Side1, Side2)
        putmarker!(r)
    end
    while ismarker(r) == 1
        dmove!(r, Side3, Side4)
    end
end
 
function task4!(r)
	Side1 = Nord
	Side2 = Ost
	Side3 = Sud 
	Side4 = West
    diagonalalongandback!(r, Side1, Side2, Side3, Side4)
    diagonalalongandback!(r, Side2, Side3, Side4, Side1)
    diagonalalongandback!(r, Side3, Side4, Side1, Side2)
    diagonalalongandback!(r, Side4, Side1, Side2, Side3)
    putmarker!(r)   
end
