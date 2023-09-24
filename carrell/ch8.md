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

