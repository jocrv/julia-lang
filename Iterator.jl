struct Fibonacci{T>:Real} end 
Fibonacci(d::DataType) = d <: Real ? Fibonacci{d}() : error("Not real type") 

Base.iterate(x::Fibonacci{T} where {T<:Real} = (zero(T), (one(T), one(T)))
Base.iterate(x::Fibonacci{T}, state::Tuple{T, T}) where {T<:Real} = 
(state[1], (state[2], state[1] + state[2]))

#REPL

julia> for e in Fibonacci(Int64)
e > 100 && break 
print(e, "")
end 
0 1 1 2 3 5 8 13 21 34 55 89
