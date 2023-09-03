---
header-includes: |
    - \let\vec\mathbf
    - \def\qed{\hfill\blacksquare}
    - \DeclareMathOperator\sgn{sgn}
    - \DeclareMathOperator\dim{dim}
    - \DeclareMathOperator\row{row}
    - \DeclareMathOperator\col{col}
    - \DeclareMathOperator\span{span}
    - \DeclareMathOperator\ker{ker}
    - \DeclareMathOperator\im{im}
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

Let $\vec{x} ∈ \row(A) \cap \mathcal{N}(A)$ then
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

