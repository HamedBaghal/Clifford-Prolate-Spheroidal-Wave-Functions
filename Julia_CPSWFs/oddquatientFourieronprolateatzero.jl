function oddquatientFourieronprolateatzero(n, k, c, m)
    N = oddcoefficientcliffordprolate(k, c, m, n)
    q = -1.0 * N[1] * sqrt(2 * k + 4) * π^(k + 2) * c^(k+1) * (1im)^(k+1) / (gamma(k + 3) * oddcomputemultiprolateradialpart(0, k, c, m, n))
    return q
end


