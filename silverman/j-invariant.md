$$ t = q + 1 - \# E(𝔽_q) $$
So the characteristic polynomial of frobenius polynomial is
$x² - tx + q$.
$$ Φ_q² - [t]Φ_q + [q] = 0 $$

Let $α$ be that endomorphism so $α ∈$ End(E).

If $α ≠ 0$ then $\# \ker α ≤ \deg α$, so $\ker α$ is finite.

We now show that if $α ≠ 0$ then $\# \ker α = ∞$.

For any int $n$ such that $p \nmid n$,
$$ E[n] \cong ℤ_n × ℤ_n $$
and we represent
$$ Φ_q |_{E[n]} : E[n] → E[n] $$
since it's an endomorphism that is just restricted to $E[n]$ so we
can represent this as a matrix
$A = \begin{pmatrix}
a & b \\
c & d \\
\end{pmatrix}$

So by direct inspection
$$ A_n² - \textrm{tr}(A_n) · A_n + \det(A_n) I = 0 $$
We've shown that
$$ \det(A_n) = \deg Φ_q \mod{n} $$
Another calc shows
$$ \textrm{tr}(A_n) = 1 + \det(A_n) - \det(I - A_n) $$
so
$$ \textrm{tr}(A_n) = 1 + q - \deg(\textrm{id} - Φ_q) \mod{n} $$
since $\deg(\textrm{id} - Φ_q) = \# E(𝔽_q) = q + 1 - t$
so
$$A_n² - [1 + q - (q + 1 - t)]A_n + qI = 0 $$
for 2x2 matrices.
Remember that $A_n$ is a matrix in $E[n]$ so the matrix is defined over mod $n$.

$$ \underbrace{A_n² - [t] A_n + qI = 0}_{\textrm{representation of } α|_{E[n]}} $$

This means that for any $n$ such that $p \nmid n$ then for all
$P ∈ E[n]$
$$α(P) = 0 $$
since the set
$$ U_{p \nmid n} E[n] $$
is infinite (the U means union here),
$$ \# \ker(α) = ∞ $$
contradiction.

Note: $t = \textrm{tr}(A_n)$ $\forall p \nmid n$ so is called the
trace of Frobenius.

# $\deg(α \circ α') = \deg(α) \circ \deg(α')$

$$ E → E' → E'' $$
by the maps $α', α$.

For simplicity think $E = E' = E''$.

$$ α(x, y) = (R(x), yS(x)) $$
$$ α'(x, y) = (R'(x), yS'(x)) $$

Then $(α \circ α')(x, y)$ has repr:
$$ (R''(x), yS''(x)) = (R(R'(x)), S(R'(x))S'(x)y) $$

So this already satisfies the property of canonical form.
The other property is that both sides don't share a common root
over the algebraic closure.

If $R(R'(x)) = \frac{u''(x)}{v''(x)}$ is a reduced rational function, then
$$ \deg(α \circ α') = \max{\{ \deg u'', \deg v'' \}} $$

Reduced means no common roots over $\bar{K}$.

How do we prove $R(R'(x))$ is reduced? Lets write over $\bar{K}$
$$ R(x) = \frac{ \prod (x - α_i) }{ \prod (x - β_j) } $$
$$ R'(x) = \frac{ \prod (x - α_i') }{ \prod (x - β_j') } $$

$$ R(R'(x)) = \frac{ \prod (\frac{ \prod (x - α_i') }{ \prod (x - β_j') } - α_i) }{ \prod (\frac{ \prod (x - α_i') }{ \prod (x - β_j') } - β_j) } $$
if $x₀$ is such that
$$ R'(x₀) = α_i $$
for some $i$.

Then clearly since $a_i ≠ β_j$ for all $j$.
$$ R'(x₀) ≠ β_j $$

Finally, a direct calculation shows that if
$$ R''(x) = R(R'(x)) = \frac{ u''(x) } { v''(x) } $$
then
$$ \max{\{ \deg u'', \deg v'' \}} = \max{\{ \deg u, \deg v \}} \max{\{ \deg u', \deg v' \}} $$

$$ R = u/v, R'' = u' / v' $$
$$ R(R') = \frac{ u(u'/v') }{v(u'/v')} $$
as rational functions,
$$ \deg u(u'/v') = \deg u \max{ \{ \deg u', \deg v' \} } $$
$$ \deg v(u'/v') = \deg v \max{ \{ \deg u', \deg v' \} } $$
(remember we are doing composition not multiplication)
$$ R(R'(x)) = \frac{ u''(x) } {v''(x)} $$
and
\begin{align*}
\max\{ \deg u'', \deg v'' \} 
    &= \max\{ u \max \{ \deg u', \deg v' \}, v \max \{ \deg u', \deg v' \} \} \\
    &= \max\{ u, v \} \max\{ u', v' \} \\
    &= \deg α \deg α'
\end{align*}

# Isomorphic Isogeny

Isogeny $α : E → E'$ is called an isomorphism if $\exists$ an isogeny
$\bar{α}' : E' → E$ such that $α \circ α⁻¹ = \textrm{id}_E$ and
$α⁻¹ \circ α = \textrm{id}_E$.

## $\deg α = 1$ when $α$ is an isomorphism

$$ \deg α \circ \deg α⁻¹ = \deg(α \circ α⁻¹) = \deg(\textrm{id}_E) = 1 $$
$$ ⇒ \deg α = 1 $$

Remember $E$ and $E'$ might not be isomorphic over $K$ but they might be
isomorphic over an extension of $K$.

# j-invariant

EC should be non-singular means $Δ = 4A³ + 27B² ≠ 0$.

$$ j = 1728 \frac{4A³}{Δ} $$
determines $E$ up to isomorphism over $\bar{K}$.

A twist is you have two curves where $K ⊆ K'$
$$ E(K), \quad E'(K') $$
$$ E(K') \cong E'(K') $$

It also turns out $[K' : K]$ is only 2, 4 or 6 (quadratic, quartic, sextic twists).

For $E(K)$, you can calculate $\# \textrm{Aut}_{\bar{K}}(E) ≤ 24$.

Remark: if $A = 0$ then $j = 0$. If $B = 0$, then $j = 1728$.

## Proof of j invariant

If $j = 0$ or 1728, then take $E: y² = x³ + 1$ or $E: y² = x³ + x$, otherwise
$$ A = 3j₀(1728 - j₀), \; B = 2j₀(1728 - j₀)² $$
Then we see the j-invariants are consistent.

## We cannot use rational maps, only polynomials for isogenies

All well defined rational maps which map $R(x)$ or $S(x)$ to $∞$ must map to $(∞, ∞)$.
To observe this just look at $y² = x³ + Ax + B$.

Let $R(x) = \frac{p(x)}{q(x)}$, then there's a root of $q(x)$ which is $x₀$.
Then $R(x₀) = ∞$, but $α(∞) = ∞$ so we have a contradiction.

## Showing $A' = μ⁴A, B' = μ⁶B$

Since deg $α = 1$, $R(x) = ax + b$ by the definition of degree for a rational map.
$$ S²(x)(x³ + Ax + B) = (ax + b)³ + A'(ax + b) + B' $$
so comparing coefficients, we see $c² = a³$ so $μ = c/a ∈ K^×$ so $a = μ²$.
$$ μ⁶(x³ + Ax + B) = μ⁶x³ + A'μ²x + B' $$
$$ ⇒ A' = μ⁴A, B' = μ⁶B $$

## Converse

Let $A' = μ⁴A, B' = μ⁶B$, $α(x, y) = (μ²x, μ³y)$.
Then $α$ is a rational map that preserves $∞$, so $α$ is an isogeny.

Also $α$ has an inverse $α⁻¹(x, y) = (x/μ², y/μ³)$.

And then composing them clearly gives the identity.

