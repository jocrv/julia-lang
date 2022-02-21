lowered Julia code without syntactic sugare 
@code_lowered <expr>

typed Julia code (types are propagated)
@code_type <expr>

code compiled for the computer interface
@code_llvm <expr>

assembly code compiled for you specific machine
@code_native <expr> 

list methods of the function with links to its implementations 
methods(<function_name>)

examples
@code_lowered 1 + 2
methods(add)

##binary conversion

if you have your binary as a string you can parse it to decimal 
julia> parse(Int, "1010", base=2)
10

and from base 16 
julia> parse(Int, "abcd", base = 16)
43981
