#' Endwert
#'
#' Ermittelt den Endwert (future value) einer heutigen Zahlung basierend auf
#' Laufzeit und Zinssatz. Wird keine Zahlung angegeben, wird diese mit 1
#' angenommen und folglich der Aufzinsungsfaktor ermittelt.
#'
#' @param payment Heutige Zahlung, standardmaessig 1
#' @param rate Zinssatz in Dezimalform, standardmaessig 0.02
#' @param periods Laufzeit in Jahren, standardmaessig 1
#'
#' @return Endwert bzw. Aufzinsungsfaktor
#' @export
#'
#' @examples
#' fv(payment = 50, rate = 0.02, periods = 20) # 74.29737
#' fv(rate = 0.02, periods = 20) # 1.485947
fv <- function(payment = 1,
               rate = 0.02,
               periods = 1) {
  payment * (1 + rate)^periods
}
