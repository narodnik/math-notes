# Frobenius

$$ Φ_{qᵏ} : \bar{𝔽}_{qᵏ} → \bar{𝔽}_{qᵏ} $$
$$ Φ(x) = x^{qᵏ} $$
$$ \textrm{Fixed}(Φ_{qᵏ}) = 𝔽_{qᵏ} ⊆ \bar{𝔽}_{qᵏ} $$

# Find Pairing Friendly Groups

**Def**: Let $q$ be a prime. We say that an EC E/𝔽_q is pairing
friendly if

1. There exists a prime $r > \sqrt{q}$ such that $r | \#E(𝔽_q)$
    1. Estimation in hasse-weil theorem we see $\#E(𝔽_q) = q + 1 - t$ where $|t| ≤ 2 \sqrt{q}$
       which is roughly $q ± 2 \sqrt{q}$.
2. The embedding degree of $E$ wrt $r$ satisfies $k \leq \textrm{log}_2(r)/8$.

We want a *type II* pairing of order $r$.
$$ e : G₁ × G₂ → G_T $$
$$ r = |G₁| = |G₂| = |G_T| $$

**Last time**: For nice $r$ we can write
$$ E[r] ≌ H_1 × H_q $$
$$ = E(𝔽_q)[r] × \textrm{Eig}_q(Φ_q) ∩ E[r] $$
Note: $|H₁| = |H_q| = r$ since $E[r] ≌ ℤ_r × ℤ_r$.

if $|H₁| = r²$ then $E[r] ⊆ E(𝔽_q)$ so $k = 1$.

Natural choices
$$ G_T = μ_r $$
$$ G₁ = E(𝔽_q)[r] $$
$$ G₂ = \textrm{ker}(Φ - [q]) ∩ E[r] ⊆ E(𝔽_{qᵏ}) $$

# How to find $G₁$?

Denote $\# E(𝔽_q) = hr$, where $h$ is the cofactor.
Take any $P ∈ E(𝔽_q)$ and check if $hP ≠ ∞$.
If so $hP$ is a generator of $G₁$.

# Efficient Representation of $G₂$

**Thm:** Let $E/𝔽_q$ where $q = pⁿ$ is a prime power, so the trace of Frobenius $t ≠ 0$ mod $p$.
Let $d ∈ \{ 2, 3, 4, 6 \}$ (possible degrees of twists) and $r > d$ a prime
with $r | \#E(𝔽_q)$ and $r² | E(𝔽_{qᵈ})$ with $d$ minimal.

Then there is a unique degree $d$ twist $E'$ of $E$ such that $r|E'(𝔽_{q})$, and the twist
$$ φ_d : E'(𝔽_q) → E(𝔽_q) ⊆ E(𝔽_{qᵏ}) $$
is a monomorphism that maps an order $r$ subgroup $G₂'$ of $E'(𝔽_q)$
isomorphically to $G₂$.
$$ G₂ = \textrm{ker}(Φ - [q]) ∩ E[r] ⊆ E[r] ⊆ E(𝔽_{qᵏ}) $$

# Construction

Assume $E$ admits a degree $d$ twist.
Let $m = \textrm{gcd}(k, d)$ and $e = k/m$.
Then there is a unique degree $m$ twist $E'$ of $E$ over $𝔽_{qᵉ}$ such that
$r | \# E'(𝔽_{qᵉ})$ and denoted by
$$ φ_m : E'(𝔽_{qᵉ}) → E(𝔽_{q^{em}}) = E(𝔽_{qᵏ}) $$
which is a monomorphism that maps $G₂' ⊆ E'(𝔽_{qᵉ})$ isomorphically to
$G₂ ⊆ E(𝔽_{pᵏ})$.

Then we obtain a modified type II pairing
$$ \bar{e} : G₁ × G₂' → G_T $$
$$ \bar{e}(P, Q') = e(P, φ_m(Q')) $$
where $φ_m(Q') = Q$.

e.g BLS12-381, $k = 12, E: y² = x³ + 4$ where $j(E) = 0$.
So there exists $d = 6$ twist of $E ⇒ m = \textrm{gcd}(k, d) = 6$,
$e = k/m = 2$ so there exists $d = 6$ twist $E'$ of $E$ over $𝔽_{qᵉ} = 𝔽_{q²}$
with $G₂' ⊆ E'(𝔽_{q²})$.

there exists an explicit formula for the twist
$$ φ_m : E'(𝔽_{q²}) → E(𝔽_{qᵏ}) $$

