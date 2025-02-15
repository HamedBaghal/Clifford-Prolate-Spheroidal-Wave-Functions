using SpecialFunctions  # For gamma function and factorial
using Combinatorics     # For nchoosek equivalent (binomial)

function oddcliffordlegendreradialpart(r, N, k)
    if N == 0
        C = -2
    else
        C = -(((2^(2N+1)) * gamma(2N + 2)) / gamma(N + 1)) *
            ((gamma(k + N + 2) / gamma(k + 2)))
        for i in 1:N
            C =C-(((2^(2N+1)) * gamma(2N + 2)) / gamma(N + 1)) *
                 (binomial(N, i) * ((gamma(i + k + N + 2) / gamma(i + k + 2))) *
                 (-1)^i * (r.^(2i)))
        end
    end

    D = (sqrt(2k + 4N + 4) / (2^(2N+1) * gamma(2N+2))) .* C
    return D
end