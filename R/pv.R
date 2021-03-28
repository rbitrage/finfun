#' Barwert
#'
#' Ermittelt den Barwert (present value) einer zukuenftigen Zahlung basierend
#' auf Laufzeit und Zinssatz. Wird keine Zahlung angegeben, wird diese mit 1
#' angenommen und folglich der Barwertfaktor ermittelt.
#'
#' @param payment Zukuenftige Zahlung, standardmaessig 1
#' @param rate Zinssatz in Dezimalform, standardmaessig 0.02
#' @param periods Laufzeit in Jahren, standardmaessig 1
#'
#' @return Barwert bzw. Barwertfaktor
#' @export
#'
#' @examples
#' pv(payment = 500, rate = 0.03, periods = 5) # 431.3044
#' pv(rate = 0.03, periods = 5) # 0.8626088
pv <- function(payment = 1,
               rate = 0.02,
               periods = 1) {
  payment * 1 / (1 + rate)^periods
}
