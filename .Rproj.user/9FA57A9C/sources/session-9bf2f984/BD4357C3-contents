#' @title Quadrat Sample Generator
#' @description Function randomly selects the desired number of quadrats to be sampled based
#' on the given dimensions of the gridded study site, and plots a map showing
#' these quadrats. Input should not be a vector (integer value only).
#'
#' @param height Integer for the height of the grid in the sampling area (in quadrats).
#' @param width Integer with the width of the grid in the sampling area (in quadrats).
#' @param n_quadrats Integer with the number quadrats to be sampled.
#' @return A plot showing which quadrats to randomly sample in the specific grid.
#' @examples
#' QuadratSampleGenerator(11, 10, 6)
#' QuadratSampleGenerator (height = 5, width = 5, n_quadrats = 3)
#' @import ggplot2
#' @importFrom tidyr expand_grid
#' @export


QuadratSampleGenerator <- function(height, width, n_quadrats) {

  # Throw an error if one of the parameters entered is not an integer
  if(any(c(height, width, n_quadrats) %% 1 != 0)){ # If parameters are not divisible by 1 with remainder of 0
    stop("height, width, or n_quadrats must be an integer") # Throw this error message and stop the function
  }

  # Throw an error if one of the parameters entered is 0
  if(any(c(height, width, n_quadrats) == 0)){ # If parameters are 0
    stop("height, width, or n_quadrats cannot be 0") # Throw this error message and stop the function
  }

  # Throw an error if one of the parameters entered is negative
  if(any(c(height, width, n_quadrats) < 0)){ # If parameters are negative
    stop("height, width, or n_quadrats cannot be negative") # Throw this error message and stop the function
  }

  # Throw an error if the n_quadrats is larger than the height * width parameters
  if(n_quadrats > height * width){ # If parameters are negative
    stop("n_quadrats cannot be greater than the total number of quadrats")
  }

  # Creates a grid using the dimensions given
  grid <- tidyr::expand_grid(height = 1:height,
                             width = 1:width)

  # Randomly select quadrats
  samples <- sample(1:nrow(grid), n_quadrats)

  # Mark sampled quadrats
  grid$sample <- "Unsampled"
  grid$sample[samples] <- "Sampled"

  # Plot the map
  ggplot2::ggplot(grid, ggplot2::aes(x = width, y = height, fill = sample)) +
    ggplot2::geom_tile(color = "black") + # Outlines quadrats in black
    ggplot2::scale_fill_manual(values = c("Sampled" = "black", "Unsampled" = "white")) +
    ggplot2::scale_y_continuous(breaks = c(1:height)) + # Marks each cell given
    ggplot2::scale_x_continuous(breaks = c(1:width)) +
    ggplot2::theme_classic()
}

