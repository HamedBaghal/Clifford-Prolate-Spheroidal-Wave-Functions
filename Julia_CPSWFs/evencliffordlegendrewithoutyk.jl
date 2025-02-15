using SpecialFunctions  # For gamma function and factorial
using Combinatorics     # For nchoosek equivalent (binomial)

function evencliffordlegendrewithoutyk(r, N, k)
    if N == 0
        C = (r.^k) ./ sqrt(2π)
    else
        C = (((2^(2N)) * gamma(2N + 1)) / gamma(N + 1)) *
            ((gamma(k + N + 1) / gamma(k + 1)) * ((r.^k) / sqrt(2π)))
        for i in 1:N
            C += (((2^(2N)) * gamma(2N + 1)) / gamma(N + 1)) *
                 (binomial(N, i) * ((gamma(i + k + N + 1) / gamma(i + k + 1))) *
                 (-1)^i * (1 / sqrt(2π)) * (r.^(2i + k)))
        end
    end

    D = (sqrt(2k + 4N + 2) / (2^(2N) * gamma(2N+1))) .* C
    return D
end

