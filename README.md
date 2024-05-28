[![Github CI](https://img.shields.io/github/actions/workflow/status/AliaumeL/ensps-colorscheme/continuous_integration.yml)](https://github.com/AliaumeL/ensps-colorscheme/actions/workflows/continuous_integration.yml)
[![CTAN: Version](https://img.shields.io/ctan/v/ensps)](http://www.ctan.org/pkg/ensps)
[![CTAN: License](https://img.shields.io/ctan/l/ensps)](http://www.ctan.org/pkg/ensps)

# ENSPS Colorscheme

Université Paris-Saclay Colorscheme for various purposes. This repository tries
to implement recommendations from the [Université
Paris-Saclay](https://www.universite-paris-saclay.fr/) for the colorscheme of
various documents and presentations, based on the following [design system
document][charte graphique].

[charte graphique]: https://www.universite-paris-saclay.fr/sites/default/files/2020-06/Charte-graphique-UniversiteParisSaclay.pdf

## Status

The project is in its early stages. The colorscheme is implemented in a LaTeX
package. Plans are to adapt the colorscheme to HTML/CSS and various other
formats.


- [x] Implement the colorscheme in LaTeX
- [x] Implement the colorscheme in HTML/CSS
- [x] Implement the colorscheme as Gimp and Inkscape palettes
- [ ] Create a beamer theme 

## The colorscheme 

| Color | RGB         | Hex     |
|-------|-------------|---------|
| Prune | 99,0,60     | #63003C |
| A1    | 0,0,0       | #000000 |
| B1    | 49,62,72    | #313E48 |
| C1    | 124,135,143 | #7C878F |
| D1    | 213,218,223 | #D5DAE0 |
| A2    | 198,11,70   | #C60B46 |
| B2    | 237,20,91   | #ED145B |
| C2    | 238,52,35   | #EE3423 |
| D2    | 243,115,32  | #F37320 |
| A3    | 124,42,144  | #7C2A90 |
| B3    | 125,106,175 | #7D6AAF |
| C3    | 198,103,29  | #C6671D |
| D3    | 254,188,24  | #FEBC18 |
| A4    | 0,78,125    | #004E7D |
| B4    | 14,135,201  | #0E87C9 |
| C4    | 0,148,181   | #0094B5 |
| D4    | 70,195,210  | #46C3D2 |
| A5    | 0,128,122   | #00807A |
| B5    | 64,183,105  | #40B769 |
| C5    | 140,198,62  | #8CC63E |
| D5    | 213,223,61  | #D5DF3D |

# Development

We provide our own Docker image based on Alpine to build the project. This
image is automatically uploaded to the GitHub Container Registry as
`ghcr.io/aliaumel/ensps-colorscheme`.

# Thanks

- [Paolo Brasolin](https://github.com/paolobrasolin) for his [CTAN submit
  action](https://github.com/paolobrasolin/ctan-submit-action)

