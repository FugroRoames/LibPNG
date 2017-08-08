module LibPNG

export readimage, writeimage

const depsfile = joinpath(dirname(@__FILE__), "..", "deps", "deps.jl")
if isfile(depsfile)
    include(depsfile)
else
    error("LibPNG not properly installed. Please run Pkg.build(\"LibPNG\") then restart Julia.")
end

include("libpng.jl")

end # module
