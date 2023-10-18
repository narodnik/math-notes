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
    - \DeclareMathOperator\diag{diag}
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

## Ex 8.1.19: Similar Matrices

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

## Ex 8.1.20: Complex Eigenvalues of Real Matrix are Conjugate Pairs

$$ p(x) ∈ ℝ[x] : p(z) = 0 = \repr{p(z)} = p(\repr{z}) \textrm{ since } p(x) = \repr{p(x)} $$

## Ex 8.1.22: Real Eigenvalues of Real Orthogonal Matrix are $±1$

Orthogonal matrix means $⟨𝐮ᵢ, 𝐮ⱼ⟩ = 0$ for all $i ≠ j$ or equivalently $QᵀQ = I$.
$$ Q𝐯 = λ𝐯 \; 𝐯ᵀQᵀQ𝐯 = λ²⟨𝐯, 𝐯⟩ = ⟨𝐯, 𝐯⟩ ⟹  λ = ±1 $$

# $A = ℳ ^ℬ_ℬ(T)$ has Eigenpair $(μ, 𝐱) ⟹ T$ has Eigenpair $(μ, ℬ 𝐱)$

$$ 𝐯 = ∑ xᵢ 𝐯ᵢ = (𝐯₁ ⋯ 𝐯ₙ) 𝐱 $$
$$ (T(𝐯₁) ⋯ T(𝐯ₙ)) = (𝐯₁ ⋯ 𝐯ₙ)A $$
Since $A𝐱 = μ𝐱$
\begin{align*}
T(𝐯) &= (T(𝐯₁) ⋯ T(𝐯ₙ)) 𝐱 \\
    &= μ(𝐯₁ ⋯ 𝐯ₙ)𝐱 \\
    &= μ𝐯
\end{align*}

# $A ∈ 𝔽ⁿ$ has an Eigenbasis $𝐰₁, …, 𝐰ₙ ⟺ A$ is Diagonalizable

$$ AP = (A𝐰₁ ⋯ A𝐰ₙ) = (𝐰₁ ⋯ 𝐰ₙ) \diag(λ₁, …, λₙ) $$

# $T$ is Semisimple with Eigenbasis $(𝐯₁ ⋯ 𝐯ₙ)P ⟺ A$ is Diagonalizable

Let $ℬ = \{ 𝐯₁, …, 𝐯ₙ \}$ be a basis and $A = ℳ ^ℬ_ℬ (T) = PDP⁻¹$. Since $T(𝐯₁ ⋯ 𝐯ₙ) = (𝐯₁ ⋯ 𝐯ₙ)A$ then
$$ (T(𝐯₁) ⋯ T(𝐯ₙ))P = (𝐯₁ ⋯ 𝐯ₙ)PD $$
By 7.4.4, we have $TW = TVe = (TV)P$
$$ (T(𝐰₁) ⋯ T(𝐰ₙ)) = (T(𝐯₁) ⋯ T(𝐯ₙ)) ℳ ^ℬ_{ℬ '} = (T(𝐯₁) ⋯ T(𝐯ₙ))P $$
but $A$ is defined by $T(𝐯₁ ⋯ 𝐯ₙ) = (𝐯₁ ⋯ 𝐯ₙ)A$ so
$$ T(𝐰₁ ⋯ 𝐰ₙ) = (𝐯₁ ⋯ 𝐯ₙ)AP = (𝐰₁ ⋯ 𝐰ₙ)D $$

# Diagonalization via Eigenspace Decomposition

## Distinct Eigenvalues Produce Linearly Independent Eigenvectors

Let $α₁𝐯₁ + α₂𝐯₂ = 𝟎$. We want to show $α₁ = α₂ = 0$. Since $A𝐯₁ = λ₁$ and $A𝐯₂ = λ₂$,
so $A(α₁𝐯₁ + α₂𝐯₂) = α₁λ₁𝐯₁ + α₂λ₂𝐯₂ = 𝟎$. Subtracting $λ₁$ times the original equation,
we get
$$ α₂(λ₂ - λ₁)𝐯₂ = 𝟎 ⟹ α₂ = 0 $$
since $λ₁ ≠ λ₂$. Then we conclude $α₁ = 0$.

## Union of Subset of Independent Eigenvectors is Independent

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

## Diagonalizable Condition $V = E_{λ₁}(A) ⊕ ⋯ ⊕ E_{λₘ}(A)$

Let $λ₁, …, λₘ$ denote the eigenvalues of $A$. $A$ is diagonalizable iff
$$ ∑ᵢ₌₁ᵐ \dim E_{λᵢ}(A) = n $$
If $ℬ ᵢ$ is a basis of $E_{λᵢ}(A)$ then $ℬ = ⋃ ℬ ᵢ$ and
$$ V = E_{λ₁}(A) ⊕ ⋯ ⊕ E_{λₘ}(A) $$

To prove this, use the previous proposition and the dimension theorem.

## $T$ is Semisimple $⟹ (T - λ₁I)⋯(T - λₘI) = O$

Since $T$ is semisimple, we have $V = E_{λ₁}(A) ⊕ ⋯ ⊕ E_{λₘ}(A)$. So we just have to show that
for $𝐯ᵢ ∈ E_{λᵢ}(A)$ that
$$ (T - λ₁I)⋯(T - λₘI)𝐯ᵢ = 𝟎 $$ {#eq:tl0}

Note that $(A - xI)(A - yI) = A - (x + y)I + xyI = (A - yI)(A - xI)$.
Therefore @eq:tl0 can be factored in the form $C(T - λᵢI)$
$$ ⟹ C(T - λᵢI)𝐯ᵢ = 𝟎 $$

## Alternative Proof of $T$ is Semisimple $⟹ (T - λ₁I)⋯(T - λₘI) = O$

\begin{align*}
f(A) &= aₙAⁿ + ⋯ + a₁A + a₀I \\
    &= aₙ(PDP⁻¹)ⁿ + ⋯ + a₁(PDP⁻¹) + a₀(PP⁻¹) \\
    &= aₙPDⁿP⁻¹ + ⋯ + a₁PDP⁻¹ + a₀PP⁻¹ \\
    &= P(aₙDⁿ + ⋯ + a₁D + a₀I)P⁻¹ \\
    &= Pf(D)P⁻¹
\end{align*}
Now let $g(X) = (X - λ₁I)⋯(X - λₘI)$ then
$$ g(A) = Pg(D)P⁻¹ $$
but $D = \diag(λ₁, …, λₘ) ⟹ (D - λ₁)⋯(D - λₘ) = O$ so
$$ g(A) = O $$

## $T$ is Semisimple $⟸ (T - λ₁I)⋯(T - λₘI) = O$

### $P∘Q = O$ and $\ker(P) ∩ \ker(Q) = \{ 𝟎 \} ⟹ V = \ker(P) ⊕ \ker(Q)$

2. $PQ = O$
3. $\ker(P) ∩ \ker(Q) = \{ 𝟎 \}$

$$ \dim(V) = \dim \ker(Q) + \dim \im(Q) $$
but $P∘Q = O$ so $\im(Q) ⊆ \ker(P)$ and so
$$ \dim \im(Q) = \dim(V) - \dim \ker(Q) ≤ \dim \ker(P) $$
$$ ⟹ \dim(V) ≤ \dim \ker(Q) + \dim \ker(P) $$
Since $\ker(P) ∩ \ker(Q) = \{ 𝟎 \}$, we have $\dim(\ker(P) ∩ \ker(Q)) = 0$. By the Grasmann intersection formula
\begin{align*}
\dim(\ker(P) + \ker(Q)) &= \dim \ker(P) + \dim \ker(Q) - \dim(\ker(P) ∩ \ker(Q)) \\
    &= \dim \ker(P) + \dim \ker(Q)
\end{align*}
So we see that $\dim(V) ≤ \dim(\ker(P) + \ker(Q))$, but $\ker(P) + \ker(Q) ⊆ V$ so
$$ V = \ker(P) + \ker(Q) $$
Lastly since $\ker(P) ∩ \ker(Q) = \{ 𝟎 \}$, we have
$$ V = \ker(P) ⊕ \ker(Q) $$

### Generalizing Above to $V = \ker(T₁) ⊕ ⋯ ⊕ \ker(Tₙ)$

**Lemma.** *Suppose $T₁, …, Tₙ : V → V$ are linear mappings that satisfy the following properties:*

1. $T₁∘⋯∘Tₙ = O$
2. $Tᵢ∘Tⱼ = Tⱼ∘Tᵢ$ for all $i, j$
3. $\ker(Tᵢ) ∩ \ker(Tᵢ₊₁∘⋯∘Tₙ) = \{ 𝟎 \}$ for all $i$

*Then $V = \ker(T₁) ⊕ ⋯ ⊕ \ker(Tₙ)$.*

*Proof.* Let $P = T₁$ and $Q = T₂ ∘ ⋯ ∘ Tₙ$, then
$$ V = \ker(T₁) ⊕ \ker(T₂ ∘ ⋯ ∘ Tₙ) $$
Now set $V' = \ker(T₂ ∘ ⋯ ∘ Tₙ), P = T₂, Q = T₃ ∘ ⋯ ∘ Tₙ$ and we get
$$ V = \ker(T₁) ⊕ \ker(T₂) ⊕ \ker(T₃ ∘ ⋯ ∘ Tₙ) $$
Iterating we arrive at the conclusion
$$ V = \ker(T₁) ⊕ ⋯ ⊕ \ker(Tₙ) $$

### $T$ is Semisimple

Condition (1) is our starting assumption $(T - λ₁I)⋯(T - λₘI) = O$.

For (2), we can also see that $(T - λ₁I)(T - λ₂I) = (T - λ₂I)(T - λ₁I)$.

Finally to prove (3), let $𝐱 ∈ \ker(T - λᵢI)$ with $𝐱 ≠ 0$, then $(T - λⱼI)𝐯 = (λᵢ - λⱼ)𝐯$ and so
$$ (T - λᵢ₊₁I) ⋯ (T - λₘI)𝐱 = (λᵢ - λᵢ₊₁) ⋯ (λᵢ - λₘ)𝐱 ≠ 0 $$
since $λᵢ$ are distinct from all $λⱼ$.

Then by the previous lemma
$$ V = E_{λ₁}(A) ⊕ ⋯ ⊕ E_{λₘ}(A) $$

# Exercises 8.3

## Ex 8.3.6

Computing the eigenvalues gives 2 distinct real values.

## Ex 8.3.7

Let $λ₁, λ₂$ be the eigenvalues for $A$. Then
$$ \M{a, b; c, d}\M{x₁; y₁} = λ₁ \M{x₁; y₁} \; \M{a, b; c, d}\M{x₂; y₂} = λ₂ \M{x₂; y₂} $$
$$ ax₁ + by₁ = λ₁x₁ $$
$$ ax₂ + by₂ = λ₂x₂ $$
$(x, yِ)$ is in the first quadrant means $\frac{x}{yِ} > 0$. Likewise $(x, y)$ is in the second/fourth quadrant means $\frac{x}{y} < 0$.
Rewriting both equations, we get
$$ \frac{x₁}{y₁} = -\frac{b}{a - λ₁} $$
$$ \frac{x₂}{y₂} = -\frac{b}{a - λ₂} $$
Noting that $\Tr(A) = a + d = λ₁ + λ₂$ and $\det(A) = ad - bc = λ₁λ₂$ we see
$$ \frac{x₁x₂}{y₁y₂} = -\frac{b}{c} < 0 $$
So one fraction is in the first quadrant, and another in the second.

## Ex 8.3.10

$$ 𝔽^{n×n} = 𝔽^{n×n}ₛ ⊕ 𝔽^{n×n}ₛₛ $$
$$ A = \frac{1}{2}(A + Aᵀ) + \frac{1}{2}(A - Aᵀ) $$
When $A ∈ 𝔽^{n×n}ₛ$ then $𝕋(A) = A$ so $λ₁ = 1$.

When $A ∈ 𝔽^{n×n}ₛₛ$ then $𝕋(A) = -A$ so $λ₁ = -1$.

Now the basis for $𝔽^{n×n}ₛ$ and $𝔽^{n×n}ₛₛ$ are basis for $E_{λ₁}(𝕋)$ and $E_{λₛ}(𝕋)$,
so $𝕋$ is semisimple.

## Ex 8.3.15

$\charpoly(U) = (x - λ₁)⋯(x - λₙ)$ where $λ₁, …, λₙ$ are the diagonals of $U$.
Each space $\dim E_{λᵢ}(U) ≥ 1 ⟹ \dim E_{λ₁} = ⋯ = \dim E_{λₙ} = 1$ and so $∑ \dim E_{λᵢ} = n ⟹ V = E_{λ₁} ⊕ ⋯ ⊕ E_{λₙ}$
and thus $U$ is diagonalizable.

## Ex 8.3.17/18

$A = PD₁P⁻¹, B = PD₂P⁻¹ ⟹ AB = PD₁D₂P⁻¹ = PD₂D₁P⁻¹ = BA$.

Let $𝐯 ∈ E_{λ}(A)$, then $BA𝐯 = λB𝐯 = AB𝐯 ⟹ B𝐯 ∈ E_{λ}(A)$.

Our goal is to find a common eigenbasis between $A$ and $B$.
Since $A$ and $B$ are diagonalizable, they both admit eigenbasis such that
\begin{align*}
V   &= E_{λ₁}(A) ⊕ ⋯ ⊕ E_{λₗ}(A) \\
    &= E_{μ₁}(B) ⊕ ⋯ ⊕ E_{μₘ}(B)
\end{align*}
viewing $A, B: V → V$ as linear maps, we can take the restriction of
$$ B|_{E_{λᵢ}(A)} : E_{λᵢ}(A) → E_{λᵢ}(A) $$
which is a valid restriction since $B E_{λᵢ}(A) ⊆ E_{λᵢ}(A)$. Now let
\begin{align*}
V(λ, μ) &= \{ 𝐯 ∈ E_{λᵢ}(A) | (B - μ)𝐯 = 𝟎 \} \\
        &= \{ 𝐯 ∈ V | (A - λ)𝐯 = (B - μ)𝐯 = 𝟎 \}
\end{align*}
$$ ⟹ E_{λᵢ}(A) = V(λᵢ, μ₁) ⊕ ⋯ ⊕ V(λᵢ, μₘ) $$
$$ V_{λ, μ ∈ 𝔽} = ⨁ V(λ, μ) $$
and since $\dim V = n$, we can pick an independent eigenbasis for both $A, B$.

## Ex 8.3.19

$U$ is diagonalizable when the $∑ \dim E_{λᵢ}(U) = n$. Assume WLOG that $λ$ is repeated twice on the diagonal for rows $i, j$,
then we want that $\dim E_{λ}(U) = 2$. This means the row reduced form of $(U - λI)$, must have zero rows for $i, j$ which is
the same as saying $\dim (U - λI) = \dim E_λ(U) = 2$.

Based off how row reduction works, see see that all vertical entries above $λ$ should be 0, otherwise $(U - λI)$ has another
independent row vector.

# Flag Variety: Triangulation of Operators and Matrices

* Not every matrix is diagonalizable
* What we prove now is that for any operator on the complex finite dimensional vector space, there exists a basis in which
  its matrix is upper triangular.

Let $V$ be a finite dimensional vector space.

## Flag

Let $V$ be a finite dimensional vector space. A flag in $V$ is a sequence of nested subspaces
$$ V₁ ⊂ V₂ ⊂ ⋯ ⊂ Vₙ = V $$
such that $\dim Vₖ = k$.

A basis $ℬ$ of $V, ℬ = \{ 𝐯₁, …, 𝐯ₙ \}$ is called compatible with a given flag if $V₁ = \span\{ 𝐯₁ \}, …, Vₙ = \{ 𝐯₁, …, 𝐯ₙ \}$.

## $T$-invariant flag

Let $T : V → V$ be a linear operator. We say that a flag is $T$-invariant if $∀k = 1, …, n$, the subspace $Vₖ$ is invariant under $T$
$$ T(Vₖ) ⊂ Vₖ $$

Let $ℬ = \{ 𝐯₁, …, 𝐯ₙ \}$ be a basis of $V$ compatible with a $T$-invariant flag. What can we say about $T_ℬ$?

$T(𝐯₁) ∈ V₁ ⟹ T(𝐯₁) = a₁₁ 𝐯₁$ by the defn of T-invariance. The first basis vector is therefore an eigenvector for our linear operator $T$.

Continuing we get
$$ T(𝐯₂) ∈ V₂ ⟹ T(𝐯₂) = a₁₂𝐯₁ + a₂₂𝐯₂ $$
$$ T(𝐯₃) ∈ V₃ ⟹ T(𝐯₃) = a₁₃𝐯₁ + a₂₃𝐯₂ + a₃₃𝐯₃ $$
so putting this in a matrix we get
$$ T_ℬ = \M{
    a₁₁, a₁₂, a₁₃, ⋯ ;
    0,   a₂₂, a₂₃, ⋯ ;
    0,   0,   a₃₃, ⋯ ;
    0,   0,   0,   ⋯ ;
    ⋮,   ⋮,   ⋮,
} $$
Conclusion: $T_ℬ$ is upper triangular.

## Theorem: Every linear operator $T: V → V$ on a complex finite-dimensional vector space $V$ has an invariant flag

Corollary: for a square complex matrix $A$ there exist an upper-triangular matrix $S$ and an invertible matrix $C$ such that
$$ A = CSC⁻¹ $$

Proof of corollary: Let $ℬ$ be a basis compatible with an $A$-invariant flag, then we get $A = C^{\mathcal{E}}_ℬ T_ℬ C^ℬ_{\mathcal{E}}$.

Proof by induction on $n = \dim V$: $n = 1$ then $V₁ = V$, then we see $T(V)$ is automatically invariant.

Now assume theorem holds for operators on $(n - 1)$-dimensional vector spaces over $ℂ$.
We know that any operator on a complex vector space of $\dim n ≥ 1$ has an eigenvector: $T(𝐯) = λ𝐯$.

Set $𝐯₁ = 𝐯$, take $V₁ = \span\{𝐯₁\}$, then since it is an eigenspace, it is invariant and $T(𝐯₁) ⊂ V₁$.

By the 3rd homomorphism theorem, there exists an operator $T'$
$$ T' : V/V₁ → V/V₁ $$
such that the following diagram commutes
\begin{tikzcd}
    V \arrow[r, "T"] \arrow[d, "P"]
        & V \arrow[d, "P"] \\
    V/V₁ \arrow[r, dotted, "T'"]
        & V/V₁
\end{tikzcd}
Now let $W = V/V₁$, then $\dim W = n - 1$. By induction then $T'$ has an invariant flag in $W$.
Let $\{ 𝐰₁, …, 𝐰ₙ₋₁ \}$ be a basis of $W$, compatible with $T'$-invariant flag.
Then we can write these in terms of equivalence classes $𝐰₁ = [𝐯₂], …, 𝐰ₙ₋₁ = [𝐯ₙ]$.
Now we have a basis in the 1-dim space $V₁$, and a basis in the quotient space $W$, and we have the result
that describes the relation basis in $V$ with the basis of the subspace and the basis of the quotient space.

Then $\{ 𝐯₁, …, 𝐯ₙ \}$ is a basis of $V$, because $𝐯₁$ is a basis in the subspace, and the equivalence classes
of $𝐯₂, …, 𝐯ₙ$ form a basis of the quotient space $W$.

### Claim: $\{ 𝐯₁, …, 𝐯ₙ \}$ is a basis compatible with a $T$-invariant flag

$$ V₁ = \span\{ 𝐯₁ \}, …, Vₙ = \span\{ 𝐯₁, …, 𝐯ₙ \} $$
We need to prove $T(𝐯ₖ)$ is a linear combination of $𝐯₁, …, 𝐯ₖ$ for $k = 1, …, n$.

We know this holds for $k = 1$ since $T(𝐯₁) = λ𝐯₁$.

We know $T'([𝐯ₖ])$ is a linear combination of $[𝐯₂], …, [𝐯ₖ]$ since $\{ 𝐰₁, …, 𝐰ₙ₋₁ \}$ form a basis of $W$.
$$ T'([𝐯ₖ]) = c₂[𝐯₂] + ⋯ + cₖ[𝐯ₖ]$$
$$ T'([𝐯ₖ]) = [T(𝐯ₖ)] ⟹ [T(𝐯ₖ)] - c₂[𝐯₂] - ⋯ - cₖ[𝐯ₖ] = [T(𝐯ₖ) - c₂𝐯₂ - ⋯ - cₖ𝐯ₖ] = [0] $$
$$ T(𝐯ₖ) - c₂𝐯₂ - ⋯ - cₖ𝐯ₖ ∈ V₁ ⟹ ∃c₁ ∈ ℂ : T(𝐯ₖ) - c₂𝐯₂ - ⋯ - cₖ𝐯ₖ = c₁𝐯₁ $$
so we see $T(𝐯ₖ) = c₁𝐯₁ + ⋯ + cₖ𝐯ₖ$.

# Proof of Cayley-Hamilton

$n = 1$ is trivial, so assume result is true for $n - 1$ given $n > 1$.

$(λ₁, 𝐯₁)$ is an eigenpair for $A$. Extend $𝐯₁$ to a basis $ℬ$ of $V$. Then $A$ is similar to $B = ℳ ^ℬ_ℬ (T_A)$ and
$p_A(x) = p_B(x)$.
$$ B = \M{
    λ₁, *, ⋯, *;
    0,   ,  ,  ;
    ⋮,   , B₁, ;
    0,   ,   ,
} $$

Now we note the eigenvalues of $B₁$ are in $𝔽$ since
\begin{align*}
p_A(x) &= p_B(x) \\
    &= \det(B - xIₙ) \\
    &= (λ₁ - x)\det(B₁ - xIₙ₋₁) \\
    &= (λ₁ - x) p_{B₁}(x)
\end{align*}
and we see they are the eigenvalues $\{ λ₂, …, λₙ \}$ of $B$.

We equivalently calculate whether $p_B(B) = O ⟹ p_A(A) = O$.
We first note a general fact about matrices
$$ \M{
    c₁, *, ⋯, *;
    0,   ,  ,  ;
    ⋮,   , C₁, ;
    0,   ,   ,
} \M{
    c₂, *, ⋯, *;
    0,   ,  ,  ;
    ⋮,   , C₂, ;
    0,   ,   ,
} = \M{
    c₁c₂, *, ⋯, *;
    0,     ,  ,  ;
    ⋮,     , C₁C₂, ;
    0,     ,  ,
} $$

We now wish to calculate $p_B(B)$ by lifting $p_B(x)$ with the map
$$ 𝜙 : 𝔽[x] → 𝔽[B] $$
\begin{align*}
𝜙(p_B(x)) &= 𝜙((-1)ⁿ(x - λ₁)⋯(x - λₙ)) \\
    &= (-1)ⁿ(B - λ₁Iₙ)p_{B₁}(B₁) \\
    &= (-1)ⁿ \M{
    0, *, ⋯, *;
    0,  ,  ,  ;
    ⋮,  , B₁ - λ₁Iₙ₋₁, ;
    0,  ,  ,
} \M{
    *, *, ⋯, *;
    0,  ,  ,  ;
    ⋮,  , p_{B₁}(B₁),  ;
    0,  ,  ,
} \\
    &= (-1)ⁿ \M{
    0, *, ⋯, *;
    0,  ,  ,  ;
    ⋮,  , B₁ - λ₁Iₙ₋₁, ;
    0,  ,  ,
} \M{
    *, *, ⋯, *;
    0,  ,  ,  ;
    ⋮,  , O,  ;
    0,  ,  ,
} \\
    &= O
\end{align*}
since $p_{B₁}(B₁) = O$ by the induction hypothesis.

# Exercises 8.4

## Ex 8.4.3

## Ex 8.4.4

## Ex 8.4.5

## Ex 8.4.6

## Ex 8.4.7

## Ex 8.4.12

