def fieldify(F, g):
    X = F.gens()[0]
    return sum(F(b)*X^i for b, i in g.coefficients())

def poly_change_ring(g, a):
    p = 0
    for i, c_i in enumerate(g.list()):
        p += int(c_i) * a^i
    return p

def find_prime_ideals(g_X, p):
    assert is_prime(p)

    #F.<X> = GF(p)[]
    ## Convert to this field
    #g_X = fieldify(F, g_X)

    #K.<γ> = F.quo(g_X)

    ideals = []
    #factors = factor(g_X)
    #if len(factors) == 1 and factors[0][1] == 1:
    #    return [f"⟨{p}⟩"]
    for g_X, ramification in factor(g_X):
        #g_γ = g_X(γ)
        ideal = (p, g_X, ramification)
        ideals.append(ideal)
        #if ramification > 1:
        #    ideals.append(f"⟨{p}, {g_γ}⟩^{ramification}")
        #else:
        #    ideals.append(f"⟨{p}, {g_γ}⟩")
        #ideals.append((g_X(γ), ramification))

    return ideals

def pretty_ideal(K, ideal_gens):
    γ = K.gens()[0]
    ideals = []
    if len(ideal_gens) == 1 and ideal_gens[0][2] == 1:
        return [f"⟨{ideal_gens[0][0]}⟩"]
    for p, g_X, ramification in ideal_gens:
        g_γ = g_X(γ)
        if ramification > 1:
            ideals.append(f"⟨{p}, {g_γ}⟩^{ramification}")
        else:
            ideals.append(f"⟨{p}, {g_γ}⟩")
    return " ".join(ideals)

var("x")

print("K = ℚ( √[3](2) )")
F.<X> = PolynomialRing(GF(5), implementation="generic")
g_X = X^3 - 2
K.<γ> = F.quo(g_X)
print("⟨5⟩  ℤ_K =", pretty_ideal(K, find_prime_ideals(g_X, 5)))
F.<X> = PolynomialRing(GF(7), implementation="generic")
g_X = X^3 - 2
K.<γ> = F.quo(g_X)
print("⟨7⟩  ℤ_K =", pretty_ideal(K, find_prime_ideals(g_X, 7)))
F.<X> = PolynomialRing(GF(31), implementation="generic")
g_X = X^3 - 2
K.<γ> = F.quo(g_X)
print("⟨31⟩ ℤ_K =", pretty_ideal(K, find_prime_ideals(g_X, 31)))
print()

F.<X> = PolynomialRing(GF(5), implementation="generic")
K.<γ> = F.quo(X^3 - 2)
assert (γ + 2)*(γ^2 + 3*γ + 4) == 0

F.<X> = PolynomialRing(GF(31), implementation="generic")
K.<γ> = F.quo(X^3 - 2)
assert (γ + 11)*(γ + 24)*(γ + 27) == 0

F.<X> = PolynomialRing(GF(2), implementation="generic")
g_X = X^2 + 2
K.<γ> = F.quo(g_X)
N.<a> = NumberField(x^2 + 2)
# Δ = (γ1 - γ2)^2 (γ1 - γ3)^2 (γ2 - γ3)^2
γ1 = sqrt(-2)
γ2 = -sqrt(-2)
print(N.discriminant())
D_K = -2
assert D_K == K.discriminant()
print("K = ℚ( √(-2) )")
print(f"D_K = {D_K}")
print("⟨2⟩ ℤ_K =", pretty_ideal(K, find_prime_ideals(g_X, 2)))
print()

print("-------------------")

def is_reducible(f):
    R.<X> = ZZ[]
    f = fieldify(R, f)
    ramified_factors = sum(n for _, n in factor(f))
    assert ramified_factors > 0
    return ramified_factors > 1

for i in range(20):
    # Now create a random quadratic field
    # Polynomial must be irreducible
    while True:
        factors = set()
        for j in range(ZZ.random_element(1, 5)):
            factors.add(random_prime(20))
        d = reduce(lambda f1, f2: f1*f2, factors)
        print(f"d =", " ".join(str(f) for f in factors))
        print(f"  = {d}")

        # f must be square free
        f = x^2 - d
        if is_reducible(f):
            # Try again since this poly is reducible
            continue

        N.<a> = NumberField(f)
        break

    # See example 3.30
    # D_K is the discriminant of the integral basis
    if d % 4 == 1:
        D_K = d
    else:
        assert d % 4 in (2, 3)
        D_K = 4*d

    assert D_K == N.discriminant()

    O = N.ring_of_integers()

    print(f"γ^2 - {d} = 0")
    print("K = ℚ(γ)")
    print(f"γ1 = {γ1}, y2 = {γ2}")
    print(f"D_K = {D_K} or {K.discriminant()}")
    for p, _ in factor(int(D_K)):

        F.<X> = PolynomialRing(GF(p), implementation="generic")
        g_X = X^2 - d
        K.<γ> = F.quo(g_X)

        # Δ = (γ1 - γ2)^2 (γ1 - γ3)^2 (γ2 - γ3)^2
        #γ1, γ2 = [sol.rhs() for sol in f.solve(x)]

        I_ideals = find_prime_ideals(g_X, p)
        J_ideals = factor(O.ideal(p))
        print(f"⟨{p}⟩ ℤ_K =", pretty_ideal(K, I_ideals))
        print("        =", J_ideals)
        for p_I, g_X_I, ramification_index in I_ideals:
            assert p_I == p
            assert ramification_index > 0
            g_γ = poly_change_ring(g_X_I, a)
            I = O.ideal(p_I, g_γ)
            print(I)
            print(list(J_ideals))
            print()
            found = False
            for J, ramification in J_ideals:
                if I == J:
                    found = True
                    assert ramification == ramification_index
            assert found
    print()

