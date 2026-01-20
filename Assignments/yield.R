#' Energy produced from a photovoltaic system
#' 
#' This function will compute the energy produced by a photovoltaic system (for example, solar panel systems). 
#'
#' @param A the solar panel area (m^2)
#' @param H annual average solar radiation (kWh m^-2)
#' 
#' Two parameters are kept constant within the function. 
#' r is the panel yield defined by manufacturer efficiency, typically ~0.2. PR is the performance ratio that accounts for site specific losses, typically ~0.75.
#'
#' @returns a number of type numeric representing the total energy produced by the solar panel specifications.
#' @export
#'
#' @examples 
#' yield(A = 1.5, H = 1000)


yield <- function(A, H, r = 0.2, PR = 0.75) {
  # define energy production equation
  energy = A * r * H * PR
  return(energy)
}
