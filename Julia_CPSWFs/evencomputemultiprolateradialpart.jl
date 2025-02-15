function evencomputemultiprolateradialpart(r, k, c, m, n)
    G = 0.0
    N = evencoefficientcliffordprolate(k, c, m , n)  # Assume this function is defined elsewhere

    for j in 1:length(N)
        if abs(N[j]) > 1e-6
            G += N[j] * evencliffordlegendreradialpart(r, j - 1, k)  # Assume evencliffordlegendrewithoutyk is defined elsewhere
        end
    end

    return G
end
