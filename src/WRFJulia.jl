module WRFJulia
using NetCDF
#Exports
export getvar
# package code goes here


function getvar(file::AbstractString,varname::AbstractString)
    return ncread(file,varname);
end


end # module
