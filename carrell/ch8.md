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

