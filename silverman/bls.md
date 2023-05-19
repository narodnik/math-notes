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

# BLS12-381

This is a parameterized family of pairing-friendly curves.

$$ r(X) = X⁴ - X² + 1 $$
$$ t(X) = X + 1 $$
$$ q(X) = \frac{(X - 1)²}{3} (X⁴ - X² + 1) + X $$
with $E: y² = x³ + 4$ with the parameter $X$.
Embedding degree is always $k = 12$.

There is a known value $X$ that gives the largest $r(X)$.
Which gives us $q = 381$ bits.

Note: $j(E) = 0 \left(= \frac{4A³}{4A³ + 27B²} 1728 \right)$ but $A = 0$.

So there is a sextic twist of $E$.

Thus $𝔾₁ = E(𝔽_q)[r]$ and
$$ 𝔾₂ = \textrm{ker}(Φ - [q]) ∩ E[r] $$
and $𝔾₂$ can be represented by $𝔾₂' ⊆ E(𝔽_{q²})$ via an isomorphism
$$ φ_m: 𝔾₂' → 𝔾₂ $$
$$ E(𝔽_{q²}) → E(𝔽_{q¹²}) $$
Thus there exists a degree 6 twist $φ₆$ of $E$ over $𝔽_{q²}$.

And hence a more efficient modified pairing:
$$ \bar{e} : 𝔾₁ × 𝔾₂' → 𝔾_T = μ_r $$
$$ \bar{e}(P, Q') = e(P, φ₆Q') $$

# How to represent $𝔽_{q²}$?

**Lemma:** let $q$ be a prime, then the polynomial
$g(x) = x² + 1$ is irreducible iff $q ≠ 1 \mod{4}$.

Otherwise let $α$ be a root of $g$. Then $α² = -1$, so $α⁴ = 1$ and
so $4 | |𝔽_q^×| ⇔ 4 | (q - 1) ⇔ q ≡ 1 \mod{4}$.

In BLS for the ideal $X$, $q ≡ \mod{4}$.
$$ 𝔽_{q²} = 𝔽_q[x] / ⟨x² + 1⟩ $$

with this representation
$$ E' : y² = x³ + 4(i + 1) $$

