
<!-- README.md is generated from README.Rmd. Please edit that file -->

# QuadratSampleGenerator

Function randomly selects the desired number of quadrats to be sampled
based on the given dimensions of the gridded study site, and plots a map
showing these quadrats. Input should not be a vector (integer value
only).

## Installation

Package installation can be done directly by calling
`devtools::install_github("stat545ubc-2025/QuadratSampleGenerator")`

## Example

This is a basic example which shows you how to use the package

``` r
devtools::install_github("stat545ubc-2025/QuadratSampleGenerator")
#> Using GitHub PAT from the git credential store.
#> Downloading GitHub repo stat545ubc-2025/QuadratSampleGenerator@HEAD
#> stringr (1.5.1 -> 1.6.0) [CRAN]
#> purrr   (1.0.4 -> 1.2.0) [CRAN]
#> S7      (0.2.0 -> 0.2.1) [CRAN]
#> ggplot2 (4.0.0 -> 4.0.1) [CRAN]
#> Installing 4 packages: stringr, purrr, S7, ggplot2
#> 
#> The downloaded binary packages are in
#>  /var/folders/mp/2wdp00_145j1y19qwkzn1_5c0000gn/T//Rtmpx8FQfC/downloaded_packages
#> ── R CMD build ─────────────────────────────────────────────────────────────────
#>      checking for file ‘/private/var/folders/mp/2wdp00_145j1y19qwkzn1_5c0000gn/T/Rtmpx8FQfC/remotes1685f2d955b7c/stat545ubc-2025-QuadratSampleGenerator-1ab3337/DESCRIPTION’ ...  ✔  checking for file ‘/private/var/folders/mp/2wdp00_145j1y19qwkzn1_5c0000gn/T/Rtmpx8FQfC/remotes1685f2d955b7c/stat545ubc-2025-QuadratSampleGenerator-1ab3337/DESCRIPTION’
#>   ─  preparing ‘QuadratSampleGenerator’:
#>      checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
#>   ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>   ─  building ‘QuadratSampleGenerator_0.1.0.tar.gz’
#>      
#> 
library(QuadratSampleGenerator)
QuadratSampleGenerator(width = 5, height = 3, n_quadrats = 4)
```

<img src="man/figures/README-example-1.png" width="100%" />
