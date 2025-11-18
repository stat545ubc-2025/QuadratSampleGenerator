
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
#> These packages have more recent versions available.
#> It is recommended to update all of them.
#> Which would you like to update?
#> 
#> 1: All                            
#> 2: CRAN packages only             
#> 3: None                           
#> 4: S7      (0.2.0 -> 0.2.1) [CRAN]
#> 5: ggplot2 (4.0.0 -> 4.0.1) [CRAN]
#> 
#> S7      (0.2.0 -> 0.2.1) [CRAN]
#> ggplot2 (4.0.0 -> 4.0.1) [CRAN]
#> Installing 2 packages: S7, ggplot2
#> 
#> The downloaded binary packages are in
#>  /var/folders/mp/2wdp00_145j1y19qwkzn1_5c0000gn/T//Rtmpdld8d9/downloaded_packages
#> ── R CMD build ─────────────────────────────────────────────────────────────────────────────────────────────
#>      checking for file ‘/private/var/folders/mp/2wdp00_145j1y19qwkzn1_5c0000gn/T/Rtmpdld8d9/remotesdb23072c83b/stat545ubc-2025-QuadratSampleGenerator-ca94a70/DESCRIPTION’ ...  ✔  checking for file ‘/private/var/folders/mp/2wdp00_145j1y19qwkzn1_5c0000gn/T/Rtmpdld8d9/remotesdb23072c83b/stat545ubc-2025-QuadratSampleGenerator-ca94a70/DESCRIPTION’
#>   ─  preparing ‘QuadratSampleGenerator’:
#>      checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
#>   ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>   ─  building ‘QuadratSampleGenerator_1.0.0.tar.gz’
#>      
#> 
library(QuadratSampleGenerator)
QuadratSampleGenerator(width = 5, height = 3, n_quadrats = 4)
```

<img src="man/figures/README-example-1.png" width="100%" />
