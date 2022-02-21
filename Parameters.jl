types with default field values: Parameters.jl 

using Parameters: @with_kw 

@with_kw struct MyType
a::Int64 = 10
b::Float64 = 3.14 
c::AbstractString = "test""
end

#REPL
julia> MyType(a=30)
MyType
a::Int64 30 
b::Float64 3.14 
c::String "test""

