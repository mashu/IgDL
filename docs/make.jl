using IgDL
using Documenter

DocMeta.setdocmeta!(IgDL, :DocTestSetup, :(using IgDL); recursive=true)

makedocs(;
    modules=[IgDL],
    authors="Mateusz Kaduk <mateusz.kaduk@gmail.com> and contributors",
    repo="https://github.com/mashu/IgDL.jl/blob/{commit}{path}#{line}",
    sitename="IgDL.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://mashu.github.io/IgDL.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/mashu/IgDL.jl",
    devbranch="main",
)
