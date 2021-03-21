price <- function(cash_flows, ytm) {
  t <- base::seq(from = 0, along.with = cash_flows)
  sum(cash_flows / (1 + ytm)^t)
}
