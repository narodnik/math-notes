---
header-includes: |
    - \usepackage{mathabx}
    - \newcommand{\row}[1]{\textrm{row}({#1})}
    - \let\vec\mathbf
    - \DeclareMathOperator\sgn{sgn}
    - \DeclareMathOperator\rank{rank}
    - \DeclareMathOperator\adj{adj}
---

# Main Theorem

$$ \det : K^{n×n} → K $$

1. $\det(AB) = \det(A)\det(B)$
2. If $A = (a_{ij})$ is upper or lower triangular then $\det(A) = \prod_{i = 1}^n a_{ii}$.
3. If $E$ is a row swap matrix then $\det(E) = -1$.
4. $A$ is nonsingular iff $\det(A) ≠ 0$.

Note that nonsingular means the rank of $A ∈ K^{n×n}$ is $n$. For the matrix to be invertible $\rank(A) = n$ and $N(A) = \{ \vec{0} \}$.

## Simple Computation

Using row operations $E₁, …, E_k$, we can create an upper triangular matrix $U = E₁ ⋯ E_k A$ with $\det U = u₁₁ ⋯ u_{nn} ⇒ \det A = (u₁₁ ⋯ u_{nn}) / (\det(E₁) ⋯ \det(E_k))$.

# Signature of a Permutation

Define the signature $\sgn(σ)$ to be
$$ \sgn(σ) = \prod_{i < j} \frac{σ(i) - σ(j)}{i - j} $$

## $\sgn(σ) = ±1 \quad ∀σ ∈ S(n)$

By swapping the arbitrary symbols $i, j$ we see
\begin{align*}
\prod_{i < j} \frac{σ(i) - σ(j)}{i - j} &= \prod_{j < i} \frac{σ(j) - σ(i)}{j - i} \\
    &= \prod_{j < i} \frac{σ(j) - σ(i)}{j - i} \\
    &= \prod_{j < i} \frac{σ(i) - σ(j)}{i - j} && \text{multiply prev line by (-1/-1)} \\
⇒ (\sgn(σ))² &= \prod_{i < j} \frac{σ(i) - σ(j)}{i - j} \prod_{j < i} \frac{σ(i) - σ(j)}{i - j} \\
    &= \prod_{i ≠ j} \frac{σ(i) - σ(j)}{i - j}
\end{align*}
Expanding this out gives us all possible combos $i, j$, so $\sgn(σ)² = 1$.

## $\sgn(τσ) = \sgn(τ)\sgn(σ)$

Let $N(σ) = \{(i, j) \; | \; i < j, σ(i) > σ(j)\}$, and $n(σ) = |N(σ)|$. Thus $n(σ)$ counts the
number of inversions in the set $D = \{(i, j) \; | \; i < j \}$. By the proposition above,
$$ \sgn(σ) = (-1)^{n(σ)} $$

Let $σD = \{(σ(i), σ(j)) \; | \; i < j\}$, then for all $k < l$, either $(k, l)$ or $(l, k) ∈ σD$.

Now apply $τσD$ which contains either $(τk, τl)$ or $(τl, τk)$. Thus $τ$ inverts $n(τ)$ pairs,
and so $D → σD → τσD$ has inverted $n(σ) + n(τ)$ pairs.

But $D → (τσ)D$ has inverted $n(τσ)$ pairs.

We also see $(i, j) ∈ N(τσ) ⇔ (i, j) ∈ N(σ)$ or $(σ(i), σ(j)) ∈ N(τ)$.
And there is no pair $(i, j) ∈ N(τσ) : (i, j) ∈ N(σ)$ and $(σ(i), σ(j)) ∈ N(τ)$ so it follows
$$ n(τσ) = n(τ) + n(σ) $$

## $\sgn(σ) = \sgn(σ⁻¹)$

Observe that $\sgn(σ) \sgn(σ⁻¹) = \sgn(σσ⁻¹) = \sgn(e) = 1$. Then since $\sgn(σ), \sgn(σ⁻¹) ∈ \{ -1, 1 \} ⇒ \sgn(σ) = \sgn(σ⁻¹)$.

## $\sgn(σ)$ measures the number of transpositions

Note these facts:

* Every permutation is the product of distinct cycles.
* $\sgn(σ) = \sgn(σ⁻¹)$ and $\sgn(σσ⁻¹) = 1$
* So the parity $\sgn(σ)$ is always consistent for all representations.

### Example: $σ = (37)$

Rewriting $σ$ as adjacent transpositions, we see
$$ σ = \begin{pmatrix}
⋯ & 3 & 4 & 5 & 6 & 7 & ⋯ \\
⋯ & 4 & 3 & 5 & 6 & 7 & ⋯ \\
⋯ & 4 & 5 & 3 & 6 & 7 & ⋯ \\
⋯ & 4 & 5 & 6 & 3 & 7 & ⋯ \\
⋯ & 4 & 5 & 6 & 7 & 3 & ⋯ \\
⋯ & 4 & 5 & 7 & 6 & 3 & ⋯ \\
⋯ & 4 & 7 & 5 & 6 & 3 & ⋯ \\
⋯ & 7 & 4 & 5 & 6 & 3 & ⋯ \\
\end{pmatrix} $$
where we first do $m - n = 7 - 3 = 4$ swaps corresponding to rows $2-5$.
Then we finally do $m - n - 1$ swaps corresponding to the remaining rows.

We can thus rewrite the cycle as
$$ σ = (47)(57)(67)(37)(36)(35)(34) $$
where we see
$$ σ = \begin{pmatrix}
⋯ & 3 & 4 & 5 & 6 & 7 & ⋯ \\
⋯ & 7 & 4 & 5 & 6 & 3 & ⋯ \\
\end{pmatrix} $$
as desired.

The total is $2(m - n) - 1$ adjacent transpositions.

### Correspondence between formulas

Let $σ = (mn)$, then
$$ \sgn(σ) = \prod_{i < j} \frac{σ(i) - σ(j)}{i - j} = (-1) $$
We can see by above that the parity of $σ$ can be evaluated by
counting the number of swaps for all $i < j$.
For a single transposition, this will be $\sgn(σ) = -1$.

Since $\sgn(σ)$ is multiplicative therefore $\sgn(τ) = \sgn(σ₁)⋯\sgn(σ_k) = (-1)ᵏ$
where $τ = σ₁ ⋯ σ_k$.

# Leibniz Formula

$$ \det(A) := \sum_{π ∈ S(n)} \sgn(π) a_{π(1)1} ⋯ a_{π(n)n} $$

When $U$ is upper (or lower) triangular then every permutation along rows or columns will end up including a 0. Hence $\det(U) = u_{11} ⋯ u_{nn}$.

When $P = P_μ$ is a permutation matrix then $\det(P) = \sgn(μ)$. Recall $P_μ = (\vec{e_{μ(1)}} ⋯ \vec{e_{μ(n)}})$. Then $p_{μ(i)i} = 1$ for all $i$, but is $0$ otherwise. Therefore $\det(P) = \sgn(μ) p_{μ(1)1} ⋯ p_{μ(n)n} = \sgn(μ)$.

## $\det(A^T) = \det(A)$

Observe that $σ(i) = j$ then $σ⁻¹(j) = i$ which is bijective. So given the set of tuples $\{ (σ(1), 1), …, (σ(n), n) \}$, then the set $\{ (1, σ⁻¹(1)), …, (n, σ⁻¹(n)) \}$ is the same since $σ : \{ 1, …, n \} → \{ 1, …, n \}$ is bijective.
$$ \sgn(σ) a_{σ(1)1} ⋯ a_{σ(n)n} = \sgn(σ) a_{1σ⁻¹(1)} ⋯ a_{nσ⁻¹(n)} $$
Using the result that $\sgn(σ) = \sgn(σ⁻¹)$, and relabelling $σ⁻¹$ as $τ$, we get

\begin{align*}
\det(A) &= \sum_{σ ∈ S(n)} \sgn(σ) a_{σ(1)1} ⋯ a_{σ(n)n} \\
        &= \sum_{τ ∈ S(n)} \sgn(τ) a_{1τ(1)} ⋯ a_{nτ(n)} \\
        &= \det(A^T)
\end{align*}

# Row Operations on the Determinant

## Multiply Row by $r ⇒ \det(EA) = r\det(A)$

Let $E$ by the matrix multiplying a single row by $r$, then $\det(E) = r$.

Likewise $\det(EA) = r\det(A)$ just by looking at the formula.

## Swap Rows $⇒ \det(SA) = -\det(A)$

Let $B = SA$, and denote $S = P_τ$ where $τ$ is a transposition.

Since $S$ swaps rows, we can observe that $b_{ij} = a_{τ(i)j}$.
$$ \det(B) = \sum_{σ ∈ S(n)} \sgn(σ) b_{1σ(1)} ⋯ b_{nσ(n)} = \sum_{σ ∈ S(n)} \sgn(σ) a_{τ(1)σ(1)} ⋯ a_{τ(n)σ(n)} $$
Now let $μ = στ$ and since $τ$ is a transposition $⇒ σ = μτ$
\begin{align*}
\det(B) &= \sum_{σ ∈ S(n)} \sgn(σ) a_{τ(1)μτ(1)} ⋯ a_{τ(n)μτ(n)} \\
        &= \sum_{σ ∈ S(n)} \sgn(σ) a_{1μ(1)} ⋯ a_{nμ(n)} \\
        &= \sum_{μ ∈ S(n)} \sgn(μτ) a_{1μ(1)} ⋯ a_{nμ(n)} \\
        &= -\sum_{μ ∈ S(n)} \sgn(μ) a_{1μ(1)} ⋯ a_{nμ(n)} \\
        &= -\det(A)
\end{align*}
We also see $\det(S) = -1$ since $\det(SI) = -\det(I) = -1$.

## Row Transvection $⇒ \det(EA) = \det(A)$

The $i$th row of $EA$ is $\vec{a}_i + r\vec{a}_j$.
$$ (EA)_{ik} = a_{ik} + ra_{jk} $$
So we can see $\det(EA) = \det(A) + r\det(C)$, where $C$ has the property that rows $\vec{c}_i = \vec{c}_j$.

### $C$ has two rows the same $⇒ \det(C) = 0$

Let $S$ be the row swap matrix for rows $i, j$. Then $\det(C) = \det(SC) = -\det(C) ⇒ 2\det(C) = 0 ⇒ \det(C) = 0$ (if the characteristic is not 2).

Using the transpose this also applies to columns.

### $\det(EA) = \det(A)$

\begin{align*}
\det(EA) &= \det(A) + r\det(C) \\
         &= \det(A)
\end{align*}

# $\det(A) ≠ 0 ⇔ A$ is Nonsingular

Write $A$ in reduced form using elementary matrices
$$ A_{\textrm{red}} = E₁ ⋯ E_k A $$
Then by the results above, we know the product formula is valid for elementary matrices
$$ \det(A_{\textrm{red}}) = \det(E₁) ⋯  \det(E_k) \det(A) $$
So $\det(A) ≠ 0 ⇔ \det(A_{\textrm{red}}) ≠ 0$. But $A_{\textrm{red}}$ is upper triangular so $\det(A_{\textrm{red}}) ≠ 0 ⇔ A_{\textrm{red}} = I$.

## $\det(AB) = \det(A) \det(B)$ for Nonsingular $A, B$

Now we prove the product formula. First for nonsingular $A, B$, then $A_{\textrm{red}} = B_{\textrm{red}} = I$ and
\begin{align*}
AB &= E₁ ⋯ E_k A_{\textrm{red}} F₁ ⋯ F_j B_{\textrm{red}} \\
   &= E₁ ⋯ E_k F₁ ⋯ F_j \\
\end{align*}
$$ \det(AB) = \det(A) \det(B) $$
for nonsingular $A, B$.

## $\det(AB) = \det(A) \det(B)$ for Singular $A, B$

Finally to prove $\det(AB) = \det(A)\det(B)$ if $A$ (or $B$) is singular, we prove that $AB$ is singular.

Assume $AB$ is nonsingular. Then $(AB)⁻¹ = B⁻¹A⁻¹$ exists and is nonsingular. Then $B(AB)⁻¹$ (or $(AB)⁻¹A$) also exists and is a nonsingular inverse of $A$ (or $B$).

So $AB$ is also singular, and hence $\det(A)\det(B) = 0 ⇒ \det(AB) = 0$.

# If $A = LPDU$ is Nonsingular, then $\det(A) = ±\det(D)$

Use product formula

# Laplace Expansion

$$ \det(A) = \sum_{i = 1}^n (-1)ⁱ⁺ʲ a_{ij} \det(A_{ij}) $$
This is the laplace expansion along the $j$th column. Because $\det(A) = \det(A^T)$, we can also do the same expansion along the $i$th row instead.

Assume $j = 1$ then
\begin{align*}
\det(A) &= \sum_{σ ∈ S(n)} \sgn(σ) a_{σ(1)1} a_{σ(2)2} ⋯  a_{σ(n)n} \\
        &= a₁₁ \sum_{σ(1) = 1} \sgn(σ) a_{σ(2)2} ⋯ a_{σ(n)n} + ⋯ 
            + a_{n1} \sum_{σ(1) = n} \sgn(σ) a_{σ(2)2} ⋯ a_{σ(n)n}
\end{align*}

Now we have $σ ∈ S(n)$ where $σ(1) = r$. Take $P_σ ∈ 𝔽^{n×n}$ and delete column 1 and row $r$. Note that since every row and column contains a single 1, the new $P_σ' ∈ 𝔽^{(n-1)×(n-1)}$ is also a valid permutation. So $P_σ' = P_{σ'}$ for some $σ ∈ S(n - 1)$.

Let $P_{σ'}$ take $t$ row swaps to become the identity $I_{n-1}$. Then $\sgn(σ') = \det(P_{σ'}) = (-1)ᵗ$.

Adding back row $r$, and noting $σ(r) = 1$, we see that we require $r - 1$ row swaps to bring it to the first row. That means we need $t + r - 1$ row swaps to bring $P_σ$ to the identity $I_n$. So $\sgn(σ) = (-1)ʳ⁻¹\sgn(σ')$

\begin{align*}
\sum_{σ(1) = r} \sgn(σ) a_{σ(2)2} ⋯ a_{σ(n)n}
    &= \sum_{σ' ∈ S(n-1)} (-1)ʳ⁻¹ \sgn(σ') a_{σ(2)2} ⋯ a_{σ(n)n} \\
    &= (-1)ʳ⁻¹ \det(A_{r1}) \\
    &= (-1)ʳ⁺¹ \det(A_{r1})
\end{align*}
where the last line we note $(-1)⁻ʲ = (-1)⁺ʲ$.

# Cramer's Rule (3x3 Case)

Let $M(A) ∈ 𝔽^{n×n}$ be the matrix whose $ij$-entry is $(-1)ⁱ⁺ʲ \det(A_{ij})$.
The **adjoint** matrix of $A$ is $\adj(A) = M(A)^T$.

$$ \adj(A) = \begin{pmatrix}
\det(A_{11}) & -\det(A_{21}) & \det(A_{31}) \\
-\det(A_{12}) & \det(A_{22}) & -\det(A_{32}) \\
\det(A_{13}) & -\det(A_{23}) & \det(A_{33}) \\
\end{pmatrix} $$

Since we want to prove $A⁻¹ = \frac{1}{\det(A)} \adj(A)$, we can also show $I = A⁻¹A = \frac{1}{\det(A)} \adj(A) A$ or rather
$$ \det(A)I = \adj(A)A $$

$$ \adj(A)A = \begin{pmatrix}
\det(A₁₁) & -\det(A₂₁) & \det(A₃₁) \\
-\det(A₁₂) & \det(A₂₂) & -\det(A₃₂) \\
\det(A₁₃) & -\det(A₂₃) & \det(A₃₃) \\
\end{pmatrix}
\begin{pmatrix}
a₁₁ & a₁₂ & a₁₃ \\
a₂₁ & a₂₂ & a₂₃ \\
a₃₁ & a₃₂ & a₃₃ \\
\end{pmatrix} $$

Expanding the diagonal entries, we see
\begin{alignat*}{2}
(\adj(A)A)₁₁ &= a₁₁\det(A₁₁) - a₂₁\det(A₂₁) + a₃₁\det(A₃₁) &&= \det(A) \\
(\adj(A)A)₂₂ &= a₁₂\det(A₁₂) - a₂₂\det(A₂₂) + a₃₂\det(A₃₂) &&= \det(A) \\
(\adj(A)A)₃₃ &= a₁₃\det(A₁₃) - a₂₃\det(A₂₃) + a₃₃\det(A₃₃) &&= \det(A) \\
\end{alignat*}
The remaining non-diagonal entries $(\adj(A)A)_{ij}$ are of the form
\begin{align*}
(\adj(A)A)_{ij} &= \sum_{k=1}^n (\adj(A))_{ik} a_{kj} \\
    &= \sum_{k=1}^n (-1)^{k + i} a_{kj} \det(A_{ki}) \\
\end{align*}
Let $B = (A \leftsquigarrow^i \vec{a}_j)$ be the matrix, where we replace column $i$ in $A$ with column $j$. We can then see that $(\adj(A)A)_{ij} = \det(B)$ for $i ≠ j$. But $B$ has 2 columns that are the same so $(\adj(A)A)_{ij} = \det(B) = 0$.

So finally we have proved the relation and hence the inverse of $A$ by
$$ \det(A)I = \adj(A)A $$

# Exercise 5.1.5

Put $B, C$ in $LPDU$ form, then observe that the determinant is $\det(B)\det(C)$ by looking at the composition of diagonals.
