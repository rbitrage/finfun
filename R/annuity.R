#' Annuitaetenbarwert
#'
#' Ermittelt den Barwert einer Annuitaet basierend auf Laufzeit und Zinssatz.
#' Wird keine Annuitaet angegeben, wird diese mit 1 angenommen und folglich der
#' Annuitaetenbarwertfaktor ermittelt.
#'
#' @param annuity Hoehe der Annuitaet, standardmaessig 1
#' @param rate Zinssatz in Dezimalform, standardmaessig 0.02
#' @param periods Laufzeit in Jahren, standardmaessig 1
#'
#' @return Barwert der Annuitaten bzw. Annuitaetenbarwertfaktor
#' @export
#'
#' @examples
#' annuity(annuity = 50, rate = 0.02, periods = 20) # 817.5717
#' annuity(rate = 0.02, periods = 20) # 16.35143
annuity <- function(annuity = 1,
                    rate = 0.02,
                    periods = 1) {
  annuity * 1 / rate * (1 - (1 / (1 + rate)^periods))
}

