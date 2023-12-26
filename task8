function task8!(r, Side1, Side2, Side3, Side4)
    i = 1
    while !ismarker(r) == 1
        a = i
        if i % 2 == 1
            while a != 0
                move!(r, Side2)
                if ismarker(r)
                    break
                end
                a -= 1
            end
            a = i
            while a != 0
                move!(r, Side1)
                if ismarker(r)
                    break
                end
                a -= 1
            end
        else
 
            while a != 0
                move!(r, Side4)
                if ismarker(r)
                    break
                end
                a -= 1
            end
            a = i
            while a != 0
                move!(r, Side3)
                if ismarker(r)
                    break
                end
                a -= 1
            end
        end
        i += 1
    end
end
