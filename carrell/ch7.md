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
---

# $∃! \vec{w} ∈ V : T(\vec{v}) = ⟨\vec{v}, \vec{w}⟩$

Let $\vec{u}₁, …, \vec{u}_m$ be an orthonormal basis of $V$.
$$ T : V → ℝ $$
\begin{align*}
\vec{w} &= \sum_{i = 1}^m T(\vec{u}_i) \vec{u}_i \\
    &= T(\vec{u}₁) \vec{u}₁ + ⋯ + T(\vec{u}_m) \vec{u}_m
\end{align*}
Let $\vec{v} = a₁ \vec{u}₁ + ⋯ + a_m \vec{u}_m ∈ V$, then
$T(\vec{v}) = a₁T(\vec{u}₁) + ⋯ + a_m T(\vec{u}_m)$. Finally
\begin{align*}
⟨\vec{v}, \vec{w}⟩ &= a₁ ⟨\vec{u}₁, T(\vec{u}₁) \vec{u}₁ ⟩ +
                        ⋯ + a_m ⟨\vec{u}_m, T(\vec{u}_m) \vec{u}_m ⟩ \\
    &= a₁ T(\vec{u}₁) + ⋯ +  a_m T(\vec{u}_m) \\
    &= T(\vec{v})
\end{align*}

# $\row(A) \cap \mathcal{N}(A) = \{ \vec{0} \}$ where $A ∈ Rⁿ$

$A ∈ ℝ^{m×n}$ with rows $A = (\vec{a}₁ ⋯ \vec{a}_m)^T$.
Denote by $t_\vec{a}(\vec{x}) = ⟨\vec{a}, \vec{x}⟩ = a₁x₁ + ⋯ + a_n x_n$.
Then the corresponding map is
$$ T_A = \begin{pmatrix}
t_{\vec{a}₁} \\
\vdots \\
t_{\vec{a}_m}
\end{pmatrix} $$

Let $\vec{x} ∈ \row(A) \cap \nullsp(A)$ then
$$ A \vec{x} = \begin{pmatrix}
⟨\vec{a}₁, \vec{x}⟩ \\
\vdots \\
⟨\vec{a}_m, \vec{x}⟩ \\
\end{pmatrix} = \vec{0} $$
but since $\vec{x} ∈ \row(A)$
$$ \vec{x} = r₁ \vec{a}₁ + ⋯ + r_m \vec{a}_m $$
and $⟨\vec{a}_i, \vec{x}⟩ = 0 ⇒ r₁ ⟨\vec{a}₁, \vec{x}⟩ + ⋯ + r_m ⟨\vec{a}_m, \vec{x}⟩ = ⟨\vec{x}, \vec{x}⟩ = 0$.
Therefore $\vec{x} = \vec{0}$.

# Linear Maps are Determined by Their Basis

$T : V → W$, then $\vec{x} = r₁ \vec{v}₁ + ⋯ + r_n \vec{v}_n$ which is unique.
$$ T(\vec{x}) = r₁ T(\vec{v}₁) + ⋯ + r_n T(\vec{v}_n) $$
Likewise using a similar analysis we get the Rank-Nullity Theorem (7.4)
$$ \dim \ker(T) + \dim \im(T) = \dim V $$

## $V$ and $W$ over the same field are isomorphic $⟺$ they have the same dimension

Choose basis $\vec{v}₁, …, \vec{v}_n$ of $V$, and $\vec{w}₁, …, \vec{w}_n$ of $W$.

Let $T: V → W$ be the unique linear mapping $T(\vec{v}_i) = \vec{w}_i$ (guaranteed by above proposition).

So $\vec{w}₁, …, \vec{w}_n ∈ \im(T)$ and hence $T$ is surjective.

Also $⇒ \dim \im(T) = \dim V$, and therefore $\dim \ker(T) = 0$. So $T$ is injective.

## Set of All Isomorphisms $GL(V)$

$GL(V)$ is the set of all isomorphisms $T: V → V$.

If $V = Kⁿ$, then $GL(V) = GL(n, K)$.

# $\nullsp(A^TA) = \nullsp(A) \;\; ∀ A ∈ ℝ^{n×n} ⇒ \rank(A^TA) = \rank(A)$

$$ (A^T A) b = \begin{pmatrix}
⟨a₁, a₁⟩ \hdots ⟨a₁, a_n⟩ \\
\vdots \\
⟨a_n, a₁⟩ \hdots ⟨a_n, a_n⟩
\end{pmatrix} b = 0 $$
for all $i$
$$ ⟨a_i, r₁ a₁ + ⋯ + r_n a_n⟩ = 0 $$
$$ ⇒ \vec{x} = (r₁ ⋯ r_n)^T ∈ \nullsp(A) $$

# $TS$ is an Isomorphism $⟺ S$ injective, $T$ surjective, and $\dim U = \dim W$

$U, V, W$ are finite-dimension vector spaces over a field $K$.
$$ S: U → V $$
$$ T: V → W $$
are linear.

## $TS$ is injective $⟺ S$ is injective and $\im(S) ∩ \ker(T) = \{ \vec{0} \}$

$TS$ is injective so $\ker TS = \{ \vec{0} \}$. Restricting $T$, we see
$$ S : U → V $$
$$ T : \im(S) → W $$
that both must be injective, so that $\ker S = \{ \vec{0} \}$ and
$$ \ker(T) ∩ \im(S) = \{ \vec{0} \} $$

## $TS$ is surjective $⟺ T$ is surjective and $V = \im(S) + \ker(T)$

For $TS: U → V → W$ to be surjective, obviously $T$ is surjective.

Now since $TS$ is surjective, then $T(\im(S)) = W$, and $V = \im(S) + \ker(T)$.

## $TS$ is an isomorphism $⟺ S$ is injective, $T$ is surjective, and $\dim(U) = \dim(W)$

$S$ is injective and finite dimension, means it is also surjective and an isomorphism.
Likewise for $T$ which is surjective.
We can see this by letting $𝜙 : A → B$ then
$$ \dim A = \dim\ker(𝜙) + \dim \im(𝜙) $$

$$ U \xrightarrow{S} V \xrightarrow{T} W $$
are isomorphisms. So $\ker(S) = \{ \vec{0}_U \}, \ker(T) = \{ \vec{0}_V \}$.
So $\dim \ker(S) = \dim \ker(T) = 0$, and $\dim \im(S) = \dim(V), \dim \im(T) = \dim(W)$.

Using the Rank-Nullity theorem, we see $\dim(U) = \dim(V)$ for $S$ and $\dim(V) = \dim(W)$ for $T$.

# Isometries and Orthogonal Linear Maps

\def \va {\vec{a}}
\def \vb {\vec{b}}
\def \vc {\vec{c}}
\def \vx {\vec{x}}
\def \vy {\vec{y}}
\def \ve {\vec{e}}
\def \vq {\vec{q}}
\def \vu {\vec{u}}
\def \vv {\vec{v}}
\def \vw {\vec{w}}
\def \vzero {\vec{0}}

Let $S : V → V$ be a map then $∀ \va, \vb ∈ V$, we have

* *Isometry*: $d(\va, \vb) = |\va - \vb| = d(S(\va), S(\vb))$ and $S$ is a linear map.
* *Orthogonal*: $⟨S(\va), S(\vb)⟩ = ⟨\va, \vb⟩$

## Orthogonal Maps are Linear

We have to show $S(\va + \vb) = S(\va) + S(\vb)$ which is equivalent to
$|S(\va + \vb) - S(\va) - S(\vb)|² = 0$.
Simply expand this out, and use the fact $⟨S(\vx), S(\vy)⟩ = ⟨\vx, \vy⟩$.

## Orthogonal Maps are Isometries

\begin{align*}
|S(\vb) - S(\va)|² &= |S(\vb - \va)|² \\
    &= ⟨S(\vb - \va), S(\va - \vb)⟩ \\
    &= ⟨\vb - \va, \vb - \va⟩ \\
    &= |\vb - \va|²
\end{align*}

## Isometries are Orthogonal Maps

We have $|\vx - \vy|² = |S(\vx) - S(\vy)|²$ and so $|\vx|² = |S(\vx)|²$
\begin{align*}
|\va - \vb|² &= (⟨\va, \va⟩ + ⟨\vb, \vb⟩) - 2⟨\va, \vb⟩ \\
    &= (⟨S(\va), S(\va)⟩ + ⟨S(\vb), S(\vb)⟩) - 2(\va, \vb⟩
\end{align*}
but $⟨\va - \vb, \va - \vb⟩ = ⟨S(\va) - S(\vb), S(\va) - S(\vb)⟩$
so we get the result
$$ 2⟨\va, \vb⟩ = 2⟨S(\va), S(\vb)⟩ $$

# Orthogonal Linear Maps on $ℝⁿ$

## Orthogonal maps are associated with a unique orthogonal matrix

Let $T : ℝⁿ → ℝⁿ$ be an isometry. Since $T$ is linear, it is determined by its
basis and there is a unique $Q ∈ ℝ^{n×n}$ associated with $T$.

$T$ is orthogonal so $⟨T_Q(\vx), T_Q(\vy)⟩ = ⟨\vx, \vy⟩$.
But $⟨T_Q(\vx), T_Q(\vy)⟩ = ⟨Q\vx, Q\vy⟩ = (Q\vx)^T (Q\vy)$
$⇒ (Q\vx)^T (Q\vy) = \vx^T \vy$, thus
$$ \vx^T (Q^T Q) \vx = \vx^T \vy $$
Setting $Q\ve_i = \vq_i ⇒ \vq_i^T \vq_j = \ve_i^T \ve_j$ and so
$Q^T Q = I$.

Working backwards, we see the orthogonal matrix defines an isometry.

This means $O(n, ℝ)$ the orthogonal group is also the group of isometries of $ℝⁿ$.

# Projections

$$ P_\va(\vx) = \frac{⟨\va, \vx⟩}{⟨\va, \va⟩} \va $$
is the *projection* onto $ℝ\va$, and is linear.

When $\va = \vu$ is a unit vector then we see that
$$ P_\vu(\vx) = \vu^T x \vu $$
Multiplying this out
\begin{align*}
P_\vu\begin{pmatrix} x₁ \\ x₂ \end{pmatrix} &=
    (u₁ x₁ + u₂ x₂) \begin{pmatrix} u₁ \\ u₂ \end{pmatrix} \\
    &= \begin{pmatrix}
        u₁² & u₁u₂ \\
        u₁u₂ & u₂²
    \end{pmatrix} \begin{pmatrix} x₁ \\ x₂ \end{pmatrix}
\end{align*}
This projection matrix of $P_\vu$ is symmetric. $\im(P_\vu) = ℝ\vu$,
while $\ker(P_\vu)$ is the line orthogonal to $ℝ\vu$.

A projection has the property that $P\vu ∘ P_\vu = P_\vu$.
$$ P_\vu ∘ P_\vu(\vv) = ⟨\vu, ⟨\vu, \vv⟩\vu⟩ \vu = ⟨\vu, \vv⟩\vu = P_\vu(\vv) $$

1. $P_W$ is linear
2. $P_W(\vw) = \vw$ if $\vw ∈ W$
3. $P_W(W^\perp) = \{ \vzero \}$
4. $P_W + P_{W^\perp} = I$

# Reflections

Let $\vu ∈ ℓ^\perp$ and decompose $\vv = P_\vu(\vv) + \vc$ with $c ∈ ℓ$.
\begin{align*}
H(\vv) &= -P_\vu(\vv) + \vc \\
    &= -P_\vu(\vv) + (\vv - P_\vu(\vv)) \\
    &= \vv - 2P_\vu(\vv)
\end{align*}
Since $P_\vu$ is a linear map, so $H$ is a linear map.

## Reflection Matrix

$$ H(\vv) = \vv - 2P\vv $$
$$ Q = (I - 2P) = \begin{pmatrix}
u₂² - u₁² & -2u₁u₂ \\
-2u₁u₂ & u₁² - u₂²
\end{pmatrix} $$
using the identity $u₁² + u₂² = 1$

We can see this has the form $Q = \begin{pmatrix} a & b \\ b & -a \end{pmatrix}$ where
$a² + b² = 1$ and is a symmetric orthogonal matrix.

$$ Q² = (I - 2P)² = I - 4P + 4P² = I $$
since $P² = P$. Since $Q$ is symmetric, $Q = Q^T$ is therefore orthogonal.

# $O(2, ℝ)$-dichotomy

$$ \det: O(2, ℝ) → ℝ^× $$
$$ Q^T Q = I ⇒ \det(Q) = ±1 $$

$$ Q^T Q = \begin{pmatrix}
a² + b²  &  ac + bd \\
ac + bd  &  c² + d²
\end{pmatrix} = I $$

```python
sage: var("a b c d")
(a, b, c, d)
sage: Q = matrix([[a, b], [c, d]])
sage: (Q.transpose() * Q).determinant().expand()
b^2*c^2 - 2*a*b*c*d + a^2*d^2
sage: 
sage: c = -b*d/a
sage: d2 = a^2 + b^2 - c^2
sage: d2 = d2.expand()
sage: d2
a^2 + b^2 - b^2*d^2/a^2
sage: e = d^2 - d2 == 0
sage: e
-a^2 - b^2 + b^2*d^2/a^2 + d^2 == 0
sage: e -= b^2*d^2/a^2 + d^2
sage: e
-a^2 - b^2 == -b^2*d^2/a^2 - d^2
sage: e /= (-b^2/a^2 - 1)
sage: e.simplify_full()
a^2 == d^2
```
Either $a = d$ or $a = -d$.

## $\ker(\det) = \Rot(2)$

Let $a = d ⇒ b = -c$ and $Q₁ = \begin{pmatrix}
a & -b \\
b & a \end{pmatrix}$.

Then $\det(Q₁) = a² + b² = 1$.
But this is the form of the rotation matrices
$R_θ = \begin{pmatrix}
\cos θ & -\sin θ \\
\sin θ & \cos θ
\end{pmatrix}$.

## $O(2, ℝ) - \Rot(2)$ are Reflections

Let $a = -d ⇒ b = c$ and $Q₂ = \begin{pmatrix}
a & b \\
b & -a \end{pmatrix}$.
Rewriting it
$$ Q₂ = \begin{pmatrix}
1 & 0 \\
0 & -1 \end{pmatrix} \begin{pmatrix}
a & -b \\
b & a \end{pmatrix} = \begin{pmatrix}
a & c \\
c & -a \end{pmatrix} $$
So $Q₂$ is a reflection and a rotation (coset of $Q₁$).

$\vv = (-c \;\; a + 1)^T, \vw = (a + 1 \;\; c)$ are orthogonal,
and $Q\vv = -\vv$, $Q\vw = \vw$. Normalize them to get an orthonormal basis.

# Exercise 7.3.9: Projection on Subspace Without Orthonormal Basis

$W$ is a subspace with $\dim W = n$ of $ℝᵐ$ with a basis $A = (\va₁ ⋯ \va_n)$.

## Let $\vx ∈ ℝⁿ$, when is $A\vx$ the projection of $\vx$ on $W$?

$$ \vx = ⟨\va₁, A\vx⟩ + ⋯ + ⟨\va_n, A\vx⟩ ⇒ A^T A\vx = \vx $$

## Prove $A^T A$ is invertible

Because we're working in $ℝ$, all dot products are non-negative
$$ ⟨Ax, Ax⟩ ≥ 0 $$
with the only zero being when $A\vx = \vzero$. But $\dim \col(A) = n ⇒ \dim \ker(A) = 0 ⇒ \vx = \vzero$.

Thus $\ker(A^TA) = \{ \vzero \}$.

## Let $P = A(A^T A)⁻¹A^T$. Prove $P\vx ∈ W$ if $\vx ∈ ℝᵐ$, and $P\vx = \vx$ if $\vx ∈ W$

$$ T_A : ℝⁿ → ℝᵐ $$
$$ T_{A^T} : ℝᵐ → ℝⁿ $$
$$ T_{(A^T A)} : ℝⁿ → ℝⁿ $$
$$ T_{(A^T A)⁻¹A^T} : ℝᵐ → ℝⁿ $$
Let $\vy = T_{(A^T A)⁻¹A^T}(\vx) ∈ ℝⁿ$, then since $\col(A) = W$, and $∀ \vv ∈ ℝⁿ, A\vv ∈ W$,
so $A\vy ∈ W$.

We showed in the previous part that $\ker(A^T A) = \{ \vzero \} ⇒ T_{(A^T A)}$ is an isomorphism
with inverse $T_{(A^T A)⁻¹} : ℝⁿ → ℝⁿ$ so
$$ T_{(A^T A)⁻¹} T_{(A^T A)} = T_{(A^T A)⁻¹} T_{A^T} T_A = e $$
which means that
$$ (A^T A)⁻¹ A^T A = I_n $$
but $A = (\va₁ ⋯ \va_n)$ so we can left multiply by $A$
$$ (A^T A)⁻¹ A^T A = (\ve₁ ⋯ \ve_n) $$
$$ (A^T A)⁻¹ A^T \va_i = \ve_i ⇒ A(A^T A)⁻¹ A^T \va_i = \va_i $$
which when viewing $\vx = r₁ \va₁ + ⋯ + r_n \va_n ∈ W$, we prove the result.

## $\vv - P\vv$ is orthogonal to $W, ∀\vv ∈ ℝᵐ$

We can extend the basis $A = (\va₁ ⋯ \va_n)$ of $W$ to a basis of $ℝᵐ$.

Let $\vv = P\vv + \vc$. We see $P\vv ∈ W ⇒ \vc ∉ W$. Since $ℝᵐ = W ⊕ W^⟂$,
so $\vc ∈ W^⟂$ and $⟨\va_i, \vc⟩ = \vzero$ but $\vc = \vv - P\vv$ and
$A^T \vc = \vzero$ is equivalent to $\begin{pmatrix}
⟨\va₁, \vc⟩ \\
\vdots \\
⟨\va_n, \vc⟩
\end{pmatrix} = \vzero$.

# Exercise 7.3.10

$$ Q = \begin{pmatrix}
a & b \\
b & -a
\end{pmatrix} : a² + b² = 1
\sim
Q = \begin{pmatrix}
1 - 2u₁² & -2u₁u₂ \\
-2u₁u₂   & 1 - 2u₂²
\end{pmatrix} : u₁² + u₂² = 1 $$
$$ X = \bar{K}[u₁, u₂] / ⟨u₁² + u₂² - 1⟩ $$
$$ Y = \bar{K}[a, b] / ⟨a² + b² - 1⟩ $$
$$ 𝜙 : X → Y $$
$$ 𝜙(u₁, u₂) = (-u₁² + u₂², -2u₁u₂) $$
We prove $𝜙$ is an isomorphism.

Surjective: $b = 0 ⇒$ either $u₁$ or $u₂$ is $0$.
But also $a = 0 ⇒ u₂$ or $u₁$ is $0$.
Thus $\ker 𝜙 = \{ \vzero \}$.

Injective:
\begin{align*}
a &= -u₁² + u₂² \\
    &= (u₁² + u₂² - 1) + 1 - 2u₁² \\
    &= 1 - 2u₁² \\
⇒ u₁² &= \frac{1 - a}{2} \\
u₂ &= -\frac{b}{2u₁}
\end{align*}

*Show $Q$ is a reflection through $\mathbb{R}\begin{pmatrix} -u₂ \\ u₁ \end{pmatrix}$.*
$$ \vv = \begin{pmatrix} -u₂ \\ u₁ \end{pmatrix} $$
We want $\vw$ such that $⟨\vv, \vw⟩ = 0 ⇒ \vw = \begin{pmatrix} u₁ \\ u₂ \end{pmatrix}$.

Calculating, we see $Q\vv = \vv$ and $Q\vw = -\vw$, so $Q$ is the reflection around $\vv$.

# $ℳ ᴮ_B(T∘S) = ℳ ᴮ_B(T) ℳ ᴮ_B(S)$

$$ T(𝐯ⱼ) = ∑ᵢ₌₁ⁿ cᵢⱼ 𝐯ᵢ \quad ℳ ᴮ_B(T) = (cᵢⱼ) $$
$$ S(𝐯ⱼ) = ∑ᵢ₌₁ⁿ dᵢⱼ 𝐯ᵢ \quad ℳ ᴮ_B(T) = (dᵢⱼ) $$
\begin{align*}
T(S(𝐯ⱼ)) &= d₁ⱼ T(𝐯₁) + ⋯ + dₙⱼ T(𝐯ₙ) \\
    &= d₁ⱼ (c₁₁𝐯₁ + ⋯ + cₙ₁𝐯ₙ) + ⋯  + dₙⱼ (c₁ₙ𝐯₁ + ⋯  + cₙₙ𝐯ₙ) \\
    &= (𝐯₁ ⋯  𝐯ₙ) \M{
            d₁ⱼc₁₁ + ⋯  + dₙⱼc₁ₙ  ;
                ⋮                 ;
            d₁ⱼcₙ₁ + ⋯  + dₙⱼcₙₙ
        }
\end{align*}
\begin{align*}
(ℳ ᴮ_B(T∘S))ᵢⱼ &= d₁ⱼcᵢ₁ + ⋯  + dₙⱼcᵢₙ \\
               &= cᵢ₁d₁ⱼ + ⋯  + cᵢₙdₙⱼ \\
\end{align*}
$$ ⟹  ℳ ᴮ_B(T∘S) = ℳ ᴮ_B(T) ℳ ᴮ_B(S) $$

# Exercise 7.4.4: $P_𝐚$ is Semisimple

$$ r = ⟨𝐚, 𝐚⟩ \quad P_𝐚 : ℝ² → ℝ² $$
$$ ⟨𝐚, 𝐱⟩ = a₁x₁ + a₂x₂ $$
$$ P = \frac{1}{r} \M{
    a₁²,  a₁a₂ ;
    a₁a₂, a₂²
} $$
$$ T(𝐮₁) = λ₁𝐮₁ $$
$$ T(𝐮₂) = λ₂𝐮₂ $$
$$ u₁₁ \M{a₁² ; a₁a₂} + u₂₁ \M{a₁a₂ ; a₂²} = λ₁ \M{u₁₁ ; u₂₁} $$
Let $(u₁₁, u₂₁) = (a₁, a₂)$
\begin{align*}
a₁³ + a₁a₂² &= λ₁a₁ \\
a₁²a₂ + a₂³ &= λ₁a₂ \\
⟹  λ₁ &= a₁² + a₂²
\end{align*}

Now $𝐮₂ = (-a₂, a₁)$ and $⟨𝐮₁, 𝐮₂⟩ = 0$. Let $(u₁₂, u₂₂) = (-a₂, a₁)$
$$ u₁₂ \M{a₁² ; a₁a₂} + u₂₂ \M{a₁a₂ ; a₂²} = λ₂ \M{u₁₂ ; u₂₂} $$
\begin{align*}
-a₁²a₂ + a₁²a₂ &= -λ₂a₁ = 0 \\
-a₁a₂² + a₁a₂² &= -λ₁a₂ = 0 \\
⟹  λ₂ &= 0
\end{align*}
so $P$ is diagonal with basis $\{ 𝐮₁, 𝐮₂ \}$
$$ ℳ ᴮ_B(P_𝐚) = \M{
    a₁² + a₂²,  0   ;
    0,          0
} $$

# Dual Space

$$ V^* = L(V, 𝔽) $$
$$ 𝐯ᵢ^*(𝐯ⱼ) = δᵢⱼ $$

## If $𝐯₁, …, 𝐯ₙ$ is a basis of $V$, then $𝐯₁^*, …, 𝐯ₙ^*$ is a basis of $V^*$

$$ f(𝐱) = a₁𝐯₁(𝐱) + ⋯  + aₙ𝐯ₙ(𝐱) = 𝟎(𝐱) $$
Evaluating this on the basis of $V$, we see
$$ f(𝐯ᵢ) = aⱼ \textrm{ and } 𝟎(𝐯ᵢ) = 0 ⟹  aⱼ = 0 $$

## $Φ(𝐯) = φ_𝐯$ is an Isomorphism

Let $V$ be a finite-dimensional inner product space over $ℝ$.
$$ φ_𝐯 : V → ℝ $$
$$ φ_𝐯(𝐱) = ⟨𝐯, 𝐱⟩ $$
$$ Φ : V → V^* $$
$$ Φ(𝐯) = φ_𝐯 $$
Since $\dim V = \dim V^*$, we only have to show $Φ$ is injective.

$Φ(𝐯) = 𝟎 ⟹  ⟨𝐯, 𝐱⟩ = 0$ for all $𝐱$ including $𝐱 = 𝐯$. So $\ker Φ = \{ 𝟎 \}$.

# Characterization of the Determinant

## For any $σ ∈ S(n), 𝒟 (C_{σ(1)}, …, C_{σ(n)}) = \sgn(σ) 𝒟 (C₁, …, Cₙ)$

Decompose $σ$ into a product of transpositions and apply $𝒟 (AE) = -𝒟 (A)$.

## Equivalence with $\det(C)$

Let $𝐜ⱼ = ∑ᵢ bᵢⱼ 𝐚ᵢ$ where $A = (𝐚₁ ⋯  𝐚ₙ), C = (𝐚₁ ⋯  𝐚ₙ)$, then applying multilinearity, we see
$$ 𝒟 (C) = \left( ∑_{σ ∈ S(n)} \sgn(σ) b_{σ(1),1} ⋯  b_{σ(n),n} \right) 𝒟 (A) $$
just by expanding out each column of $C$. Then set $A = I$ and get the desired result.

This also gives us the product rule for determinants since $C = AB$.

\def \Vss {V^{**}}
\def \Vs {V^*}

# Exercise 7.5.1: Isomorphism $Δ : V → \Vss$

$$ 𝐯 ∈ V, \; f_𝐯 = Δ(𝐯) ∈ \Vss, \; f_𝐯(φ) = φ(𝐯) $$
Now let $𝐰 ∈ \ker Δ$, then $g = Δ(𝐰)$ and $g(φ) = φ(𝐰) = 0$ for all $φ ∈ V^*$.

Since $𝐰$ can be written in terms of a basis, let $xِ₁, …, xₙ ∈ \Vs$ be the respective component functions so $x₁(𝐰 ) = ⋯  = xₙ(𝐰 ) = 0$ and we see $𝐰 = 𝟎$ so we prove injectivity.

$$ \dim L(V, 𝔽) = n = \dim V $$
so $\dim \Vss = \dim V$, and surjectivity follows from the above on $Δ$ being injective.

Lastly since $\Vs = L(V, 𝔽)$ consists of linear maps with additive property
\begin{align*}
Δ(𝐯 + 𝐰 )(φ) &= φ(𝐯 + 𝐰 ) \\
    &= φ(𝐯) + 𝜙(𝐰 ) \\
    &= Δ(𝐯)(φ) + Δ(𝐰)(φ)
\end{align*}
proving $Δ$ is a homomorphism.

# Exercise 7.5.2: Adjoint Map $T^* : W^* → V^*$

$$ T^*(ω) = ω∘T $$

## $T^*$ is Well-Defined and Linear

$W^* = L(W, 𝔽)$, and $T : V → W$, so it follows their composition is well defined and linear.

## Matrix of $T^*$ wrt Dual Bases

$$ T(𝐯₁) = a₁₁𝐰₁ + ⋯  + aₘ₁𝐰ₘ $$
$$ T^*(𝐰₁^*)(𝐯₁) = 𝐰₁^*(T(𝐯₁)) = a₁₁ $$
$$ … $$
$$ T^*(𝐰ₘ^*)(𝐯₁) = aₘ₁ $$
$$ … $$
$$ T^*(𝐰₁^*)(𝐯ₙ) = a₁ₙ $$
$$ … $$
$$ T^*(𝐰ₘ^*)(𝐯ₙ) = aₘₙ $$

$$ T^*(𝐰₁^* ⋯ 𝐰ₘ^*) = (𝐯₁^* ⋯ 𝐯ₙ^*)B $$
$$ T^*(𝐰₁^*)(𝐯₁) = a₁₁ \; T^*(𝐰₁^*)(𝐯ₙ) = a₁ₙ $$
$$ ⟹  T^*(𝐰₁^*) = a₁₁𝐯₁^* + ⋯  + a₁ₙ𝐯ₙ* $$
$$ B = \M{
    a₁₁, ⋯ , a₁ₙ  ;
       ,  ⋮,      ;
    aₘ₁, ⋯ , aₘₙ
} = Aᵀ $$

## If $T$ is injective, then $T^*$ is surjective

$$ f ∈ V^* \; T^*(ω) = ω∘T $$
we prove there exists $ω ∈ W^*$ such that $f = ωT ∈ V^*$.

Since $f$ is linear, it suffices to prove $𝐯ᵢ^* ∈ \im T^*(W^*)$ for a single basis element of $V^*$.

Let $V^⟂$ be the space orthogonal to $𝐯ᵢ$. Then because $T$ is injective, $T𝐯ᵢ ∉ V^⟂$. Therefore we can define $ω$ such that $ω(T𝐯ᵢ) = 1$ and $ω(T𝐯ⱼ) = 0$ for all $j ≠ i$.

But then since $f(𝐯ᵢ) = ω∘T(𝐯ᵢ) = 1$, and $f(𝐯ⱼ) = 0$ for $j ≠ i$, we have $f = 𝐯ᵢ^*$.

## If $T$ is surjective, then $T^*$ is injective

Let $T^*(z₁) = T^*(z₂)$, then $z₁T = z₂T ∈ V^*$.

Since $T$ is surjective, both $z₁, z₂ ∈ W^* = L(W, 𝔽)$ are defined over all of $W$, so $z₁(𝐰) = z₂(𝐰) \; ∀ 𝐰 ∈ W ⟹  z₁ = z₂$.

## $\dim \im(T) = \dim \im(T^*)$

$$ \dim(T) = \dim(A) = \dim(Aᵀ) = \dim(T^*) $$

## Natural Surjective Linear Map $S : W^* → V^*$ for $V ⊆ W$

$$ S(𝐰^*)(𝐯) = 𝐰^*(𝐯) $$

Write $𝐰 = 𝐯 + 𝐜$, then $S(𝐰^*) = S(𝐯^*) + S(𝐜^*)$, which for all $𝐱 ∈ V, S(𝐰*)(𝐱) = 𝐯*(𝐱)$

