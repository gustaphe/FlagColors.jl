using Plots, Colors, ColorSchemes, FlagColors
function displaycolorscheme(k,cs)
    heatmap(repeat(collect(range(0,1,length=20))',2,1),
        showaxis=false, legend=false, ticks=false,
        #size=(100,30),
        color = cgrad(cs),
        title = k,
    )
end

examples = [:fi, :de, :se, :cn, :ca, :us, :gb, :fr, :ag, :eg, Symbol("us-ok"), :dk]
pl = [displaycolorscheme(k,flagcolors[k]) for k in examples]
savefig(plot(pl...), "doc/examples.png")

