# Are there solutions to X^2 - d?
# Bruteforce approach
def exists_distinct_quadratic_solutions_mod_p(d, p):
    K = GF(p)
    # We need two DISTINCT roots mod p
    root1_was_found = False
    for k in range(1, p):
        if K(k^2) == K(d):
            if root1_was_found:
                return True
            else:
                root1_was_found = True
    return False

def classify(d, p):
    assert d % 4 in (1, 2, 3)

    N.<u> = NumberField(x^2 - d)
    if d % 4 == 1:
        a, b = 1/2, 1/2
    else:
        a, b = 0, 1

    D_K = matrix([
        # σ_1(1)    σ_1(a + b √d)
        [1,         a + b*u],
        # σ_2(1)    σ_2(a + b √d)
        [1,         a - b*u]
    ]).determinant()^2
    D_K = int(D_K)
    assert D_K == N.discriminant()
    print(f"d = {d}, p = {p}, D_K = {D_K}")

    if d % 4 == 1:
        assert D_K == d
    else:
        assert D_K == 4*d

    # Double check solution
    O = N.ring_of_integers()
    ideals = list(factor(O.ideal(p)))
    print(ideals)

    if D_K % p == 0:
        print(f"⟨{p}⟩ = 𝔭^2 (ramified)")
        assert len(ideals) == 1 and ideals[0][1] == 2
    elif exists_distinct_quadratic_solutions_mod_p(d, p):
        print(f"⟨{p}⟩ = 𝔭_1 𝔭_2 (split)")
        assert len(ideals) == 2
    else:
        print(f"⟨{p}⟩ is inert")
        assert len(ideals) == 1 and ideals[0][1] == 1

    # TODO: Legendre symbol

classify(7, 2)
print()
for p in primes_first_n(20):
    classify(5, p)
    print()

