#' Yield-to-Maturity
#'
#' Berechnet die Yield-to-Maturity (Endfaelligkeitsrendite) einer Anleihe auf
#' Basis der uebergebenen Cashflows. Die Approximation erfolgt mittels
#' stats::uniroot() im Intervall -1:1, wodurch auch negative Renditen zulaessig
#' sind.
#'
#' @param cash_flows Vektor der Cashflows
#'
#' @return Yield-to-Maturity in Dezimalform
#' @export
#'
#' @examples
#' ytm(c(-95, 2, 2, 2, 2, 102))
ytm <- function(cash_flows) {
  stats::uniroot(f = price,
                 interval = c(-1, 1),
                 cash_flows = cash_flows,
                 tol = 1e-6)$root
}
