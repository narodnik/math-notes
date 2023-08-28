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

Now we are interested in $\vec{v} ∈ U^\perp : ⟨ \vec{v}, \vec{u}_i ⟩ = 0$ for all $i$.
This is equivalent to $A^T \vec{v} = (⟨\vec{u}₁, \vec{v}⟩ ⋯  ⟨\vec{u}_n, \vec{v}⟩)^T = \vec{0}$.
$$ ⇒ W^\perp = \mathcal{N}(A^T) $$
We also have $\dim \mathcal{N}(A^T) = \dim \mathcal{N}(A)$ and $\dim \row(A^T) = \dim \col(A)$ so
$$ \dim W + \dim W^\perp = m $$

## $V = W \oplus W^\perp$

Let $\vec{v} ∈ V$ and $\vec{u}₁, …, \vec{u}_k$ be an orthonormal basis of $W$. Then we can put
$\vec{y} = \vec{v} - \sum_{i = 1}^k ⟨\vec{v}, \vec{u}_i⟩ \vec{u}_i$.
Since the $\vec{u}_i$ are orthonormal, we have $⟨\vec{y}, \vec{u}_i⟩$ and so $\vec{y} ∈ W^\perp$.

Thus $V = W + W^\perp$ and since $W \cap W^\perp = \{ \vec{0} \}$, we get $V = W \oplus W^\perp. \qed$

# Gram-Schmidt Method

This is an algorithm for producing orthonormal basis from a general basis.
Let $\vec{v}₁, …, \vec{v}_k$ be a basis.

1. Normalize $\vec{v}₁$ by putting $\vec{u}₁ = \frac{\vec{v}₁}{|\vec{v}₁|}$.
2. Remove the projection of $\vec{u}₁$ from $\vec{v}₂$ as follows:
    1. Set $\vec{v}₂' = \vec{v}₂ - ⟨\vec{v}₂, \vec{u}₁⟩\vec{u}₁$.
    2. Normalize by letting $\vec{u}₂ = \frac{\vec{v}₂'}{|\vec{v}₂'|}$.
3. Now repeat the process:
    1. $\vec{v}₃' = \vec{v}₃ - ⟨\vec{v}₃, \vec{u}₁⟩\vec{u}₁ - ⟨\vec{v}₃, \vec{u}₂⟩\vec{u}₂$.
    2. $\vec{u}₃ = \frac{\vec{v}₃'}{|\vec{v}₃'|}$.
4. And so on.

# $d(\vec{a}, \vec{c}) ≤ d(\vec{a}, \vec{b}) + d(\vec{b}, \vec{c})$

Denote the sides of a triangle by $\vec{a} = \vec{b} + \vec{c}$.
\begin{align*}
⟨\vec{a}, \vec{a}⟩ &= ⟨\vec{b}, \vec{b}⟩ + 2⟨\vec{b}, \vec{c}⟩ + ⟨\vec{c}, \vec{c}⟩ \\
    &≤ ⟨\vec{b}, \vec{b}⟩ + 2|⟨\vec{b}, \vec{c}⟩| + ⟨\vec{c}, \vec{c}⟩ \\
    &≤ ⟨\vec{b}, \vec{b}⟩ + 2|\vec{b}| |\vec{c}| + ⟨\vec{c}, \vec{c}⟩ \\
    &= |\vec{b}| + 2|\vec{b}| |\vec{c}| + |\vec{c}| \\
    &= (|\vec{b}| + |\vec{c}|)²
\end{align*}
using the Cauchy-Schwarz inequality.

# Least Squares Principle

Let $\vec{v} = \vec{w} + \vec{y}$, with $\vec{w} ∈ W$ and $\vec{y} ∈ W^\perp$.
Then $d(\vec{v}, W) = |y|$.

Let $\vec{w}' = \vec{w} + \vec{m}$, then $\vec{v} - \vec{w}' = \vec{y} + \vec{m}$
$$ d(\vec{v}, \vec{w'})² = |\vec{y} + \vec{m}|² = |\vec{y}|² + |\vec{m}|² ≥ 0 $$
since $\vec{y}$ and $\vec{m}$ are orthogonal.

But
$$ d(\vec{v}, \vec{w})² = |\vec{y}|² ≥ 0$$
so $d(\vec{v}, \vec{w}) ≤ d(\vec{v}, \vec{w}')$ for all $\vec{w}' ∈ W$.

# Vector Space Quotients

$$ \dim V/W = \dim V - \dim W $$

Suppose $A ∈ 𝔽^{m×n}$, then $𝔽ⁿ/\mathcal{N}(A)$ are the solution sets for
$A\vec{x} = \vec{b}$ where $\vec{b}$ varies through $𝔽ᵐ$.

$\mathcal{N}(A)$ corresponds to $A\vec{x} = \vec{0}$, and $\vec{p} + \mathcal{N}(A)$
corresponds to $A\vec{p} = \vec{b}$.

## $\dim (V + W)/W = \dim V/(V \cap W)$

\begin{align*}
\dim (V + W)/W &= (\dim V + \dim W - \dim (V \cap W)) - \dim W \\
    &= \dim V - \dim (V \cap W) \\
    &= \dim V/(V \cap W)
\end{align*}

