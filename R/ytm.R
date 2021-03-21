ytm <- function(cash_flows) {
  stats::uniroot(f = price,
                 interval = c(-1, 1),
                 cash_flows = cash_flows,
                 tol = 1e-6)$root
}
