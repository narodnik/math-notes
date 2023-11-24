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

# Exercises

## 9.1.6

Since $iA$ is Hermitian and only has real eigenvalues, then $A$
has only imaginary eigenvalues. Write $\det(A) = iⁿ λ₁ ⋯ λₙ$
where $λᵢ$ are the eigenvalues of $iA$.

By this result, if $A$ is skew-symmetric, then $\det(S) = 0$ since
$\det(S)$ is pure imginary.

For $n$ even, the eigenvalues occur in pairs $±iλₖ$, which means
$\det(S) ≥ 0$.

## 9.1.7

Write $A$ in unitary diagonal form, then note $D = \diag\{λ₁, …, λₙ\}$.
Since $\det(A) = \det(D)$ and the eigenvalues of a Hermitian matrix are
real so $\det(A) ∈ ℝ$.

## 9.1.8

Follows immediately from $NU = UD$, where $D$ are the eigenvalues, and
$U = \M{𝐮₁, …, 𝐮ₙ}$ are the eigenvectors. Since $U$ is unitary we have
$UUᴴ = I$ which means the eigenvectors are all Hermitian orthonormal.

## 9.1.9

See [wiki](https://en.wikipedia.org/wiki/Normal_matrix#Special_cases)
for such a matrix.

## 9.1.10

$UUᴴ = I ⟹ 𝐮ᵢ \bar{𝐮ᵢ} = N(𝐮ᵢ) = 1$, but $|𝐮ᵢ| = \sqrt{N(𝐮ᵢ)} ⟹ |𝐮ᵢ| = 1$.

$$ |\det(U)| = \sqrt{N(λ₁ ⋯ λₙ)} = \sqrt{N(λ₁)⋯N(λₙ)} = 1 $$

Let $x = a₁ + ib₁, y = a₂ + ib₂$, then let $N(x) = N(y) = 1$. We see
$$ N(x + y) = (a₁ + b₁)² + (a₂ + b₂)² ≤ a₁² + b₁² + a₂² + b₂² = N(x) + N(y) $$
$$ ⟹ |Tr(U)| ≤ n $$

## 9.1.14/15

Needs Fuglede's theorem since $AB = BA$ and $AᴴBᴴ = BᴴAᴴ$ does not imply
that $A, B, Aᴴ, Bᴴ$ all commute. Given that and the earlier result on
diagonalizable matrices, as well as $U⁻¹ = Uᴴ$, the questions are easy to solve.

For the next one, just note $A + B = U(D₁ + D₂)Uᴴ$ means the eigenvalues are
$D₁ + D₂$.

## 9.1.17

(iii) $AAᵀ = UD₁Uᵀ = (AᵀA)ᵀ = (UD₂Uᵀ)ᵀ ⟹ D₁ = D₂$.

