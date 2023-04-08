R.<x> = GF(2)[]
# Our polynomial is a monic cubic
for a in range(2):
    for b in range(2):
        for c in range(2):
            f = x^3 + a*x^2 + b*x + c
            unique_factorizations = len(factor(f))
            assert unique_factorizations < 3
            print(f, "=", factor(f))

