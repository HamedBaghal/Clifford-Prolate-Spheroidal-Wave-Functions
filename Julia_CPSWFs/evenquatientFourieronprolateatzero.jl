function evenquatientFourieronprolateatzero(n, k, c, m)
    N = evencoefficientcliffordprolate(k, c, m, n)
    q = -1.0 * N[1] * sqrt(2 * k + 2) * π^(k + 1) * c^k * (1im)^k / (gamma(k + 2) * evencomputemultiprolateradialpart(0, k, c, m, n))
    return q
end