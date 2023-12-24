function sumvec!(vec :: Vector{T}, sum=zero(T)) where T
    length(vec)==0 && return sum
    return sumvec!(vec[2:end],sum+vec[1])
end