# Hasse-Weil Theorem

$p$ prime, $q = pⁿ$
$$ \Phi : \bar{𝔽}_q → \bar{𝔽}_q = \bar{𝔽}_p = \bigcup_n 𝔽_{pⁿ} $$
$$ \Phi(x) = x^q $$
it is a field homomorphism.
Induces a map for $E/𝔽_q$
$$ \Phi: E(\bar{𝔽}_q) → E(\bar{𝔽}_q) $$
$$ \Phi(x, y) = (x^q, y^q) $$
Frobenius is compatible wih group structure on $E(\bar{𝔽}_q)$.

## Definition: Isogeny

$E, E'$ are EC on $K$. An isogeny $α : E → E'$ is a rational map
such that the induced map
$$ E(\bar{K}) → E'(\bar{K}) $$
is a group homomorphism

## Example: Frobenius

## Isogeny $α : E → E$ is an endomorphism.

If $α : E/K → E'/K$ is an isogeny then
$$ α : E(L) → E'(L) $$
for $K ⊆ L ⊆ \bar{K}$ is an isogeny.
$$ E(L) ⊆ E(\bar{K}) $$

## Example

Let $E/K$ be any EC, for all $n$ multiplication by $n$
is an endomorphism.
$$ [n] : E → E $$
$$ P → nP $$
Everything we do is polynomials and it preserves group structure.

## Recall:

An isogeny $α : E → E'$ viewed as a rational map, has a canonical form.
$$ α(x, y) = (r₁(x), yr₂(x)) $$
where $rِ₁(x) = \frac{p(x)}{q(x)}, r₂(x) = \frac{u(x)}{v(x)}$
and each quotient is reduced, so no common factors over $\bar{K}$.

If $q(x) = 0$ for some $x, y ∈ E(\bar{K})$, then we set $α(x, y) = 0_{E'}$
and otherwise we showed $v(x) ≠ 0$ and hence $α$ is well defined.

## Def

Let $α : E/K → E'/K$ be an isogeny.

1. The degree of $α$ is $\deg(α) = \textrm{max}\{ \deg(p), \deg(q) \}$.
2. $α$ is called separable if the formal derivative $r₁'(x)$ is not identically
   zero ⇔  $p(x) q'(x) - p'(x) q(x) ≠ 0$

$$ \Phi_q = α : E(\bar{𝔽}_q) → E(\bar{𝔽}_q) $$
$$ ∞ → ∞ $$
$$ (x, y) → (x^q, y^q) ∈ E(\bar{𝔽}_q) $$
$$ (y^q)² = (x^q)³ + Ax^q + B $$
$$ (y²)^q = (x³ + Ax + B)^q $$

Is $\Phi_q$ separable?
$$ (x^q)' = qx^{q - 1} = 0 \textrm{ in } 𝔽_q $$
so it is not separable.

## Prop

Let $α : E → E'$ be a nonzero isogeny.
If $α$ is separable then
$$ \# \textrm{ker}(α : E(\bar{K}) → E'(\bar{K})) = \deg(α) $$
and otherwise $\#\textrm{ker}(α) < \deg(α)$

### Observe $\# E(𝔽_q) = \# \ker(α)$

For $E/𝔽_q$
$$ α : \Phi^n_q - \textrm{id} : E → E $$
$$ P → \Phi_q^n(P) - P $$
$$ \ker(α : E(\bar{𝔽}_q) → E(\bar{𝔽}_q)) = \# E(𝔽_{q^n}) $$

(or without $n$ easier)

For $E/𝔽_q$
$$ α : \Phi_q - \textrm{id} : E → E $$
$$ P → \Phi_q(P) - P $$
$$ \ker(α : E(\bar{𝔽}_q) → E(\bar{𝔽}_q)) = \# E(𝔽_{q}) $$
$$P ∈ \ker(α) ⇔ \Phi_q(P) -P = ∞ $$
$$ ⇔ \Phi_q(P) = P $$
we saw that these points $P$ are exactly $E(𝔽_q)$

The only points frobenius acts as identity is those in $𝔽_q$,
so only unchanged points are in the kernel.
In higher extensions, frobenius doesn't act as the identity.

## Proof

Since $α ≠ 0$ and is a group homomorphism on $E(\bar{K}) → E'(\bar{K})$
it is non-constant.

Thus $α : E(\bar{K}) → E'(\bar{K})$ is surjective. Let $Q = (a, b) ∈ E'(\bar{K})$
and $P = (x₀, y₀) ∈ E(\bar{K})$.

## Exercise: Show the prop on surjectivity generalizes to the case of $E → E'$

Since $E'(\bar{K})$ is infinite we can choose $Q$ st

1. $a, b ≠ 0$
2. $\deg(p - qa) = \max\{\deg(p), \deg(q) \} = \deg(α)$

the only case in which $\deg(p - qa) < \deg(α)$ is when
$\deg(p) = \deg(q)$ and their leading coefficients $λ, δ$ respectively
satisfy
$$ λ - aδ = 0 ⇔ a = \frac{λ}{δ} $$
so we choose $Q$ such that $a ≠ \frac{λ}{δ}$.

Since $\deg(p - aq) = \deg(α)$,
$p(x) - aq(x)$ has exactly $\deg(α)$ roots over $\bar{K}$
(possibly repeated roots).

We claim that the number of distinct roots of $p - aq$ is exactly the
number of sources $P$ of $Q$ (under $α$).

Since $(a, b) ≠ (∞, ∞)$, then
$$r₁(x₀) ≠ 0 ⇔ q(x₀) ≠ 0$$
since $b ≠ 0$ and we have
$$y₀ r₂(x) = b$$
we have $y₀ = b / r₂(x₀)$, so $y₀$ is completely determined by $x₀$.

So it is enough to count the $x₀$'s which in turn must satisfy
$\frac{p(x₀)}{q(x₀)} = a$
$$ ⇔ p(x₀) - aq(x₀) = 0 $$
i.e the roots of $p - aq$

Since $α$ is a group homomorphism on $E(\bar{K}) → E'(\bar{K})$,
then $\# \ker(α)$ is the same as the number of sources of any given
point $Q ∈ E'(\bar{K})$

Which is enough to analyze the number of distinct roots $x₀$ of $p - aq$.

$x₀$ is a repeated root of $p - aq ⇔  p(x₀) - aq(x₀) = 0$
and also $p'(x₀) - aq'(x₀) = 0$.
Multiply both equations to get
$$ap(x₀)q'(x₀) = ap'(x₀)q(x₀)$$
Since $a ≠ 0$
$$p(x₀)q'(x₀) - p'(x₀)q(x₀) = 0$$
$$r₁'(x₀) = 0 $$
by the quotient rule applied to $r₁'$.

If $α$ is not separable
$$ r₁'(x) = 0 $$
which means $p - aq$ has repeated roots
and $\# \ker(α) < \deg(α)$.

If $α$ is separable
$$ r₁'(x) ≠ 0 $$
and hence has a finite number of roots $S$.
We may add a constraint on the choice of $Q$
saying that $a ∉ r₁(S)$. Then since
$r₁(x₀) = a$
$$x₀ ∉ S$$
so $p - aq$ will not have repeated roots,
i.e. $\# \ker(α) = \deg(α)$.

$$ r₁'(x) = \frac{ p(x)q'(x) - q'(x)p(x) }{ q(x)² } $$

# Weil Pairing

Recall $\textrm{gcd}(n, \textrm{char} K) = 1$.
For $Q ∈ E[n]$ take $f_Q ∈ K(E) : \textrm{div}(f_Q) = n[Q] - n[∞]$,
there exists $g_Q ∈ K(E) : \textrm{div}(g_Qⁿ) = \textrm{div}(f_Q \circ [n])$.

For arbitrary $S ∈ E(K), P ∈ E[n]$
$$ e_n(P, Q) = \frac{ g_Q(S + P) }{ g_Q(S) } $$
(this does not depend on the choice of $S$)
$$ e_n : E[n] × E[n] → μ_n(K) $$

## $e_n(α(P), α(Q)) = e_n(P, Q)^{\deg α}$

Let $α : E → E$ be a separable endomorphism.

Observe that $α(P), α(Q) ∈ E[n]$ since
$$ n α(P) = α(nP) = α(∞) = ∞ $$

Let $\{ T₁, …, T_k \} = \ker (α)$. Since $α$ is separable, $k = \deg(α)$.

$$ \textrm{div}(f_Q) = n[Q] - n[∞] $$
$$ \textrm{div}(f_{α(Q)}) = n[α(Q)] - n[∞] $$
$$ g_Qⁿ = f_Q \circ [n] $$
$$ g_{α(Q)}ⁿ = f_{α(Q)} \circ [n] $$

Let $τ_T : E → E$ be $X → X + T$ translation by $T$.

Then $\textrm{div}(f_Q \circ τ_{-T_i}) = n[Q + T_i] - n[T_i]$.

Now notice that $\textrm{div}(f_{α(Q)}) = n[α(Q)] - n[∞]$ and so
\begin{align*}
\textrm{div}(f_{α(Q)} \circ α) &= n \sum_{Q'' : α(Q'') = α(Q)} [Q''] - n \sum_{T : α(T) = ∞} [T] \\
        &= n \sum_{i = 1}^k ([Q + T_i] + [T_i]) \\
        &= \textrm{div}(\prod_{i = 1}^k f_Q \circ τ_{-T_i})
\end{align*}

For $1 ≤ i ≤ k$ choose $T_i' ∈ E[n²] : nT_i' = T_i$ then
\begin{align*}
g_Q(S - T_i')ⁿ &= f_Q \circ [n](S - T_i') \\
    &= f_Q(nS - T_i)
\end{align*}
by the definition of $g_Q$.

Now using this identity, we can see that
\begin{align*}
\textrm{div}( \prod_{i = 1}^k (g_Q \circ τ_{-T_i'})ⁿ) &=
    \textrm{div}( \prod_{i = 1}^k f_Q \circ τ_{-T_i} \circ [n] ) \\
    &= \textrm{div}( f_{α(Q)} \circ α \circ [n] )
\end{align*}
where we use the expression from above for $\textrm{div}(f_{α(Q)} \circ α)$.

Notice $α \circ [n] = [n] \circ α$ because $nα(P) = α(nP)$, so multiplication
by $n$ commutes with endormorphisms.
\begin{align*}
    \textrm{div}( f_{α(Q)} \circ α \circ [n] )
    &= \textrm{div}( f_{α(Q)} \circ [n] \circ α ) \\
    &= \textrm{div}( (g_{α(Q)}ⁿ) \circ α) \\
    &= \textrm{div}( (g_{α(Q)} \circ α)ⁿ )
\end{align*}

Finally we get
$$ \prod_{i = 1}^k (g_Q \circ τ_{-T_i'}) = g_{α(Q)} \circ α $$

\begin{align*}
e_n(α(P), α(Q)) &= \frac{ g_{α(Q)}(α(P) + α(S)) }{ g_{α(Q)}(α(S)) } \\
    &= \prod_{i = 1}^k \frac{
        g_Q(P + S - T_i')
    }{
        g_Q(S - T_i')
    } \\
    &= \prod_{i = 1}^k e_n(P, Q) = e_n(P, Q)^k \\
    &= e_n(P, Q)^{\deg α}
\end{align*}

# General Direction

\begin{align*}
\# E(𝔽_q) &= \# \ker (\Phi_q - \textrm{id}) \\
          &= \deg (\Phi_q - \textrm{id})
\end{align*}
then we can estimate this degree.

# Separable Map

Definition of separable map
$$ \deg α = \# \ker(α) $$
alternatively $r₁'(x) ≠ 0$.

$P, Q ∈ E[n]$ and $α$ is separable then
$e_n(α(P), α(Q)) = e_n(P, Q)^{\deg α}$.

# Invariance of Weil Pairing under "action of Galois group"

$$ \textrm{Gal}(\bar{K}/K) = \{ σ ∈ \textrm{Aut}(\bar{K}) : σ|_k = \textrm{id}_K \}$$

$$ \Phi_q ∈ \textrm{Gal}(\bar{𝔽}_q / 𝔽_q) $$

## Proposition

$$ σ ∈ \textrm{Gal}(\bar{𝔽}_q / 𝔽_q) $$

$$ σ(e_n(P, Q)) = e_n(σP, σQ) $$

Note $σP ∈ E$ since $σ(y)² = σ(x)³ + Aσ(x) + B$, and
then adding is rational so $P ∈ E[n] ⇒ n · σP = ∞$.

Recall that $f_Q, g_Q ∈ K(E)$
$$ \textrm{div}(f_Q) = n[Q] - n[∞] $$
and $g_Q$ that satisfy
$$ g_Qⁿ = f_Q \circ [n] $$
and for any $S ∈ E(K)$
$$ e_n(P, Q) = \frac{ g_Q(P + S) }{ g_Q(S) } $$

Write out $f_Q$ and then when it equals zero, applying $σ$ you see
that $σQ$ is now a root of $f_Q^σ$, so
$$\textrm{div}(f_Q^σ) = n[σQ] - n[∞]$$
and similarly for $g_Q^σ$.

\begin{align*}
(g_Q^σ)ⁿ &= (g_Qⁿ)^σ \\
        &= (f_Q \circ [n])^σ \\
        &= f_Q^σ \circ [n]
\end{align*}

Thus
\begin{align*}
σ(e_n(P, Q)) &= σ(\frac{g_Q(P + S)}{g_Q(S)}) \\
    &= \frac{ g_Q^σ(σP + σS) } { g_Q^σ(σS) } \\
    &= e_n(σP, σQ)
\end{align*}

Where the last step comes from the construction of the Weil pairing.
Namely $g_Q^σ = g_{σQ}$.
\begin{align*}
(g_{σQ})ⁿ &= f_{σQ} \circ [n] \\
    &= f_Q^σ \circ [n] \\
    &= (g_Qⁿ)^σ \\
    &= (g_Q^σ)ⁿ \\
    &= (f_Q \circ [n])^σ \\
    &= f_Q^σ \circ [n]
\end{align*}

# Restriction of $α$ to $E[n]$ stays in $E[n]$

$$ E[n] = ℤ_n × ℤ_n $$
so $E[n] = ⟨T₁, T₂⟩$.
$$ α_n =
\begin{pmatrix}
a & b \\
c & d \\
\end{pmatrix}
$$
\begin{align*}
α(T₁) &= aT₁ + cT₂ \\
α(T₂) &= bT₁ + dT₂ \\
α(P) &= α(rT₁ + sT₂) \\
    &= rα(T₁) + sα(T₂)
\end{align*}
$$ P = rT₁ + sT₂ $$
$$
\begin{pmatrix}
a & b \\
c & d \\
\end{pmatrix}
\begin{pmatrix}
r \\
s \\
\end{pmatrix}
=
\begin{pmatrix}
x \\
y \\
\end{pmatrix}
$$
$$ α(P) = xT₁ + yT₂ $$

# $\det(α_n) = \deg(α) \textrm{mod} n$

By weil pairing property $e_n(T₁, T₂)$ maps to a generator
for $μ_n(𝔽_q)$.
Let $η = e_n(T₁, T₂)$.
Since $α$ is separable of $\Phi_q$
$$ η^{\deg{(α)}} = e_n(T₁, T₂)^{\deg(α)} = e_n(α(T₁), α(T₂)) $$
But using the matrix we get
\begin{align*}
e_n(aT₁ + cT₂, bT₁ + dT₂) &= e_n(T₁, T₁)^{ab} e_n(T₁, T₂)^{ad} e_n(T₂, T₁)^{bc} e_n(T₂, T₂)^{cd} \\
&= 1^{ab} e_n(T₁, T₂)^{ad} e_n(T₂, T₁)^{bc} 1^{cd} \\
&= 1^{ab} e_n(T₁, T₂)^{ad} e_n(T₁, T₂)^{-bc} 1^{cd} \qquad \text{by pairing rule about swapping args}\\
&= e_n(T₁, T₂)^{ad - bc} \\
&= e_n(T₁, T₂)^{\det(α_n)} \\
&= η^{\det(α_n)}
\end{align*}
since $η$ is a generator, we must have
$$ \deg(α) ≡ \det(α_n) \mod n $$

# $\deg(aα + bβ) = a² \deg(α) + b² \deg(β) + ab (\deg(α + β) - \deg(α) - \deg(β))$

Restrict $α, β$ using matrices $α_n, β_n$, where char $K \nmid n$.

Note from linear algebra matrix determinant rules
$\det(aα_n + bβ_n) = a² \det(α_n) + b² \det(β_n) + ab (\det(α_n + β_n) - \det(α_n) - \det(β_n))$.

Now replace determinant by degree for mod n.

Since this is true for infinitely many n's, we have ordinary equality.

# $\deg(r \Phi_q + s) = r² q + s² - rst$

$r, s ∈ ℤ, \gcd(s, q) = 1$ then
$$t = q + 1 - \deg(\Phi_q - 1)$$
By previous proposition
$$ \deg(r\Phi_q - s) = r² \deg(\Phi_q) + s² \deg(-1) + rs(\deg(\Phi_q - 1) - \deg(\Phi_q) - \deg(-1)) $$
Since $\deg(\Phi_q) = q$ and $\deg(-1) = 1$
$$ \deg(r\Phi_q - s) = r² q + s² + rs(\deg(\Phi_q - 1) - q - 1) $$

# Hasse-Weil Theorem

$$ | q + 1 - \# E(𝔽_q) | ≤ 2 \sqrt{q} $$

$$ \deg(\Phi_q - 1) = \# \ker(\Phi_q - 1) = \# E(𝔽_q) $$

For any $r, s ∈ ℤ$ such that $\gcd(s, q) = 1$, we have
$$ 0 ≤ \deg(r \Phi_q - s) $$
because degrees are greater than 0.

$$ r²q + s² - rst >= 0 $$
$$ ⇔ q(\frac{r}{s})² - t(\frac{r}{s}) + 1 ≥ 0 $$
The set of all rational numbers $r/s$ such that $\gcd(s, q) = 1$
is dense in $\mathbb{R}$ so the polynomial
$$ qx² - tx + 1 $$
gets only non-negative values, and
has non-positive discriminant.
$$ t² - 4q ≤ 0 $$

## Dense Set

If $\forall x ∈ \mathbb{R}$, there exists a sequence
$$ s_1, s_2, …, s_n, … $$
$$ \lim_{n → ∞} s_n = x $$

For example $\pi$ can be approximated with an infinite sequence of rationals.

Take $x₀ ∈ \mathbb{R}$ since there exists a sequence $σ_n = r_n / s_n$
such that $\lim σ_n = x_0$.

$$ 0 ≤ \lim_{n → ∞}(q σ_n² - tσ_n + 1) = q(\lim_{n → ∞})² - t \lim_{n → ∞}(σ_n) + 1 $$
$$ ⇒ qx₀² - tx₀ + 1 ≥ 0 $$

# Hasse-Weil Corrollary

In End($E$)
$$ \Phi_q^2 - [t] \circ \Phi_q + [q] = 0 $$

For all $p \nmid n$
$$ E[n] \cong ℤ_n × ℤ_n $$
so we represent $\Phi_q |_{E[n]} : E[n] → E[n]$
as a matrix 
$A = \begin{pmatrix}
a & b \\
c & d \\
\end{pmatrix}$ (choose generators $\{T_1, T_2\} ⊆ E[n]$ which correspond to
$\{ (1, 0), (0, 1)\} ∈ ℤ_n × ℤ_n$)

Any $2x2$ satisfies
$$ A² - \textrm{tr}(A · A) + \det(A·I) = 0 $$
where $\textrm{tr}(A) = a + d$.

We showed that
$$\det(A_n) = \deg(\Phi_n) \mod n $$
and another direct calc shows
$$ \textrm{tr}(A_n) = 1 + \det(A_n) = \det(I - A_n) $$
thus
\begin{align*}
\textrm{tr}(A_n) &= 1 + \deg \Phi_q + \deg(\textrm{id} - \Phi_q) \\
    &= 1 + \deg \Phi_q + \deg(\Phi_q - \textrm{id}) \\
    &= 1 + q - (q + 1 - t) \mod n \\
    &= t \mod n
\end{align*}
substititng, we get
$$ A² - t·A + q·I = 0 $$
Now since this is true for infinitely many n,
it should be true in End($E$) $⇒$
$$ \Phi_q² + [t]·\Phi_q + [q] = 0 $$

