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
$$ \deg u(u'/v') = u \max{ \{ \deg u', \deg v' \} } $$
(remember we are doing composition not multiplication)
$$ R(R'(x)) = \frac{ u''(x) } {v''(x)} $$
and
$$ \max\{ \deg u'', \deg v'' \} = \deg α \deg α' $$

