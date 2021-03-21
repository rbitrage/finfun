#' Preis einer Anleihe
#'
#' Berechnet den Preis einer Anleihe auf Basis der uebergebenen Cashflows und
#' Yield-to-Maturity.
#'
#' @param cash_flows Vektor der Cashflows
#' @param ytm Yield-to-Maturity in Dezimalform
#'
#' @return Preis der Anleihe
#' @export
#'
#' @examples
#' price(c(-95, 2, 2, 2, 2, 102), 0.01)
price <- function(cash_flows, ytm) {
  t <- base::seq(from = 0, along.with = cash_flows)
  sum(cash_flows / (1 + ytm)^t)
}
