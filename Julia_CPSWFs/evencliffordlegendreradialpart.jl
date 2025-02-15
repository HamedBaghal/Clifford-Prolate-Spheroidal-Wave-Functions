using SpecialFunctions  # For gamma function and factorial
using Combinatorics     # For nchoosek equivalent (binomial)

function evencliffordlegendreradialpart(r, N, k)
    if N == 0
        C = 1
    else
        C = (((2^(2N)) * gamma(2N + 1)) / gamma(N + 1)) *
            ((gamma(k + N + 1) / gamma(k + 1)))
        for i in 1:N
            C += (((2^(2N)) * gamma(2N + 1)) / gamma(N + 1)) *
                 (binomial(N, i) * ((gamma(i + k + N + 1) / gamma(i + k + 1))) *
                 (-1)^i * (r.^(2i )))
        end
    end

    D = (sqrt(2k + 4N + 2) / (2^(2N) * gamma(2N+1))) .* C
    return D
end

