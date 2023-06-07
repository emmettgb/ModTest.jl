module ModTest
using Pkg

directory = @__DIR__

function add_package()
    splits = split(directory, "/")
    env = join(splits[1:length(splits) - 1], '/')
    Pkg.activate(env)
    Pkg.add("Toolips")
end

function test_package()
    par = Meta.parse("using Toolips")
    eval(par)
end

end # module ModTest