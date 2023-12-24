function get_supertype( the_type :: Any )
    if supertype(the_type) == Any
        return the_type
    else
        return get_supertype(supertype(the_type))
    end
end

function get_subtypes(the_type :: Any, shift=0 :: Int)
    arr=subtypes(the_type)
    if length(arr)==0
        return
    else
        for type in arr
            println("\t"^(shift+1), type)
            get_subtypes(type, shift+1)
        end; println()
    end
end

