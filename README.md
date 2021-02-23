# FlagColors
Exports a `Dict` of `Colorscheme`s, representing the colors found in (almost?)
all flags from the database at
[flagpedia.net](https://flagpedia.net/download/api).

## Disclaimer

These colorschemes were automatically created, and no part of this package is
in any way intended as a political statement. Any errors are likely to be due
to quirks in parsing the svg files. Specifically, some flags are entirely white.
This is not a play on the surrender flag, but my parsing function returning white
as a default when the svg specifies some exotic color format. Please submit a PR
to correct any such deviations found.

The colorschemes are meant to be used to represent different countries in data
vizualisations, but are not guaranteed to be effective for this purpose. The
colors are likely to be similar, non-print-safe, and don't necessarily
represent the order or relative abundance of the colors in the respective flag.
Always check your visualizations against visualization guidelines before
publication.

## Usage

The colorschemes are accessed through indexing into the `flagcolors` dictionary
with the ISO3166 two-letter code as a `Symbol` (in some cases it's a bit more
complicated, see the Texas example below).  If you don't know your country's
ISO3166 code, your top web domain is a good guess.

```julia
using FlagColors, Plots, Colors, ColorSchemes

plot(rand(5,5),color=flagcolors[:us][1]) # Extract the red from the US flag
plot(rand(5),st=:scatter,marker_z=range(0,1,length=5),color_z=cgrad(flagcolors[:se])) # Use the Swedish flag as a color gradient
plot(rand(5),color=flagcolors[Symbol("us-tx")][0.5]) # Use the color in the middle of the colorscheme for the Texas flag. Note: some names need to be given like this because they contain non-symbol characters like '-'
```


## Examples
![Some example images](/doc/examples.png)
