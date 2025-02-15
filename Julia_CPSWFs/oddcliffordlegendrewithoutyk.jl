using SpecialFunctions  # For gamma function and factorial
using Combinatorics     # For nchoosek equivalent (binomial)

function oddcliffordlegendrewithoutyk(r, N, k)
    if N == 0
        C = -2*(r.^(k+1)) ./ sqrt(2π)
    else
        C = -(((2^(2N+1)) * gamma(2N + 2)) / gamma(N + 1)) *
            ((gamma(k + N + 2) / gamma(k + 2)) * ((r.^(k+1))) / sqrt(2π))
        for i in 1:N
            C =C -(((2^(2N+1)) * gamma(2N + 2)) / gamma(N + 1)) *
                 (binomial(N, i) * ((gamma(i + k + N + 2) / gamma(i + k + 2))) *
                 (-1)^i * (1 / sqrt(2π)) * (r.^(2i + k+1)))
        end
    end

    D = (sqrt(2k + 4N + 4) / (2^(2N+1) * gamma(2N+2))) .* C
    return D
end

