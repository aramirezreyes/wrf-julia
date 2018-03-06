module WRFJulia
using NetCDF
using Plots
#Exports
export getvar
# package code goes here

function getvar(file::AbstractString,varname::AbstractString)
    return ncread(file,varname);
end

function animate_heatmap(varArray,times::Int32,fps=Int32)
    gr()
    anim = @animate for i in 1:times
        p = heatmap(varArray[:,:,1,i])
    end
    animate_heatmap=gif(anim,fps=fps);
end

end # module
