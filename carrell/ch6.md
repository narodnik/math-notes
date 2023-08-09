---
header-includes: |
    - \let\vec\mathbf
    - \def\qed{\hfill\blacksquare}
    - \DeclareMathOperator\sgn{sgn}
    - \DeclareMathOperator\dim{dim}
    - \DeclareMathOperator\row{row}
    - \DeclareMathOperator\col{col}
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

