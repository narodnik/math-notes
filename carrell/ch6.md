---
header-includes: |
    - \let\vec\mathbf
    - \def\qed{\hfill\blacksquare}
    - \DeclareMathOperator\sgn{sgn}
    - \DeclareMathOperator\dim{dim}
    - \DeclareMathOperator\row{row}
    - \DeclareMathOperator\col{col}
    - \DeclareMathOperator\span{span}
---

# $\dim \col(A) = \dim \row(A)$

Let $A = (\vec{c₁} ⋯ \vec{c_n})$ with basis for column space $\{ \vec{v₁} , …, \vec{v_k} \}$, then
$$ \vec{c_i} = γ_{1i} \vec{v₁} + ⋯ + γ_{ki} \vec{v_k} $$
$$ B := (\vec{v₁} ⋯ \vec{v_n}) ∈ 𝔽^{m×k} $$
$$ C := (γ_{ij}) = \begin{pmatrix}
γ_{1i} \\
\hdots \vdots \hdots \\
γ_{ki} \\
\end{pmatrix} ∈ 𝔽^{k×n} $$
$$ ⇒ A = BC $$
so $A$ is a linear combo of rows of $C ⇒ \dim \row(A) ≤ \dim \row(C) = k = \dim \col(A)$.

Now applying the same argument to $A^T$ we see that $\dim \col(A) ≤ \dim \row(A) ⇒ \dim \col(A) = \dim \row(A)$. $\qed$

# $\vec{a}$ and $\vec{b}$ are orthogonal $⇔ |a+b|² = |a|² + |b|²$

\begin{align*}
|\vec{a}+\vec{b}|² &= ⟨\vec{a} + \vec{b}, \vec{a} + \vec{b}⟩ = ⟨\vec{a}, \vec{a}⟩ + 2⟨\vec{a}, \vec{b}⟩ + ⟨\vec{b}, \vec{b}⟩ \\
    &= |\vec{a}|² + 2⟨\vec{a}, \vec{b}⟩ + |\vec{b}|²
\end{align*}
but note that $⟨\vec{a}, \vec{b}⟩ = 0$ since $\vec{a}, \vec{b}$ are orthogonal.

# Orthogonal Decomposition

There exists a unique $λ$ such that $\vec{a} = λ\vec{b} + \vec{c}$ and $⟨\vec{b}, \vec{c}⟩ = 0$.

Write $\vec{c} = \vec{a} - λ\vec{b}$, then
$$ ⟨\vec{b}, \vec{c}⟩ = 0 ⟺ ⟨\vec{b}, \vec{a}⟩ - λ⟨\vec{b}, \vec{b}⟩ = 0 $$
$$ ⟺ λ = \frac{⟨\vec{b}, \vec{a}⟩}{⟨\vec{b}, \vec{b}⟩} $$

# Cachy-Schwarz Inequality

Since $⟨λ\vec{b}, \vec{c}⟩ = 0$, then $|λ\vec{b} + \vec{c}|² = λ²|\vec{b}|² + |\vec{c}|²$. So $|\vec{c}|² = |\vec{a}|² - λ²|\vec{b}|²$.

But $|\vec{c}|² ≥ 0 ⇒$
\begin{align*}
|\vec{c}|² &= |\vec{a}|² - λ²|\vec{b}|² \\
    &= ⟨\vec{a}, \vec{a}⟩ - \frac{⟨\vec{a}, \vec{b}⟩²}{⟨\vec{b}, \vec{b}⟩²} ⟨\vec{b}, \vec{b}⟩ \\
    &= |\vec{a}|² - \frac{⟨\vec{a}, \vec{b}⟩²}{|\vec{b}|²} ≥ 0
\end{align*}
Multiplying both sides, rearranging and taking roots,
$$ |⟨\vec{a}, \vec{b}⟩| ≤ |\vec{a}| |\vec{b}| $$

From this we get that $-1 ≤ \frac{⟨\vec{a}, \vec{b}⟩}{|\vec{a}||\vec{b}|} ≤ 1$, hence there exists a unique $θ ∈ [0, π]$ such that
$$ ⟨\vec{a}, \vec{b}⟩ = |\vec{a}| |\vec{b}| \cos θ $$

# Fourier Coefficients

Let $\vec{u}₁, …, \vec{u}_n$ be an orthonormal basis of $V$. Then if $w ∈ V$
$$ \vec{w} = \sum_{i = 1}^n ⟨\vec{w}, \vec{u}_i⟩ \vec{u}_i $$
**Proof.** Let $\vec{w} = \sum_{i = 1}^n x_i \vec{u}_i$.
Then $⟨\vec{w}, \vec{u}_j⟩ = \sum_{i = 1}^n x_i ⟨u_i, u_j⟩ = x_j$ since
the $\vec{u}_i$ are orthonormal.

# Orthogonal Complement of a Subspace

$$ U^\perp = \{ \vec{v} ∈ V \; | \; ⟨\vec{v}, \vec{u}⟩ = 0 \;\; ∀\vec{u} ∈ U \} $$
Furthermore if $W = \span U$, then $W \cap U^\perp = \{ \vec{0} \}$.

We can visualize $W^\perp$ in matrix terms. Let $A ∈ K^{m×n} : \col(A) = \span U = W$
where $A = (\vec{u}₁ ⋯ \vec{u}_n)$.

