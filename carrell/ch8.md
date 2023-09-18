---
header-includes: |
    - \let\vec\mathbf
    - \let\M\parenMatrixstack
    - \let\;\quad
    - \def\nullsp{\mathcal{N}}
    - \def\qed{\hfill\blacksquare}
    - \DeclareMathOperator\sgn{sgn}
    - \DeclareMathOperator\dim{dim}
    - \DeclareMathOperator\row{row}
    - \DeclareMathOperator\col{col}
    - \DeclareMathOperator\span{span}
    - \DeclareMathOperator\ker{ker}
    - \DeclareMathOperator\im{im}
    - \DeclareMathOperator\rank{rank}
    - \DeclareMathOperator\det{det}
    - \DeclareMathOperator\Rot{Rot}
    - \DeclareMathOperator\charpoly{charpoly}
    - \DeclareMathOperator\Tr{Tr}
    - \DeclareMathOperator\Re{Re}
    - \DeclareMathOperator\diagonal{diagonal}
---

# $σᵢ(A)$ Formula

First note that the determinant is multi-linear, so we can write
$$ A = \M{
    a₁₁ - x, ⋯  ;
    ⋯, aₙₙ - x
} = \M{
    a₁₁, ⋯  ;
    ⋯, aₙₙ
} - \M{
    x, ⋯    ;
    ⋯, aₙₙ
} - \M{
    x, ⋯    ;
    ⋯, aₙₙ
} + \M{
    x, ⋯    ;
    ⋯, x
} $$

Assume we have a single $aᵢᵢ = x$. We are only interested in the coefficient for $x$.
Fixing $π$ and using the Leibniz formula, we get
$$ k = -x ∑_{π ∈ S(n) : π(i)=i} \sgn(π) a_{1π(1)} ⋯ a_{(i-1)π(i-1)} a_{(i+1)π(i+1)} ⋯ a_{nπ(n)} $$
Using the same argument as for the Laplace expansion, when we have $P_π$, and delete the $i$th column and row,
then $P_π' = P_{π'}$ corresponds to a valid $π' ∈ S(n - 1)$. Then $\sgn(π) = \sgn(π')$, since the element
at $π(i) = i$ is already in the identity position.
$$ k = -x \det(Aᵢᵢ) $$
Using the multilinearity we see
$$ σ₁(A) = -x ∑ᵢ₌₁ⁿ \det(Aᵢᵢ) $$

We can generalize the argument above, by fixing $π(i₁) = i₁, …, π(iₘ) = iₘ$. Then we sum over the permutations
for the remaining minor matrices $A₍ₙ₋ₘ₎₍ₙ₋ₘ₎$. Note that in the multilinear expansion, the leading unit is $(-1)ᵐ$.

Thus we get the generalized formula for characteristic polynomial.

# Exercises 8.1

## Ex 8.1.10: Matrices with Same Charpoly are Similar

Let $B = \M{3, -2; 2, -1}$, then $\charpoly(B) = \charpoly(I)$ but they are not similar since $S = PIP⁻¹ = I$.

## Ex 8.1.12: $0$ is an Eigenvalue of $A ⟺ A$ is Singular

This means the constant term of charpoly is $0$. Therefore there is a row $i$ with $(A - xI)ᵢᵢ = -x$ and all other entries $0$.
Which means $A$ has a row of all zeroes, and hence is singular.

## Ex 8.1.15: $A$ and $-A$ are Similar

Prove $\det(A) = \Tr(A) = 0$. Note $A = -PAP⁻¹ ⟹  \det(A) = -\det(P)\det(A)\det(P⁻¹) = -\det(A) ⟹  \det(A) = 0$. Then using $\Tr(AB) = \Tr(BA)$, we can do $\Tr(A) = \Tr(-PAP⁻¹) = -\Tr(-PP⁻¹A) = -\Tr(A) ⟹  \Tr(A) = 0$.

$\det(A) = λ₁λ₂λ₃ = 0$ implies one of the $λᵢ$ is $0$.
Assume WLOG that $λ₁ = 0$.

Since $\Tr(A) = λ₁ + λ₂ + λ₃ = λ₂ + λ₃ = 0 ⟹  λ₂ = -λ₃$. But since they determine the roots of charpoly with real coefficients $λ₂ = \bar{λ₃}$ also. This means $\Re(λ₃) = \Re(λ₂) = 0$. Thus the 2 remaining eigenvalues are complex with non-real part. This means both eigenvectors are also complex.

## Ex 8.1.19

```sage
sage: K = GF(2)
sage: A = matrix(K, [[1, 0, 1], [0, 1, 0], [1, 0, 1]])
sage: A.charpoly().factor()
(x + 1) * x^2
sage: A.determinant()
0
sage: A = matrix(K, [[1,0,0,0,1],[0,1,0,1,0],[0,0,1,0,0],[0,1,0,1,0],[1,0,0,0,1]])
sage: A.determinant()
0
sage: A.trace()
1
sage: A.charpoly().factor()
(x + 1) * x^4
```
Any diagonal matrix similar to $X₁$ has the same charpoly.
Since it is diagonal, then $\diagonal(D - xI) = \{ x + 1, x, x \}$ (in any order)
$⟹ \diagonal(D) = \{ 1, 0, 0 \}$. Since the trace and determinant are unchanged
for similar matrices, we see that $\det(D) ≠ \det(A)$ which is a contradiction.

# Ex 8.1.20

$$ p(x) ∈ ℝ[x] : p(z) = 0 = \repr{p(z)} = p(\repr{z}) \textrm{ since } p(x) = \repr{p(x)} $$

# Ex 8.1.22

Orthogonal matrix means $⟨𝐮ᵢ, 𝐮ⱼ⟩ = 0$ for all $i ≠ j$ or equivalently $QᵀQ = I$.
$$ Q𝐯 = λ𝐯 \; 𝐯ᵀQᵀQ𝐯 = λ²⟨𝐯, 𝐯⟩ = ⟨𝐯, 𝐯⟩ ⟹  λ = ±1 $$

# Distinct Eigenvalues Produce Linearly Independent Eigenvectors

Let $α₁𝐯₁ + α₂𝐯₂ = 𝟎$. We want to show $α₁ = α₂ = 0$. Since $A𝐯₁ = λ₁$ and $A𝐯₂ = λ₂$,
so $A(α₁𝐯₁ + α₂𝐯₂) = α₁λ₁𝐯₁ + α₂λ₂𝐯₂ = 𝟎$. Subtracting $λ₁$ times the original equation,
we get
$$ α₂(λ₂ - λ₁)𝐯₂ = 𝟎 ⟹ α₂ = 0 $$
since $λ₁ ≠ λ₂$. Then we conclude $α₁ = 0$.

# Union of Subset of Independent Eigenvectors is Independent

**Proposition 8.10:** *Suppose $λ₁, …, λₘ ∈ 𝔽$ are distinct eigenvalues of $A ∈ 𝔽^{n×n}$, and choose
a set $Sᵢ$ of linearly independent eigenvectors in the eigenspace
$$ E_{λᵢ} = \{ 𝐯 | (A - λᵢI)𝐯 = 𝟎 \} = 𝒩 (A - λᵢI) $$
for all $1 ≤ i ≤ m$. Then the union of these linearly independent sets $S = S₁ ∪ ⋯ ∪ Sₘ$ is also
linearly independent.*

Suppose $A₁ = \{ \M{1, 0}ᵀ \}, A₂ = \{ \M{0, 1}ᵀ \}, A₃ = \{ \M{1, 1}ᵀ \}$. Then $Aᵢ ∩ Aⱼ = \{ 𝟎 \}$
for all $i ≠ j$, but $A₁ ∪ A₂ ∪ A₃$ is linearly dependent. So the result is not generally automatic
and needs to be proven for this specific case.

Denote the elements of $S$ as
$$ S = \{ 𝐮₁⁽¹⁾, …, 𝐮⁽¹⁾_{t₁}, 𝐮₁⁽²⁾, …, 𝐮⁽²⁾_{t₂}, …, 𝐮₁⁽ᵐ⁾, …, 𝐮⁽ᵐ⁾_{tₘ} \} $$
We want to show this set is linearly independent, so assume
$$ a₁⁽¹⁾𝐮₁⁽¹⁾ + ⋯ + a⁽¹⁾_{t₁} 𝐮⁽¹⁾_{t₁} + a₁⁽²⁾𝐮₁⁽²⁾ + ⋯ + a⁽²⁾_{t₂} 𝐮⁽²⁾_{t₂} + ⋯ + a₁⁽ᵐ⁾ 𝐮₁⁽ᵐ⁾ + ⋯ + a⁽ᵐ⁾_{tₘ} 𝐮⁽ᵐ⁾_{tₘ} = 𝟎 $$

\begin{align*}
M₁ &= \{ 𝐮₁⁽¹⁾, …, 𝐮⁽¹⁾_{t₁} \} \\
M₂ &= \{ 𝐮₁⁽²⁾, …, 𝐮⁽²⁾_{t₂} \} \\
    & … \\
Mₘ &= \{ 𝐮₁⁽ᵐ⁾, …, 𝐮⁽ᵐ⁾_{tₘ} \}
\end{align*}

\begin{align*}
𝐯₁ &= a₁⁽¹⁾ 𝐮₁⁽¹⁾ + ⋯ + a⁽¹⁾_{t₁} 𝐮⁽¹⁾_{t₁} ∈ E_{λ₁} \\
𝐯₂ &= a₁⁽²⁾ 𝐮₁⁽²⁾ + ⋯ + a⁽²⁾_{t₂} 𝐮⁽²⁾_{t₂} ∈ E_{λ₂} \\
    & … \\
𝐯ₘ &= a₁⁽ᵐ⁾ 𝐮₁⁽ᵐ⁾ + ⋯ + a⁽ᵐ⁾_{tₘ} 𝐮⁽ᵐ⁾_{tₘ} ∈ E_{λ₃}
\end{align*}
The elements $\{ 𝐮₁⁽ⁱ⁾, …, 𝐮⁽ⁱ⁾_{tᵢ} \} ∈ E_{λᵢ}$ were chosen to be linearly independent from the set $E_{λᵢ}$ and we have
\begin{align*}
𝟎 &= a₁⁽¹⁾𝐮₁⁽¹⁾ + ⋯ + a⁽¹⁾_{t₁} 𝐮⁽¹⁾_{t₁} + a₁⁽²⁾𝐮₁⁽²⁾ + ⋯ + a⁽²⁾_{t₂} 𝐮⁽²⁾_{t₂} + ⋯ + a₁⁽ᵐ⁾ 𝐮₁⁽ᵐ⁾ + ⋯ + a⁽ᵐ⁾_{tₘ} 𝐮⁽ᵐ⁾_{tₘ} \\
    &= (a₁⁽¹⁾𝐮₁⁽¹⁾ + ⋯ + a⁽¹⁾_{t₁} 𝐮⁽¹⁾_{t₁}) + (a₁⁽²⁾𝐮₁⁽²⁾ + ⋯ + a⁽²⁾_{t₂} 𝐮⁽²⁾_{t₂}) + ⋯ + (a₁⁽ᵐ⁾ 𝐮₁⁽ᵐ⁾ + ⋯ + a⁽ᵐ⁾_{tₘ} 𝐮⁽ᵐ⁾_{tₘ}) \\
    &= 𝐯₁ + 𝐯₂ + ⋯ + 𝐯ₘ \\
    &= ∑ᵢ₌₁ᵐ 𝐯ᵢ
\end{align*}
Now we show all $𝐯ᵢ = 𝟎$.

WLOG suppose $𝐯₁ ≠ 0$, then $𝐯₁ = -(𝐯₂ + ⋯ + 𝐯ₘ) ≠ 0$.

Now select from the set $\{ 𝐯₂, …, 𝐯ₘ \}$, a subset that form a basis of $W = \span\{𝐯₂, …, 𝐯ₘ\}$. Relabelling as necessary, denote these
by $\{ 𝐯₂, …, 𝐯ₗ \}$ where $l = \dim(W)$. Each of these $𝐯ᵢ ∈ E_{λᵢ}$ is an eigenvector with eigenvalue $λᵢ$.

Since the eigenvalues are distinct $λ₁ ≠ λᵢ$ for all $2 ≤ i ≤ l$. By the previous result that "distinct eigenvalues produce linearly
independent eigenvectors", this means that $b₂ = ⋯ = bₗ = 0 ⟹ 𝐯₁ = 𝟎$.

Reapplying the same logic, we prove all $𝐯ᵢ = 𝟎$. This means that
$$ 𝐯ᵢ = a₁⁽ⁱ⁾ 𝐮₁⁽ⁱ⁾ + ⋯ + a⁽ⁱ⁾_{tᵢ} 𝐮⁽ⁱ⁾_{tᵢ} = 𝟎 $$
Since each $𝐮ⱼ⁽ⁱ⁾$ is linearly independent within $\{ 𝐮₁⁽ⁱ⁾, …, 𝐮⁽ⁱ⁾_{tᵢ} \} ∈ E_{λᵢ}$, this means $a₁⁽ⁱ⁾ = ⋯ = a⁽ⁱ⁾_{tᵢ} = 0$ for all $i$.

Therefore $S$ is linearly independent.
